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
      <div className="lookcardbig">
        <a href={"/looks/" + `${this.props.look.id}`} className="looklink"> </a>
        <div className="imgtest"><img src={this.props.look.image.url}/></div>

        <div className="lookcardcontent lookcardcontentbig">
          <span>{this.props.look.filtertag.name}</span>
          <h2>{this.props.look.title}</h2>
        </div>
      </div>




    );
  }
}

export default O_LookcardBig
