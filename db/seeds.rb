# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
photos = Photo.create([
    {
        title: 'first title',
        image: 'image1.png',
        description: 'A modelling shoot'
    },
    {
        title: 'second title',
        image: 'image2.png',
        description: 'A modelling shoot'
    },
    {
        title: 'third title',
        image: 'image3.png',
        description: 'A modelling shoot'
    },
])