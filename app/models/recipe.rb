# frozen_string_literal: true

require 'date'

def months_between(start, finish)
  (finish.year * 12 + finish.month) - (start.year * 12 + start.month)
end

# Model for recipes in the database
class Recipe < ApplicationRecord
  has_many :cooks

  validates :title, presence: true
  validates :ingredients, presence: true
  validates :body, presence: true

  def count_cooks
    num_cells = 36
    all_cooks = cooks.where('created_at > ?', num_cells.months.ago).group_by do |cook|
      months_between(DateTime.now, cook.created_at)
    end
    (0..num_cells - 1).map do |i|
      all_cooks[i].nil? ? 0 : all_cooks[i].length
    end
  end
end
