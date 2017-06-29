import React from 'react'
import Link from "gatsby-link"
import get from "lodash/get"
import Helmet from 'react-helmet'

var Octokat = require('octokat');
var octo = new Octokat();

let watcherCount

octo.repos('concerto', 'concerto').fetch().then((res) => {
   watcherCount = res.watchersCount
});



class Frontpage extends React.Component {
  render() {
    const description = this.props.data.site.siteMetadata.description
    const title = this.props.data.site.siteMetadata.title


    return (
      <div>
        <Helmet
          title={title + ' | Frontpage'}
          meta={[
            {"name": "description", "content": "Sample"},
            {"name": "keywords", "content": "sample, something"},
          ]}
        />
        <div>
          <h1>Digital Signage for Everyone</h1>
          <h4>Concerto is an open software platform for using digital displays to inform and persuade. </h4>
          <a href="#" class="button">Download Concerto</a>
          <h6>Latest version: 2.3.4, released 2/3/2017</h6>
          <h6 id='watcher-count'>{watcherCount} code watchers</h6>
        </div>

      </div>
    )
  }
}

Frontpage.propTypes = {
  route: React.PropTypes.object,
}

export default Frontpage

export const pageQuery = graphql`
  query FrontpageQuery {
    site {
      siteMetadata {
        title
        description
      }
    }
  }

`
