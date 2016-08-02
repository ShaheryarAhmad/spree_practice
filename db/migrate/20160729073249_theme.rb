class Theme < ActiveRecord::Migration
  def change

  	add_column :spree_custom_templates, :theme, :string

  end
end
