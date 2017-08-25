import color from './color'

export default border =
  color: # Border color
    # base border outline a component
    base: color.d9
    # split border inside a component
    split: color.e9
  base:
    # width of the border for a component
    width: '1px'
    # style of a components border
    style: 'solid'
  radius:
    base: '4px'
    sm: '2px'
