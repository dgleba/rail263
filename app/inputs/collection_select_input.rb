# app/inputs/collection_select_input.rb
class CollectionSelectInput < SimpleForm::Inputs::CollectionSelectInput
  def input_html_classes
    super.push('dgselect2')
  end
end