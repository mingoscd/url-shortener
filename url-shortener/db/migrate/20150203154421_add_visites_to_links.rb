class AddVisitesToLinks < ActiveRecord::Migration
  def change
  	add_column :links, :visites, :integer
  end
end
