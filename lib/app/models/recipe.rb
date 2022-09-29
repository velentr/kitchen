# frozen_string_literal: true

require 'date'

def months_between(start, finish)
  (finish.year * 12 + finish.month) - (start.year * 12 + start.month)
end

def weeks_between(start, finish)
  (finish.year * 52 + finish.cweek) - (start.year * 52 + start.cweek)
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
      months_between(cook.created_at, DateTime.now)
    end
    (0..num_cells - 1).map do |i|
      all_cooks[i].nil? ? 0 : all_cooks[i].length
    end
  end

  def self.count_all_cooks
    num_cells = 52
    all_cooks = Cook.where('created_at > ?', num_cells.weeks.ago).group_by do |cook|
      weeks_between(cook.created_at.to_date, DateTime.now)
    end
    (0..num_cells - 1).map do |i|
      all_cooks[i].nil? ? 0 : all_cooks[i].length
    end
  end
end
