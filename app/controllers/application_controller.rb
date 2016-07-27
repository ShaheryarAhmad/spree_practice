class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :template

   def template
      @template = Spree::Role.find_by_name(:admin).users.first.custom_template
   end





end
