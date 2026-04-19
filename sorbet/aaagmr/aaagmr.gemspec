# frozen_string_literal: true

require_relative "lib/aaagmr/version"

Gem::Specification.new do |spec|
  spec.name = "aaagmr"
  spec.version = Aaagmr::VERSION
  spec.authors = ["VietTungFizzy"]
  spec.email = ["minhmang67@yahoo.com.vn"]

  spec.summary = "A simple anagrams tool"
  spec.description = "A simple tool"
  spec.homepage = "http://pragprog.com" 
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = "http://rubygems.org" 
  spec.metadata["source_code_uri"] = "http://rubygems.org"
  spec.metadata["changelog_uri"] = "http://rubygems.org"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f| 
      (f == __FILE__) ||
        f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)}) end
  end 

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "date_by_example", '~> 0.1'
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
