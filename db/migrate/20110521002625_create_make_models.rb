class CreateMakeModels < ActiveRecord::Migration
  def self.up
    create_table :make_models do |t|
      t.string :name
      t.integer :brand_id

      t.timestamps
    end
  end

  def self.down
    drop_table :make_models
  end
end
