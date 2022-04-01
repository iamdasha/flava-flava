import React from "react"
import PropTypes from "prop-types"
import A_Avatar from "./A_Avatar.js"
import A_Logo from './A_Logo.js'


class O_header extends React.Component {
  render () {

        // WARNING:

      const renderAuthButton = () => {
        if (this.props.current_user.id == -1) {
          return <a href="/users/sign_in"><div className="comein"></div></a>;
        } else {
            return <A_Avatar
              size="small"
              link = {this.props.current_user.id}
              avatar = {this.props.current_user.avatar.url}
              textpart = {this.props.current_user.username}>
            </A_Avatar>

          }
      }

    return (
      <div className="menubar">
        <A_Logo />
        <div className="Account_action">
          {renderAuthButton()}
        </div>
      </div>

);
}
}

export default O_header
