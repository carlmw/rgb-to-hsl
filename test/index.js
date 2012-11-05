var subject = require('../');

describe('RGBToHSL(r, g, b)', function () {
  it('should return an array of values', function () {
    subject(255, 150, 0).should.eql([35.294117647058826, -1.007905138339921, 127.5]);
  });
});
