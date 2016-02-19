class CreateBarsTags < ActiveRecord::Migration
  def change
    create_table :bars_tags, id: false do |t|
      t.belongs_to :bar, index: true
      t.belongs_to :tag, index: true
    end
  end
end
