# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :string           not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord 
  
  COLORS = ['black', 'yellow', 'green', 'brown', 'red', 'violet', 'grey', 'pokadot']
  GENDER = ['M', 'F']
  
  
  validates :name, presence: true 
  validates :birth_date, presence: true 
  validates :color, presence: true, inclusion: { in: COLORS }
  validates :sex, presence: true, inclusion: { in: GENDER } 
  validates :description, presence: true 
  
  def age 
    birth = self.birth_date.to_date
    diff = Date.today - birth 
    age = (diff / 365.25).floor 
    age 
  end 
  
  def self.colors
    COLORS 
  end
end 
