module ActionController
  module Rescue
    # Render detailed diagnostics for unhandled exceptions rescued from
    # a controller action.
    def rescue_action_locally(exception)
      @template.instance_variable_set("@exception", exception)
      @template.instance_variable_set("@rescues_path", RESCUES_TEMPLATE_PATH)
      if request.xhr?
        linebreak = "\n"
        render :text => ("\n#{exception.class} (#{exception.message}):\n  " + clean_backtrace(exception).join("#{linebreak}  ") + linebreak*2),
               :status => 500
      else
        @template.instance_variable_set("@contents",
          @template.render(:file => template_path_for_local_rescue(exception)))
        response.content_type = Mime::HTML
        render_for_file(rescues_path("layout"),
          response_code_for_rescue(exception))
      end
    end
  end
end