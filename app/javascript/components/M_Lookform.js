import React from "react"
import PropTypes from "prop-types"

class M_Lookform extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        title: props.look.title ? props.look.title : '',
        content: props.look.content ? props.look.content : '',
        image: props.look.content ? props.look.image : '',
        artist_id: '',
        filtertag_id: '',
        post_id: '',
      };

    }
    handleTitleChange = (e) => {this.setState({ title: e.target.value });}
    handleContent = (e) => {this.setState({ content: e.target.value });}
    handleImage = (e) => {this.setState({ image: e.target.files[0] });}

    handleArtist = (e) => {console.log(e.target.value) this.setState({ artist_id: e.target.value})}
    handleFiltertag = (e) => {console.log(e.target.value) this.setState({ filtertag_id: e.target.value})}
    handlePost = (e) => {console.log(e.target.value) this.setState({ post_id: e.target.value})}

    render() {
      return (
        <div>
          <label>Title</label>
          <input
            type="text"
            name="look[title]"
            value={this.state.title}
            onChange={this.handleTitleChange}
          />

          <label>Content</label>
          <input
            type="text"
            name="look[content]"
            value={this.state.content}
            onChange={this.handleContent}
          />

          <label>Image</label>
          <input
            type="file"
            name="look[image]"
            onChange={this.handleImage}
          />

          <label>Артист</label>
          <div >
            {this.props.artist.map (artist => {
              return (
                <>
                <input
                onChange={this.handleArtist}
                type="radio"
                name="look[artist_id]"
                value={artist.id}/>
                  <h2>{artist.name}</h2>
                </>
                  )})}
          </div>

          <label>Фильтр</label>
          <div >
            {this.props.filtertag.map (filtertag => {
              return (
                <>
                <input
                onChange={this.handleFiltertag}
                type="radio"
                name="look[filtertag_id]"
                value={filtertag.id}/>
                  <h2>{filtertag.name}</h2>
                </>
                  )})}
          </div>

          <label>Пост</label>
          <div >
            {this.props.post.map (post => {
              return (
                <>
                <input
                onChange={this.handlePost}
                type="radio"
                name="look[post_id]"
                value={post.id}/>
                  <h2>{post.title}</h2>
                </>
                  )})}
          </div>

          <input type="submit" value="Create look" />
        </div>
      );
    }
}

export default M_Lookform
