import React from "react"
import PropTypes from "prop-types"
import O_CollectionBig from "./O_CollectionBig.js"
import O_CollectionSmall from "./O_CollectionSmall.js"

class O_Allcollections extends React.Component {
  render () {
    return (
      <div>
        <div className="firstblockcollect">
        {this.props.collections.slice(0,4).map(collection => (
           <O_CollectionSmall key={collection.id} collection={collection} />
        ))}
        </div>
        <div className="secondtblockcollect">
        {this.props.collections.slice(4,8).map(collection => (
           <O_CollectionSmall key={collection.id} collection={collection} />
        ))}
        </div>

      </div>
    );
  }
}
O_Allcollections.propTypes = {
  collections: PropTypes.array
};
export default O_Allcollections
