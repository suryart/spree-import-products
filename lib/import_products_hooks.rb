class ImportProductsHooks < Spree::ThemeSupport::HookListener
  # custom hook updated to work with spree 0.70.x
  Deface::Override.new(:virtual_path => "layouts/admin",
                           :name => "Add Product Imports to menu",
                           :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                           :text => " <%= tab :product_imports %>",
                           :disabled => false)
end
