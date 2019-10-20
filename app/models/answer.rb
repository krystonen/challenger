# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question
  validates_uniqueness_of :correct, scope: :question_id, condition: -> { where(correct: true) }, if: :correct?, message: 'only one good answer per question'
end
