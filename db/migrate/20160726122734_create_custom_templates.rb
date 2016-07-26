class CreateCustomTemplates < ActiveRecord::Migration
  def change
    create_table :custom_templates do |t|
    	t.string :color

      t.timestamps null: false
    end
  end
end
