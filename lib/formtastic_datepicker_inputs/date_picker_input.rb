module Formtastic
  module Inputs
    module DatePickerInput
      def date_picker_input(method, options = {})
        format = options[:format] || DATE_FORMATS[:default] || '%d %b %Y'
        string_input(method, date_picker_options(format, object.send(method)).merge(options))
      end

      # Generate html input options for the datepicker_input
      def date_picker_options(format, value = nil)
        { :input_html => { :class => 'ui-date-picker',
                           :value => value.try(:strftime, format) } }
      end
    end
  end
end
