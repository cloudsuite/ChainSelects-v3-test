# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

{'Toyota' => {'Corolla' => ['2001', '2005']}, 'Honda' => {'Civic' => ['2008', '2012'], 'City Type Z' => ['1996', '2005']}, 'Mitsubishi' => {'Lancer' => ['2000', '2003', 'GLS Sport - 2005']}}.each { |name, brands|
  manufacturer = Manufacturer.create(:name => name)
  brands.each { |brand_name, make_models|
    brand = Brand.create(:name => brand_name, :manufacturer_id => manufacturer.id)
    make_models.each { |make_model|
      MakeModel.create(:name => make_model, :brand_id => brand.id)
    }
  }
}