import React from 'react';

class Bar extends React.Component {
  render() {
    return (
      //var details = this.props.loadSamples;
      <div>
        <p>Bar Details Plz: {this.props.bar.name}</p>
        <p>{this.props.bar.address}</p>
      </div>
    )
  } 
};

// Header.propTypes = {
//   details : React.PropTypes.string.isRequired
// }

export default Bar;