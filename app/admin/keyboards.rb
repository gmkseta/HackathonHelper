ActiveAdmin.register Keyboard do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :key_type, :buttons, :name
#
# or
#
    index do
        selectable_column
        id_column
        column :name
        column :message
        column :keyboard
        actions
    end
end
