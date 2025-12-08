#import "@preview/cram-snap:0.2.2": cram-snap, theader

#set page(
  paper: "a4",
  flipped: true,
  margin: 1cm,
)
#set text(font: "Arial", size: 11pt)

#show: cram-snap.with(
  title: [DMS niri Cheatsheet],
  icon: image("git-icon.svg"),
  column-number: 3,
)

#table(
  theader[Conventions],
  [`ᛞ`], [Super (Win)],
  [`⌃ᛅᛏ␡⇆`], [Ctrl, Alt, Shift, Del, Tab],
  [`␣⮐⎋|`], [Space, Enter, Esc, _Or_],
  [`⮜⮟⮝⮞`], [Ordinary arrows],
  [`⥾⤥⤣⥿`], [Home, PgDn, PgUp, End],
)

#table(
  theader[System & Overview],
  [`ᛞd | ᛞ⇆`], [Toggle Overview],
  [`ᛞᛏ/`], [Show Hotkeys],
  [`ᛞt`], [Terminal],
  [`⌃␣`], [App Launcher],
  [`ᛞv`], [Clipboard Manager],
  [`ᛞm`], [Sys Monitor],
  [`ᛞ,`], [Settings],
  [`ᛞy`], [Wallpapers],
  [`ᛞn`], [Notifications],
  [`ᛞᛏn`], [Notepad],
)

#table(
  theader[Security],
  [`ᛞᛅl`], [Lock Screen],
  [`ᛞᛏe`], [Quit],
  [`⌃ᛅ␡`], [Toggle Sys Monitor],
)

#table(
  theader[Windows],
  [`ᛞq`], [Close Window],
  [`ᛞf`], [Maximize Col],
  [`ᛞᛏf`], [Full Screen],
  [`ᛞᛏt`], [Toggle Float],
  [`ᛞᛏv`], [Float/Tile Switch],
  [`ᛞw`], [Toggle CTD ?],
  [`ᛞ(⮜|⮟|⮝|⮞)`], [Move Focus],
  [`ᛞ(h|j|k|l)`], [Move Focus],
  [`ᛞᛏ(⮜|⮟|⮝|⮞)`], [Move Window],
  [`ᛞᛏ(h|j|k|l)`], [Move Window],
  [`ᛞ⥾`], [Move Focus Home],
  [`ᛞ⥿`], [Move Focus End],
  [`ᛞ⌃⥾`], [Move Col Home],
  [`ᛞ⌃⥿`], [Move Col End],
)

#table(
  theader[Monitors],
  [`ᛞ⌃(⮜|⮞)`], [Focus Monitor],
  [`ᛞ⌃(h|j|k|l)`], [Focus Monitor],
  [`ᛞᛏ⌃(⮜|⮟|⮝|⮞)`], [Move Col to Monitor],
  [`ᛞᛏ⌃(h|j|k|l)`], [Move Col to Monitor],
)

#table(
  theader[Workspaces],
  [``], [],
  [``], [],
  [``], [],
  [``], [],
)
