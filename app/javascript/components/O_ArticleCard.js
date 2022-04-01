import React from "react"
import PropTypes from "prop-types"
import A_Filtertagpreview from "./A_Filtertagpreview.js"
import A_ArtistAvatar from "./A_ArtistAvatar.js"

class O_ArticleCard extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.post.fimage.thumb.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.post.fimage.thumb.url;
    }


    let postStyle = {
      backgroundImage: `linear-gradient(180deg, rgba(16, 16, 16, 0) 62.44%, rgba(16, 16, 16, 0.8) 100%), url(${imgsrc})`
    };

    return (
      <div className="postcard">
        <a href={"/posts/" + `${this.props.post.id}`} className="postlink"> </a>
        <div style={postStyle} className="postcardimage"></div>
        <div className="postcardcontent">
          <div className="art-button_block art-button_block_post">
            <A_ArtistAvatar
            style="Artist--default"
            textpart = { `${this.props.post.artist.name}`}
            avatar = {`${this.props.post.artist.artistphoto.url}`}
            artist = {`${this.props.post.artist.id}`}

            >
            </A_ArtistAvatar>
          </div>



          <h2>{this.props.post.title}</h2>
          <A_Filtertagpreview
          style="Filtertag--default"
          textpart = { `${this.props.post.filtertag.name}`}>
          </A_Filtertagpreview>


        </div>


      </div>


    );
  }
}

export default O_ArticleCard
