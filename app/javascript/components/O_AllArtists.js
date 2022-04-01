import React from "react"
import PropTypes from "prop-types"
import M_Artist from "./M_Artist.js"


class O_AllArtists extends React.Component {
  render () {
    return (
      <div className="artists_block">

        <div className="firstblockart">
        {this.props.artists.slice(0,6).map(artist => (
           <M_Artist key={artist.id} artist={artist} photo={artist.artistphoto.thumb.url}/>
        ))}
        </div>
      </div>
    );
  }
}

O_AllArtists.propTypes = {
  artists: PropTypes.array
};

export default O_AllArtists
