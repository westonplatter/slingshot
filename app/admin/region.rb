ActiveAdmin.register Region do 
  config.per_page = 150
  
  index do 
    column :name
    
    column :cities do |region|
      names = region.cities.map { |city| city.name }
      case names.size
      when 0
        ""
      when 1
        names[0]
      else
        r = ""
        names.each_with_index do |name, index|
         r = index == 0 ? r+= "#{name}" : r += ", #{name}"
        end
        r
      end
    end
    
    default_actions
  end


end                                   
