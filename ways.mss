#roads,
#roads_details[zoom=13][junction=null],
#roads_details[zoom>=14]
{
  [highway='motorway'][zoom>=9],
  [highway='trunk'][zoom>=9],
  [highway='primary'][zoom>=11],
  [highway='motorway_link'][zoom>=13],
  [highway='trunk_link'][zoom>=13],
  [highway='primary_link'][zoom>=13]
  {
    line-color: @color_dark;
    line-width: 10;
    line-dasharray: 4,4;
    ::a {
      line-color: @color_dark;
      line-width: 6;
      [bridge!=""] {
        line-width: 12;
      }
    }
    ::o {
      line-width: 2;
      line-cap: round;
      line-comp-op: clear;
    }
  }
  [highway='motorway'][zoom>=7][zoom<9],
  [highway='trunk'][zoom>=8][zoom<9],
  [highway='primary'][zoom>=9][zoom<11],
  [highway='secondary'][zoom>=11],
  #roads_details[highway='tertiary']
  {
    line-color: @color_dark;
    line-width: 6;
    [bridge!=""] {
      line-color: @color_dark_plain;
    }
    ::o {
      line-width: 2;
      line-cap: round;
      line-comp-op: clear;
    }
  }
}
/*
#roads_details[highway='tertiary'][zoom>=13],
#roads_details[highway='unclassified'][zoom>=14],
#roads_details[highway='residential'][zoom>=15]
{
  ::o {
    line-width: 4;
    line-comp-op: clear;
  }
}
*/