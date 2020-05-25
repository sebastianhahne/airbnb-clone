class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
