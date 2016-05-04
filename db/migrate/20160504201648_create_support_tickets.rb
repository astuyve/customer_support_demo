class CreateSupportTickets < ActiveRecord::Migration
  def change
    create_table :support_tickets do |t|
      t.string :email
      t.string :title
      t.text :message

      t.timestamps null: false
    end
  end
end
