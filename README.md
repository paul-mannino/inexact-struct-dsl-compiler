# inexact-struct-dsl-compiler

This is a custom DSL compiler plugin for [Shopify's Tapioca project](https://github.com/Shopify/tapioca#writing-custom-dsl-compilers) that adds missing type information for any class that inherits from T::InexactStruct.

For this data class, 
```
  class DataClass < T::InexactStruct
    const :a, Integer
    const :b, String
    const :c, T::Hash[String, String]
    const :d, T.untyped
  end
```

running `bundle exec tapioca dsl` will generate the following .rbi file.

```
class DataClass
  sig do
    params(
      a: ::Integer,
      b: ::String,
      c: T::Hash[::String, ::String],
      d: T.untyped
    ).void
  end
  def initialize(a:, b:, c:, d:,); end
end

end
```

For a project that already uses tapioca, no setup is needed beyond adding this gem to your Gemfile.

## Motivation

I like Sorbet's T::Struct and T::InexactStruct classes a lot - if your org has already bought into Sorbet, they make a lot of sense to use as an alternative to Ruby's [Struct class](https://docs.ruby-lang.org/en/master/Struct.html). 

T::Struct is great, but it comes with the [understandble limitation](https://sorbet.org/docs/tstruct#structs-and-inheritance) of not being permitted in multi-class inheritance chains -- the performance hit of crawling a class' ancestors makes it a poor fit for static type-checking. T::InexactStruct does not come with this limitation, but Sorbet will not typecheck any arguments passed to `#new`. Tapioca's method of generating RBIs from loaded code make it a very nice tool for shimming in the type-safety that core Sorbet lacks.

Why do I care so much about T::Struct and inheritance? Beyond the obvious (I have T::Struct Foo that is a natural subclass of T::Struct Bar and I want to represent them as such in my code), T::Struct (or T::InexactStruct) has been a useful starting point for data parsing utility classes (API param parsing, API response parsing, etc). 
