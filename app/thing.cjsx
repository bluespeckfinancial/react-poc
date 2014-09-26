React = require 'react'

HelloMessage = React.createClass
  render: ->
    <div>Hello {@props.name}</div>

module.exports = HelloMessage
