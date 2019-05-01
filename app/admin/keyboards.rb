ActiveAdmin.register Keyboard do

    permit_params :key_type, :buttons, :name, buttons_attributes: [:content]

    index do
        selectable_column
        id_column
        column :name
        column :buttons do |obj|
          obj.buttons.pluck(:content)
        end
        column :key_type
        actions
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
        f.actions
    end


end
