class RemoveColumnHeaderImagefromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :header_image
  end
end
