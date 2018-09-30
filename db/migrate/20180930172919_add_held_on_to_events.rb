class AddHeldOnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :held_on, :date
  end
end
