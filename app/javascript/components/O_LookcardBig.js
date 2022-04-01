import React from "react"
import PropTypes from "prop-types"
import A_Filtertagpreview from "./A_Filtertagpreview.js"
import A_ArtistAvatar from "./A_ArtistAvatar.js"
import A_Clothitempreview1 from "./A_Clothitempreview1.js"


class O_LookcardBig extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.look.image.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.look.image.url;
    }


    let lookStyle = {
      backgroundImage: ` linear-gradient(180deg, rgba(16, 16, 16, 0.44) 0%, rgba(7, 7, 7, 0.23) 21.29%, rgba(0, 0, 0, 0.83) 100%), url(${imgsrc})`
    };

    return (
        <div style={lookStyle} className="lookcard">
          <a href={"/looks/" + `${this.props.look.id}`} className="looklink"> </a>
          <div className="art-button_block">
            <A_ArtistAvatar
            style="Artist--default"
            textpart = { `${this.props.look.artist.name}`}
            avatar = {`${this.props.look.artist.artistphoto.url}`}
            artist = {`${this.props.look.artist.id}`}
            >
            </A_ArtistAvatar>
          </div>

          <A_Filtertagpreview
          style="Filtertag--default"
          textpart = { `${this.props.look.filtertag.name}`}>
          </A_Filtertagpreview>

          <div className="look-title">
            <h2>{this.props.look.title}</h2>
          </div>
          <p className="look-date">{this.props.look.updated_at}</p>








        </div>



    );
  }
}

export default O_LookcardBig
