# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--fail-fast'
end

task default: :spec

desc 'Release gem'
task :release_github_rubygems do
  Rake::Task['release'].invoke
  sh('gem push --key github '\
     '--host https://rubygems.pkg.github.com/ONLYOFFICE-QA '\
     "pkg/#{OnlyofficeWebdriverWrapper::Name::STRING}-"\
     "#{OnlyofficeWebdriverWrapper::Version::STRING}.gem")
end
