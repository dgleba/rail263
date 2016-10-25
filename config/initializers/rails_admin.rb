RailsAdmin.config do |config|

  ### Popular gems integration

  #== Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  
  #sorcery
  # config.authenticate_with do
    # # Use sorcery's before filter to auth users
    # require_login
  # end
  # config.current_user_method(&:current_user)


  ## == Cancan ==
   config.authorize_with :cancan, AdminAbility

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  #config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0
  #config.audit_with :paper_trail, 'Whodunnit', 'PaperTrail::Version' # PaperTrail >= 3.0.0
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    #dashboard                     # mandatory
    # hide disable record count bar graphs, https://github.com/sferik/rails_admin/wiki/Dashboard-action
    dashboard do    
      statistics false
    end
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
     history_index
     history_show
  end

  config.total_columns_width = 987000
  # got error.. include_all_fields
  # don't exclude empty fields in show...
  config.compact_show_view = false
     
     
  # Put this in another initializer since it is specific to this app.. https://github.com/sferik/rails_admin/wiki/Fields   
  # config.model 'Customer' do
    # show do
      # field :created_at
      # field :updated_at
      # include_all_fields # all other default fields will be added after, conveniently
      # #exclude_fields :created_at # but you still can remove fields
    # end
  # end

 
end

  