import React from "react"
import PropTypes from "prop-types"

class O_ArticleCard extends React.Component {
  render () {

    return (
      <div>
        <h1>{this.props.post.title}</h1>
        <p dangerouslySetInnerHTML={{__html: this.props.post.content}} />
        <p>{this.props.post.category_id}</p>
      </div>

    );
  }
}

export default O_ArticleCard
