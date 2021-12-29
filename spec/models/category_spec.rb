require 'rails_helper'

RSpec.describe Category, type: :model do

  describe '#create' do
    it 'when attributes are not valid' do
      #Arrange 
      new_category = Category.new
      #Act 
      new_category.save
      #Assert
      expect(new_category.errors[:name].count).to_not be(0)
    end

    it 'when i want to save a two categories with same name' do
      category1 = Category.new(name: 'toys')
      category2 = Category.new(name: 'toys')
      category3 = Category.new(name: 'food')

      category1.save
      category2.save
      category3.save
      
      expect(category1.errors[:name].count).to be(0)
      expect(category2.errors[:name].count).to_not be (0)
end
end
end
