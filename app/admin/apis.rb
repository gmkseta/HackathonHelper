ActiveAdmin.register Api do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    menu parent: "챗봇 API 관리", priority: 0, label: "응답 양식"
    
    permit_params :message, :keyboard_id, :name
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
    index do
        selectable_column
        id_column
        column :name
        column :message
        column :keyboard
        actions
    end
  
end
