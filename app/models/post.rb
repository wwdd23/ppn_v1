class Post < ActiveRecord::Base
    self.inheritance_column = "_type"
end
