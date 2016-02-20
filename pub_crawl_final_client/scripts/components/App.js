import React from 'react';
import Bar from './Bar';

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      hops : {},
      bars : {},
      crawls : {}
    }
  }

  loadSamples() {
    this.setState({
      bars : require('../sample-hops')
    });
  }

  componentDidMount() {
    this.loadSamples()
  }

  render() {
    console.log(this.state.bars)
    return (
      <div>
        {Object.keys(this.state.bars).map((key) => 
          <Bar bar={this.state.bars[key]} key={key}/>)}
      </div>
    )
  }
};

export default App;