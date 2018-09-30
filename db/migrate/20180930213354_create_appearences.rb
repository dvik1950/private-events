class CreateAppearences < ActiveRecord::Migration[5.2]
  def change
    create_table :appearences do |t|

      t.timestamps
    end
  end
end
