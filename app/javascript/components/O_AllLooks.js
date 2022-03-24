import React from "react"
import PropTypes from "prop-types"
import O_Lookcard from "./O_Lookcard.js"

class O_AllLooks extends React.Component {
  render () {
    return (
      <div>
        
        <div className="firstblock">
        {this.props.looks.slice(0,3).map(look => (
           <O_Lookcard look={look}/>
        ))}
        </div>
        <div className="secondblock">
        {this.props.looks.slice(3,5).map(look => (
           <O_Lookcard look={look}/>
        ))}
        </div>
      </div>
    );
  }
}

O_AllLooks.propTypes = {
  looks: PropTypes.array
};

export default O_AllLooks
