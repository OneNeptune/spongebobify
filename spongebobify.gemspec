# frozen_string_literal: true

require_relative 'lib/spongebobify/version'

Gem::Specification.new do |spec|
  spec.name          = 'spongebobify'
  spec.version       = Spongebobify::VERSION
  spec.authors       = ['OneNeptune']
  spec.email         = ['michael@michaelbennett.nyc']

  spec.summary       = 'Transform input text to sPoNgEbOb cAsE'
  spec.description   = 'Convert normal parlance into way more sarcastic SpongeBob clucking chicken style.'

  spec.homepage      = 'https://www.github.com/OneNeptune/spongebobify'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://www.github.com/OneNeptune/spongebobify'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
