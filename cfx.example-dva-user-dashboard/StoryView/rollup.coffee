import alias from 'rollup-plugin-alias'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import image from 'rollup-plugin-image'
import cleanup from 'rollup-plugin-cleanup'

import dd from 'ddeyes'

export default
  input: './index.js'
  output:
    file: './dist/bundle.js'
    format: 'cjs'

  plugins: [

    alias
      resolve: [
        '.coffee'
        '.js'
      ]
      src: './sources/index'

    coffee2
      bare: true
      sourceMap: true
    image()
    coffeepath()
    cleanup()
  ]
