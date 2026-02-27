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
  [`⌃ᛅᛏ␥⇆`], [Ctrl, Alt, Shift, Del, Tab],
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
  [`⌃␥`], [Lock Screen\*],
)

#table(
  theader[Windows],
  [`ᛞ⮐ | ᛞn`], [Duplicate Win],
  [`ᛞ⌫`], [Close Window],
  [`ᛞ(,|.)`], [Move Focus ⮜⮞],
  [`ᛞ(⮜|⮟|⮝|⮞)`], [Move Focus],
  [`ᛞ⥾`], [Move Focus Home],
  [`ᛞ⥿`], [Move Focus End],
  [`ᛞ⇆ | ᛅ⇆`], [Cycle Focus],
  [`ᛞᛏ⇆ | ᛅᛏ⇆`], [Cycle Focus ⮜],
  [`⌃ᛅ⇆`], [Cycle Scratch],
  [`ᛏ⌃ᛅ⇆`], [Cycle Scratch ⮜],
  [`ᛞᛏc`], [Switch Focus Modes],
  [`ᛞᛏw`], [Switch Creation Modes],
  [`ᛞ⌃(,|.)`], [Move Win ⮜⮞],
  [`ᛞᛏ(,|.)`], [Move Win ⮜⮞],
  [`ᛞ⌃(⮜|⮟|⮝|⮞)`], [Move Win],
  [`ᛞᛏf`], [Toggle Fullscreen],
)

#table(
  theader[Columns],
  [`ᛞi`], [Stack Wins],
  [`ᛞo`], [Unstack Wins],
  [`ᛞᛏo`], [Unstack Focus],
  [`ᛞc`], [Center Win],
  [`ᛞf`], [Toggle Full Width],
  [`ᛞᛏ(+|-)`], [Inc/dec Win Height],
  [`ᛞ(+|-)`], [Inc/dec Win Width],
  [`ᛞr`], [Cycle through Width],
  [`ᛞᛅr`], [Cycle through Width ?],
  [`ᛞᛏᛅr`], [Cycle through Width ⮜?],
  [`ᛞt`], [Take Wind Drop ?],
)

// Non-toxic backtick [ˋ] U+02CB

#table(
  theader[Workspaces],
  [_PAW_:], [_Previously Active Wspace_],
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
  theader[Mousewheel],
  [`ᛞ☉`], [Change Wspace],
  [`ᛞᛏ☉`], [Change Col],
  [`ᛞ⌃☉`], [Move Col to Wspace],
  [`ᛞ⌃ᛏ☉`], [Move Col],
)

#table(
  theader[Notes],
  [`*`], [To be defined manually],
)
