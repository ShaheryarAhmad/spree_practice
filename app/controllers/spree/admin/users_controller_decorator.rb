Spree::Admin::UsersController.class_eval do


      def upload_logo

binding.pry
       @c = Spree::CustomTemplate.new(spree_user_params)
        redirect_to root_path

      end
    private
      def spree_user_params
        params.require(:spree_user).permit(Spree::PermittedAttributes.custom_template_attributes)
      end
    
    end
 