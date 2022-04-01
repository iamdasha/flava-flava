import React from "react"
import PropTypes from "prop-types"

class M_Artist extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.photo) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.photo;
    }

    let artistStyle= {
      backgroundImage: `url(${imgsrc})`
    };



    return (
      <div className = "M_Artist">
          <div style={artistStyle} className = "M_Artist_photo"><a  href={`/artists/${this.props.artist.id}`} className = "Artistlink"></a></div>
          <p>{this.props.artist.name}</p>
      </div>
    );

  }
}

export default M_Artist
