# frozen_string_literal: true

require_relative 'lib/cosmopolitan/nip/version'

Gem::Specification.new do |spec|
  spec.name = 'cosmopolitan-nip'
  spec.version = Cosmopolitan::Nip::VERSION
  spec.authors = ['tomczak-mateusz']
  spec.email = ['mateusz.tomczak@sperasoft.com']

  spec.summary = 'Placeholder'
  spec.description = 'Placeholder'
  spec.homepage = 'https://github.com/Cosmopolitan-Inc/cosmopolitan-nip'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.6'

  spec.metadata['allowed_push_host'] = 'Placeholder'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Cosmopolitan-Inc/cosmopolitan-nip'
  spec.metadata['changelog_uri'] = 'https://github.com/Cosmopolitan-Inc/cosmopolitan-nip/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Development dependencies:
  spec.add_development_dependency 'bundler-audit', '0.9.1'
  spec.add_development_dependency 'bundler-integrity', '1.0.9'
  spec.add_development_dependency 'rake', '13.0.6'
  spec.add_development_dependency 'rspec', '3.12.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
