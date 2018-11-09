# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/sidekiq/version'

Gem::Specification.new do |spec|
  spec.name = 'capistrano-sidekiq'
  spec.version = Capistrano::SidekiqVERSION
  spec.authors = ['Abdelkader Boudih', 'ASR Custom Solutions']
  spec.email = ['terminale@gmail.com', 'asrwebteam@umn.edu']
  spec.summary = %q{Sidekiq integration for Capistrano}
  spec.description = %q{Sidekiq integration for Capistrano}
  spec.homepage = 'https://github.com/umn-asr/capistrano-sidekiq-asr'
  spec.license = 'LGPL-3.0'

  spec.required_ruby_version     = '>= 2.0.0'
  spec.files = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://artifactory.umn.edu/artifactory/api/gems/asr-rubygems-local"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_dependency 'capistrano', '>= 3.9.0'
  spec.add_dependency 'sidekiq', '>= 3.4'
end
