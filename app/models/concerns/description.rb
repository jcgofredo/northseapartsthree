module Description
  extend ActiveSupport::Concern

  included do
    validates :description, length: { in: 2..512 }

    searchable do
      text :description
      string :description
    end

  end

end