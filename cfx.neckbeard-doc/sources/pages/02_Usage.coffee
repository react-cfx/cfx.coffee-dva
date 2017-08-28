import Highlight from "react-highlight"
import * as Neckbeard from 'cfx.neckbeard'

import { prefixDom } from 'cfx.dom'
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'

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


##
 # Installation Page
 ##

snippet = """
<script>
import Neckbeard from 'neckbeard';

const nb = Neckbeard.create();

// Option 1:
// Pass a string of helpers to be injected
// into the DOM dynamically using Aphrodite.
<MyComponent className={ nb("pv1 ph1 ft2") } />
</script>
"""

snippetb = """
<script>
import Neckbeard from 'neckbeard';

const nb = Neckbeard.create();

// Option 2:
// Pass your own custom styles object to be injected
// into the DOM dynamically using Aphrodite.
// You can use Neckbeard styles to compose!
const text = {
    ...nb.fwbold, // fontWeight: bold
    ...nb.ft5, // fontSize: 1.4rem
    "color": "red" // Your custom properties
}

<MyComponent className={ nb(text) } />
</script>
"""

snippet2 = """
<script>
import Neckbeard from 'neckbeard';

// Using ES6 Spread makes it easy
const settings = { ...NeckBeard.defaultSettings };

settings.helpers.fontSize = {
    "limit": 20,
    "incrementBy": .10,
    "responsive": false
}

const nb = Neckbeard.create(settings)

<MyComponent className={ nb('pv1 ph1 ft2') } />
</script>
"""

snippet3 = """
<script>
import Neckbeard from 'neckbeard';

// Same settings as above but using Object.assign()
var settings = Object.assign({}, Neckbeard.defaultSettings);

settings.helpers.fontSize = {
    "limit": 20,
    "incrementBy": .10,
    "responsive": false
};

var nb = Neckbeard.create(settings)

<MyComponent className={ nb('pv1 ph1 ft2') } />
</script>
"""

snippet4 = """
<script>
import Neckbeard from 'neckbeard';

// Uses ES6 Destructuring to destructure
// settings object and retrieve what we need.
export default function unicorn({ helpers: { unicorn: { responsive } }, breakpoints }) {
    let selectors = {};
    let media = {};

    /**
     * My New Helper
     */
    selectors["awesome-unicorn"] = {
        fontSize: "2rem",
        // and so on
    }
    // more selectors here

    /**
     * Media Queries
     * Adds classes for each breakpoint .{breakpoint}-{selector} and .only-{breakpoint}-{selector}
     * Example: .only-sm-awesome-unicorn
     */
    if (responsive) {
        media = Neckbeard.addMediaQueries(selectors, breakpoints);
    }

    // Merge it all together in one object and return
    return { ...selectors, ...media };
}
</script>
"""

snippet5 = """
<script>
import Neckbeard from 'neckbeard';
import unicorn from '/path/where/your/helpers/are/unicorn';

// Extend settings
const settings = { ...NeckBeard.defaultSettings };

settings.helpers.unicorn = {
    "responsive": true
}

// Extend helpers
const helpers = { ...NeckBeard.helpers };

helpers.unicorn = unicorn;

const nb = Neckbeard.create(settings, helpers);

<MyComponent className={ nb('awesome-unicorn') } />
</script>
"""

snippet6 = JSON.stringify(
  Neckbeard.settings
  null
  2
)

export default Usage = =>

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
    , 'Usage'

    c_H2 {}
    , 'The Basics'
    c_Copy {}
    ,
      'After installing Neckbeard via NPM or CDN, invoke the '
      ,
        c_Code {}
        , 'Neckbeard.create()'
    , ' function and assign it to a variable.'

    c_Copy {}
    ,
      'Neckbeard offers two ways to implement:'

    c_H3 {}
    , 'Option #1 - Pass a string of helpers'
    c_Highlight {
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    }
    , snippet

    c_H3 {}
    , 'Option #2 - Pass a style object'
    c_Highlight {
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    }
    , snippetb

    c_a
      name: "configuration"
    c_H2 {}
    , 'Configuration'
    c_Copy {}
    ,
      'The '
    ,
      c_Code {}
      , 'Neckbeard.create()'
    , ' function has an optional first parameter (object) to overwrite or extend default settings.
      You can do this by using the '
    ,
      c_a {
        href: 'http://babeljs.io/docs/plugins/transform-object-rest-spread/'
        (nb "tc5 xtd h-tc1")...
      }
      , 'Object Spread Syntax'
    , ' '
    ,
      c_Code {}
      , '...nb.defaultSettings'
    , ' or '
    ,
      c_Code {}
      , 'Object.assign()'
    , '.'

    c_Copy {}
    ,
      'Neckbeard.create([ settings, helpers ])'
    ,
      c_div {
        (nb "ph1 pt1 tcg40 sm-mb1 md-xmb")...
      }
      , '- settings (optional) - An object of all available settings'
      c_div {
        (nb "ph1 tcg40 sm-mb1 md-xmb")...
      }
      , '- helpers (optional) - An object of all available helper functions'

    c_Copy {}
    ,
      'Neckbeard has Default Settings for all helpers and can be found on the Neckbeard object as '
    ,
      c_Code {}
      , 'Neckbeard.defaultSettings'
    , '.'

    c_Highlight
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    , snippet2

    c_Highlight
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    , snippet3

    c_H2 {}
    , 'Adding Custom Helpers'
    c_Copy {}
    ,
      'The '
    ,
      c_Code {}
      , 'Neckbeard.create()'
    , ' function has an optional second parameter (object) to overwrite or extend default helpers.'
    , 'You can do this by using the '
    ,
      c_a {
        href: 'http://babeljs.io/docs/plugins/transform-object-rest-spread/'
        (nb "tc5 xtd h-tc1")...
      }
      , 'Object Spread Syntax'
    , ' '
    ,
      c_Code {}
      , '...nb.helpers'
    , ' or '
    ,
      c_Code {}
      , 'Object.assign()'
    , '.'

    c_H3 {}
    , 'Write a Helper Function'
    c_Copy {}
    , 'To create your own custom helper, write a function that has one parameter for settings and returns an object of selectors. Save your helper function file somewhere handy.'
    c_Highlight
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    , snippet4

    c_H3 {}
    , 'Make Helper Available to Neckbeard'
    c_Copy {}
    , 'Once your helper class function is created, you need to make Neckbeard aware of it. You do this when initializing Neckbeard with the create() function and passing a new settings and helpers object.'
    c_Highlight
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    , snippet5

    c_H2 {}
    , 'Default Settings'
    c_Copy {}
    , 'Neckbeard has a number of Default Settings that are declared in '
    ,
      c_Code {}
      , 'Neckbeard.defaultSettings'
    , ' and can be overwritten or extended as needed.'
    c_Highlight
      className: "#{nb 'pa2 mb3 lh5 ft4'}"
    , snippet6

    c_Copy {}
    ,
      c_span {
        (nb
          bold: {
            nb.fwbold...
          }
        )...
      }
      , '*Note'
    , ' - The '
    ,
      c_Code {}
      , '<script></script>'
    , ' tags in these examples are for highlighting purposes only.'
