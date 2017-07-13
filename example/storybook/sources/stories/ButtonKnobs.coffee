import {
  text
  number
  select
  color
  array
  object
  date
  boolean
} from '@storybook/addon-knobs'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom
  default: [
    'div'
    'p'
    'ul'
    'li'
  ]

export default =>

  name = text 'Name', 'Storyteller'
  age = number 'Age', 70
  ,
    range: true
    min: 0
    max: 90
    step: 5

  fruits =
    apple: 'Apple'
    banana: 'Banana'
    cherry: 'Cherry'

  fruit = select 'Fruit', fruits, 'apple'
  dollars = number 'Dollars', 12.5

  ## NOTE: color picker is currently broken
  backgroundColor = color 'background', '#ffff00'
  items = array 'Items', [
    'Laptop'
    'Book'
    'Whiskey'
  ]
  otherStyles = object 'Styles'
  ,
    border: '3px solid #ff00ff'
    padding: '10px'
  nice = boolean 'Nice', true

  ## NOTE: put this last because it currently breaks everything after it :D
  birthday = date 'Birthday'
  , new Date 'Jan 20 2017'

  intro = "My name is #{name}, I'm #{age} years old, and my favorite fruit is #{fruit}."
  style = Object.assign {}
  , {
    backgroundColor
  }
  , otherStyles

  salutation =
    if nice
    then 'Nice to meet you!'
    else 'Leave me alone!'

  {
    c_div
    c_p
    c_ul
    c_li
  } = CFX

  c_div {
    style
  }
  ,
    c_p {}
    , intro
    c_p {}
    , "My birthday is: #{(new Date birthday).toLocaleDateString()}"
    c_p {}
    , "My wallet contains: #{dollars.toFixed 2}"
    c_p {}
    , 'In my backpack, I have:'
    c_ul
      items.map (item) =>
        c_li
          key: item
        , item
    c_p {}
    , salutation
