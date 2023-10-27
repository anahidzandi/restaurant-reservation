class AddTablesSampleData < ActiveRecord::Migration[5.2]
  def change
    (1..10).to_a.each do |i|
      Table.create name: "Table #{i}", capacity: rand(2..8)
    end
  end
end
