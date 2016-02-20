import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, Links } from 'react-router';
import { createHistory } from 'history';

import App from './components/App';

var routes = (
  <Router history={createHistory()}>
    <Route path="/" component={App}/>
  </Router>
)

ReactDOM.render(routes, document.querySelector('#main'));