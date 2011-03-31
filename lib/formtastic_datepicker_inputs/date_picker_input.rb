module Formtastic
  module Inputs
    module DatePickerInput
      include Formtastic::Inputs::StringInput

      def date_picker_input(method, options = {})
        format = options[:format] || Date::DATE_FORMATS[:default] || '%d %b %Y'
        string_input(method, date_picker_options(format, object.send(method)).merge(options))
      end

      private
      # Generate html input options for the date_picker_input
      def date_picker_options(format, value = nil)
        { :input_html => { :class => 'ui-date-picker',
                           :value => value.try(:strftime, format) } }
      end
    end
  end
end
