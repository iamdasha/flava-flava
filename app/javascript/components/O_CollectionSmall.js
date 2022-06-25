import React from "react"
import PropTypes from "prop-types"
class OCollectionSmall extends React.Component {
  render () {

    return (
        <div className="collectioncardsmall">
          <a href={"/collections/" + `${this.props.collection.id}`} className="looklink"> </a>
          <img src={this.props.collection.cover.url}/>
          <div className="collectcardcontent">
            <span>10 артистов</span>
            <span>10 артистов</span>
            <h2>{this.props.collection.name}</h2>
          </div>
        </div>
    );


  }
}

export default OCollectionSmall
