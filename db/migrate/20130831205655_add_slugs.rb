class AddSlugs < ActiveRecord::Migration
  def change
    add_column :categories, :slug, :string
    add_column :pages, :slug, :string
    add_index :categories, :slug, unique: true
    add_index :pages, :slug, unique: true
  end
end
