import React from "react"
import PropTypes from "prop-types"
import O_Lookcard from "./O_Lookcard.js"
import O_LookcardBig from "./O_LookcardBig.js"



class O_AllLooks extends React.Component {
  render () {
    return (
      <div>

        <div className="firstblock">
        {this.props.looks.slice(0,3).map(look => (
           <O_Lookcard key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
        ))}
        </div>
        <div className="secondblock">
        {this.props.looks.slice(3,5).map(look => (
           <O_LookcardBig key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
        ))}
        </div>
        <div className="firstblock">
        {this.props.looks.slice(5,8).map(look => (
           <O_Lookcard key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
        ))}
        </div>
      </div>
    );
  }
}

O_AllLooks.propTypes = {
  looks: PropTypes.array
};

export default O_AllLooks
