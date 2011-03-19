Spree::BaseHelper.module_eval do

  def link_to_cart(text = t('cart'))
    if current_order.nil? or current_order.line_items.empty?
      text = "#{text}: (#{t('empty')})"
    else
      text = "#{text}: (#{current_order.item_count}) #{order_price(current_order)}"
    end
    link_to text, cart_path
  end

end
