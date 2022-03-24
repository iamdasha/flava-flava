import React from "react"
import PropTypes from "prop-types"
import "../../assets/stylesheets/M_SectionSwitcher.scss"

class M_SectionSwitcher extends React.Component {
  render () {
    return (
      <nav className="switcher_container">
        <li><a href="/posts">Статьи</a></li>
        <li><a href="/looks">Образы</a></li>
        <li><a href="/collections">Подборки</a></li>
      </nav>
    );
  }
}

export default M_SectionSwitcher
