class Property < ActiveRecord::Base
  self.inheritance_column = "kind"
end
