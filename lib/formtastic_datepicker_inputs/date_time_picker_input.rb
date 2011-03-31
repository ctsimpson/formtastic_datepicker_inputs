module Formtastic
  module Inputs
    module DateTimePickerInput
      def datetime_picker_input(method, options = {})
        format = options[:format] || DATE_FORMATS[:default] || '%d %b %Y %H:%M'
        string_input(method, datetime_picker_options(format, object.send(method)).merge(options))
      end

      # Generate html input options for the datepicker_input
      def datetime_picker_options(format, value = nil)
	      { :wrapper_html => { :class => 'datetime' },
          :input_html   => { :class => 'ui-datetime-picker',
                             :value => value.try(:strftime, format) } }
      end
    end
  end
end
