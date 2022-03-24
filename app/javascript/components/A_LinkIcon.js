import React from "react"
import PropTypes from "prop-types"
import LinkIcon from "../../assets/images/clothlink.svg"

class A_LinkIcon extends React.Component {


  render () {
    let link = '${this.props.cloth.link}';

    return (
      <div>
        <a href='$(link)'>  <img className="LinkIcon" src={LinkIcon}/></a>


      </div>
    );
  }
}

export default A_LinkIcon
