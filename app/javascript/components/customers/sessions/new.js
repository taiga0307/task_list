import React from "react"
import PropTypes from "prop-types"
class Customers extends React.Component {
  // render () {
  //   return (
  //     <React.Fragment>
  //     </React.Fragment>
  componentDidMount(){
    this.setState({
      events: this.props.events
    })
  }
  render () {
    return (
      <div>
        <h1>確認ですよ</h1>
      </div>
    );
  }
}



export default Customers