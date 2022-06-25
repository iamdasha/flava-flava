import React from "react"
import PropTypes from "prop-types"


class O_ArticlecardBig extends React.Component {
  render () {
    let imgsrc = '';

    
    return (
      <div className="postcardbig">
        <a href={"/posts/" + `${this.props.post.id}`} className="postlink"> </a>
        <img src={this.props.post.fimage.url}/>
        <div className="postcardcontent postcardcontentbig">
          <span>{"Автор статьи " + `${this.props.post.user.username}`}</span>
          <h2>{this.props.post.title}</h2>
        </div>
      </div>

    );
  }
}

export default O_ArticlecardBig
