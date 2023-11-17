class FixColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :preview, :overview
    rename_column :movies, :url, :poster_url
 end
end
