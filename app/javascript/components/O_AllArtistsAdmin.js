import React from "react"
import PropTypes from "prop-types"
class O_AllArtistsAdmin extends React.Component {
  render () {
    return (
      <React.Fragment>
        <table>
          <thead>
            <tr>
              <th className="firstth firstthtitle firstthtitleartists">Картинка</th>
              <th>ID</th>
              <th className="artisttitleth">Имя</th>
              <th>Действия</th>
            </tr>
          </thead>
          <tbody>
            {this.props.artists.map(artist => (
              <tr key={artist.name} className="">

                <td className="firstth"><img src={artist.artistphoto.thumbsmall.url}/></td>
                <td>{artist.id}</td>
                <td className="aintd"><a href={'/artists/'+artist.id}>{artist.name}</a></td>
                <td>
                  <a href={'/artists/'+artist.id+'/edit'}>Изменить</a>
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

export default O_AllArtistsAdmin
