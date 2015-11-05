require 'warbler'
Warbler::Task.new

task war: ['build:setup', 'assets:precompile']

task clean: ['assets:clobber', 'build:cleanup']

namespace :build do

  desc 'Create the destination directory for build'
  task :setup do
    mkdir 'war'
  end

  desc 'Delete the destination directory for build'
  task :cleanup do
    rm_rf 'war'
  end

end
