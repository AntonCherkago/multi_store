# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Spree::Core::Engine.load_seed
Spree::Auth::Engine.load_seed
SolidusStripe::Engine.load_seed

Spree::Role.where(name: 'creator').first_or_create!
Spree::Role.where(name: 'partnership').first_or_create!
Spree::Role.where(name: 'employees').first_or_create!
Spree::Role.where(name: 'loyalty_program').first_or_create!
Spree::Role.where(name: 'affilate_branding_partnership').first_or_create!
Spree::Role.where(name: 'vendor_owner').first_or_create!
