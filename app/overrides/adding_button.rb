



Deface::Override.new(:virtual_path  => 'spree/layouts/admin',
                     :insert_bottom => "#main-sidebar",
                     :text          => "<%= render partial: 'spree/admin/shared/sub' %>",
                     :name          => "registration_future")