import React from "react"
import PropTypes from "prop-types"
import '../../assets/stylesheets/A_Filtertag.scss'



class A_Filtertagpreview extends React.Component {
  render () {
    let filtertag = '';
    if (this.props.filtertag) {
      filtertag = this.props.filtertag.name
    }



    let textpart = <span>{filtertag}</span>

    return (
      <a
      className = {`filtertag`}
      >{textpart}</a>
    );
  }
}

export default A_Filtertagpreview
