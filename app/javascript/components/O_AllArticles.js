import React from "react"
import PropTypes from "prop-types"
import O_ArticleCard from "./O_ArticleCard.js"
import O_ArticlecardBig from "./O_ArticlecardBig.js"

class O_AllArticles extends React.Component {
  render () {
    return (
      <div>
        <div className="firstblockpost1">
        {this.props.posts.slice(0,1).map(post => (
           <O_ArticlecardBig key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>

        <div className="firstblockpost">
        {this.props.posts.slice(1,8).map(post => (
           <O_ArticleCard key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>

        <div className="firstblockpost1 firstblockpost2">
        {this.props.posts.slice(8,9).map(post => (
           <O_ArticlecardBig key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>

        <div className="firstblockpost1">
        {this.props.posts.slice(9,10).map(post => (
           <O_ArticlecardBig key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>

        <div className="firstblockpost">
        {this.props.posts.slice(10,15).map(post => (
           <O_ArticleCard key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
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
