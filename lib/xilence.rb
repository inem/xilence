require "xilence/version"

module ActionController
  module Rescue

    def rescue_with_handler(exception)
      if request.xhr?
        linebreaker = "\n  "
        title = "#{exception.class} (#{exception.message}):#{linebreaker}"
        backtrace = exception.backtrace.join(linebreaker)

        render text: (title + backtrace), status: 500
      else
        if (exception.respond_to?(:original_exception) &&
            (orig_exception = exception.original_exception) &&
            handler_for_rescue(orig_exception))
          exception = orig_exception
        end
        super(exception)
      end
    end

  end
end
