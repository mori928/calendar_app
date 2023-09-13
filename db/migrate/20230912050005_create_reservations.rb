class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      # 他の属性を追加する場合はここに追加します
      t.timestamps
    end
  end
end