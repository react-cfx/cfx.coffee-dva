import alias from 'rollup-plugin-alias'
import coffee2 from 'cfx.rollup-plugin-coffee2'
import cleanup from 'rollup-plugin-cleanup'

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
    cleanup()
  ]