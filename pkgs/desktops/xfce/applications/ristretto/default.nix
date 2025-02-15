{ lib
, mkXfceDerivation
, gtk3
, glib
, libexif
, libxfce4ui
, libxfce4util
, xfconf
}:

mkXfceDerivation {
  category = "apps";
  pname = "ristretto";
  version = "0.12.4";

  sha256 = "sha256-pspS9zRvDOMz4+Ud43uT4gsDQhB51bwmaXPXcGlOhsY=";

  buildInputs = [
    glib
    gtk3
    libexif
    libxfce4ui
    libxfce4util
    xfconf
  ];

  NIX_CFLAGS_COMPILE = "-I${glib.dev}/include/gio-unix-2.0";

  meta = with lib; {
    description = "A fast and lightweight picture-viewer for the Xfce desktop environment";
    maintainers = with maintainers; [ ] ++ teams.xfce.members;
  };
}
