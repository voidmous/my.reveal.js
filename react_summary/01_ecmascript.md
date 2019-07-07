# ECMA

European Computer Manufacturers Association

---

## ECMAScript & JavaScript

JavaScript is an implementation of the ECMAScript standard.



![:scale 100%](https://adrianmejia.com/images/history-javascript-evolution-es6.png)

[What’s the difference between JavaScript and ECMAScript?](https://www.freecodecamp.org/news/whats-the-difference-between-javascript-and-ecmascript-cba48c73a2b5/ "")



---



[The TC39 Process](https://tc39.github.io/process-document/ "")

![:scale 70%](public/ecmascript_tc39.png)



[tc39/proposals: Tracking ECMAScript Proposals](https://github.com/tc39/proposals "")



---



## ECMAScript Syntax



---



## regex



---



## object.assign



---



`!! function() {}`

```js
function foo() {console.log('a');} // undefined
!function foo() {console.log('a');} // false
function foo() {console.log('a');}() // Uncaught SyntaxError: Unexpected token )
!function foo() {console.log('a');}() 
// a
// true
!!function foo() {console.log('a');}()
// a
//false
(function foo() {console.log('a');})()
// a
// undefined
```

[javascript - What does the exclamation mark do before the function? - Stack Overflow](https://stackoverflow.com/questions/3755606/what-does-the-exclamation-mark-do-before-the-function "")

[Javascript “Bang, Bang. I shot you down” - Use of double bangs (!!) in Javascript.](https://medium.com/swlh/javascript-bang-bang-i-shot-you-down-use-of-double-bangs-in-javascript-7c9d94446054 "")

**the double-bang returns the boolean true/false association** of a value.



---



### JSON

JSON syntax is a subset of JavaScript object expression.

* string must be encapsulated with quote
* no comments allowed
* `JSON.stringify()` and `JSON.parse()`

* `package.json` and user favorite



---



```json
{
  "name": "npm-start",
  "version": "1.0.0",
  "description": "init",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "foobar",
  "license": "ISC",
  "keywords": [
    "react",
    "node"
  ]
}
```



---



### JavaScript Object

```javascript
let home = "home ";
let phone = "123456";

let aman = {first_name: "fname",
'middle name': "mname",
"last name": "lname",
[home + "address"]: "hz",
phone
};
JSON.stringify(aman);
/* "{"first_name":"fname","middle name":"mname","last name":"lname",
"home address":"hz","phone":"123456"}" */
```



---



Array is special object with numerical keys

```js
let arr = [1, 2, 3];
arr.hasOwnProperty(0); // true
arr[6] = 6;
arr; // [1, 2, 3, empty × 3, 6]
Object.keys(arr); // ["0", "1", "2", "6"]
Object.values(arr);
Object.entries(arr);

// `slice()` create a new array reference with the same contents
let arr1 = ["a", "b", "c", "d", "e"];
let arr2 = arr1.slice();
arr1 === arr2; // false
arr2[3] = "c1"
console.log(arr1); // ["a", "b", "c", "d", "e"]
console.log(arr2); // ["a", "b", "c", "c1", "e"]
```



---



### `Object.assign`

```js
let target1 = {a : 1, b : 2};
let target2 = {a : 1, b : 2};
let source1 = {b : 2, c : 3};
let source2 = {b : 5, d : 6};

// Copy properties from each source to the target.
// Note: this WILL MUTATE THE TARGET!
Object.assign(target1, source1, source2);
console.log(target1);
// {a : 1, b : 5, c : 3, d : 6}

// Can be used to safely create copies if the target is a new object:
const newObject = Object.assign({}, target2, source1, source2);

// Result: newObject !== target, and target is unchanged:
console.log(newObject)
// {a : 1, b : 5, c : 3, d : 6}
target1 === newObject; // false

console.log(target2);
// {a : 1, b : 2}

// TODO shallow copy??
```



---



### `var`, `let` and `const`

![A chart comparing the similarities and differences between const let and var](public/const-vs-let-vs-var.png )



---



```javascript
var a = 'a';
let b = 'b';
const c = {'c':'c'};

// global scope
window.a // "a"
window.b // undefined
window.c // undefined

// can be reassigned
a = 'a1'; // "a1"
b = 'b1'; // "b1"
c = 'c1'; // Uncaught TypeError: Assignment to constant variable.
c.c = 'd'; // {c: "d"}

// function scope
let fun = function () {
	var i = 1;
	let j = 2;
	const k = 3;
	console.log(i);
	console.log(j);
	console.log(k);
}
fun(); // 1 2 3
console.log(i); // Uncaught ReferenceError: i is not defined
console.log(j); // Uncaught ReferenceError: j is not defined
console.log(k); // Uncaught ReferenceError: k is not defined


// block scope 1
{
	var x = 4;
	let y = 5;
	const z = 6;
}
console.log(x); // 4
console.log(y); // Uncaught ReferenceError: y is not defined
console.log(z); // Uncaught ReferenceError: z is not defined

// block scope 2
for (var v = 1; v < 3; v++) {
	;
}
console.log(v); // 3
for (let l = 1; l < 3; l++) {
	;
}
console.log(l); // Uncaught ReferenceError: l is not defined
```

---

Always define variable as `const`, use `let` unless you know its reference will be changed.

[javascript - What's the difference between using "let" and "var"? - Stack Overflow](https://stackoverflow.com/questions/762011/whats-the-difference-between-using-let-and-var "")



---



### IIFE

[javascript - What does the exclamation mark do before the function? - Stack Overflow](https://stackoverflow.com/questions/3755606/what-does-the-exclamation-mark-do-before-the-function "")



---



### Symbol





### Function extension

#### Arrow Function (lambda)

```js
function
```

---

#### Default parameter

```js
// Evaluated at call timeSection
function append(value, array = []) {
  array.push(value);
  return array;
}
append(1); //[1]
append(2); //[2], not [1, 2]
```



[Default parameters - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Default_parameters "")

---



### Object extension

```js
var foo = 'bar';
var baz = {foo};
baz // {foo: "bar"}
```

---



module

* `require` and `import`



### `class`



---



### decorator



---



### **Destructuring assignment**

[Destructuring assignment - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment "")



---

### Rest/Spread `...`

[Spread syntax - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax "")

[Rest parameters - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters "")

[tc39/proposal-object-rest-spread: Rest/Spread Properties for ECMAScript](https://github.com/tc39/proposal-object-rest-spread "")



---



```js
// Rest properties collect the remaining own enumerable property keys 
// that are not already picked off by the destructuring pattern. Those 
// keys and their values are copied onto a new object.
let { x, y, ...z } = { x: 1, y: 2, a: 3, b: 4 };
x; // 1
y; // 2
z; // { a: 3, b: 4 }

// Spread properties in object initializers copies own enumerable 
// properties from a provided object onto the newly created object.
let n = { x, y, ...z };
n; // { x: 1, y: 2, a: 3, b: 4 }
```



---



### Functional Programming

- **`map()`**: creates a new array with one value for each item in the original array
- **`filter()`:** creates a new array containing only the original values where the callback returned `true`
- **`forEach()`:** doesn't return anything, but lets you do something with each original value
- **`reduce()`:** produces one new value based on the contents of the original array



---



```js
// map, reduce, filter
const values = [3, 5, 8, 10, 13];

const timesTwo = (num) => num * 2;
const doubledNumbers = values.map(timesTwo);
// [6, 10, 16, 20, 26]


const isEven = (num) => num % 2 === 0;
const evenNumbers = values.filter(isEven);
// [8, 10]


const logValue = (num) => console.log(num);
values.forEach(logValue);
// prints: 3, 5, 8, 10, 13


const addNumbers = (lastResult, currentValue) => {
    return lastResult + currentValue;
}
const sum = values.reduce(addNumbers, 0);
// 39
```



---



#### Pure Function

* It returns the same result if given the same arguments
* It does not cause any observable side effects



---



#### Immutability



---



#### First-class Entity

Functions as first-class entities can:

- refer to it from constants and variables
- pass it as a parameter to other functions
- return it as result from other functions

[Functional Programming Principles in Javascript](https://www.freecodecamp.org/news/functional-programming-principles-in-javascript-1b8fc6c3563f/ "")



---



#### `map`, `reduce`, `filter` Javascript Array Methods

![map filter reduce emoji](./public/map_filter_reduce_emoji.jpg )



TODO: [Swift Guide to Map Filter Reduce](https://useyourloaf.com/blog/swift-guide-to-map-filter-reduce/ "")



![Java 8 Streams Cheat Sheet](https://jrebel.com/wp-content/uploads/2016/01/Java-8-Streams-cheat-sheet-v3.png )

---



```js
const numbers = [2, 4, 8, 10];
const halves = numbers.map(x => x / 2);
// halves is [1, 2, 4, 5]

const words = ["spray", "limit", "elite", "exuberant", "destruction", "present"];
const longWords = words.filter(word => word.length > 6);
// longWords is ["exuberant", "destruction", "present"]

const total = [0, 1, 2, 3].reduce((sum, value) => sum + value, 1);
// total is 7

const compose = (...fns) => x => fns.reduceRight((v, f) => f(v), x);
const add1 = n => n + 1;
const double = n => n * 2;
const add1ThenDouble = compose(
  double,
  add1
);
add1ThenDouble(2); // 6
// ((2 + 1 = 3) * 2 = 6)
```

[JavaScript Functional Programming — map, filter and reduce](https://medium.com/jsguru/javascript-functional-programming-map-filter-and-reduce-846ff9ba492d "")

[Simplify your JavaScript – Use .map(), .reduce(), and .filter()](https://medium.com/poka-techblog/simplify-your-javascript-use-map-reduce-and-filter-bd02c593cc2d "")



---



### Module



---



#### CommonJS

---

#### ES6 Module

`export`

```javascript
// circle.js
const PI = 3.14;
const function circle_area(r) {
    return PI * r * r;
}
export {PI, circle_area}

export default const function(r) { // only one default export
    return 2 * PI * r;
}
```



---



`import`

```javascript
import length, {PI, circle_area as area} from './circle';
PI;
circle_area(2);
length(2);

import React, {Component, PropTypes} from 'react';
```



---





## Debug Tricks

```js
console.info("output variable", window.Date());

```
