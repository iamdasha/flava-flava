import React from "react"
import PropTypes from "prop-types"
class M_filtertagview extends React.Component {
  render() {
    return (
      <div>
        <h2>{this.props.filtertag.name}</h2>
            <p><strong>ID:</strong> {this.props.filtertag.id}</p>
            <p><strong>Name:</strong> {this.props.filtertag.name}</p>

            <a href={`/filtertags/${this.props.filtertag.id}/edit`}>Edit</a><span> | </span>
            <a href={`./`}>Back</a>

      </div>
    );
  }
}

export default M_filtertagview
