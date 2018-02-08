# import dd from 'ddeyes'
import path from 'path'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import inject from 'rollup-plugin-inject'
import image from 'rollup-plugin-image'
import cleanup from 'rollup-plugin-cleanup'

plugins = [
  coffee2
    bare: true
    sourceMap: true
  image()
  inject
    Image: path.resolve './rollup/rollup.Image.js'
  coffeepath()
  cleanup()
]

export default [
    input: './rollup/modules/index.js'
    output:
      file: './dist/index.js'
      format: 'cjs'
    plugins: plugins
  ,
    input: './rollup/modules/stories.js'
    output:
      file: './dist/stories.js'
      format: 'cjs'
    plugins: plugins
]
