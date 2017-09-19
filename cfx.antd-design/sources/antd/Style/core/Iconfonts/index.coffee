import { glamor } from 'cfx.style'
import { font } from '../../themes'
import { iconfontMixin } from '../../mixins/iconfont'

import direction from './direction'
import suggestion from './suggestion'
import logo from './logo'
import other from './other'

getContent = (value) ->
  if typeof value is 'object'
    (
      Object.keys value
    )
    .reduce (r, c) ->
      {
        r...
        "#{c}": getContent value["#{c}"]
      }
    , {}
  else
    content: "\\e#{value}"

export default iconfonts =

  # font-face
  # @icon-url： 字体源文件的地址
  fontFamily: glamor.css.fontFace
    fontFamily: 'anticon'
    src: [
      # IE9
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

    (
      do ->
        iconData = {
          direction...
          suggestion...
          logo...
          other...
        }
          # 'step-forward': direction.stepForward
          # 'step-backward': direction.stepBackward
          # 'forward': direction.forward
          # 'backward': direction.backward
          #
          # 'caret-right': direction.caretRight
          # 'caret-left': direction.caretLeft
          # 'caret-down': direction.caretDown
          # 'caret-up': direction.caretUp
          #
          # 'right-circle': direction.rightCircle
          # # antd@1.x compatibility alias: right-circle
          # 'circle-right': direction.rightCircle
          # # antd@1.x compatibility alias: right-circle
          # 'caret-circle-right': direction.rightCircle
          #
          # 'left-circle': direction.leftCircle
          # # antd@1.x compatibility alias: left-circle
          # 'circle-left': direction.leftCircle
          # # antd@1.x compatibility alias: left-circle
          # 'caret-circle-left': direction.leftCircle
          #
          # 'up-circle': direction.upCircle
          # # antd@1.x compatibility alias: up-circle
          # 'circle-up': direction.upCircle
          # # antd@1.x compatibility alias: up-circle
          # 'caret-circle-up': direction.upCircle
          #
          # 'down-circle': direction.downCircle
          # # antd@1.x compatibility alias: down-circle
          # 'circle-down': direction.downCircle
          # # antd@1.x compatibility alias: down-circle
          # 'caret-circle-down': direction.downCircle
          #
          # 'right-circle-o': direction.rightCircleO
          # # antd@1.x compatibility alias: right-circle-o
          # 'circle-o-right': direction.rightCircleO
          # # antd@1.x compatibility alias: right-circle-o
          # 'caret-circle-o-right': direction.rightCircleO
          #
          # 'left-circle-o': direction.leftCircleO
          # # antd@1.x compatibility alias: left-circle-o
          # 'circle-o-left': direction.leftCircleO
          # # antd@1.x compatibility alias: left-circle-o
          # 'caret-circle-o-left': direction.leftCircleO
          #
          # 'up-circle-o': direction.upCircleO
          # # antd@1.x compatibility alias: up-circle-o
          # 'circle-o-up': direction.upCircleO
          # # antd@1.x compatibility alias: up-circle-o
          # 'caret-circle-o-up': direction.upCircleO
          #
          # 'down-circle-o': direction.downCircleO
          # # antd@1.x compatibility alias: down-circle-o
          # 'circle-o-down': direction.downCircleO
          # # antd@1.x compatibility alias: down-circle-o
          # 'caret-circle-o-down': direction.downCircleO
          #
          # 'verticle-left': direction.verticleLeft
          # 'verticle-right': direction.verticleRight
          #
          # 'rollback': direction.rollback
          # 'retweet': direction.retweet
          # 'shrink': direction.shrink
          #
          # 'arrows-alt': direction.arrowsAll
          # # antd@1.x compatibility alias: arrows-alt
          # 'arrow-salt': direction.arrowsAll
          #
          # 'reload': other.reload
          #
          # 'double-right': direction.doubleRight
          # 'double-left': direction.doubleLeft
          #
          # 'arrow-down': direction.arrowDown
          # 'arrow-up': direction.arrowUp
          # 'arrow-right': direction.arrowRight
          # 'arrow-left': direction.arrowLeft

          # 'down': direction.down
          # 'up': direction.up
          # 'right': direction.right
          # 'left': direction.left

          # 'minus-square-o': suggestion.minusSquareO
          #
          # 'minus-circle': suggestion.minusCircle
          # 'minus-circle-o': suggestion.minusCircleO
          # 'minus': suggestion.minus
          #
          # 'plus-circle-o': suggestion.plusCircleO
          # 'plus-circle': suggestion.plusCircle
          # 'plus': suggestion.plus
          #
          # 'info-circle': suggestion.infoCircle
          # 'info-circle-o': suggestion.infoCircleO
          # 'info': suggestion.info
          #
          # 'exclamation': suggestion.exclamation
          # 'exclamation-circle': suggestion.exclamationCircle
          # 'exclamation-circle-o': suggestion.exclamationCircleO
          #
          # 'close-circle': suggestion.closeCircle
          # # antd@1.x compatibility alias: close-circle
          # 'cross-circle': suggestion.closeCircle
          #
          # 'close-circle-o': suggestion.closeCircleO
          # # antd@1.x compatibility alias: close-circle-o
          # 'cross-circle-o': suggestion.closeCircleO
          #
          # 'check-circle': suggestion.checkCircle
          # 'check-circle-o': suggestion.checkCircleO

          # 'check': suggestion.check
          # 'close': suggestion.close

          # # antd@1.x compatibility alias: close
          # 'cross': suggestion.close
          #
          # 'customer-service': other.customerService
          # # antd@1.x compatibility alias: customer-service
          # 'customerservie': other.customerService
          #
          # 'credit-card': other.creditCard
          #
          # 'code-o': other.codeO
          #
          # 'book': other.book
          # # 'bar-chart':
          # #   content: '\e638'
          # 'bars': other.bars
          #
          # 'question': suggestion.question
          # 'question-circle': suggestion.questionCircle
          # 'question-circle-o': suggestion.questionCircleO
          #
          # 'pause': suggestion.pause
          # 'pause-circle': suggestion.pauseCircle
          # 'pause-circle-o': suggestion.pauseCircleO
          #
          # 'clock-circle': suggestion.clockCircle
          # 'clock-circle-o': suggestion.clockCircleO
          #
          # 'swap': direction.swap
          # 'swap-left': direction.swapLeft
          # 'swap-right': direction.swapRight
          #
          # 'plus-square-o': suggestion.plusSquareO
          #
          # 'frown': other.frown
          # # antd@1.x compatibility alias: frown
          # 'frown-circle': other.frown
          #
          # 'ellipsis': other.ellipsis
          # 'copy': other.copy
          #
          # 'menu-fold': direction.menuFold
          #
          # 'mail': other.mail
          #
          # 'logout': direction.logout
          #
          # 'link': other.link
          # 'area-chart': other.areaChart
          # 'line-chart':
          #   content: '\e65d'
          # 'home': other.home
          # 'laptop': other.laptop
          # 'star': other.star
          # 'star-o': other.starO
          # 'folder': other.folder
          # 'filter': other.filter
          # 'file': other.file
          # 'exception': other.exception
          # 'meh': other.meh
          #
          # # antd@1.x compatibility alias: meh
          # 'meh-circle': other.mehO
          # 'meh-o': other.mehO
          #
          # 'shopping-cart': other.shoppingCart
          # 'save': other.save
          # 'user': other.user
          # 'video-camera': other.videoCamera
          # 'to-top': other.toTop
          # 'team': other.team
          # 'tablet': other.tablet
          # 'solution': other.solution
          # 'search': other.search
          # 'share-alt': other.shareAlt
          # 'setting': other.setting
          # 'poweroff': other.poweroff
          # 'picture': other.picture
          # 'phone': other.phone
          # 'paper-clip': other.paperClip
          # 'notification': other.notification
          # 'mobile': other.mobile
          #
          # 'menu-unfold':
          #   content: '\e679'
          #
          # 'inbox': other.inbox
          # 'lock': other.lock
          # 'qrcode': other.qrcode
          #
          # 'play-circle': direction.playCircle
          # 'play-circle-o': direction.playCircleO
          #
          # 'tag': other.tag
          # 'tag-o': other.tagO
          # 'tags': other.tags
          # 'tags-o': other.tagsO
          #
          # 'cloud-o': other.cloudO
          # 'cloud': other.cloud
          # 'cloud-upload': other.cloudUpload
          # 'cloud-download': other.cloudDownload
          # 'cloud-download-o': other.cloudDownloadO
          # 'cloud-upload-o': other.cloudUploadO
          #
          # 'environment': other.environment
          # 'environment-o': other.environmentO
          #
          # 'eye': other.eye
          # 'eye-o': other.eyeO
          #
          # 'camera': other.camera
          # 'camera-o': other.cameraO

          # 'windows': logo.windows
          # 'apple': logo.apple
          # 'apple-o': logo.appleO
          # 'android': logo.android
          # 'android-o': logo.androidO

          # 'aliwangwang': logo.aliwangwang
          # 'aliwangwang-o': logo.aliwangwangO
          #
          # 'export': other.export
          # 'edit': other.edit
          #
          # 'circle-down-o':
          #   content: '\e693'
          # 'circle-down-':
          #   content: '\e694'
          #
          # 'appstore-o': other.appstoreO
          # 'appstore': other.appstore
          #
          # 'scan': other.scan
          # 'file-text': other.fileText
          # 'folder-open': other.folderOpen
          # 'hdd': other.hdd

          # 'ie': logo.ie

          # 'file-jpg': other.fileJpg
          # 'like': other.like
          # 'like-o': other.likeO
          # 'dislike': other.dislike
          # 'dislike-o': other.dislikeO
          # 'delete': other.delete
          #
          # 'enter': direction.enter
          #
          # 'pushpin-o': other.pushpinO
          # 'pushpin': other.pushpin
          # 'heart': other.heart
          # 'heart-o': other.heartO
          # 'pay-circle': other.payCircle
          # 'pay-circle-o': other.payCircleO
          #
          # 'smile': other.smile
          # # antd@1.x compatibility alias: smile
          # 'smile-circle': other.smile
          #
          # 'smile-o': other.smileO
          #
          # 'frown-o': other.frownO
          #
          # 'calculator': other.calculator
          # 'message': other.message

          # 'chrome': logo.chrome

          # 'github': logo.github

          # 'file-unknown': other.fileUnknown
          # 'file-excel': other.fileExcel
          # 'file-ppt': other.filePpt
          # 'file-word':
          #   content: '\e6b2'
          # 'file-pdf': other.filePdf
          #
          # 'desktop': other.desktop
          # 'upload': other.upload
          # 'download': other.download
          # 'pie-chart': other.pieChart

          # 'unlock': other.unlock
          # 'calendar': other.calendar
          
          # 'windows-o': logo.windowsO
          
          # 'dot-chart': other.dotChart
          # 'bar-chart': other.barChart
          #
          # 'code': other.code
          #
          # 'api': other.api
          #
          # 'plus-square': suggestion.plusSquare
          #
          # 'minus-square': suggestion.minusSquare
          #
          # 'close-square': suggestion.closeSquare
          # 'close-square-o': suggestion.closeSquare
          #
          # 'check-square': suggestion.checkSquare
          # 'check-square-o': suggestion.checkSquareO
          #
          # 'fast-backward': direction.fastBackward
          # 'fast-forward': direction.fastForward
          #
          # 'up-square': direction.upSquare
          # 'down-square': direction.downSquare
          # 'left-square': direction.leftSquare
          # 'right-square': direction.rightSquare
          #
          # 'right-square-o': direction.rightSquareO
          # 'left-square-o': direction.leftSquareO
          # 'down-square-o': direction.downSquareO
          # 'up-square-o': direction.upSquareO
          #
          # 'loading': other.loading
          # 'loading-3-quarters': other.loading3Quarters
          #
          # 'bulb': other.bulb
          #
          # 'select': other.select
          # 'addfile':
          #   content: '\e910'
          # 'file-add': other.fileAdd
          #
          # 'addfolder': other.folderAdd
          # 'folder-add': other.folderAdd
          #
          # 'switcher': other.switcher
          # 'rocket': other.rocket
          #
          # 'dingding': logo.dingding
          # 'dingding-o': logo.dingdingO
          #
          # 'bell': other.bell
          # 'disconnect': other.disconnect
          # 'database': other.database
          # 'compass': other.compass
          # 'barcode': other.barcode
          # 'hourglass': other.hourglass
          # 'key': other.key
          # 'flag': other.flag
          # 'layout': other.layout
          #
          # 'login': direction.login
          #
          # 'printer': other.printer
          # 'sound': other.sound
          # 'usb': other.usb
          # 'skin': other.skin
          # 'tool': other.tool
          # 'sync': other.sync
          # 'wifi': other.wifi
          # 'car': other.car
          #
          # 'copyright': other.copyright
          #
          # 'schedule': other.schedule
          #
          # 'user-add': other.userAdd
          # 'user-delete': other.userDelete
          # 'usergroup-add':  other.usergroupAdd
          # 'usergroup-delete': other.usergroupDelete
          #
          # 'man': other.man
          # 'woman': other.woman
          # 'shop': other.shop
          # 'gift': other.gift
          # 'idcard': other.idcard
          # 'medicine-box': other.medicineBox
          # 'red-envelope': other.redEnvelope
          # 'coffee': other.coffee
          #
          # 'trademark': other.trademark
          # 'safety': other.safety
          # 'wallet': other.wallet
          # 'bank': other.bank
          # 'trophy': other.trophy
          # 'contacts': other.contacts
          # 'global': other.global
          # 'shake': other.shake
          #
          # 'fork': other.fork
          #
          # 'spin':
          #   display: 'inline-block'
          #   animation: 'loadingCircle 1s infinite linear'

        (
          Object.keys iconData
        ).reduce (r, c) ->
          _c = c
          .replace /([A-Z])/g, "-$1"
          .toLowerCase() 

          {
            r...
            "&-#{_c}:before": getContent iconData["#{c}"]
          }
        , {}

    )...
  }
