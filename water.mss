#lake[zoom>=10], #water[zoom>=10] {
  polygon-comp-op: clear;
}

#world
{
  line-color: @color_dark;
  line-width: 6;
  line-join: round;
  line-cap: round;
  ::c1 {
    line-color: @color_dark;
    line-width: 2;
    line-offset: -5;
    line-join: round;
    line-cap: round;
    line-opacity: 0.8;
  }
  ::c2 {
    line-color: @color_dark;
    line-width: 1;
    line-offset: -8;
    line-join: round;
    line-cap: round;
    line-opacity: 0.5;
  }
  ::c3 {
    line-color: @color_dark;
    line-width: 2;
    line-offset: 5;
    line-join: round;
    line-cap: round;
    line-opacity: 0.8;
  }
  ::c4 {
    line-color: @color_dark;
    line-width: 1;
    line-offset: 8;
    line-join: round;
    line-cap: round;
    line-opacity: 0.5;
  }
  ::c9 {
    polygon-comp-op: clear;
  }
}

#water[zoom>=10][name="Estuaire de la Gironde"],
#water[zoom>=10][name="La Garonne"],
#water[zoom>=10][name="Lit de la Dordogne"],
#water[zoom>=10][name="La Loire"],
#water[zoom>=10][name="La Seine"]
{
  line-color: @color_dark;
  line-width: 3;
  line-offset: -1.5;
  line-join: round;
  line-cap: round;
  ::c1 {
    line-color: @color_dark;
    line-width: 2;
    line-offset: -5;
    line-join: round;
    line-cap: round;
    line-opacity: 0.8;
  }
  ::c2 {
    line-color: @color_dark;
    line-width: 1;
    line-offset: -8;
    line-join: round;
    line-cap: round;
    line-opacity: 0.5;
  }
}

#waterway[zoom>9] {
  line-color: @color_dark;
  line-width: 4;
  [zoom>=12] {
    line-width: 8;
  }
  line-cap: round;
  line-smooth: 1.3;
  ::a {
    line-width: 2;
    [zoom>=12] {
      line-width: 5.5;
    }
    line-smooth: 1.7;
    line-cap: round;
    line-comp-op: clear;
  }
  ::b {
    line-width: 2;
    [zoom>=12] {
      line-width: 5.5;
    }
    line-smooth: 1.7;
    line-color: @color_dark;
    line-opacity: 0.5;
    line-cap: round;
  }
}
#waterway[zoom>9][zoom<=9] {
  line-color: @color_dark;
  line-width: 1.5;
  line-smooth: 1;
}
/*
#waterway[zoom>10] {
  text-name: "[name]";
  text-size: 8;
  text-face-name: @goudy_italic;
  text-transform: uppercase;
  text-halo-fill: rgba(243,243,228,0.5);
  text-halo-radius: 2;
  text-line-spacing: 5;
  text-label-position-tolerance: 20;
  text-placement-type: simple;
}
*/

#water[zoom>=10][name!="Estuaire de la Gironde"],
#lake[zoom>9] {
  polygon-pattern-file: url(textures/lake.png);
  #lake::c {
    text-fill: @color_dark_plain;
    text-size: 12;
    [zoom>=12] {
      text-size: 20;
    }
    text-face-name: @goudy_italic;
    text-halo-fill: @color_light;
    text-halo-radius: 2;
    text-line-spacing: -5;
    text-wrap-width: 40;
    text-name: "[name]";
  }
}
