require 'warbler'
Warbler::Task.new

task war: ['build:setup', 'assets:precompile']

namespace :build do

  desc 'Create the destination directory for build'
  task :setup do
    mkdir 'war'
  end

end
