class CreateTableGeolocalisation < ActiveRecord::Migration[5.2]
  def change
    create_table :geolocalisations do |t|
      t.string :projet
      t.date :date_debut
      t.date :date_fin
      t.string :region
      t.string :prefecture
      t.string :sous_prefecture
      t.string :village_quartier
      t.float :longitude
      t.float :latitude
      t.float :cout_projet
      t.integer :nombre_personne_beneficiaire
      t.integer :nombre_femme_beneficiaire
      t.string :annee
      t.float :surface
      t.string :type
      t.float :distance
      
      t.timestamps
    end
  end
end
