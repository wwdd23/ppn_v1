class Post < ActiveRecord::Base
    belongs_to :newtag
    self.inheritance_column = "_type"
    before_save :set_post_unique_id
    before_save :set_pubdate
    before_save :set_description




    def set_post_unique_id
      self.post_unique_id ||= Digest::MD5.hexdigest(self.title)
    end

    def set_pubdate
      self.pubdate ||= Time.now.to_date
    end

    def set_description
      self.description ||= self.content
    end

end
