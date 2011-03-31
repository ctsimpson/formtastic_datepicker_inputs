module Formtastic
  module Inputs
    autoload :DatePickerInput,     'formtastic_datepicker_inputs/date_picker_input'
    autoload :DateTimePickerInput, 'formtastic_datepicker_inputs/date_time_picker_input'
  end

  class FormBuilder
    include Formtastic::Inputs::DatePickerInput
    include Formtastic::Inputs::DateTimePickerInput
  end
end
