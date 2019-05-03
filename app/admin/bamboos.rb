ActiveAdmin.register Bamboo do
    
    before_action :check_role, only: [:new, :create, :edit, :update, :destroy]
    menu priority: 5, label: "대나무 숲"    
    controller do
        def check_role
            if current_admin_user.member?
                redirect_to admin_dashboard_path, alert: "권한이 없습니다"
            end
        end
    end

end
