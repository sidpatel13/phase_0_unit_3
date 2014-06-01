// U3.W8-9: 


// I worked on this challenge [by myself, with: ].

// 2. Pseudocode
//ATTEMPT 1- Psedocode
// var list ={}

// console.log(list)

// list.new_list = {}

// list.new_item[item] = name;


// list.addItem = function(item, category){
//     list.new_list[item] = category;
// }

// list.deleteItem = function(item, category){
// 	delete list.new_list[item];
// }

// list.viewList = function(){
// 	console.log(list.new_list);
// }

// list.deleteList = function(){
//   list.new_list = {};
// }

//ATTEMPT 2 Pseudocode
// var list = {
//   list.banana = {};
//   list.apple = {};
//   list.milk = {};
// };

// function Item(name, category, checked) {
//     this.name = name;
//     this.category = category;
//     this.checked = false;
    
// }

// var banana = new Item("banana", "fruit", false)
// var milk = new Item("milk", "dairy", false)
// var chocolate = new Item("chocolate", "sweets", false)
// var steak = new Item("steak", "meat", false)

// console.log(banana)
// console.log(milk)

//var list = [banana, milk, chocolate, steak];

// for (i=0; i < list.length; i++){
//   console.log(list[i]);
// }

// banana.checked = true
// console.log(banana.checked)





// 3. Initial Solution (FIRST ATTEMPT)

// var list ={}

// console.log(list)

// list.new_list = {}

// list.new_item[item] = name;


// list.addItem = function(item, category){
//     list.new_list[item] = category;
// }

// list.deleteItem = function(item, category){
// 	delete list.new_list[item];
// }

// list.viewList = function(){
// 	console.log(list.new_list);
// }

// list.deleteList = function(){
//   list.new_list = {};
// }


// }

// list.addItem("Cherries","Fruit")
// // console.log(list.new_list)
// // console.log(list)
// list.viewList()

// // console.log(list.category("Fruit"))
// list.deleteList()
// list.viewList()
// // list.deleteItem("Cherries", "Fruit")
// // console.log(list.new_list)



// 3. Initial Solution (Second ATTEMPT)

var groceryList = [];

var Item = function(name, category, checked) {
    this.name = name;
    this.category = category;
    this.checked = false;
    
}

var addItem = function(name) {
  for (var i=0; i < arguments.length; i++) {
    groceryList.push(arguments[i]);
  }
}

var removeItem = function(name) {
  var index = groceryList.indexOf(name);
    if (index >= 0) {
	  groceryList.splice(index, 1);
	}
}
// display the items in a specific category
var viewList = function(category) {
  for (i = 0; i < groceryList.length; i++) {
    if (category === groceryList[i].category) {
	  console.log(groceryList[i].category + ' : ' + groceryList[i].name);
     }
   }
}

var checked = function(name) {
  for (i=0; i<groceryList.length;i++) {
	if (name === groceryList[i].name) {
		console.log(groceryList[i].checked === true);
	}
  }
}


var apple = new Item("apple","fruit",false);
var steak = new Item("steak","meat",false);
addItem(apple);
addItem(steak);
//console.log(groceryList);
//viewList("fruit");
checked(apple);
console.log(groceryList);


// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






// 5. Reflection 