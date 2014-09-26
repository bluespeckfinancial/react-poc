require './../public/style/main.css'
React = require 'react'
Thing = require './thing'

c = ()->
 test()

React.renderComponent(
  <div>
    <Thing name="dude" />
    <label>hi yeah</label>
  </div>,
  document.getElementById('container')
)
