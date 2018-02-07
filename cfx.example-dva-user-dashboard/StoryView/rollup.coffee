# import dd from 'ddeyes'
import path from 'path'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import inject from 'rollup-plugin-inject'
import image from 'rollup-plugin-image'
import cleanup from 'rollup-plugin-cleanup'

export default
  input: './index.js'
  output:
    file: './dist/bundle.js'
    format: 'cjs'

  plugins: [
    coffee2
      bare: true
      sourceMap: true
    image()
    inject
      Image: path.resolve './rollup.Image.js'
    coffeepath()
    cleanup()
  ]
