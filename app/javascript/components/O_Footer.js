import React from "react"
import PropTypes from "prop-types"
import Fsymbol from "../../assets/images/F.svg"


class O_Footer extends React.Component {
  render () {
    return (
      <div className="footer">
        <div className="footer_top">
          <div className="footer_top1">
            <p>Все права защищены @Flava2022</p>
            <a href="#"><img src={Fsymbol}/></a>
          </div>
          <div className="footer_top2">
            <p>Следите в соцсетях</p>
            <a href="">Вконтакте</a>
            <a href="">Telegram</a>
            <a href="">Youtube</a>
          </div>
          <div className="footer_top2">
            <p>Читайте на Flava</p>
            <a href="/posts">Статьи</a>
            <a href="/looks">Образы</a>
            <a href="/collections">Подборки</a>
          </div>
          <div className="footer_top3">
            <p>Полезные ссылки</p>
            <a href="#">О проекте</a>
            <a href="#">Артистам</a>
            <a href="#">Пользователям</a>

          </div>
        </div>

      </div>
    );
  }
}

export default O_Footer
