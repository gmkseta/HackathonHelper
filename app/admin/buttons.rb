ActiveAdmin.register Button do

    menu parent: "챗봇 API 관리", priority: 2, label: "버튼"
    permit_params :next_api_id, :content, :keyboard_id
    before_action :check_role, only: [:new, :create, :edit, :update, :destroy]
    
    controller do
        def check_role
            if current_admin_user.member?
                redirect_to admin_dashboard_path, alert: "권한이 없습니다"
            end
        end
    end


end
