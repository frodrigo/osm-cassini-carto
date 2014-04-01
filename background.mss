Map {
  background-image: url(textures/background.png);
}

#boundary {
  line-color: @color_dark;
  line-width: 4;
  line-dasharray: 10,8;
  line-smooth: .3;
}

#boat[zoom>=8][zoom<=9] {
  [boat="1"] {
    point-file: url(textures/boat1.png);
  }
  [boat="2"] {
    point-file: url(textures/boat2.png);
  }
  [boat="3"] {
    point-file: url(textures/boat3.png);
  }
  [zoom=7] {
    point-transform: "scale(.25, .25)";
  }
  [zoom=8] {
    point-transform: "scale(.5, .5)";
  }
  [zoom=9] {
  }
  point-comp-op: darken;
}

::z #mers {
  [type="1"][zoom>=8] {
    text-size:30;
    text-face-name: @goudy_italic;
    text-transform: uppercase;
    text-fill: @color_dark;
    text-halo-fill: @color_light;
    text-halo-radius:2;
    text-label-position-tolerance: 20;
    text-placement: line;
    text-name: "[name].replace('(\w)','$1  ')";
  }
  [type="2"][zoom<8] {
    [zoom<6] {
      text-size:25;
    }
    [zoom>=7] {
      text-size:30;
    }
    text-face-name: @goudy_italic;
    text-transform:uppercase;
    text-fill: @color_dark;
    text-halo-fill: @color_light;
    text-halo-radius:2;
    text-label-position-tolerance: 20;
    text-placement: line;
    text-name: "[name].replace(' ','  ')";
  }
}
