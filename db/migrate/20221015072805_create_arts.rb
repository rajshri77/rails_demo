class CreateArts < ActiveRecord::Migration[7.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.text :description
      t.string :size

      t.timestamps
    end
  end
end
