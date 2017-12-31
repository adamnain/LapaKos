class ChangeReceiverTypeInMessages < ActiveRecord::Migration[5.1]
  def change
    change_column :messages, :receiver, 'integer USING CAST(receiver AS integer)'
  end
end
