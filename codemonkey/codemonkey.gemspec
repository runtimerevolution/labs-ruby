# frozen_string_literal: true

require_relative "lib/codemonkey/version"

Gem::Specification.new do |spec|
  spec.name = "codemonkey"
  spec.version = Codemonkey::VERSION
  spec.authors = ["Luis Moreira"]
  spec.email = ["l.moreira@runtime-revolution.com"]

  spec.summary = "A Ruby interface for the CodeMonkey API"
  spec.description = "Codemonkey is a class that interfaces with CodeMonkey API, from Runtime Labs. It provides methods to manage GitHub issues, branches, and pull requests, and to interact with an LLM API for resolving issues autonomously."
  spec.homepage = "https://www.runtime-revolution.com/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # gemspec = File.basename(__FILE__)
  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  #   ls.readlines("\x0", chomp: true).reject do |f|
  #     (f == gemspec) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
  #   end
  # end
  spec.files = Dir["lib/**/*.rb"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "dotenv", "~> 3.1"
  spec.add_dependency "rspec", "~> 3.13"
  spec.add_dependency "rubocop", "~> 1.65"
  spec.add_dependency "vcr", "~> 6.2"
  spec.add_dependency "webmock", "~> 3.23"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
end
