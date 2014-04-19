class AddActiveColumn < ActiveRecord::Migration
  def change
    remove_column :pages, :is_help_page
    add_column :pages, :is_active, :boolean
  end
end
