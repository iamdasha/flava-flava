import React from "react"
import PropTypes from "prop-types"
import LinkIcon from "../../assets/images/A_Arrow.svg"

class ALinkArrow extends React.Component {
  render () {

    return (
      <div className= 'Arrowlink'>
        <a href={'looks'}></a>
        <p>Все образы</p>
        <img src={LinkIcon}/>


      </div>
    );
  }
}

export default ALinkArrow
