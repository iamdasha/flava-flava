import React from "react"
import PropTypes from "prop-types"

class M_Artist extends React.Component {
  render () {

    return (
      <div className = "M_Artist">
          <div className = "M_Artistphoto">
            <a href={`/artists/${this.props.artist.id}`} className = "Artistlink"><img src={this.props.artist.artistphoto.thumb.url}/></a>
          </div>
          <p>{this.props.artist.name}</p>
      </div>
    );

  }
}

export default M_Artist
