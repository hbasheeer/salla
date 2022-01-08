require_relative 'lib/salla/version'

Gem::Specification.new do |spec|
  spec.name          = "salla"
  spec.version       = Salla::VERSION
  spec.authors       = ["hbasheer"]
  spec.email         = ["hasanbasher1989@gmail.com"]

  spec.summary       = "Ruby bindings for Salla API."
  spec.description   = "Ruby bindings for Salla API. Salla APIs can be found here: https://docs.salla.dev/"
  spec.homepage      = "https://github.com/hbasheer/salla"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hbasheer/salla"
  spec.metadata["changelog_uri"] = "https://github.com/hbasheer/salla/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1.7"
  spec.add_dependency "faraday_middleware", "~> 1.1"
end
