unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

module Motion
  module Schemes
    VERSION = "0.0.1"
  end

  module Project
    class App
      class << self
        def current_scheme
          if scheme = ENV['scheme']
            scheme.intern
          else
            schemes.keys.first
          end
        end

        def scheme(name, &block)
          schemes[name] = block
        end

        def schemes
          @schemes ||= {}
        end

        alias_method :config_before_scheme, :config
        def config
          if schemes[current_scheme]
            config_without_setup.setup_blocks << schemes[current_scheme]
            config_before_scheme
          else
            config_before_scheme
          end
        end
      end
    end
  end
end