# frozen_string_literal: true

require_relative "lib/palindrome_checker/version"

Gem::Specification.new do |spec|
  spec.name = "palindrome_checker"
  spec.version = PalindromeChecker::VERSION
  spec.authors = ["soueda_kome_303"]
  spec.email = ["bb52119638@gmail.com"]

  spec.summary = "A simple and efficient Ruby gem to check if a string is a palindrome, with support for ignoring case, spaces, and special characters."
  spec.description = "The PalindromeChecker gem provides a straightforward utility to determine whether a given text is a palindrome. It removes unnecessary characters like spaces, punctuation, and symbols, and normalizes case before performing the palindrome check. This makes it ideal for validating phrases, sentences, or simple strings in various applications. With easy-to-use class methods, this gem is perfect for beginners and useful for quick text validations."
  spec.homepage = "https://github.com/code-0wizard/palindrome_checker"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
