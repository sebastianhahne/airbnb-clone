class AddUserIdToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_reference :instruments, :user, foreign_key: true
  end
end
