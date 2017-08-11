import Highlight from "react-highlight"

import { prefixDom } from '../lib/coffee-dva/rw/Components'
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'

##
 # Overview Page
 ##
snippet1 = """
<script>
import React from "react";
import Neckbeard from "neckbeard";

// Instantiates Neckbeard and returns a function
// that accepts a string of approved helpers.
const nb = Neckbeard.create();

const Button = ({ children }) => (
    // Pass a string of helper classes
    // to be injected into the page.
    <button className={ nb("bg1 tcw br3 ft4") }>
        { children }
    </button>
)

export default Button
</script>
"""

CFX = prefixDom {
  default: {
    'div'
    'span'
    'a'
  }
  H1
  H2
  H3
  Code
  Copy
  Highlight
}

export default Installation = ->
  {
    c_div
    c_span
    c_a
    c_H1
    c_H2
    c_H3
    c_Code
    c_Copy
    c_Highlight
  } = CFX
  c_div {}
  ,
    c_H1 {}
    , 'Overview'

    c_H2 {}
    , 'Why Neckbeard?'
    c_Copy {}
    , 'Neckbeard is an Atomic CSS in JS framework that leverages the composibility nature of helper (utility) classes'
    , ' and the awesome power of '
    ,
      c_a {
        href: 'https://github.com/Khan/aphrodite'
        (nb 'tc5 xtd h-tc1')...
      }
      , 'Aphrodite'
    , ' to rapidly build components.'
    , 'Neckbeard is created by '
    ,
      c_a {
        href: 'https://www.twitter.com/andrewdelprete'
        (nb 'tc5 xtd h-tc1')...
      }
      , '@andrewdelprete'
    , ' and '
    ,
      c_a {
        href: 'https://www.twitter.com/colinhoweth'
        (nb 'tc5 xtd h-tc1')...
      }
      , '@colinhoweth'
    , ' and highly inspired by '
    ,
      c_a {
        href: "https://www.buildwithbeard.com"
        (nb 'tc5 xtd h-tc1')...
      }
      , 'Beard CSS'
    , ' and mimics much of the same syntax as Beard.'
    , ' The main difference is Neckbeard is built with Javascript and Beard is built with SCSS.'
    , ' Using Javascript to build a CSS framework allows us to do some fantastic things.'

    c_H3 {}
    , 'Helper Classes'
    c_Copy {}
    ,
      """
      A Helper Class is a very flat and simple method for applying aesthetic styles to HTML elements. These classes can be used in numerous contexts and are optimal for
      composing small to large components or sprinkling throughout your site or application. Neckbeard provides a Helper Class for just about everything you can think
      of and is extensible per project if custom classes are necessary.
      """

    c_Copy {}
    ,
      'An example of a Helper Class to add spacing looks like '
    ,
      c_Code {}
      , '.pv1'
    , ' which translates to '
    ,
      c_Code {}
      , 'padding-top: 1rem; padding-bottom: 1rem;'
    , '.'
    ,
      'These helper classes can be composed to create complex ui elements. The code blocks that you see in this very paragraph are
      styled using a group of helper classes '
    ,
      c_Code {}
      , '.ft3.brdr1.br2.bcg10.bgg05.pv05.ph1'
    , ' and in fact, every piece of styling on this'
    , ' site is made using a similar grouping of helpers.'

    c_H3 {}
    , 'CSS in JS'
    c_Copy {}
    ,
      """
      CSS in JS is a fairly new practice in which we write CSS in our JS as an object and load styles on the page dynamically. Because the CSS syntax is fairly JSONish to begin with, using Javascript
      just makes sense. Javascript gives us the power of a real programming language to generate, extend, and compose CSS classes. Tools like SCSS and LESS are great but feel limiting at times.
      """
    c_Copy {}
    ,
      'We use ReactJS in our examples, however Neckbeard is framework agnostic and can be used anywhere Javascript is used to add CSS classes.'
    c_Copy {}
    ,
      'Neckbeard wraps the library '
    ,
      c_a {
        href: "https://github.com/Khan/aphrodite"
        (nb "tc5 xtd h-tc1")...
      }
      , 'Aphrodite'
    , ' under the hood. Aphrodite is used to only apply the styles you\'re actually using to the page.'

    c_H3 {}
    , 'The Magical Unicorn 🦄'
    c_Copy {}
    ,
      'When we combine the Helper Classes and the CSS in JS concepts together something magical happen:'
    ,
      c_div {
        (nb 'ph1 pt1 tcg40 sm-mb1 md-xmb')...
      }
      , '- It works great with component based libraries / frameworks like ReactJS because you can couple style'
      c_div {
        (nb 'ph1 tcg40 sm-mb1 md-xmb')...
      }
      , '+ component in the same file together forever in harmony.'
      c_div {
        (nb 'ph1 tcg40 sm-mb1 md-xmb')...
      }
      , '- In the case with something like ReactJS, your component name IS all you are concerned with.'
      c_div {
        (nb 'ph1 tcg40 sm-mb1 md-xmb')...
      }
      , '- No more global CSS scope.'
      c_div {
        (nb 'ph1 tcg40 sm-mb1 md-xmb')... }
      , '- No longer worry about naming CSS selectors.'
      c_div {
        (nb 'ph1 tcg40 sm-mb1 md-xmb')...
      }
      , '- No namespacing to try and establish block level elements.'
      c_div {
        (nb 'ph1 tcg40 sm-mb1 md-xmb')...
      }
      , '- No cascading styles and CSS specificity issues.'

    c_div {
      (nb "mb1")...
    }
    ,
      c_H3 {}
      , 'Example in ReactJS'

    c_Highlight {
      className: "#{nb 'pa2 lh5 ft4 mb2'}"
    }
    , snippet1

    c_Copy {}
    ,
      c_span {
        (nb 'fwsemibold')...
      }
      , '*Note'
    , ' - The '
    ,
      c_Code {}
      , "<script></script>"
    , ' tags in these examples are for highlighting purposes only.'
