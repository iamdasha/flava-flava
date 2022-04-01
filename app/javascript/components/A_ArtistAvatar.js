import React from "react"
import PropTypes from "prop-types"
// import "../../assets/stylesheets/A_ArtistAvatar.scss"


const STYLES = [
'Artistphoto'
]

const A_ArtistAvatar = ({
artist,
avatar,
textpart,
style
}) => {

const checkStyle = STYLES.includes(style)
? style : STYLES[0]

return (
  <a  href={`artists/${artist}`} className = "Onartistlink">
    <div className = "Topblock_lookcard">
      <img src={`${avatar}`}/>
      <p>{textpart}</p>

    </div>


  </a>

);
}

export default A_ArtistAvatar
