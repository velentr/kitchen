# frozen_string_literal: true

class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :ingredients, presence: true
  validates :body, presence: true
end
