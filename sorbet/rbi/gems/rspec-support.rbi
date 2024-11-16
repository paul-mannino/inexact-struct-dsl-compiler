# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rspec-support/all/rspec-support.rbi
#
# rspec-support-3.13.1

module RSpec
  extend RSpec::Support::Warnings
end
module RSpec::Support
end
module RSpec::Support::Version
end
class RSpec::Support::ComparableVersion
  include Comparable
end
module RSpec::Support::OS
end
module RSpec::Support::Ruby
end
module RSpec::Support::RubyFeatures
end
module RSpec::Support::AllExceptionsExceptOnesWeMustNotRescue
end
class RSpec::CallerFilter
end
module RSpec::Support::Warnings
end
class RSpec::Support::EncodedString
end
class RSpec::Support::ReentrantMutex
end
class RSpec::Support::Mutex < Thread::Mutex
end
class RSpec::Support::DirectoryMaker
end
class RSpec::Support::MethodSignature
end
class RSpec::Support::MethodSignatureExpectation
end
class RSpec::Support::BlockSignature < RSpec::Support::MethodSignature
end
class RSpec::Support::MethodSignatureVerifier
end
class RSpec::Support::LooseSignatureVerifier < RSpec::Support::MethodSignatureVerifier
end
class RSpec::Support::LooseSignatureVerifier::SignatureWithKeywordArgumentsMatcher
end
module RSpec::Support::WithKeywordsWhenNeeded
end
module RSpec::Support::RecursiveConstMethods
end
class RSpec::Support::ObjectFormatter
end
class RSpec::Support::ObjectFormatter::TimeInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
class RSpec::Support::ObjectFormatter::DateTimeInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
class RSpec::Support::ObjectFormatter::BigDecimalInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
class RSpec::Support::ObjectFormatter::DescribableMatcherInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
class RSpec::Support::ObjectFormatter::UninspectableObjectInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
class RSpec::Support::ObjectFormatter::DelegatorInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
class RSpec::Support::ObjectFormatter::InspectableObjectInspector < RSpec::Support::ObjectFormatter::BaseInspector
end
module RSpec::Support::FuzzyMatcher
end
