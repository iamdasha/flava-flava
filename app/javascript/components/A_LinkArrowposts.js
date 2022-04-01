import React from "react"
import PropTypes from "prop-types"
import LinkIcon from "../../assets/images/A_Arrow.svg"

class A_LinkArrowposts extends React.Component {
  render () {

    return (
      <div className= 'Arrowlink'>
        <a href={'posts'}></a>
        <p>Все посты</p>
        <img src={LinkIcon}/>


      </div>
    );
  }
}

export default A_LinkArrowposts
