import React from "react"
import PropTypes from "prop-types"

class M_SectionSwitcher extends React.Component {
  render () {
    return (
      <nav>
        <li><a href="/posts">Статьи</a></li>
        <li><a href="/looks">Образы</a></li>
        <li><a href="/collections">Подборки</a></li>
      </nav>
    );
  }
}

export default M_SectionSwitcher
