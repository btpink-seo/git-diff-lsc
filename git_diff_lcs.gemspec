# frozen_string_literal: true

require_relative "lib/git_diff_lcs/version"

Gem::Specification.new do |spec|
  spec.name        = "git_diff_lcs"
  spec.version     = GitDiffLcs::VERSION
  spec.authors     = ["SEO SANG HYUN"]
  spec.email       = "btpink.seo@gmail.com"

  spec.summary     = "'git diff --shortstat' with modifications"
  spec.description = "Add modifications to 'git diff --shortstat' using the LCS algorithm."
  spec.homepage    = "https://github.com/btpink-seo/git-diff-lcs"
  spec.required_ruby_version = ">= 2.4.0"

  # spec.files       = ["lib/git_diff_lcs.rb", "lib/git_diff_lcs/stat.rb", "lib/git_diff_lcs/version.rb"]
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.license       = "MIT"
  spec.add_dependency "diff-lcs", "1.4.4"
  spec.add_dependency "git", "1.8.1"
end
