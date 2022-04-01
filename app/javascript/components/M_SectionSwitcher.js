import React from "react"
import PropTypes from "prop-types"


class M_SectionSwitcher extends React.Component {
  render () {
    return (
      <div className="switcher_block">
        <nav className="switcher_container">
          <a href="/posts" className="switcher1"><div><p>Статьи</p></div></a>
          <a href="/looks" className="switcher2"><div><p>Образы</p></div></a>
          <a href="/collections" className="switcher3"><div><p>Подборки</p></div></a>
        </nav>
      </div>

)
}
}

export default M_SectionSwitcher
