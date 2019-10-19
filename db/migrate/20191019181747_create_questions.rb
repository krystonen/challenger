class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :name
      t.string :folder
      t.text :feedback

      t.timestamps
    end
  end
end
