import React from "react"
import PropTypes from "prop-types"

class M_Sidebar extends React.Component {
  render () {
    return (
      <div className="sidebar">
        <div className="sidebarfirst">
          <a href="/looks"><li>Образы</li></a>
          <a href="/posts"><li>Статьи</li></a>
          <a href="/collections"><li>Подборки</li></a>
          <a href="/artists"><li>Артисты</li></a>
          <a href="/users"><li>Люди</li></a>
        </div>
        <div>
          <a href="/filtertags"><li>Фильтры</li></a>
          <a href="/brands"><li>Бренды</li></a>
          <a href="/cloths"><li>Одежда</li></a>
        </div>
      </div>
    );
  }
}

export default M_Sidebar
