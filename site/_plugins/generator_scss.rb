#
# Jekyll Generator for SCSS, via https://gist.github.com/2874934 via https://github.com/chriseppstein/compass/wiki/Jekyll-Integration
 
require 'sass'
require 'pathname'
require 'compass'
require 'compass/exec'
 
module Jekyll 
  class CompassGenerator < Generator
    safe true
    
    def generate(site)
      Dir.chdir File.expand_path('../css', File.dirname(__FILE__)) do
        Compass::Exec::SubCommandUI.new(%w(compile)).run!
      end
    end
  end
end