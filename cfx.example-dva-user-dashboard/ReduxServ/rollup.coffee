import alias from 'rollup-plugin-alias'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import cleanup from 'rollup-plugin-cleanup'
# import nodent from 'rollup-plugin-nodent'
# import rollupBabel from 'rollup-plugin-babel'
import asyncAwait from 'rollup-plugin-async'
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
      src: './src/index'

    coffee2
      bare: true
      sourceMap: true
    asyncAwait()
    coffeepath()

    # nodent()
    # rollupBabel
    #   babelrc: false
    #   plugins: [
    #     'transform-async-to-generator'
    #     'external-helpers-2'
    #   ]

    cleanup()
  ]
