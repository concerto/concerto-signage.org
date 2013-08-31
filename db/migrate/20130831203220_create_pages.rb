class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :category_id
      t.string :language
      t.boolean :is_help_page
      t.string :title
      t.text :summary
      t.text :body
      t.timestamps
    end
  end
end
