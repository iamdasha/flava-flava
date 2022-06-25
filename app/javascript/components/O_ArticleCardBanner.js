import React from "react"
import PropTypes from "prop-types"
import A_Logoextra from "./A_Logoextra.js"


class O_ArticleCardBanner extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.post.simage.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.post.simage.url;
    }


    let postStyle = {
      backgroundImage: `url(${imgsrc})`
    };

    return (
      <div style={postStyle} className="postcardsmall">
        <a href={"/posts/" + `${this.props.post.id}`} className="postlink"> </a>
        <div className="bannerhover"></div>
        <div className="bannerhover bannerhover2"></div>

        <A_Logoextra />
        <h1 className="bannertitle">{this.props.post.title}</h1>
        <div className="bannertag">Статья</div>
        <span>{"Пишет историк моды " + `${this.props.post.user.username}`}</span>


      </div>


    );
  }
}

export default O_ArticleCardBanner
