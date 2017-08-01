import addMediaQueries from '../utils/addMediaQueries'
import dd from 'ddeyes'

##
 # Spacing
 #
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default spacing = ({
  helpers: {
    spacing: {
      limit = 10
      incrementBy = 1
      responsive
    }
  }
  breakpoints
}) ->

  media = {}

  remTypes = do ->
    r = [ 'default' ]
    x = incrementBy
    while x <= limit
      r.push x
      x += incrementBy
    r.push 'remove'
    r

  # dd {
  #   remTypes
  # }

  # default
  d = remTypes.reduce (r, t) ->

    rem = # value
      switch t
       when 'default' then '0.5rem'
       when 'remove' then '0'
       else "#{ t * incrementBy }rem"

    # dd {
    #   rem
    # }

    for k, v of {
      m: 'margin'
      p: 'padding'
    }
      r["#{ k }"] = {} unless r["#{ k }"]?
      r["#{ k }"]["#{t}"] = do ->

        _l = "#{ v }Left": rem
        _r = "#{ v }Right": rem
        _t = "#{ v }Top": rem
        _b = "#{ v }Bottom": rem

        a: # all
          "#{ v }": rem
        h: { _l..., _r... }
        v: { _t..., _b... }
        l: _l
        r: _r
        t: _t
        b: _b

    r

  , {}

  # dd {
  #   d
  # }

  selectors = remTypes.reduce (r, t) -> # result
    for k, v of {
      m: 'margin'
      p: 'padding'
    }
      switch t
        when 'default'
        then(
          r["#{ k }a"] = d["#{ k }"]["#{ t }"].a
          r["#{ k }h05"] = d["#{ k }"]["#{ t }"].h
          r["#{ k }v05"] = d["#{ k }"]["#{ t }"].v
          r["#{ k }l05"] = d["#{ k }"]["#{ t }"].l
          r["#{ k }r05"] = d["#{ k }"]["#{ t }"].r
          r["#{ k }t05"] = d["#{ k }"]["#{ t }"].t
          r["#{ k }b05"] = d["#{ k }"]["#{ t }"].b
        )
        when 'remove'
        then(
          r["x#{ k }a"] = d["#{ k }"]["#{ t }"].a
          r["x#{ k }h"] = d["#{ k }"]["#{ t }"].h
          r["x#{ k }v"] = d["#{ k }"]["#{ t }"].v
          r["x#{ k }l"] = d["#{ k }"]["#{ t }"].l
          r["x#{ k }r"] = d["#{ k }"]["#{ t }"].r
          r["x#{ k }t"] = d["#{ k }"]["#{ t }"].t
          r["x#{ k }b"] = d["#{ k }"]["#{ t }"].b
        )
        else(
          r["#{ k }a#{ t }"] = d["#{ k }"]["#{ t }"].a
          r["#{ k }h#{ t }"] = d["#{ k }"]["#{ t }"].h
          r["#{ k }v#{ t }"] = d["#{ k }"]["#{ t }"].v
          r["#{ k }l#{ t }"] = d["#{ k }"]["#{ t }"].l
          r["#{ k }r#{ t }"] = d["#{ k }"]["#{ t }"].r
          r["#{ k }t#{ t }"] = d["#{ k }"]["#{ t }"].t
          r["#{ k }b#{ t }"] = d["#{ k }"]["#{ t }"].b
        )
    r
  , {}

  # dd {
  #   selectors
  # }

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
