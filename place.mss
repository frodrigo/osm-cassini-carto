#place[zoom>4] {
  ::city [place='city'],
  ::town [place='town'][zoom>=11],
  {
    [zoom<13] {
      point-file: url(textures/place_big.png);
    }
    ::a {
      [zoom<13] {
        text-size: 15;
        text-dx: 20;
        text-placement-type: simple;
        text-placements: "E,W";
        text-wrap-width: 40;
        text-name: "[name]";
      }
      [zoom>=13] {
        text-size: 23;
        text-name: "[name].replace('(\w)','$1  ')";
      }
      text-face-name: @goudy_italic;
      text-transform: uppercase;
      text-halo-fill: @color_light;
      text-halo-radius: 2;
      text-line-spacing: -5;
      text-label-position-tolerance: 20;
    }
  }
  ::town [place='town'][zoom>=8][zoom<11],
  ::village [place='village'][zoom>=11]
  {
    [zoom<13] {
      point-file: url(textures/place.png);
    }
    ::a {
      [zoom<13] {
        text-size: 11;
        text-dx: 17;
        text-dy: 17;
        text-placement-type: simple;
        text-placements: "E,W";
      }
      [zoom>=13] {
        text-size: 20;
      }
      text-face-name: @goudy_italic;
      text-halo-fill: @color_light;
      text-halo-radius: 2;
      text-line-spacing: -5;
      text-wrap-width: 40;
      text-name: "[name]";
      text-label-position-tolerance: 20;
    }
  }
  ::town [place='town'][zoom>=7][zoom<8],
  ::village [place='village'][zoom>=10][zoom<11],
  [place='hamlet'][zoom>=12]
  {
    [zoom<13] {
      point-file: url(textures/place_small.png);
    }
    ::a {
      [zoom<13] {
        text-size: 6;
        text-dx: 9;
        text-dy: 9;
        text-transform: uppercase;
        text-placement-type: simple;
        text-placements: "E,W";
      }
      [zoom>=13] {
        text-size: 11;
      }
      text-face-name: @goudy_italic;
      text-halo-fill: @color_light;
      text-halo-radius: 2;
      text-line-spacing: -5;
      text-wrap-width: 40;
      text-name: "[name]";
      text-label-position-tolerance: 20;
    }
  }
}
