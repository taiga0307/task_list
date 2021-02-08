import React from "react"
import PropTypes from "prop-types"
class Events extends React.Component {
  // render () {
  //   return (
  //     <React.Fragment>
  //     </React.Fragment>
  constructor(props){
    super(props)
    this.state = {
      events: []
    };
  }
  componentDidMount(){
    this.setState({
      events: this.props.events
    })
  }
  render () {
    return (
      <div>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>customerID</th>
              <th>Title</th>
              <th>Content</th>
              <th>StartTime</th>
              <th>created_at</th>
              <th>updated_at</th>
            </tr>
          </thead>
          <tbody>
            {this.state.events.map((event) => {
              return (
                <tr key={event.id}>
                  <td>{event.id}</td>
                  <td>{event.customer_id}</td>
                  <td>{event.event_title}</td>
                  <td>{event.event_content}</td>
                  <td>{event.event_start_time}</td>
                  <td>{event.created_at}</td>
                  <td>{event.updated_at}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>

    );
  }
}

export default Events
