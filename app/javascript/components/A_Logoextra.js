import React from "react"
import PropTypes from "prop-types"
import Logo2 from "../../assets/images/logo2.svg"

class A_Logoextra extends React.Component {
  render () {
    return (
      <a href="/" className="logolink">  <img className="logo2" src={Logo2}/></a>

    );
  }
}

export default A_Logoextra
