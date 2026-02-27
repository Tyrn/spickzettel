#import "@preview/cram-snap:0.2.2": cram-snap, theader

#set page(
  paper: "a4",
  flipped: true,
  margin: 1cm,
)
#set text(font: "Arial", size: 11pt)

#show: cram-snap.with(
  title: [DMS niri Cheatsheet],
  subtitle: [DankMaterialShell & niri],
  icon: image("niri-simple.svg"),
  column-number: 3,
)

#table(
  theader[Conventions],
  [`ᛞ`], [Super (Win)],
  [`⌃ᛅᛏ␥⇆`], [Ctrl, Alt, Shift, Del, Tab],
  [`␣⮐⎋|`], [Space, Enter, Esc, _Or_],
  [`⮜⮟⮝⮞`], [Ordinary arrows],
  [`⥾⤥⤣⥿`], [Home, PgDn, PgUp, End],
  [`☉⎙`], [Mousewheel, PrtSc],
)

#table(
  theader[System & Overview],
  [`ᛞd | ᛞ⇆`], [Toggle Overview],
  [`ᛞᛏ/`], [Show Hotkeys],
  [`ᛞt`], [Terminal],
  [`⌃␣`], [App Launcher, #strike[`ᛞ␣`]],
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
  [`⌃ᛅ␥`], [Toggle Sys Monitor],
  [`ᛞ⎋`], [Toggle Hotkeys],
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
  [`ᛞᛏp`], [Power off Monitors],
)

#table(
  theader[Workspaces],
  [`ᛞ⤥ | ᛞu`], [Focus to Wspace Down],
  [`ᛞ⤣ | ᛞi`], [Focus to Wspace Up],
  [`ᛞ⌃⤥ | ᛞ⌃u`], [Move Col to Wspace Down],
  [`ᛞ⌃⤣ | ᛞ⌃i`], [Move Col to Wspace Up],
  [`ᛞᛏ⤥ | ᛞᛏu`], [Move Wspace Down],
  [`ᛞᛏ⤣ | ᛞᛏi`], [Move Wspace Up],
  [`ᛞ(1..9)`], [Select Wspace],
  [`ᛞᛏ(1..9)`], [Move Col to Wspace],
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
