class Book < ApplicationRecord

    include PgSearch
    multisearchable :against => [:title, :author, :category]

    def self.search term
        where('title LIKE ? OR author LIKE ? OR category LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%")
    end

end
