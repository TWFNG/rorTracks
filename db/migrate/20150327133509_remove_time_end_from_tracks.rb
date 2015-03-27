class RemoveTimeEndFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :time_end, :integer
  end
end
