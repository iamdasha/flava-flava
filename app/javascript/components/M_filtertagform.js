import React from "react"
import PropTypes from "prop-types"
class M_filtertagform extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        name: props.filtertag.name ? props.filtertag.name : ''
      };
      this.handleNameChange = this.handleNameChange.bind(this);

    }
    handleNameChange(e) {
      this.setState({ name: e.target.value });
    }


    render() {
      return (
        <div>
          <label>Name</label>
          <input
            type="text"
            name="filtertag[name]"
            value={this.state.name}
            onChange={this.handleNameChange}
          />
          <input type="submit" value="Create filtertag" />
        </div>
      );
    }
}

export default M_filtertagform
