
puts "Se limpia la BD"
User.destroy_all
Dolar.destroy_all

puts "Se crean los usuarios"
User.create!(
	nombre: 'Rafael',
	apellido: 'Rodriguez',
	username: 'rafa',
	email: 'rafa@com',
	password: '123456')

User.create!(
	nombre: 'Julio',
	apellido: 'Peña',
	username: 'julio',
	email: 'juliopodemos@gmail.com',
	password: '123456')

puts "Se carga el dolar"
Dolar.create!(cambio: 198575)
