import React from "react"
import PropTypes from "prop-types"
class O_Headerextra extends React.Component {
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
      <div className="menubar2">
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

export default O_Headerextra
