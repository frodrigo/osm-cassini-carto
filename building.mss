#building[zoom>=13] {
  polygon-pattern-file: url(textures/building2.png);
  polygon-pattern-smooth: .3;
  polygon-pattern-opacity: 0.6;
  line-color: @color_dark;
  line-width: 1.5;
  line-smooth: .3;
}

#city_wall[zoom>=13] {
  line-color: @color_light;
  line-width: 6;
  ::o {
    line-color: @color_dark_plain;
    line-width: 3;
  }
}
