import React from "react"
import PropTypes from "prop-types"
import "../../assets/stylesheets/A_Filtertag.scss"


const STYLES = [
'Category--default',
'Category--shadow',
]

const A_Filtertagpreview = ({
filtertag,
textpart,
style
}) => {

const checkStyle = STYLES.includes(style)
? style : STYLES[0]

return (
<a className = {`${checkStyle}`}  href={`/looks?filtertag=${filtertag}`}>
  <p>{textpart}</p>
</a>
);
}

export default A_Filtertagpreview
