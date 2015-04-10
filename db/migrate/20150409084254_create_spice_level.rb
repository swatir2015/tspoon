class CreateSpiceLevel < ActiveRecord::Migration
  def change
    create_table :spice_levels do |t|
      t.string :name, required: true
    end
  end
end
