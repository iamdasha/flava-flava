import React from "react"
import PropTypes from "prop-types"
import O_ArticleCard from "./O_ArticleCard.js"


class O_AllArticlesinCollection extends React.Component {
  render () {
    return (
      <div>

        <div className="firstblockpost">
        {this.props.posts.slice(0,10).map(post => (
           <O_ArticleCard key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>

      </div>
    );
  }
}

export default O_AllArticlesinCollection 
