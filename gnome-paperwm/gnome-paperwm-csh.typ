#import "@preview/cram-snap:0.2.2": cram-snap, theader

#set page(
  paper: "a4",
  flipped: true,
  margin: 1cm,
)
#set text(font: "Arial", size: 11pt)

#show: cram-snap.with(
  title: [PaperWM Cheatsheet],
  subtitle: [GNOME tiling extension],
  icon: image("gnome-svgrepo-com.svg"),
  column-number: 3,
)

#table(
  theader[Conventions],
  [`ᛞ`], [Super (Win)],
  [`⌃ᛅᛏ␡⇆`], [Ctrl, Alt, Shift, Del, Tab],
  [`␣⮐⎋|`], [Space, Enter, Esc, _Or_],
  [`⮜⮟⮝⮞`], [Ordinary arrows],
  [`⥾⤥⤣⥿`], [Home, PgDn, PgUp, End],
  [`⌫☉⎙`], [Backspace, Mousewheel, PrtSc],
)

#table(
  theader[System & Overview],
  [`ᛞᛏt`], [Terminal\*],
  [`ᛞ`], [App Launcher],
)

#table(
  theader[Security],
  [`ᛞᛅl`], [Lock Screen],
)

#table(
  theader[Windows],
  [`ᛞ⌫`], [Close Window],
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

// Non-toxic backtick [ˋ] U+02CB

#table(
  theader[Workspaces],
  [`ᛞˋ`], [Switch to PAW],
  [`ᛞᛏˋ`], [Switch to PAW ⮜],
  [`ᛞ⌃ˋ`], [Move Win to PAW],
  [`ᛞ⌃ᛏˋ`], [Move Win to PAW ⮜],
  [`ᛞ(⤥|⤣)`], [Switch to Wspace ⮟⮝],
  [`ᛞ⌃(⤥|⤣)`], [Move Win one Wspace ⮟⮝],
  [`ᛞ⌃b`], [Toggle TopBar],
)

#table(
  theader[Monitors],
  [`ᛞᛏ(⮜|⮟|⮝|⮞)`], [Switch to Monitor],
  [`ᛏ⌃ᛅ(⮜|⮟|⮝|⮞)`], [Move Wspace to Monitor],
  [`ᛞᛅ(⮜|⮟|⮝|⮞)`], [Swap Wspace with Monitor],
  [`ᛞᛏ⌃(⮜|⮟|⮝|⮞)`], [Move Win to Monitor],
)

#table(
  theader[Columns],
  [`ᛞ[`], [Cons/Expel Win Left],
  [`ᛞ]`], [Cons/Expel Win Right],
  [`ᛞ.`], [Expel Win from Col],
  [`ᛞr`], [Switch Col Width],
  [`ᛞᛏr`], [Switch Win Height],
  [`ᛞ⌃r`], [Reset Win Height],
  [`ᛞ⌃f`], [Expand Col to Width],
  [`ᛞc`], [Center Col],
  [`ᛞ⌃c`], [Center Visible Cols],
  [`ᛞ-`], [Col Width -10%],
  [`ᛞ=`], [Col Width +10%],
  [`ᛞᛏ-`], [Win Height -10%],
  [`ᛞᛏ=`], [Win Height +10%],
)

#table(
  theader[Screenshots],
  [`⎙`], [Screenshot],
  [`⌃⎙`], [Take Screen],
  [`ᛅ⎙`], [Take Win],
)
#table(
  theader[Mousewheel],
  [`ᛞ☉`], [Change Wspace],
  [`ᛞᛏ☉`], [Change Col],
  [`ᛞ⌃☉`], [Move Col to Wspace],
  [`ᛞ⌃ᛏ☉`], [Move Col],
)
