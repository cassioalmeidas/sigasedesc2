class FlatpickrInput < SimpleForm::Inputs::StringInput
  def input(wrapper_options)
    value = @builder.object.send(attribute_name)
    input_html_options[:value] = case value
                                   when Date, Time, DateTime
                                    l value
                                   else
                                    value.to_s
                                 end
    input_html_options[:class] ||= []
    input_html_options[:class] << "datepicker"                                 
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)                              

    @builder.text_field(attribute_name, merged_input_options)
  end
end