import React from "react"
import PropTypes from "prop-types"
import Check from "../../assets/images/check.svg"


const A_Avatar = ({
  avatar,
  link,
  size,
  textpart
}) => {
    return (
      <a href={`/users/${link}`}>
        <div className="avatar">
          <img className="useravatar" src={`${avatar}`}/>
          <p>{textpart}</p>
          <img className="check" src={Check}/>
        </div>
      </a>

    );
}

export default A_Avatar
