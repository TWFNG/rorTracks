class RemoveTimeStartFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :time_start, :integer
  end
end
