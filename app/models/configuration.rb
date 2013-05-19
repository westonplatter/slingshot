class Configuration < ActiveRecord::Base
  attr_accessible :deleted, :value, :configuration_category_id

  belongs_to :configuration_category
end
