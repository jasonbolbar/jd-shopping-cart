module CartsHelper

  def cart_element_data(f)
    new_object = f.object.cart_products.klass.new
    id = new_object.object_id
    fields = f.simple_fields_for(:cart_products,new_object,child_index:id) do |p|
      html = content_tag :div, class: 'row-fluid' do
        html_div = content_tag :div, class:'span9' do
          html_span_9 = p.input :product_id, as: :hidden, input_html: {value:'product_id_goes_here'}
          html_span_9 += content_tag :span,'product_goes_here'
          html_span_9.html_safe
        end
        html_div += content_tag :div, class:'span2' do
          html_span_2 = p.input :_destroy, as: :hidden
          html_span_2 += link_to 'X' , '#', class:'delete-product'
          html_span_2.html_safe
        end
        html_div.html_safe
      end
      html.html_safe
    end
    {id:id,fields:fields.gsub('\n','')}
  end
end
