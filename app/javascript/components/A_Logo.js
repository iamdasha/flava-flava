import React from "react"
import PropTypes from "prop-types"
import Logo from "../../assets/images/logo.svg"
 


class A_Logo extends React.Component {
  render () {
    return (

        <a href="/" className="logolink">  <img className="logo" src={Logo}/></a>

    );
  }
}

export default A_Logo
