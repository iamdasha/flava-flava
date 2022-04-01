import React from "react"
import PropTypes from "prop-types"
import O_ArticleCard from "./O_ArticleCard.js"
import O_ArticleCardSmall from "./O_ArticleCardSmall.js"

class O_AllArticles extends React.Component {
  render () {
    return (
      <div>
        <div className="firstblockpost">
        {this.props.posts.slice(1,3).map(post => (
           <O_ArticleCard key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
        ))}
        </div>
        <div className="firstblockpost">
          <div className="firstblockpost_small">
            {this.props.posts.slice(3,5).map(post => (
               <O_ArticleCardSmall  key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
            ))}
          </div>
          {this.props.posts.slice(5,6).map(post => (
             <O_ArticleCard key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
          ))}
        </div>
        <div className="firstblockpost">
          <div className="firstblockpost_small">
            {this.props.posts.slice(6,8).map(post => (
               <O_ArticleCardSmall  key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
            ))}
          </div>
          {this.props.posts.slice(8,9).map(post => (
             <O_ArticleCard key={post.id} post={post} filtertag={post.filtertag_id} artist={post.artist_id}/>
          ))}
        </div>
        <div className="firstblockpost">
        {this.props.posts.slice(9,11).map(post => (
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
