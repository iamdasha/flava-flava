import React from "react"
import PropTypes from "prop-types"

const STYLES = [

]

const A_Clothitempreview1 = ({
title,
// brand
}) => {

const checkStyle = STYLES.includes(style)
? style : STYLES[0]

return (
  <a>
    <p>{textpart}</p>
    <div className = {`${checkStyle}`}>
      <p>{title}</p>
      // <p>{brand}</p>
    </div>

  </a>

);
}

export default A_Clothitempreview1
