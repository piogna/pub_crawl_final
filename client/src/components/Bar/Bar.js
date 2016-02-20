import React from 'react';

class Bar extends React.Component {
  render() {
    return (
      <div>
        <p>Bar Details Plz: {this.props.bar.name}</p>
        <p>{this.props.bar.address}</p>
      </div>
    );
  } 
}

export default Bar;