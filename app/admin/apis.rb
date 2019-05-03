ActiveAdmin.register Api do

    
    menu parent: "챗봇 API 관리", priority: 0, label: "응답 양식"    
    permit_params :message, :keyboard_id, :name
    before_action :check_role, only: [:new, :create, :edit, :update, :destroy]
    
    controller do
        def check_role
            if current_admin_user.member?
                redirect_to admin_dashboard_path, alert: "권한이 없습니다"
            end
        end
    end
    
    

    index do
        selectable_column
        id_column
        column :name
        column :message
        column :keyboard
        actions if current_admin_user.master?
    end
    filter :false
    
end
