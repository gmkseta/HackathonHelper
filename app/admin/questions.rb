ActiveAdmin.register Question do
    menu label: '질문', priority: 2
    permit_params :user_record, :content, :user_key, :flag

    before_action :check_role, only: [:new, :create, :edit, :update, :destroy]
    
    controller do
        def check_role
            if current_admin_user.member?
                redirect_to admin_dashboard_path, alert: "권한이 없습니다"
            end
        end
    end

    index do
        id_column
        column :content
        column :group do |obj|
            obj.group&.content
        end

        column :team do |obj|
            obj.team&.content
        end
        column :user_key
        column :user_record
        column :user_id
        column :created_at
        actions if current_admin_user.master?
    end
    

end
