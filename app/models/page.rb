class Page < ActiveRecord::Base
  set_table_name :pages
  set_primary_key :page_id

  def self.search_words
    search_words = "Creative Solutions Consulting Malawi|consultancy in Malawi|Malawi consultancy"
    return search_words
  end

end
