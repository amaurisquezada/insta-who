class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :tags, :attribute, :description
  end
end
