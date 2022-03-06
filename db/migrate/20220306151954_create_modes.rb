class CreateModes < ActiveRecord::Migration[6.1]
  def change
    create_table :modes do |t|
      t.string :wazamei
      t.integer :iryoku

      t.timestamps
    end
  end
end
