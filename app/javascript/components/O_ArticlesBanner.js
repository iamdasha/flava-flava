import React from "react"
import PropTypes from "prop-types"
import O_ArticlecardBig from "./O_ArticlecardBig.js"

class O_ArticlesBanner extends React.Component {
  render () {
    return (
      <div>
        <div className="banner">
        {this.props.posts.slice(0,1).map(post => (
           <O_ArticlecardBig key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>
      </div>
    );
  }
}

O_ArticlesBanner.propTypes = {
  posts: PropTypes.array
};

export default O_ArticlesBanner
