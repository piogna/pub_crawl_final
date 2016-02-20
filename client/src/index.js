import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import App from './components/App';
// import configureStore from './store/configureStore';
// import './styles/styles.scss'; //Yep, that's right. You can import SASS/CSS files too! Webpack will run the associated loader and plug this into the page.
import { Router, Route, Links, hashHistory } from 'react-router';
// import { createHistory } from 'history'; - not working - depriecated?

const routes = (
  <Router history={hashHistory}>
    <Route path="/" component={App}/>
  </Router>
);

ReactDOM.render(routes, document.querySelector('#main'));

