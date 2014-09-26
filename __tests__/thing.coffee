# @cjsx React.DOM

React = require 'react/addons'
TestUtils = React.addons.TestUtils

jest.dontMock '../app/thing.cjsx'
Thing = require '../app/thing.cjsx'

describe 'thing', ->
  it "works", ->
    thing = TestUtils.renderIntoDocument <Thing name="mark"/>
    expect(thing.getDOMNode().textContent).toEqual 'Hello mark'
