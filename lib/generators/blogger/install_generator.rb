require 'rails/generators/base'

module Blogger
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Generates an initializer for the user class"

      def copy_initializer
        template "blogger.rb", "config/initializers/blogger.rb"
      end
    end
  end
end
