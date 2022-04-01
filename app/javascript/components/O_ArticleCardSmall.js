import React from "react"
import PropTypes from "prop-types"
import A_Filtertagpreview from "./A_Filtertagpreview.js"
import A_ArtistAvatar from "./A_ArtistAvatar.js"

class O_ArticleCardSmall extends React.Component {
  render () {

    return (
      <div className="postcardsmall">
        <a href={"/posts/" + `${this.props.post.id}`} className="postlink"> </a>
        <h2>{this.props.post.title}</h2>
        <div className="postcardsmall_bottom">


          <div className="art-button_block">
            <A_Filtertagpreview
            style="Filtertag--default"
            textpart = { `${this.props.post.filtertag.name}`}>
            </A_Filtertagpreview>

            <A_ArtistAvatar
            style="Artist--default"
            textpart = { `${this.props.post.artist.name}`}
            avatar = {`${this.props.post.artist.artistphoto.url}`}
            artist = {`${this.props.post.artist.id}`}
            >
            </A_ArtistAvatar>


          </div>
        </div>

      </div>


    );
  }
}

export default O_ArticleCardSmall
