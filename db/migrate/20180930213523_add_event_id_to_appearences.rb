class AddEventIdToAppearences < ActiveRecord::Migration[5.2]
  def change
    add_reference :appearences, :event, foreign_key: { to_table: :events}
    add_reference :appearences, :attendee, foreign_key: { to_table: :users}
  end
end
