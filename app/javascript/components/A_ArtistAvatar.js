import React from "react"
import PropTypes from "prop-types"
// import '../../assets/stylesheets/A_ArtistAvatar.scss'
// import Def from "../../assets/images/def.jpg"


class A_ArtistAvatar extends React.Component {
  render () {
    return (
      <img className="A_ArtistAvatar"
        src={this.props.artist.artistphoto.url}
      />
    );
  }
}

export default A_ArtistAvatar
