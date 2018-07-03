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

- [Misc #12722: Localizing Ruby](https://bugs.ruby-lang.org/issues/12722)
- [Feature #9319: Add constant RUBY_KEYWORDS or a similar way to output which keywords exist at runtime](https://bugs.ruby-lang.org/issues/9319)
- [Class: Ripper (Ruby 2.0.0)](https://ruby-doc.org/stdlib-2.0.0/libdoc/ripper/rdoc/Ripper.html) ivas disleksigilon
- [alias keyword](https://groups.google.com/forum/#!topic/xruby-devel/XtllQwsQwtA)
- [rexical](https://github.com/tenderlove/rexical)
- [Where are keywords defined in Ruby?](https://stackoverflow.com/questions/9446150/where-are-keywords-defined-in-ruby)
- [RubyScript - A transcompiler transforming a subset of Ruby to JavaScript](https://gist.github.com/txus/2017173)
- [ParseTree](https://rubygems.org/gems/ParseTree/versions/3.0.9)
- [RubyInline](https://rubygems.org/gems/RubyInline)
- [Creating a REPL](https://dev.to/joshcheek/write-a-repl-in-ruby)
