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

    '.&-reload:before': other.reload

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

    '.&-customer-service:before': other.customerService
    # antd@1.x compatibility alias: customer-service
    '.&-customerservie:before': other.customerService

    '.&-credit-card:before': other.creditCard

    '.&-code-o:before': other.codeO

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

    '.&-frown:before': other.frown
    # antd@1.x compatibility alias: frown
    '.&-frown-circle:before': other.frown

    '.&-ellipsis:before': other.ellipsis
    '.&-copy:before': other.copy

    '.&-menu-fold:before': direction.menuFold

    '.&-mail:before': other.mail

    '.&-logout:before': direction.logout

    '.&-link:before': other.link
    '.&-area-chart:before': other.areaChart
    '.&-line-chart:before':
      content: '\e65d'
    '.&-home:before': other.home
    '.&-laptop:before': other.65f
    '.&-star:before': other.star
    '.&-star-o:before': other.starO
    '.&-folder:before': other.folder
    '.&-filter:before': other.filter
    '.&-file:before': other.file
    '.&-exception:before': other.exception
    '.&-meh:before': other.meh

    # antd@1.x compatibility alias: meh
    '.&-meh-circle:before': other.mehO
    '.&-meh-o:before': other.mehO

    '.&-shopping-cart:before': other.shoppingCart
    '.&-save:before': other.save
    '.&-user:before': other.user
    '.&-video-camera:before': other.videoCamera
    '.&-to-top:before': other.toTop
    '.&-team:before': other.team
    '.&-tablet:before': other.tablet
    '.&-solution:before': other.solution
    '.&-search:before': other.search
    '.&-share-alt:before': other.shareAlt
    '.&-setting:before': other.setting
    '.&-poweroff:before': other.poweroff
    '.&-picture:before': other.picture
    '.&-phone:before': other.phone
    '.&-paper-clip:before': other.paperClip
    '.&-notification:before': other.notification
    '.&-mobile:before': other.mobile

    '.&-menu-unfold:before':
      content: '\e679'

    '.&-inbox:before': other.inbox
    '.&-lock:before': other.lock
    '.&-qrcode:before': other.qrcode

    '.&-play-circle:before': direction.playCircle
    '.&-play-circle-o:before': direction.playCircleO

    '.&-tag:before': other.tag
    '.&-tag-o:before': other.tagO
    '.&-tags:before': other.tags
    '.&-tags-o:before': other.tagsO

    '.&-cloud-o:before': other.cloudO
    '.&-cloud:before': other.cloud
    '.&-cloud-upload:before': other.cloudUpload
    '.&-cloud-download:before': other.cloudDownload
    '.&-cloud-download-o:before': other.cloudDownloadO
    '.&-cloud-upload-o:before': other.cloudUploadO

    '.&-environment:before': other.environment
    '.&-environment-o:before': other.environmentO

    '.&-eye:before': other.eye
    '.&-eye-o:before': other.eyeO

    '.&-camera:before': other.camera
    '.&-camera-o:before': other.cameraO

    '.&-windows:before': logo.windows
    '.&-apple:before': logo.apple
    '.&-apple-o:before': logo.appleO
    '.&-android:before': logo.android
    '.&-android-o:before': logo.androidO
 
    '.&-aliwangwang:before': logo.aliwangwang
    '.&-aliwangwang-o:before': logo.aliwangwangO

    '.&-export:before': other.export
    '.&-edit:before': other.edit

    '.&-circle-down-o:before':
      content: '\e693'
    '.&-circle-down-:before':
      content: '\e694'

    '.&-appstore-o:before': other.appstoreO
    '.&-appstore:before': other.appstore

    '.&-scan:before': other.scan
    '.&-file-text:before': other.fileText
    '.&-folder-open:before': other.folderOpen
    '.&-hdd:before': other.hdd

    '.&-ie:before': logo.ie

    '.&-file-jpg:before': other.fileJpg
    '.&-like:before': other.like
    '.&-like-o:before': other.likeO
    '.&-dislike:before': other.dislike
    '.&-dislike-o:before': other.dislikeO
    '.&-delete:before': other.delete

    '.&-enter:before': direction.enter

    '.&-pushpin-o:before': other.pushpinO
    '.&-pushpin:before': other.pushpin
    '.&-heart:before': other.heart
    '.&-heart-o:before': other.heartO
    '.&-pay-circle:before': other.payCircle
    '.&-pay-circle-o:before': other.payCircleO

    '.&-smile:before': other.smile
    # antd@1.x compatibility alias: smile
    '.&-smile-circle:before': other.smile

    '.&-smile-o:before': other.smileO

    '.&-frown-o:before': other.frownO

    '.&-calculator:before': other.calculator
    '.&-message:before': other.message

    '.&-chrome:before': logo.chrome

    '.&-github:before': logo.github

    '.&-file-unknown:before': other.fileUnknown
    '.&-file-excel:before': other.fileExcel
    '.&-file-ppt:before': other.filePpt
    '.&-file-word:before':
      content: '\e6b2'
    '.&-file-pdf:before': other.filePdf

    '.&-desktop:before': other.desktop
    '.&-upload:before': other.upload
    '.&-download:before': other.download
    '.&-pie-chart:before': other.pieChart

    '.&-unlock:before': other.unlock
    '.&-calendar:before': other.calendar

    '.&-windows-o:before': logo.windowsO

    '.&-dot-chart:before': other.dotChart
    '.&-bar-chart:before': other.barChart

    '.&-code:before': other.code

    '.&-api:before': other.api

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

    '.&-loading:before': other.loading
    '.&-loading-3-quarters:before': other.loading3Quarters

    '.&-bulb:before': other.bulb

    '.&-select:before': other.select
    '.&-addfile:before':
      content: '\e910'
    '.&-file-add:before': other.fileAdd

    '.&-addfolder:before': other.folderAdd
    '.&-folder-add:before': other.folderAdd

    '.&-switcher:before': other.switcher
    '.&-rocket:before': other.rocket

    '.&-dingding:before': logo.dingding
    '.&-dingding-o:before': logo.dingdingO

    '.&-bell:before': other.bell
    '.&-disconnect:before': other.disconnect
    '.&-database:before': other.database
    '.&-compass:before': other.compass
    '.&-barcode:before': other.barcode
    '.&-hourglass:before': other.hourglass
    '.&-key:before': other.key
    '.&-flag:before': other.flag
    '.&-layout:before': other.layout

    '.&-login:before': direction.login

    '.&-printer:before': other.printer
    '.&-sound:before': other.sound
    '.&-usb:before': other.usb
    '.&-skin:before': other.skin
    '.&-tool:before': other.tool
    '.&-sync:before': other.sync
    '.&-wifi:before': other.wifi
    '.&-car:before': other.car

    '.&-copyright:before': other.copyright

    '.&-schedule:before': other.schedule

    '.&-user-add:before': other.userAdd
    '.&-user-delete:before': other.userDelete
    '.&-usergroup-add:before':  other.usergroupAdd
    '.&-usergroup-delete:before': other.usergroupDelete

    '.&-man:before': other.man
    '.&-woman:before': other.woman
    '.&-shop:before': other.shop
    '.&-gift:before': other.gift
    '.&-idcard:before': other.idcard
    '.&-medicine-box:before': other.medicineBox
    '.&-red-envelope:before': other.redEnvelope
    '.&-coffee:before': other.coffee

    '.&-trademark:before': other.trademark
    '.&-safety:before': other.safety
    '.&-wallet:before': other.wallet
    '.&-bank:before': other.bank
    '.&-trophy:before': other.trophy
    '.&-contacts:before': other.contacts
    '.&-global:before': other.global
    '.&-shake:before': other.shake

    '.&-fork:before': other.fork

    '.&-spin:before':
      display: 'inline-block'
      animation: 'loadingCircle 1s infinite linear'
  }
