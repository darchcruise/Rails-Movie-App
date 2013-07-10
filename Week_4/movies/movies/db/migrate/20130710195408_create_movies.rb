class CreateMovies < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.string :plot
      t.string :mpaa_rating
      t.integer :user_rating
    end
  end

end
