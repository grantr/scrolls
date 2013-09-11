if RUBY_VERSION >= '2.0.0'
  require 'syslog/logger'

  module Scrolls
    class SyslogLogger < ::Syslog::Logger
      def puts(data)
        info(data)
      end
    end
  end
else
  true
end
