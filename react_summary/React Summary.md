
# Component Showcase



# Debug Tools

## Chrome Developer Tools

* Elements DOM, CSS
* Console `console.info("variable name: ", var);`
* Network, check cache
* Souce debug with break point

## Fiddler ()



## BrowserSync  ??

[Browsersync - Time-saving synchronised browser testing](https://www.browsersync.io/ "")



## React Start Up

### Local Template

[download this HTML file](https://raw.githubusercontent.com/reactjs/reactjs.org/master/static/html/single-file-example.html)

* handy for quick small testing, should not use in production
* write React code inside `text/babel` script block

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Hello World</title>
</head>
<body>
  <div id="root"></div>
  <script type="text/babel">
    ReactDOM.render(
      <h1>Hello, world!</h1>,
      document.getElementById('root')
    );
  </script>
  <script src="https://unpkg.com/react@16/umd/react.development.js"></script>
  <script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js"></script>
  <script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>
</body>
</html>
```



---



### `create-react-app`

```shell
$ create-react-app projname
$ npm run eject
```



---
