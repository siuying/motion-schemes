module Motion
  module Project
    class Config
      variable :scheme

      alias_method :setup_before_scheme, :setup
      def setup
        if schemes.size > 0
          setup_before_scheme

          current_scheme = scheme || schemes.keys.first
          if current_scheme && schemes[current_scheme]
            schemes[current_scheme].call(self)
            validate
            self
          else
            raise ArgumentError, "Invalid scheme: #{current_scheme}, scheme must be one of: #{schemes.keys}"
          end
        else
          setup_before_scheme
        end
      end

      def schemes
        @schemes ||= {}
      end

      def config_scheme(name, &block)
        schemes[name] = block
      end
    end
  end
end
