Tiu dosiero servas kiel rubejo de ideoj kaj trovoj

https://github.com/rahulraj/virtual_keywords

- Compiles reader methods so we don't have to go through method_missing.
  - see  lib/active_support/configurable.rb in active record for example
```
    class Configuration < ActiveSupport::InheritableOptions
      def compile_methods!
        self.class.compile_methods!(keys)
      end

      # Compiles reader methods so we don't have to go through method_missing.
      def self.compile_methods!(keys)
        keys.reject { |m| method_defined?(m) }.each do |key|
          class_eval <<-RUBY, __FILE__, __LINE__ + 1
            def #{key}; _get(#{key.inspect}); end
          RUBY
        end
      end
    end
```

