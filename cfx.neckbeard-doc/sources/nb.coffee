import * as Neckbeard from 'cfx.neckbeard'

settings = {
  Neckbeard.settings...
  fonts:
    sans: "Poppins, Helvetica Neue, Helvetica, Arial, sans-serif"
    serif: "Merriweather, Georgia, serif"
    code: "'Source Code Pro', Consolas, Monaco, 'Andale Mono', monospace"
  # ...Other overwrites here
}

nb = Neckbeard.create { settings }

export default nb
