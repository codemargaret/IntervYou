class CreateQuestionsTags < ActiveRecord::Migration[5.1]
  def change
    create_table :questions_tags do |t|
      t.belongs_to :question, index: true
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
