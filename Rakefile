# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rescuable-errors"
  gem.homepage = "http://bitbucket.com/bradoc/rescuable-errors"
  gem.license = "MIT"
  gem.summary = %Q{Rescuable Gem for ecodoc application}
  gem.description = %Q{Rescuable Gem for ecodoc application}
  gem.email = "victor.antoniazzi@doccenter.com.br"
  gem.authors = ["Victor Antoniazzi"]
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec
