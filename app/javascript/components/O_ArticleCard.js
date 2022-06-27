import React from "react"
import PropTypes from "prop-types"
import A_Filtertagpreview from "./A_Filtertagpreview.js"
import A_ArtistAvatar from "./A_ArtistAvatar.js"

class O_ArticleCard extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.post.fimage.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.post.fimage.url;
    }


    let postStyle = {
      backgroundImage: `linear-gradient(180deg, rgba(16, 16, 16, 0) 62.44%, rgba(16, 16, 16, 0.8) 100%), url(${imgsrc})`
    };

    return (
      <div className="postcard">
        <a href={"/posts/" + `${this.props.post.id}`} className="postlink"> </a>

        <div className="imgtest2" ><img src={this.props.post.fimage.thumb.url}/></div>

        <div className="postcardcontent">
          <span>{"Автор статьи " + `${this.props.post.user.username}`}</span>
          <h2>{this.props.post.title}</h2>
        </div>


      </div>


    );
  }
}

export default O_ArticleCard
