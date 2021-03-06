# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
     Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Beer.brand)
     Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Cannabis.cannabinoid_abbreviation)
     Appointment.create(date:Faker::Date.between(from: '2020-09-23', to: '2021-07-29'), doctor:Doctor.all[rand(0..Doctor.all.count)], patient:Patient.all[rand(0..Patient.all.count)])
 end

#tab_specialties = ['allergologie','andrologie','anesthésiologie','cardiologie','chirurgie plastique','charlatan']

puts "doctor"

37.times do
  city = City.create(cities: Faker::Address.city)
end


5.times do
  Doctor.create(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name  ,
    city_id: City.all.sample.id ,
    specialty: ["charcudoc", "ophtalmologue", "proctologue", "medecin generaliste"].sample ,
    zip_code: Faker::Number.number(digits: 5)
  )
end



37.times do
  Patient.create(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name ,
    city_id: City.all.sample.id 
  )
end



#37.times do 
  #Appointment.create(
    #doctor_id: Doctor.all.sample.id ,
    #patient_id: Patient.all.sample.id ,
    #city_id: City.all.sample.id ,
    #date: Faker::Time.forward(days: 37,  period: :day)
  )
#end

puts "chuck norris run rails"



end
end
end
end

