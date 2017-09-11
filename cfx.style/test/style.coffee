import dd  from 'ddeyes'
import { glamor } from '../index.coffee'

fontIconUrl = "https://at.alicdn.com/t/font_zck90zmlh7hf47vi"

dd typeof glamor

iconfont_1 =
  fontFamily: 'anticon'
  # IE9
  src: [
    "url('#{fontIconUrl}.eot'),"
    # IE6-IE8
    "url('#{fontIconUrl}.eot?#iefix')"
    "format('embedded-opentype'),"
    # chrome、firefox
    "url('#{fontIconUrl}.woff')"
    "format('woff'),"
    # chrome、firefox、opera、Safari, Android, iOS 4.2+
    "url('#{fontIconUrl}.ttf')"
    "format('truetype'),"
    # iOS 4.1-
    "url('#{fontIconUrl}.svg#iconfont')"
    "format('svg')"
  ].join ''

iconfont_2 =
  fontFamily: 'Open Sans'
  fontStyle: 'normal'
  fontWeight: 400
  src: "local('Open Sans'), local('OpenSans'), url(https://fonts.gstatic.com/s/ff2')"
  unicodeRange: "U+0000-00FF, U+0131, U+E0FF, U+EFFD, U+F000"

dd { iconfont_2 }

dd glamor.css.fontFace iconfont_2
