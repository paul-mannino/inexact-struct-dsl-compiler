# frozen_string_literal: true

module DslCommand
  def self.build(requested_constants:, outpath:)
    rbi_formatter = ::Tapioca::DEFAULT_RBI_FORMATTER
    rbi_formatter.max_line_length = 120

    ::Tapioca::Commands::DslGenerate.new(
      requested_constants: requested_constants,
      requested_paths: [],
      outpath: outpath,
      only: [],
      exclude: [],
      file_header: true,
      tapioca_path: ::Tapioca::TAPIOCA_DIR,
      quiet: true,
      verbose: false,
      number_of_workers: 1,
      auto_strictness: true,
      gem_dir: ::Tapioca::DEFAULT_GEM_DIR,
      rbi_formatter: rbi_formatter,
      app_root: '.',
      halt_upon_load_error: true,
      compiler_options: {}
    )
  end
end
