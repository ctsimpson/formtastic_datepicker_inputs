module Formtastic
  if defined?(ActiveSupport::CoreExtensions)
	  DATE_FORMATS = ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS
  else
	  DATE_FORMATS = Date::DATE_FORMATS
  end

  module Inputs
    autoload :DatePickerInput,     'formtastic_datepicker_inputs/date_picker_input'
    autoload :DateTimePickerInput, 'formtastic_datepicker_inputs/date_time_picker_input'
  end

  class SemanticFormBuilder
    include Formtastic::Inputs::DatePickerInput
    include Formtastic::Inputs::DateTimePickerInput
  end
end
