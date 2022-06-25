import React from "react"
import PropTypes from "prop-types"
import A_LinkIcon from "./A_LinkIcon.js"
import "../../assets/stylesheets/M_Clothcard.scss"

class M_Clothcard extends React.Component {
  render () {
    return (
        <div className="clothcard">
          <p>{this.props.cloth.name}</p>
          <A_LinkIcon link={this.props.cloth.link}/>

            
        </div>



    );
  }
}

export default M_Clothcard
