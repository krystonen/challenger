# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :answers, dependent: :destroy

  validates :number, presence: true, uniqueness: true
  validates :name, presence: true
end
