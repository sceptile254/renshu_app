class CreateAaas < ActiveRecord::Migration[6.1]
  def change
    create_table :aaas do |t|
      t.string :title
      t.string :body
      t.integer :date

      t.timestamps
    end
  end
end
