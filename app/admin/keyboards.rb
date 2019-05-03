ActiveAdmin.register Keyboard do
  menu parent: "챗봇 API 관리", priority: 1
  permit_params :key_type, :buttons, :name, buttons_attributes: [:content]
  
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
      column :name
      column :buttons do |obj|
        obj.buttons.pluck(:content)
      end
      column :key_type
      actions if current_admin_user.master?
  end

  form do |f|
      f.inputs 'NEW Keyboard' do
          f.input :name
          f.input :key_type
      end
      f.inputs "Buttons" do
        f.has_many :buttons, heading: false, allow_destroy: true do |b|
          b.input :content, input_html: { rows: 2 }
        end
      end
      f.actions if current_admin_user.master?
  end


end
