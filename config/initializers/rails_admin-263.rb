RailsAdmin.config do |config|
     
  # Put this in another initializer since it is specific to this app.. https://github.com/sferik/rails_admin/wiki/Fields   
  # https://github.com/sferik/rails_admin/wiki/Fields   
  config.model 'Customer' do
    show do
      field :created_at
      field :updated_at
      include_all_fields # all other default fields will be added after, conveniently
      #exclude_fields :created_at # but you still can remove fields
    end
  end

  
end

  