import React from "react"
import PropTypes from "prop-types"
class O_AllArticlesAdmin extends React.Component {

  render () {
    return (
      <React.Fragment>
        <table>
          <thead>
            <tr>
              <th className="firstth firstthtitle">ID</th>
              <th className="posttitleth">Название</th>
              <th>Артист</th>
              <th>Автор</th>
              <th>Действия</th>
            </tr>
          </thead>
          <tbody>
            {this.props.posts.map(post => (
              <tr key={post.title} className="">
                <td className="firstth">{post.id}</td>
                <td className="aintd"><a href={'/posts/'+post.id}>{post.title}</a></td>
                <td>{post.artist.name}</td>
                <td>{post.user.username}</td>
                <td>
                  <a href={'/posts/'+post.id+'/edit'}>Изменить</a>
                  <a
                    data-confirm='Are you sure?'
                    rel='nofollow'
                    data-method='delete'
                    href={'/posts/'+post.id+'/delete'}
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

export default O_AllArticlesAdmin
