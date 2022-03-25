import React from "react"
import PropTypes from "prop-types"
import O_ArticleCard from "./O_ArticleCard.js"

class O_AllArticles extends React.Component {
  render () {
    return (
      <div>
        <h1>All Posts</h1>
        <div className="firstblock">
        {this.props.posts.slice(0,3).map(post => (
           <O_ArticleCard post={post}/>
        ))}
        </div>
        <div className="secondblock">
        {this.props.posts.slice(3,5).map(post => (
           <O_ArticleCard post={post}/>
        ))}
        </div>
      </div>
    );
  }
}

O_AllArticles.propTypes = {
  posts: PropTypes.array
};

export default O_AllArticles
