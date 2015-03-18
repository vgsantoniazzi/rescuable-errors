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
  gem.name = "rescuable_errors"
  gem.homepage = "http://github.com/vgsantoniazzi/rescuable-errors"
  gem.license = "MIT"
  gem.summary = %Q{Rescuable Errors gem}
  gem.description = %Q{Rescuable Gem for any application}
  gem.email = "vgsantoniazzi@gmail.com"
  gem.authors = ["Victor Antoniazzi"]
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
