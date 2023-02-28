
export class product {
	constructor (name, price, quantity, description) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.description = description;
	}
}

export let apple = new product('fdapple', 11, 20,'green' )
export let peach = new product ('peach', 11, 22, 'abc'  )
export let milk = new product('milk', 12, 23)
export let fd = new product('fda', 2, 5, 'dabc')
export let cola = new product('fdb', 4, 5, 'abc' )

export let products = []
products.push(apple, peach, fd, cola)


export let filtOne = products.filter(function(func){
	return (func.price == 2)&&(func.name.includes('fd') == true)&&(func.quantity==5)&&(func.description.endsWith('abc') ==true)
})

export let filtTwo = products.filter(function(func){
	return (func.name.startsWith('fd') == true)&&(func.quantity==5)
})

//для проверки содержимого массива
//for (let i= 0; i< filtOne.length; i++) {
//	console.log(filtOne[i])
//}


//for (let i= 0; i< filtTwo.length; i++) {
//	console.log(filtTwo[i])
//}
