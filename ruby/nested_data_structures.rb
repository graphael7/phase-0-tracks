classroom = {

	desk1: {
		supplies:[
			'scissors','crayons'],
		location: {
			row: 1,
			column:4
		},
		color: 'blue'

	},
	desk2:{
		supplies:[
			'paper','pencil'],
		location: {
			row: 3,
			column:2
		},
		color: 'red'

	},
	desk3:{
		supplies:[
			'pen','calculator'],
		location: {
			row: 2,
			column:3
		},
		color: 'yellow'

	}
}

puts classroom[:desk2][:supplies][1].capitalize
puts classroom[:desk3][:color] = 'purple'
puts classroom[:desk1][:location][:row]
puts classroom[:desk3][:color]