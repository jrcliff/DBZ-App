class CharacterTransformation < ApplicationRecord
    belongs_to :character
    belongs_to :transformation

    def self.index(id)
        CharacterTransformation.where :character_id => id
      end

end
