import { color } from '../../../../Style/themes'

export default style =
  ul:
    '.anticons-list':
      margin: '40px 0'
      listStyle: 'none'
      overflow: 'hidden'

  li:
    float: 'left'
    width: '16.66%'
    textAlign: 'center'
    listStyle: 'none'
    cursor: 'pointer'
    height: '100px'
    color: '#555'
    transition: 'all .3s'
    position: 'relative'
    margin: '3px 0'
    borderRadius: '4px'
    backgroundColor: '#fff'
    overflow: 'hidden'
    padding: '10px 0 0'

    '.anticon':
      fontSize: '24px'
      margin: '12px 0 16px'
      transition: 'all .3s'

    '.anticon-class':
      display: 'block'
      textAlign: 'center'
      transform: 'scale(0.83)'
      fontFamily: '"Lucida Console", Consolas'
      whiteSpace: 'nowrap'

    '&:hover':
      backgroundColor: color.primary
      color: color.fff
      '.anticon':
        transform: 'scale(1.4)'

    '&:after':
      position: 'absolute'
      top: 0
      left: 0
      height: '100%'
      width: '100%'
      content: 'Copied!'
      textAlign: 'center'
      lineHeight: '110px'
      color: color.fff
      transition: 'all 0.3s cubic-bezier(0.18, 0.89, 0.32, 1.28)'
      opacity: 0
