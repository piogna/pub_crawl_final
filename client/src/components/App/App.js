import React from 'react';
import Bar from '../Bar';
import Navbar from '../Navbar';

class App extends React.Component {

  constructor() {
    super();
    this.state = {
      hops : {},
      bars : {},
      crawls : {}
    };
  }

  componentDidMount() {
    this.loadSamples();
  }

  loadSamples() {
    this.setState({
      bars : require('../sample-hops')
    });
  }

  render() {
    return (
      <div>
        <Navbar />
        {Object.keys(this.state.bars).map((key) => 
          <Bar bar={this.state.bars[key]} key={key}/>)}
      </div>
    );
  }
}

export default App;