# frozen_string_literal: true

class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :name
      t.string :code
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
