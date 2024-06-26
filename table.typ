#import "@preview/tablex:0.0.6": *
// この関数は https://github.com/typst/typst/issues/528#issuecomment-1494318510 から引用。
#let rotatex(angle,body) = style(styles => {
  let size = measure(body,styles)
  box(inset:(x: -size.width/2+(size.width*calc.abs(calc.cos(angle))+size.height*calc.abs(calc.sin(angle)))/2,
             y: -size.height/2+(size.height*calc.abs(calc.cos(angle))+size.width*calc.abs(calc.sin(angle)))/2),
             rotate(body,angle))
})
#let colorA = red.lighten(50%)
#let colorB = blue.lighten(50%)
#let colorC = orange.lighten(50%)
#let colorD = green

#gridx(
  columns: 5,
  align: center + horizon,
  row-gutter: 0pt,
  hlinex(start: 2),
  vlinex(start: 2), [], vlinex(start: 2), [], vlinex(), colspanx(3)[期末試験の点数],
  hlinex(start: 2),
  [], [], [0\~49], vlinex(start: 1), [50\~79],
  vlinex(start: 1, end: 4), vlinex(start: 4, expand: -1pt, stroke: colorA),
  [80\~100], vlinex(),
  hlinex(),
  rowspanx(3, rotatex(-90deg)[中間試験の点数]),
  cellx(rotatex(-90deg)[0\~49]),cellx(fill: colorD)[D],
  rowspanx(2, fill: colorB)[B],rowspanx(3, fill: colorA)[A],
  hlinex(),
  cellx(rotatex(-90deg)[50\~79]),cellx(fill: colorC)[C],
  hlinex(),
  cellx(rotatex(-90deg)[80\~100]),cellx(fill: colorB)[B], cellx(fill: colorA)[],
  hlinex()
)

#gridx(
  columns: 10,
  align: center + horizon,
  row-gutter: 0pt,
  rows: 1cm,
  hlinex(),
    vlinex(end:3),[クラス],
    vlinex(end:3),colspanx(2)[],
    vlinex(end:3),cellx(align:right+horizon)[番],
    vlinex(end:3),[氏名],
    vlinex(end:3),colspanx(5)[],
    vlinex(end:3),
  hlinex(),
    [科目名],
    colspanx(2)[],
    colspanx(2)[教科担当名],
    colspanx(5)[],
  hlinex(),
    colspanx(3)[一学期・二学期・三学期],
    colspanx(2)[担任氏名],
    colspanx(5)[],
  hlinex(),
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
  hlinex(start:1),
    [],
    [中間素点],
    [期末素点],
    [学期素点],
    [到達度],
    [平常点],
    [評　点],
    [評　定],
    [欠　課],
    [授業時数],
  hlinex(),
    vlinex(start:5),
    vlinex(start:5),[訂正前],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),[],
    vlinex(start:4),
  hlinex(),
    [訂正前],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
  hlinex(),
)