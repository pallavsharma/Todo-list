ActiveAdmin.register User do

    index do 
    column "User ID", :id
    column "User email ID", :email
    column "Last sign in at", :last_sign_in_at
    column "Created_at", :created_at
    column "Updated_at", :updated_at

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

  filter :id, :as => :select, :label => 'User ID'
  filter :email, :as => :string, :label => 'User Email ID' 
  filter :last_sign_in_at, :as => :select, :label => 'Last Sign in at' 
  filter :created_at
  filter :updated_at  

  config.per_page = 10
  
end
