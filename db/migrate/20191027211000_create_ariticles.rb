class CreateAriticles < ActiveRecord::Migration[6.0]
  def change
    create_table :ariticles do |t|
      t.string :title
      t.text :body
      t.integer :visits_count

      t.timestamps
    end
  end
end
