class AddHeaderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :header_image, :string
  end
end
