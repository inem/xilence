require "xilence/version"

module ActionDispatch
  class DebugExceptions

    def render_exception(env, exception)
      wrapper = ExceptionWrapper.new(env, exception)
      log_error(env, wrapper)

      if env['action_dispatch.show_detailed_exceptions']
        request = Request.new(env)

        if request.xhr?
          linebreaker = "\n  "

          title = "#{wrapper.exception.class} (#{wrapper.exception.message}):#{linebreaker}"

          trace = wrapper.application_trace
          trace = wrapper.framework_trace if trace.empty?
          trace = trace.join linebreaker

          render(500, title + trace)
        else
          template = ActionView::Base.new([RESCUES_TEMPLATE_PATH],
            :request => request,
            :exception => wrapper.exception,
            :application_trace => wrapper.application_trace,
            :framework_trace => wrapper.framework_trace,
            :full_trace => wrapper.full_trace
          )

          file = "rescues/#{wrapper.rescue_template}"
          body = template.render(:template => file, :layout => 'rescues/layout')
          render(wrapper.status_code, body)
        end
      else
        raise exception
      end
    end

  end
end
