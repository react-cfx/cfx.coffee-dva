import { prefixDom } from '../lib/coffee-dva/rw/Components'
import * as Neckbeard from '../lib/coffee-dva/style'
nb = Neckbeard.create {}

CFX = prefixDom {
  default: {
    'div'
    'footer'
    'p'
    'span'
    'a'
  }
}

##
 # Footer
 ##
export default Footer = =>

  {
    c_footer
    c_div
    c_p
    c_span
    c_a
  } = CFX

  c_footer {
    (nb "brdr1--top bcg10 pv3 sans")...
  }
  , 
    c_div {
      (nb "ph3")...
    }
    ,
      c_div {
        (nb "flex sm-fdc md-fdr md-jcsb")...
      }
      ,
        c_div {
          (nb "mb1")...
        }
        ,
          c_p {
            (nb "ft4 tcg40")...
          }
          ,
            c_span {
              (nb "tc1")...
            }
            , '©'
          , '2016 Andrew Del Prete'
        c_p {
          (nb "ft4 tcg40")...
        }
        ,
          c_a { 
            href: "https://github.com/andrewdelprete/neckbeard"
            (nb "tc5 xtd h-tc1")...
          }
          , 'View on Github.'
