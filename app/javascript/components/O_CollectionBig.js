import React from "react"
import PropTypes from "prop-types"
class O_CollectionBig extends React.Component {
  render () {
    let imgsrc = '';

    if (!this.props.collection.cover.url) {
      imgsrc = '';
    }  else {
      imgsrc = this.props.collection.cover.url;
    }


    let collectionStyle = {
      backgroundImage: `linear-gradient(180deg, rgba(16, 16, 16, 0.3) 0%, rgba(16, 16, 16, 0.3) 100%), url(${imgsrc})`
    };
    return (
        <div style={collectionStyle} className="collectioncard">
          <a href={"/collections/" + `${this.props.collection.id}`} className="looklink"> </a>
            <h2>{this.props.collection.name}</h2>
        </div>
    );


  }
}

export default O_CollectionBig
