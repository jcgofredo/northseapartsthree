class CreateTelephoneNumbers < MainMigration
  def change
    create_table :telephone_numbers, id: false do |t|
      id_column(t)
      t.string :digits, :limit => 64
      foreign_key_id(t, 'contact_detail')
      t.timestamps
    end
  end
end
