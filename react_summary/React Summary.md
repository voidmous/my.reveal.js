# Debug Tools

## Chrome Developer Tools

* Elements DOM, CSS
* Console `console.info("variable name: ", var);`
* Network, check cache
* Souce debug with break point

## Fiddler ()



## BrowserSync  ??

[Browsersync - Time-saving synchronised browser testing](https://www.browsersync.io/ "")



<!-- vertical -->

`!!function(){}`

```js
 function foo() {console.log('a');} // undefined
!function foo() {console.log('a');} 
// false, ! turns function declartion to an function expression

 function foo() {console.log('a');}() // Uncaught SyntaxError: Unexpected token )
!function foo() {console.log('a');}() 
// a
// true
!!function foo() {console.log('a');}()
// a
//false
(function foo() {console.log('a');})() // IIFE returns undefined by default
// a
// undefined
```

the double-bang `!!` returns the boolean true/false association of a value.

Note:

[javascript - What does the exclamation mark do before the function? - Stack Overflow](https://stackoverflow.com/questions/3755606/what-does-the-exclamation-mark-do-before-the-function "")
[Javascript “Bang, Bang. I shot you down” - Use of double bangs (!!) in Javascript.](https://medium.com/swlh/javascript-bang-bang-i-shot-you-down-use-of-double-bangs-in-javascript-7c9d94446054 "")

<!-- vertical -->

scripts `pre-` and `post-` hook

```js
"scripts": {
    "test": "mocha test/",
    "pretest": "echo test start!",
    "posttest": "echo test end!"
}
```

<!-- vertical -->

### npx (Node Package Executor ??)

[npx  -  npm](https://www.npmjs.com/package/npx "")

[Introducing npx: an npm package runner – Kat Marchán – Medium](https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b "")

[javascript - Difference between npx and npm? - Stack Overflow](https://stackoverflow.com/questions/50605219/difference-between-npx-and-npm "")

<!-- vertical -->

## ESLint

`eslint --init`
