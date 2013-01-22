module Motion
  module Project
    class App
      class << self
        def scheme(name, &block)
          config_without_setup.config_scheme(name, &block)
        end
      end
    end
  end
end