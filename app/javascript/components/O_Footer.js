import React from "react"
import PropTypes from "prop-types"
import Vk from "../../assets/images/vk.svg"
import Tg from "../../assets/images/tg.svg"
import Yout from "../../assets/images/youtube.svg"

class O_Footer extends React.Component {
  render () {
    return (
      <div className="footer">
        <div className="footer_top">
          <div className="footer_top1">
            <p>Следите в соцсетях</p>
            <div>
              <a href="#"><img src={Vk}/></a>
              <a href="#"><img src={Tg}/></a>
              <a href="#"><img src={Yout}/></a>
            </div>
          </div>
          <div className="footer_top2">
            <p>Следите в соцсетях</p>
            <a href="/artists">Артисты</a>
            <a href="/posts">Статьи</a>
            <a href="/looks">Образы</a>
            <a href="/collections">Подборки</a>
          </div>
          <div className="footer_top3">
            <p>Полезные ссылки</p>
            <a href="#">О проекте</a>
            <a href="#">Партнёрам</a>
            <a href="#">Артистам</a>
            <a href="#">Пользователям</a>

          </div>
        </div>

        <div className="footer_bottom">
          <span>Все права защищены @Flava </span>
          <span>2020</span>
        </div>
      </div>
    );
  }
}

export default O_Footer
