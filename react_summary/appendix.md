# Appendix

<!-- vertical -->

## Top-Level API

```js
React.createElement(
  type,
  [props],
  [...children]
)
```

Note: [React Top-Level API – React](https://reactjs.org/docs/react-api.html "")

<!-- vertical -->

## `npm` versus `yarn`

[NPM vs Yarn Cheat Sheet – Red Shift](https://shift.infinite.red/npm-vs-yarn-cheat-sheet-8755b092e5cc?gi=bd42fb41317b "")

* [Cheat Sheet (PDF)](https://infinite.red/files/yarn.pdf )

```shell
#Starting a new project
npm init === yarn init      

 #Installing all the dependencies of project
npm install === yarn or yarn install    

#Adding a dependency
npm install [package] === yarn add [package] #The  package is saved to your package.json immediately.      
npm install  [package]@[version] === yarn add [package]@[version]
npm install [package]@[tag] === yarn add [package]@[tag]

#Add a dev dependency
npm install [package] --save-dev === yarn add [package] --dev

#Upgrading a dependency
npm update [package] === yarn upgrade [package]
npm update [package]@[version] === yarn upgrade [package]@[version]
npm update [package]@[tag] === yarn upgrade [package]@[tag]

#Removing a dependency
npm uninstall [package] === yarn remove [package]

#View registry information
npm view [package] === yarn info [package]

#List installed packages
npm list === yarn list
npm list --depth === yarn list --depth=0

#Install packages globally
npm install -g [package] === yarn global addb [package]

#Run a defined package script
npm run [script] === yarn run [script]
```

