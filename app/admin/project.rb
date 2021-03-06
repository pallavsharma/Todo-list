ActiveAdmin.register Project do

  index do 
    column "Project ID", :id
    column "Project Title", :projtitle
    column "Project Description", :projdesc
    column "Created_at", :created_at
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  filter :id, :as => :select, :label => 'Project ID'
  filter :projtitle, :as => :string, :label => 'Project Title' 
  filter :projdesc, :as => :string, :label => 'Project Description' 
  filter :created_at
  filter :updated_at  
  filter :user_id, :as => :select

  config.per_page = 10

end
