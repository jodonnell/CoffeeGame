Routes = require('../src/routes').Routes

describe("Routes", ->
  it("can route correctly", ->
    routes = new Routes '/'
    expect(routes.getResponse()).toContain('html')
    expect(routes.getHeader()).toBe("text/html")
    expect(routes.getEncoding()).toBe("utf8")
  )

  it("can route to jquery correctly", ->
    routes = new Routes '/jquery.js'
    expect(routes.getResponse()).toContain('jQuery JavaScript Library')
    expect(routes.getHeader()).toBe("text/javascript")
    expect(routes.getEncoding()).toBe("utf8")
  )

  it("can serve images", ->
    routes = new Routes '/images/tileGrass.jpg'
    expect(routes.getHeader()).toBe("image/jpg")
    expect(routes.getEncoding()).toBe("binary")
  )

)
