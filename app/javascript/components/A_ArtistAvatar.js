import React from "react"
import PropTypes from "prop-types"
// import "../../assets/stylesheets/A_ArtistAvatar.scss"

class A_ArtistAvatar extends React.Component {
  constructor(props) {
    super(props);

    console.log(this.props.artist[0].id)
}

  render () {


    return (
      <a  href={`/artists/${this.props.artist[0].id}`} className = "Onartistlink">
        <div className = "Topblock_lookcard">
          <img src={`${this.props.artist[0].artistphoto.url}`}/>
          <p>Больше об артисте</p>

        </div>


      </a>



    );
  }
}


export default A_ArtistAvatar
