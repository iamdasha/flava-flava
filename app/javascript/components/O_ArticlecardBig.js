import React from "react"
import PropTypes from "prop-types"
import A_Filtertagpreview from "./A_Filtertagpreview.js"
import A_ArtistAvatar from "./A_ArtistAvatar.js"

class O_ArticlecardBig extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.post.simage.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.post.simage.url;
    }

    let postStyle = {
      backgroundImage: ` linear-gradient(180deg, rgba(16, 16, 16, 0) 62.44%, rgba(16, 16, 16, 0.8) 100%), url(${imgsrc})`
    };

    return (
      <div className="postcardbig">
        <a href={"/posts/" + `${this.props.post.id}`} className="postlink"> </a>
        <div style={postStyle} className="postcardimagebig"></div>
        <div className="postcardcontent postcardcontentbig">
          <div className="art-button_block">
            <A_ArtistAvatar
            style="Artist--default"
            avatar = {`${this.props.post.artist.artistphoto.url}`}
            artist = {`${this.props.post.artist.id}`}
            textpart = { `${this.props.post.artist.name}`}

            >
            </A_ArtistAvatar>
          </div>



          <h2>{this.props.post.title}</h2>
          <span>
          <p className="bannercontent" dangerouslySetInnerHTML={{__html: this.props.post.content}} />
          </span>

          <A_Filtertagpreview
          style="Filtertag--default"
          textpart = { `${this.props.post.filtertag.name}`}>
          </A_Filtertagpreview>


        </div>


      </div>


    );
  }
}

export default O_ArticlecardBig
