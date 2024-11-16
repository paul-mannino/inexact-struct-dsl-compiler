# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/spoom/all/spoom.rbi
#
# spoom-1.3.2

module Spoom
  extend T::Sig
end
class Spoom::FileCollector
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Context
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Context::Bundle
  include Spoom::Context::Exec
  include Spoom::Context::FileSystem
  include Spoom::Context::Git
  include Spoom::Context::Sorbet
end
module Spoom::Context::Bundle
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::ExecResult < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
module Spoom::Context::Exec
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Context::FileSystem
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Git
end
class Spoom::Git::Commit < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
module Spoom::Context::Git
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Context::Sorbet
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Color < T::Enum
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Colorize
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Deadcode
end
class Spoom::Deadcode::Visitor < Prism::Visitor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::ERB < Erubi::Engine
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Index
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Indexer < Spoom::Deadcode::Visitor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Location
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Comparable
end
class Spoom::Deadcode::Location::LocationError < Spoom::Error
end
class Spoom::Deadcode::Definition < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class Spoom::Deadcode::Definition::Kind < T::Enum
end
class Spoom::Deadcode::Definition::Status < T::Enum
end
class Spoom::Deadcode::Reference < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class Spoom::Deadcode::Reference::Kind < T::Enum
end
class Spoom::Deadcode::Send < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
module Spoom::Deadcode::Plugins
end
class Spoom::Deadcode::Plugins::Base
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::ActionPack < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::ActiveJob < Spoom::Deadcode::Plugins::Base
end
class Spoom::Deadcode::Plugins::ActionMailerPreview < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::ActionMailer < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::ActiveModel < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::ActiveRecord < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::ActiveSupport < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Spoom::Deadcode::Plugins::GraphQL < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Minitest < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Namespaces < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Rails < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Rake < Spoom::Deadcode::Plugins::Base
end
class Spoom::Deadcode::Plugins::RSpec < Spoom::Deadcode::Plugins::Base
end
class Spoom::Deadcode::Plugins::Rubocop < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Ruby < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Sorbet < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Plugins::Thor < Spoom::Deadcode::Plugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Remover
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Remover::Error < Spoom::Error
end
class Spoom::Deadcode::Remover::NodeRemover
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Remover::NodeContext
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Remover::NodeFinder < Spoom::Deadcode::Visitor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Deadcode::Error < Spoom::Error
  extend T::Helpers
  extend T::Private::Abstract::Hooks
end
class Spoom::Deadcode::ParserError < Spoom::Deadcode::Error
end
class Spoom::Deadcode::IndexerError < Spoom::Deadcode::Error
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Sorbet
end
class Spoom::Sorbet::Config
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Sorbet::Errors
end
class Spoom::Sorbet::Errors::Parser
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Sorbet::Errors::Error
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Comparable
end
module Spoom::LSP
end
class Spoom::LSP::Message
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Request < Spoom::LSP::Message
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Notification < Spoom::LSP::Message
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Printer
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Colorize
end
module Spoom::LSP::PrintableSymbol
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Hover < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Position < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Range < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Location < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::SignatureHelp < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Diagnostic < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::DocumentSymbol < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::SymbolPrinter < Spoom::Printer
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Error < StandardError
end
class Spoom::LSP::Error::AlreadyOpen < Spoom::LSP::Error
end
class Spoom::LSP::Error::BadHeaders < Spoom::LSP::Error
end
class Spoom::LSP::Error::Diagnostics < Spoom::LSP::Error
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::ResponseError < Spoom::LSP::Error
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Client
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Sorbet::Sigils
  extend T::Sig
end
module Spoom::Sorbet::MetricsParser
end
class Spoom::Sorbet::Error < StandardError
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Sorbet::Error::Killed < Spoom::Sorbet::Error
end
class Spoom::Sorbet::Error::Segfault < Spoom::Sorbet::Error
end
module Spoom::Cli
end
module Spoom::Cli::Helper
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Colorize
end
class Spoom::Cli::Deadcode < Thor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Cli::Helper
end
module Spoom::Cli::Srb
end
class Spoom::Cli::Srb::Bump < Thor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Cli::Helper
end
module Spoom::Coverage
end
class Spoom::Coverage::Snapshot < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class Spoom::Coverage::SnapshotPrinter < Spoom::Printer
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Coverage::D3
end
class Spoom::Coverage::D3::Base
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::CircleMap < Spoom::Coverage::D3::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class Spoom::Coverage::D3::CircleMap::Sigils < Spoom::Coverage::D3::CircleMap
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie < Spoom::Coverage::D3::Base
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie::Sigils < Spoom::Coverage::D3::Pie
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie::Calls < Spoom::Coverage::D3::Pie
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie::Sigs < Spoom::Coverage::D3::Pie
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline < Spoom::Coverage::D3::Base
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Versions < Spoom::Coverage::D3::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Runtimes < Spoom::Coverage::D3::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Stacked < Spoom::Coverage::D3::Timeline
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Sigils < Spoom::Coverage::D3::Timeline::Stacked
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Calls < Spoom::Coverage::D3::Timeline::Stacked
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Sigs < Spoom::Coverage::D3::Timeline::Stacked
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::RBIs < Spoom::Coverage::D3::Timeline::Stacked
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::ColorPalette < T::Struct
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
end
class Spoom::Coverage::Template
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Page < Spoom::Coverage::Template
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Coverage::Cards
end
class Spoom::Coverage::Cards::Card < Spoom::Coverage::Template
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Erb < Spoom::Coverage::Cards::Card
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Snapshot < Spoom::Coverage::Cards::Card
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Map < Spoom::Coverage::Cards::Card
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline < Spoom::Coverage::Cards::Card
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Sigils < Spoom::Coverage::Cards::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Calls < Spoom::Coverage::Cards::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Sigs < Spoom::Coverage::Cards::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::RBIs < Spoom::Coverage::Cards::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Versions < Spoom::Coverage::Cards::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Runtimes < Spoom::Coverage::Cards::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::SorbetIntro < Spoom::Coverage::Cards::Erb
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Report < Spoom::Coverage::Page
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree::Node < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class Spoom::FileTree::Visitor
  extend T::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree::CollectNodes < Spoom::FileTree::Visitor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree::CollectStrictnesses < Spoom::FileTree::Visitor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree::CollectScores < Spoom::FileTree::CollectStrictnesses
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree::Printer < Spoom::FileTree::Visitor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Timeline
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Cli::Srb::Coverage < Thor
  include Spoom::Cli::Helper
end
class Spoom::Cli::Srb::LSP < Thor
  include Spoom::Cli::Helper
end
class Spoom::Cli::Srb::Tc < Thor
  include Spoom::Cli::Helper
end
class Spoom::Cli::Srb::Main < Thor
end
class Spoom::Cli::Main < Thor
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Cli::Helper
end
class Spoom::Error < StandardError
end
