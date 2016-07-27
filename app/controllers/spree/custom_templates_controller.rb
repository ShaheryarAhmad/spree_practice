module Spree
class CustomTemplatesController < ApplicationController

  def update_logo 
    admin = Spree::Role.find_by_name(:admin).users.first
    if admin.custom_template.present?
      admin.custom_template.update(logo: custom_params[:logo])
    else
  	  template = Spree::CustomTemplate.new(custom_params)
      admin.custom_template = template
    end  
    redirect_to spree.root_path
  end

  def update_color 
    admin = Spree::Role.find_by_name(:admin).users.first
    if admin.custom_template.present?
      admin.custom_template.update(color: params[:color])
    else
      template = Spree::CustomTemplate.new(color: params[:color])
      admin.custom_template = template
    end  
    redirect_to spree.root_path
  end


  private

  def custom_params
       params.require(:custom_template).permit(:logo, :color)
  end

end
end