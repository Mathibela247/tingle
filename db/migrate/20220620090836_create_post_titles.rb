class CreatePostTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :post_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
