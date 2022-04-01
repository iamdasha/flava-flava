import React from "react"
import PropTypes from "prop-types"
class OCollectionSmall extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.collection.cover.thumb.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.collection.cover.thumb.url;
    }


    let collectionStyle = {
      backgroundImage: `linear-gradient(180deg, rgba(16, 16, 16, 0.3) 0%, rgba(16, 16, 16, 0.3) 100%), url(${imgsrc})`
    };
    return (
        <div style={collectionStyle} className="collectioncardsmall">
          <a href={"/collections/" + `${this.props.collection.id}`} className="looklink"> </a>
            <h3>{this.props.collection.name}</h3>
        </div>

    );


  }
}

export default OCollectionSmall
