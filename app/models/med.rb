class Med < ApplicationRecord
    belongs_to :user, optional: true

    validates_presence_of :name, :dose, :prescribed, :first_dose, :notes
    validates :dose, numericality: { only_integer: true }
  
    def make_title_case
      self.name = self.name.titlecase
      self.prescribed = self.prescribed.titlecase
    end
end
