import React from "react"
import PropTypes from "prop-types"
import O_Lookcard from "./O_Lookcard.js"
import O_LookcardBig from "./O_LookcardBig.js"



class O_AllLooks extends React.Component {
  render () {
    return (
      <div>

        <div className="secondblock secondblock1">
          {this.props.looks.slice(0,1).map(look => (
             <O_LookcardBig key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
          ))}
          {this.props.looks.slice(1,2).map(look => (
             <O_Lookcard key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
          ))}
        </div>

        <div className="firstblock">
          {this.props.looks.slice(2,8).map(look => (
             <O_Lookcard key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
          ))}
        </div>

        <div className="secondblock secondblock2">
          {this.props.looks.slice(8,9).map(look => (
             <O_Lookcard key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
          ))}
          {this.props.looks.slice(9,10).map(look => (
             <O_LookcardBig key={look.id} look={look} filtertag={look.filtertag_id} artist={look.artist_id}/>
          ))}
        </div>

        <div className="firstblock">
          {this.props.looks.slice(10,16).map(look => (
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
