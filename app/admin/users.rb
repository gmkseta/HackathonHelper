ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
    action_item :import_demo, only: :index do
        render 'import'    
    end
    collection_action :import, method: [:post] do
        User.import(params[:file])
        redirect_to admin_users_path
    end
    index do
        id_column
        column :email
        column :name
        column :college
        column :kill_point
        actions if current_admin_user.master?
    end
end
