import React from "react"
import PropTypes from "prop-types"

class O_AllClothAdmin extends React.Component {
  render () {
    return (
      <React.Fragment>
        <table>
          <thead>
            <tr>
              <th className="firstth firstthtitle firstthtitlelooks">Картинка</th>
              <th>ID</th>
              <th className="">Название</th>
              <th>Образ</th>
              <th>Действия</th>
            </tr>
          </thead>
          <tbody>
            {this.props.cloths.map(cloth => (
              <tr key={cloth.name} className="">

                <td className="firstth"><img src={cloth.clothimage.thumb.url}/></td>
                <td>{cloth.id}</td>
                <td className="aintd"><a href={'/cloths/'+cloth.id}>{cloth.name}</a></td>
                <td>{cloth.look.title}</td>
                <td>
                  <a href={'/cloths/'+cloth.id+'/edit'}>Изменить</a>
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

export default O_AllClothAdmin
