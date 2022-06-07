class CategoryRadioInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    "$ #{@builder.collection_radio_buttons(attribute_name, merged_input_options)}".html_safe
  end
end
