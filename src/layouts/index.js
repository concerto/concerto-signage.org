import React from "react"
import Link from "gatsby-link"
import { Container } from "react-responsive-grid"

class Template extends React.Component {
  render() {
    const { location, children } = this.props
    return (

      <Container>
          <nav class="top-bar">
            <div class="top-bar-left">
              <ul class="menu">
                <li class="menu-text"><a href="/">Concerto</a></li>
                <li><a href="#">August</a>
              </li>
              <li><a href="#">Brian</a></li>
              <li><a href="#">Haris</a></li>
            </ul>
          </div>
          <div class="top-bar-right">
            <ul class="menu">
              <li><input type="search" placeholder="Search"></input></li>
              <li><button type="button" class="button">Search</button></li>
            </ul>
          </div>
        </nav>
        <hr></hr>
        {children()}
        <footer>
          <hr></hr>
          Footer
        </footer>
      </Container>
    )
  }
}

Template.propTypes = {
  children: React.PropTypes.function,
  location: React.PropTypes.object,
  route: React.PropTypes.object,
}

export default Template
