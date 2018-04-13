# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Area.destroy_all
Area.create(
  [
    { name: 'Gerencia General',
      nota: 5,
      parent_id: nil },
    { name: 'Gerencia Finanzas',
      nota: 5,
      parent_id: 1 },
    { name: 'Contabilidad',
      nota: 5,
      parent_id: 2 },
    { name: 'Gerencia de operaciones',
      nota: 5,
      parent_id: 1 },
    { name: 'Gerencia de tecnologia',
      nota: 5,
      parent_id: 1 },
    { name: 'analisis',
      nota: 5,
      parent_id: 4 },
    { name: 'Consultoria',
      nota: 5,
      parent_id: 4 },
    { name: 'Desarrollo',
      nota: 5,
      parent_id: 5 },
    { name: 'QA',
      nota: 5,
      parent_id: 5 }
  ])
