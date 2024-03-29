# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_products
  has_many :products, through: :cart_products

  validates :total, presence: true, numericality: true
end