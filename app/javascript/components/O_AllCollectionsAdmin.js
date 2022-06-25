import React from "react"
import PropTypes from "prop-types"

class O_AllCollectionsAdmin extends React.Component {
  render () {
    return (
      <React.Fragment>
        <table>
          <thead>
            <tr>
              <th className="firstth firstthtitle firstthtitlecollect">ID</th>
              <th className="posttitleth posttitlethcollect">Название</th>
              <th>Действия</th>
            </tr>
          </thead>
          <tbody>
            {this.props.collections.map(collection => (
              <tr key={collection.name} className="">
                <td className="firstth">{collection.id}</td>
                <td className="aintd"><a href={'/collections/'+collection.id}>{collection.name}</a></td>

                <td>
                  <a onClick={() => location.href = '{collection.id}/edit'}>Изменить</a>
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

export default O_AllCollectionsAdmin
