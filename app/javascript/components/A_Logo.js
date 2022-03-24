import React from "react"
import PropTypes from "prop-types"
import Logo from "../../assets/images/logo.svg"

// var Logo = require('../../assets/images/logo.svg');


class A_Logo extends React.Component {
  render () {
    return (
      <div>
        <a href="/">  <img className="logo" src={Logo}/></a>
      </div>
    );
  }
}

export default A_Logo
