module Spree
	class CustomTemplate < ActiveRecord::Base
		belongs_to :user

		has_attached_file :logo, :styles => { :large => "300x300>", :medium => "150x150>", :thumb => "150x150#" }, :default_url => "/images/:style/missing.png"
		validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
	end
end
