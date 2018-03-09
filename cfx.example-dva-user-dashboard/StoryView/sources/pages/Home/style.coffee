import styl from 'cfx.style'
import yay from './yay.jpg'

yayUrl =
  if yay.src?
  then yay.src
  else yay

style =

  normal:
    fontFamily: 'Georgia, sans-serif'
    marginTop: '3em'
    textAlign: 'center'

  title:
    fontSize: '2.5rem'
    fontWeight: 'normal'
    letterSpacing: '-1px'

  welcome:
    height: '328px'
    background: "url(#{yayUrl}) no-repeat center 0"
    backgroundSize: '388px 328px'

  list:
    fontSize: '1.2em'
    marginTop: '1.8em'
    listStyle: 'none'
    lineHeight: '1.5em'

    '& code':
      background: '#f7f7f7'

export default styl style
,
  userGlamor: true
