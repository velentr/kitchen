# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :cooks

  validates :title, presence: true
  validates :ingredients, presence: true
  validates :body, presence: true
end
