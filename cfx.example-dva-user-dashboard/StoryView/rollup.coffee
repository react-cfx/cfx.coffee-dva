# import dd from 'ddeyes'
# import alias from 'rollup-plugin-alias'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import cleanup from 'rollup-plugin-cleanup'
# import image from 'rollup-plugin-image'
# import replace from 'rollup-plugin-re'

export default
  input: './index.js'
  output:
    file: './dist/bundle.js'
    format: 'cjs'

  plugins: [

    # replace
    #   patterns: [
    #     transform: (code, id) ->
    #       pattern = /\.\.\/\.\.\/public\/assets\/yay\.jpg/
    #       if pattern.test code
    #         code = code.replace pattern, '../assets/yay.jpg'
    #       code
    #   ]

    # alias
    #   resolve: [
    #     '.coffee'
    #     '.js'
    #   ]
    #   src: './sources/index'

    coffee2
      bare: true
      sourceMap: true
    # image()
    coffeepath()
    cleanup()
  ]
