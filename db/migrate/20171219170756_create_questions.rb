class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :text, :text
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
