class CreateAsBs < ActiveRecord::Migration
  def change
    create_table :as_bs do |t|
    	t.integer :a_id
    	t.integer :b_id
    end
  end
end
