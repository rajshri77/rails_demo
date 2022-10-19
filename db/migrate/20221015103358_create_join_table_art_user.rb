class CreateJoinTableArtUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :arts, :users do |t|
      t.index [:art_id, :user_id]
      t.index [:user_id, :art_id]
    end
  end
end
