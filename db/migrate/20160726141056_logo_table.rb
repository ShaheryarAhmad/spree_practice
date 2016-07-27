class LogoTable < ActiveRecord::Migration
  def change
  	create_table :spree_custom_templates do |t|
         t.string :color
         t.integer :user_id
         t.attachment :logo
  	end
  end
end
