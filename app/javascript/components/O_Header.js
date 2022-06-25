import React from "react"
import PropTypes from "prop-types"
import A_Avatar from "./A_Avatar.js"
import A_Logo from './A_Logo.js'


class O_header extends React.Component {
  render () {

        // WARNING:

      const renderAuthButton = () => {
        if (this.props.current_user != null) {
          return <a href={`/users/${this.props.current_user.id}`}>Профиль</a>
        } else {
            return <a href="/users/sign_in">Войти</a>;
          }
      }


    return (
      <div className="menubar">
        <A_Logo />
        <div className="menulist">
          <a href="/looks"><li>Образы</li></a>
          <a href="/posts"><li>Статьи</li></a>
          <a href="/collections"><li>Подборки</li></a>
          <a href="/search"><li>Поиск</li></a>
        </div>
        <div className="Account_action">
        {renderAuthButton()}

        </div>
      </div>

);
}
}

export default O_header
