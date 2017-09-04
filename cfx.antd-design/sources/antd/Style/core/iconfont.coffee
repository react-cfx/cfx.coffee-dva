import glamor from 'cfx.style'
import { font } from '../themes'
import { iconfontMixin } from '../mixins/iconfont'

import direction from './direction'
import suggestion from './suggestion'
import logo from './logo'
import other from './other'

getContent = (value) ->
  content: "\e#{value}"

export default iconfont =

  # font-face
  # @icon-url： 字体源文件的地址
  fontFamily: glamor.css.fontFace
    fontFamily: 'anticon'
    # IE9
    src: [
      "url('#{font.icon.url}.eot'),"
      # IE6-IE8
      "url('#{font.icon.url}.eot?#iefix')"
      "format('embedded-opentype'),"
      # chrome、firefox
      "url('#{font.icon.url}.woff')"
      "format('woff'),"
      # chrome、firefox、opera、Safari, Android, iOS 4.2+
      "url('#{font.icon.url}.ttf')"
      "format('truetype'),"
      # iOS 4.1-
      "url('#{font.icon.url}.svg#iconfont')"
      "format('svg')"
    ].join ' '

  ".#{font.icon.prefix}": {

    iconfontMixin...

    '.&-step-forward:before': direction.stepForward
    '.&-step-backward:before': direction.stepBackward
    '.&-forward:before': direction.forward
    '.&-backward:before': direction.backward

    '.&-caret-right:before': direction.caretRight
    '.&-caret-left:before': direction.caretLeft
    '.&-caret-down:before': direction.caretDown
    '.&-caret-up:before': direction.caretUp

    '.&-right-circle:before': direction.rightCircle
    # antd@1.x compatibility alias: right-circle
    '.&-circle-right:before': direction.rightCircle
    # antd@1.x compatibility alias: right-circle
    '.&-caret-circle-right:before': direction.rightCircle

    '.&-left-circle:before' direction.leftCircle
    # antd@1.x compatibility alias: left-circle
    '.&-circle-left:before': direction.leftCircle
    # antd@1.x compatibility alias: left-circle
    '.&-caret-circle-left:before': direction.leftCircle

    '.&-up-circle:before': direction.upCircle
    # antd@1.x compatibility alias: up-circle
    '.&-circle-up:before': direction.upCircle
    # antd@1.x compatibility alias: up-circle
    '.&-caret-circle-up:before': direction.upCircle

    '.&-down-circle:before': direction.downCircle
    # antd@1.x compatibility alias: down-circle
    '.&-circle-down:before': direction.downCircle
    # antd@1.x compatibility alias: down-circle
    '.&-caret-circle-down:before': direction.downCircle

    '.&-right-circle-o:before': direction.rightCircleO
    # antd@1.x compatibility alias: right-circle-o
    '.&-circle-o-right:before': direction.rightCircleO
    # antd@1.x compatibility alias: right-circle-o
    '.&-caret-circle-o-right:before': direction.rightCircleO

    '.&-left-circle-o:before': direction.leftCircleO
    # antd@1.x compatibility alias: left-circle-o
    '.&-circle-o-left:before': direction.leftCircleO
    # antd@1.x compatibility alias: left-circle-o
    '.&-caret-circle-o-left:before': direction.leftCircleO

    '.&-up-circle-o:before': direction.upCircleO
    # antd@1.x compatibility alias: up-circle-o
    '.&-circle-o-up:before': direction.upCircleO
    # antd@1.x compatibility alias: up-circle-o
    '.&-caret-circle-o-up:before': direction.upCircleO

    '.&-down-circle-o:before': direction.downCircleO
    # antd@1.x compatibility alias: down-circle-o
    '.&-circle-o-down:before': direction.downCircleO
    # antd@1.x compatibility alias: down-circle-o
    '.&-caret-circle-o-down:before': direction.downCircleO

    '.&-verticle-left:before': direction.verticleLeft
    '.&-verticle-right:before': direction.verticleRight

    '.&-rollback:before': direction.rollback
    '.&-retweet:before': direction.retweet
    '.&-shrink:before': direction.shrink

    '.&-arrows-alt:before': direction.arrowsAll
    # antd@1.x compatibility alias: arrows-alt
    '.&-arrow-salt:before': direction.arrowsAll

    '.&-reload:before':
      content: '\e616'

    '.&-double-right:before': direction.doubleRight
    '.&-double-left:before': direction.doubleLeft

    '.&-arrow-down:before': direction.arrowDown
    '.&-arrow-up:before': direction.arrowUp
    '.&-arrow-right:before': direction.arrowRight
    '.&-arrow-left:before': direction.arrowLeft

    '.&-down:before': direction.down
    '.&-up:before': direction.up
    '.&-right:before': direction.right
    '.&-left:before': direction.left

    '.&-minus-square-o:before': suggestion.minusSquareO

    '.&-minus-circle:before': suggestion.minusCircle
    '.&-minus-circle-o:before': suggestion.minusCircleO
    '.&-minus:before': suggestion.minus

    '.&-plus-circle-o:before': suggestion.plusCircleO
    '.&-plus-circle:before': suggestion.plusCircle
    '.&-plus:before': suggestion.plus

    '.&-info-circle:before': suggestion.infoCircle
    '.&-info-circle-o:before': suggestion.infoCircleO
    '.&-info:before': suggestion.info

    '.&-exclamation:before': suggestion.exclamation
    '.&-exclamation-circle:before': suggestion.exclamationCircle
    '.&-exclamation-circle-o:before': suggestion.exclamationCircleO

    '.&-close-circle:before': suggestion.closeCircle
    # antd@1.x compatibility alias: close-circle
    '.&-cross-circle:before': suggestion.closeCircle

    '.&-close-circle-o:before': suggestion.closeCircleO
    # antd@1.x compatibility alias: close-circle-o
    '.&-cross-circle-o:before': suggestion.closeCircleO

    '.&-check-circle:before': suggestion.checkCircle
    '.&-check-circle-o:before': suggestion.checkCircleO
    '.&-check:before': suggestion.check

    '.&-close:before': suggestion.close
    # antd@1.x compatibility alias: close
    '.&-cross:before': suggestion.close

    '.&-customer-service:before':
      content: '\e634'
    # antd@1.x compatibility alias: customer-service
    '.&-customerservice:before':
      content: '\e634'

    '.&-credit-card:before':
      content: '\e635'
    '.&-code-o:before':
      content: '\e636'
    '.&-book:before': other.book
    # '.&-bar-chart:before':
    #   content: '\e638'
    '.&-bars:before': other.bars

    '.&-question:before': suggestion.question
    '.&-question-circle:before': suggestion.questionCircle
    '.&-question-circle-o:before': suggestion.questionCircleO

    '.&-pause:before': suggestion.pause
    '.&-pause-circle:before': suggestion.pauseCircle
    '.&-pause-circle-o:before': suggestion.pauseCircleO

    '.&-clock-circle:before': suggestion.clockCircle
    '.&-clock-circle-o:before': suggestion.clockCircleO

    '.&-swap:before': direction.swap
    '.&-swap-left:before': direction.swapLeft
    '.&-swap-right:before': direction.swapRight

    '.&-plus-square-o:before': suggestion.plusSquareO

    '.&-frown:before':
      content: '\e646'
    # antd@1.x compatibility alias: frown
    '.&-frown-circle:before':
      content: '\e646'

    '.&-ellipsis:before':
      content: '\e647'
    '.&-copy:before':
      content: '\e648'

    '.&-menu-fold:before': direction.menuFold

    '.&-mail:before':
      content: '\e659'

    '.&-logout:before': direction.logout

    '.&-link:before':
      content: '\e65b'
    '.&-area-chart:before': other.areaChart
    '.&-line-chart:before':
      content: '\e65d'
    '.&-home:before':
      content: '\e65e'
    '.&-laptop:before':
      content: '\e65f'
    '.&-star:before':
      content: '\e660'
    '.&-star-o:before':
      content: '\e661'
    '.&-folder:before':
      content: '\e662'
    '.&-filter:before':
      content: '\e663'
    '.&-file:before':
      content: '\e664'
    '.&-exception:before':
      content: '\e665'
    '.&-meh:before':
      content: '\e666'

    # antd@1.x compatibility alias: meh
    '.&-meh-circle:before':
      content: '\e666'
    '.&-meh-o:before':
      content: '\e667'

    '.&-shopping-cart:before':
      content: '\e668'
    '.&-save:before':
      content: '\e669'
    '.&-user:before':
      content: '\e66a'
    '.&-video-camera:before':
      content: '\e66b'
    '.&-to-top:before':
      content: '\e66c'
    '.&-team:before':
      content: '\e66d'
    '.&-tablet:before':
      content: '\e66e'
    '.&-solution:before':
      content: '\e66f'
    '.&-search:before':
      content: '\e670'
    '.&-share-alt:before':
      content: '\e671'
    '.&-setting:before':
      content: '\e672'
    '.&-poweroff:before':
      content: '\e6d5'
    '.&-picture:before':
      content: '\e674'
    '.&-phone:before':
      content: '\e675'
    '.&-paper-clip:before':
      content: '\e676'
    '.&-notification:before':
      content: '\e677'
    '.&-mobile:before':
      content: '\e678'

    '.&-menu-unfold:before':
      content: '\e679'

    '.&-inbox:before':
      content: '\e67a'
    '.&-lock:before': other.lock
    '.&-qrcode:before':
      content: '\e67c'

    '.&-play-circle:before': direction.playCircle
    '.&-play-circle-o:before': direction.playCircleO

    '.&-tag:before':
      content: '\e6d2'
    '.&-tag-o:before':
      content: '\e6d3'
    '.&-tags:before':
      content: '\e67d'
    '.&-tags-o:before':
      content: '\e67e'

    '.&-cloud-o:before': other.cloudO
    '.&-cloud:before': other.cloud
    '.&-cloud-upload:before': other.cloudUpload
    '.&-cloud-download:before': other.cloudDownload
    '.&-cloud-download-o:before': other.cloudDownloadO
    '.&-cloud-upload-o:before': other.cloudUploadO

    '.&-environment:before':
      content: '\e685'
    '.&-environment-o:before':
      content: '\e686'

    '.&-eye:before':
      content: '\e687'
    '.&-eye-o:before':
      content: '\e688'

    '.&-camera:before':
      content: '\e689'
    '.&-camera-o:before':
      content: '\e68a'

    '.&-windows:before': logo.windows
    '.&-apple:before': logo.apple
    '.&-apple-o:before': logo.appleO
    '.&-android:before': logo.android
    '.&-android-o:before': logo.androidO
 
    '.&-aliwangwang:before': logo.aliwangwang
    '.&-aliwangwang-o:before': logo.aliwangwangO

    '.&-export:before':
      content: '\e691'
    '.&-edit:before':
      content: '\e692'
    '.&-circle-down-o:before':
      content: '\e693'
    '.&-circle-down-:before':
      content: '\e694'
    '.&-appstore-o:before':
      content: '\e695'
    '.&-appstore:before':
      content: '\e696'
    '.&-scan:before':
      content: '\e697'
    '.&-file-text:before':
      content: '\e698'
    '.&-folder-open:before':
      content: '\e699'
    '.&-hdd:before':
      content: '\e69a'

    '.&-ie:before': logo.ie

    '.&-file-jpg:before':
      content: '\e69c'
    '.&-like:before':
      content: '\e64c'
    '.&-like-o:before':
      content: '\e69d'
    '.&-dislike:before':
      content: '\e64b'
    '.&-dislike-o:before':
      content: '\e69e'
    '.&-delete:before':
      content: '\e69f'

    '.&-enter:before': direction.enter

    '.&-pushpin-o:before':
      content: '\e6a1'
    '.&-pushpin:before':
      content: '\e6a2'
    '.&-heart:before':
      content: '\e6a3'
    '.&-heart-o:before':
      content: '\e6a4'
    '.&-pay-circle:before':
      content: '\e6a5'
    '.&-pay-circle-o:before':
      content: '\e6a6'

    '.&-smile:before':
      content: '\e6a7'
    # antd@1.x compatibility alias: smile
    '.&-smile-circle:before':
      content: '\e6a7'

    '.&-smile-o:before':
      content: '\e6a8'
    '.&-frown-o:before':
      content: '\e6a9'

    '.&-calculator:before':
      content: '\e6aa'
    '.&-message:before':
      content: '\e6ab'

    '.&-chrome:before': logo.chrome

    '.&-github:before': logo.github

    '.&-file-unknown:before':
      content: '\e6af'

    '.&-file-excel:before':
      content: '\e6b0'
    '.&-file-ppt:before':
      content: '\e6b1'
    '.&-file-word:before':
      content: '\e6b2'
    '.&-file-pdf:before':
      content: '\e6b3'
    '.&-desktop:before':
      content: '\e6b4'
    '.&-upload:before':
      content: '\e6b6'
    '.&-download:before':
      content: '\e6b7'
    '.&-pie-chart:before': other.pieChart

    '.&-unlock:before': other.unlock
    '.&-calendar:before': other.calendar

    '.&-windows-o:before': logo.windowsO

    '.&-dot-chart:before': other.dotChart
    '.&-bar-chart:before': other.barChart
    '.&-code:before':
      content: '\e6bf'

    '.&-api:before':
      content: '\e951'

    '.&-plus-square:before': suggestion.plusSquare

    '.&-minus-square:before': suggestion.minusSquare

    '.&-close-square:before': suggestion.closeSquare
    '.&-close-square-o:before': suggestion.closeSquare

    '.&-check-square:before': suggestion.checkSquare
    '.&-check-square-o:before': suggestion.checkSquareO

    '.&-fast-backward:before': direction.fastBackward
    '.&-fast-forward:before': direction.fastForward

    '.&-up-square:before': direction.upSquare
    '.&-down-square:before': direction.downSquare
    '.&-left-square:before': direction.leftSquare
    '.&-right-square:before': direction.rightSquare

    '.&-right-square-o:before': direction.rightSquareO
    '.&-left-square-o:before': direction.leftSquareO
    '.&-down-square-o:before': direction.downSquareO
    '.&-up-square-o:before': direction.upSquareO

    '.&-loading:before':
      content: '\e64d'
    '.&-loading-3-quarters:before':
      content: '\e6ae'

    '.&-bulb:before':
      content: '\e649'

    '.&-select:before':
      content: '\e64a'
    '.&-addfile:before':
      content: '\e910'
    '.&-file-add:before':
      content: '\e910'

    '.&-addfolder:before':
      content: '\e914'
    '.&-folder-add:before':
      content: '\e914'

    '.&-switcher:before':
      content: '\e913'
    '.&-rocket:before':
      content: '\e90f'

    '.&-dingding:before': logo.dingding
    '.&-dingding-o:before': logo.dingdingO

    '.&-bell:before':
      content: '\e64e'
    '.&-disconnect:before':
      content: '\e64f'
    '.&-database:before':
      content: '\e650'
    '.&-compass:before':
      content: '\e6db'
    '.&-barcode:before':
      content: '\e652'
    '.&-hourglass:before':
      content: '\e653'
    '.&-key:before':
      content: '\e654'
    '.&-flag:before':
      content: '\e655'
    '.&-layout:before':
      content: '\e656'

    '.&-login:before': direction.login

    '.&-printer:before':
      content: '\e673'
    '.&-sound:before':
      content: '\e6e9'
    '.&-usb:before':
      content: '\e6d7'
    '.&-skin:before':
      content: '\e6d8'
    '.&-tool:before':
      content: '\e6d9'
    '.&-sync:before':
      content: '\e6da'
    '.&-wifi:before':
      content: '\e6d6'
    '.&-car:before':
      content: '\e6dc'
    '.&-copyright:before':
      content: '\e6de'
    '.&-schedule:before':
      content: '\e6df'
    '.&-user-add:before':
      content: '\e6ed'
    '.&-user-delete:before':
      content: '\e6e0'
    '.&-usergroup-add:before':
      content: '\e6dd'
    '.&-usergroup-delete:before':
      content: '\e6e1'
    '.&-man:before':
      content: '\e6e2'
    '.&-woman:before':
      content: '\e6ec'
    '.&-shop:before':
      content: '\e6e3'
    '.&-gift:before':
      content: '\e6e4'
    '.&-idcard:before':
      content: '\e6e5'
    '.&-medicine-box:before':
      content: '\e6e6'
    '.&-red-envelope:before':
      content: '\e6e7'
    '.&-coffee:before':
      content: '\e6e8'
    '.&-trademark:before':
      content: '\e651'
    '.&-safety:before':
      content: '\e6ea'
    '.&-wallet:before':
      content: '\e6eb'
    '.&-bank:before':
      content: '\e6ee'
    '.&-trophy:before':
      content: '\e6ef'
    '.&-contacts:before':
      content: '\e6f0'
    '.&-global:before':
      content: '\e6f1'
    '.&-shake:before':
      content: '\e94f'
    '.&-fork:before':
      content: '\e6f2'
    '.&-spin:before':
      display: 'inline-block'
      animation: 'loadingCircle 1s infinite linear'
  }
