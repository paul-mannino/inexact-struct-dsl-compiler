# typed: false
# frozen_string_literal: true

require 'spec_helper'
require 'tmpdir'

describe 'Tapioca::Compilers::InexactStruct' do
  # rubocop:disable Lint/ConstantDefinitionInBlock
  class Foo < T::InexactStruct
    const :r, Float, default: 1.0
  end

  class Bar < Foo
    const :x, T::Boolean
    const :y, T.nilable(String)
    const :z, T.any(Integer, T::Boolean)
  end

  class Baz < T::InexactStruct
    const :a, Integer
    const :b, String
    const :c, Bar
    const :c2, T.nilable(Foo), default: Foo.new
    const :d, T::Hash[String, String]
    const :e, T.untyped
  end
  # rubocop:enable Lint/ConstantDefinitionInBlock

  let(:tmp_dir) { Dir.mktmpdir }

  around(:each) do |example|
    DslCommand.build(
      requested_constants: requested_constants,
      outpath: Pathname.new(tmp_dir)
    ).run
    example.run
  ensure
    FileUtils.remove_entry(tmp_dir)
  end

  let(:requested_constants) { [] }

  it 'generates rbi files and they are identical to test data' do
    expected = Dir['./spec/fixtures/*.rbi']
    actual = Dir[File.join(tmp_dir, '*.rbi')]
    expect(expected.size).to eq(actual.size)
    expected.zip(actual).each do |rbi_expected, rbi_actual|
      expect(read_normalized(rbi_actual)).to(eq(read_normalized(rbi_expected)))
    end
  end

  context 'with requested_constants' do
    let(:requested_constants) { ['Foo'] }

    it 'generates rbi files only for requested_constants' do
      actual = Dir[File.join(tmp_dir, '*.rbi')]
      expect(actual.size).to eq(1)
      expect(actual.first).to match(/foo.rbi$/)
    end
  end

  def read_normalized(path)
    File.read(path).gsub(/^\s*$/, "")
  end
end
