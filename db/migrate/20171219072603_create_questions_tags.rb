class CreateQuestionsTags < ActiveRecord::Migration[5.1]
  def change
    create_table :questions_tags do |t|
      t.column :question_id, :integer
      t.column :tag_id, :integer
    end
  end
end
