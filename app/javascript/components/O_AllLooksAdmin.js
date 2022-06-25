import React from "react"
import PropTypes from "prop-types"

class O_AllLooksAdmin extends React.Component {
  render () {
    return (
      <React.Fragment>
        <table>
          <thead>
            <tr>
              <th className="firstth firstthtitle firstthtitlelooks">Картинка</th>
              <th>ID</th>
              <th className="posttitleth">Название</th>
              <th>Артист</th>
              <th>Действия</th>
            </tr>
          </thead>
          <tbody>
            {this.props.looks.map(look => (
              <tr key={look.title} className="">

                <td className="firstth"><img src={look.image.thumbsmall.url}/></td>
                <td>{look.id}</td>
                <td className="aintd"><a href={'/looks/'+look.id}>{look.title}</a></td>
                <td>{look.artist.name}</td>
                <td>
                  <a href={'/looks/'+look.id+'/edit'}>Изменить</a>
                  <a
                    data-confirm='Are you sure?'
                    rel='nofollow'
                    data-method='delete'
                    >
                    Удалить
                  </a>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </React.Fragment>
    );
  }
}

export default O_AllLooksAdmin
