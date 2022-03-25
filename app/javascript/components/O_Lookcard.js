import React from "react"
import PropTypes from "prop-types"
import "../../assets/stylesheets/O_Lookcard.scss"
import A_Filtertagpreview from "./A_Filtertagpreview.js"


class O_Lookcard extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.look.image.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.look.image.url;
    }

    let lookStyle = {
      backgroundImage: `url(${imgsrc})`
    };

    return (
        <div style={lookStyle} className="lookcard">
          <a href={"/looks/" + `${this.props.look.id}`} className="looklink"> </a>
          <h2>{this.props.look.title}</h2>
          <p>{this.props.look.updated_at}</p>
          <p>{this.props.look.filtertag_id} </p>
          <p>{this.props.look.filtertag_id.name} </p>


          <A_Filtertagpreview
          filtertag = {this.props.look.filtertag_id}

          />

        </div>



    );
  }
}

export default O_Lookcard
