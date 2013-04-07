# This migration comes from travel_admin (originally 20130406090707)
class AddCreditCardOrderNumber < ActiveRecord::Migration
  def change
    add_column :pay_credit_cards, :order_id, :integer
  end
end
