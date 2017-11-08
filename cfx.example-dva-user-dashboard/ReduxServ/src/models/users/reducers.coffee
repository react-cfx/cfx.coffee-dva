# import dd from 'ddeyes'

export default

  save: (
    state
    {
      payload: {
        data: list
        total
        page
      }
    }
  ) =>
    {
      state...
      list
      total
      page
    }
