ActiveAdmin.register City do 
  config.per_page = 150
  
  index do 
    column :name
    column :region
    default_actions
  end
  
end                                   
