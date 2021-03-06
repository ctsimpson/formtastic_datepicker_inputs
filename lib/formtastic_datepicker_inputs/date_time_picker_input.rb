module Formtastic
  module Inputs
    module DateTimePickerInput
      include Formtastic::Inputs::StringInput

      def datetime_picker_input(method, options = {})
        format = options[:format] || Date::DATE_FORMATS[:default] || '%d %b %Y %H:%M'
        string_input(method, datetime_picker_options(format, object.send(method)).merge(options))
      end

      private
      # Generate html input options for the date_time_picker_input
      def datetime_picker_options(format, value = nil)
	      { :wrapper_html => { :class => 'datetime' },
          :input_html   => { :class => 'ui-datetime-picker',
                             :value => value.try(:strftime, format) } }
      end
    end
  end
end
