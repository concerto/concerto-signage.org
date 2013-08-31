class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :language
      t.boolean :is_help_category
      t.text :description
    end
  end
end
