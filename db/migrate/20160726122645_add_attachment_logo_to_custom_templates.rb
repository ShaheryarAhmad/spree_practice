class AddAttachmentLogoToCustomTemplates < ActiveRecord::Migration
  def self.up
    change_table :custom_templates do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :custom_templates, :logo
  end
end
