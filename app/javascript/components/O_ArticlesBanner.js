import React from "react"
import PropTypes from "prop-types"
import O_ArticleCardBanner from "./O_ArticleCardBanner.js"

class O_ArticlesBanner extends React.Component {
  render () {
    return (
      <div>
        <div className="banner">
        {this.props.posts.slice(0,1).map(post => (
           <O_ArticleCardBanner key={post.id} post={post}/>
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
