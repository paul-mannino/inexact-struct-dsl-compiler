# typed: true
# frozen_string_literal: true

module Tapioca
  module Compilers
    class InexactStruct < Tapioca::Dsl::Compiler
      extend T::Sig

      ConstantType = type_member { { fixed: T.class_of(T::InexactStruct) } }

      sig { override.returns(T::Enumerable[Module]) }
      def self.gather_constants
        all_classes.select { |c| c < T::InexactStruct }.reject do |c|
          c.name =~ /^(Tapioca|RBI|Spoom|T|YARDSorbet)::/
        end
      end

      sig { override.void }
      def decorate
        root.create_path(constant) do |klass|
          klass.create_method('initialize', parameters: build_parameters, return_type: 'void')
        end
      end

      sig { returns(T::Array[RBI::TypedParam]) }
      def build_parameters
        constant.props.map do |name, prop|
          type = prop.fetch(:type_object).to_s
          if prop[:default]
            create_kw_opt_param(name.to_s, type: type, default: 'T.unsafe(nil)')
          elsif T::Props::Utils.optional_prop?(prop)
            create_kw_opt_param(name.to_s, type: type, default: 'nil')
          else
            create_kw_param(name.to_s, type: type)
          end
        end
      end
    end
  end
end
