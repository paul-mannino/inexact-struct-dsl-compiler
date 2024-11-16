# typed: true

class Tapioca::Dsl::Compiler
  extend T::Sig
  extend T::Helpers

  abstract!

  sig {abstract.void}
  def decorate; end

  class << self
    extend T::Sig

    sig { abstract.returns(T::Enumerable[Module]) }
    def gather_constants; end
  end
end
