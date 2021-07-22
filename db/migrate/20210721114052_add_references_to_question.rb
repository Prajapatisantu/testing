class AddReferencesToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :questionable, polymorphic: true, null: false
  end
end
