#import "@preview/simple-handout:0.1.0": define-config

/// 以下字体配置使用思源（Source Han）家族字体，
/// - SongTi: 宋体，正文字体，通常对应西文中的衬线字体
/// - HeiTi: 黑体，标题字体，通常对应西文中的无衬线字体
/// - KaiTi: 楷体，用于说明性文本和主观性的表达
/// - FangSong: 仿宋，通常用于注释、引文及权威性阐述
/// - Mono: 等宽字体，对于代码，会优先使用此项，推荐中文字体使用黑体或楷体，或者一些流行的中文等宽字体
/// - Math: 数学字体，通常用于数学公式和符号，中文字体默认使用楷体
#let font-family = (
  SongTi: (
    "Source Han Serif SC",
    "Source Han Serif",
  ),
  HeiTi: (
    "Source Han Sans SC",
    "Source Han Sans",
  ),
  KaiTi: (
    "Source Han Serif SC",
    "Source Han Serif",
  ),
  FangSong: (
    "Source Han Serif SC",
    "Source Han Serif",
  ),
  Mono: (
    "Source Han Mono SC",
    "Source Han Mono",
    "Source Han Sans SC",
  ),
  Math: (
    "New Computer Modern Math",
    "Source Han Serif SC",
    "Source Han Serif",
  ),
)

#let (
  /// entry options
  twoside,
  use-font,
  /// layouts
  meta,
  doc,
  front-matter,
  main-matter,
  back-matter,
  /// pages
  font-display,
  cover,
  preface,
  outline-wrapper,
  notation,
  figure-list,
  table-list,
  equation-list,
  bilingual-bibliography,
) = define-config(
  info: (
    title: (
      title: "Lorem Ipsum",
      subtitle: "Dolor Sit Amet",
    ),
    authors: (
      (
        name: "Lorem Ipsum",
        email: "lorem@example.com",
      ),
    ),
    version: "0.0.0",
  ),
  font: font-family,
)

#let placeholder(width: 100%, height: 6cm) = rect(
  width: width,
  height: height,
  fill: luma(92%),
  stroke: luma(75%),
)

/// Document Configuration
#show: meta

/// Font Display Page
// #font-display()

/// Cover Page
#cover()

/// After Cover Layout, basical layout for Front Matter, Main Matter and Back Matter
#show: doc

/// ------------ ///
/// Front Matter ///
/// ------------ ///

#show: front-matter

// Preface Page
#preface[

#lorem(90)

#lorem(90)

#lorem(18)

1. #lorem(12)
2. #lorem(12)
3. #lorem(12)
4. #lorem(12)
5. #strike[#lorem(6)]

#lorem(20)

#align(center)[
  #grid(columns: 3, gutter: 8pt, align: top,
    figure(
      placeholder(width: 100%, height: 8cm),
      caption: [#lorem(4)],
    ),
    figure(
      placeholder(width: 100%, height: 8cm),
      caption: [#lorem(4)],
    ),
    figure(
      placeholder(width: 100%, height: 8cm),
      caption: [#lorem(4)],
    ),
  )
]

]

// Outline Page
#outline-wrapper()

/// ----------- ///
/// Main Matter ///
/// ----------- ///

#show: main-matter

= #lorem(2)

#lorem(40)
#lorem(30)

== #lorem(2)

#lorem(50)

== #lorem(2)

#lorem(35)

=== #lorem(2)

#lorem(30)

=== #lorem(2)

#lorem(45)

= #lorem(3)

== #lorem(2)

#align(center)[
  #figure(
    placeholder(width: 45%, height: 6cm),
    caption: [#lorem(4)]
  )
]

#lorem(30)

#lorem(25)

=== #lorem(6)

#lorem(90)

#align(center)[
  #figure(
    placeholder(width: 65%, height: 7cm),
    caption: [#lorem(6)]
  )
]

=== #lorem(6)

#lorem(36) #footnote([#lorem(8)]) #lorem(36)

=== #lorem(6)

#lorem(70)

#align(center)[
  #figure(
    grid(
      columns: 2,
      gutter: 15pt,
      placeholder(width: 100%, height: 5cm),
      placeholder(width: 100%, height: 5cm),
    ),
    caption: [#lorem(4)]
  )
]

=== #lorem(6)

#lorem(70)

#align(center)[
  #grid(columns: 3, gutter: 12pt, align: top,
    figure(
      placeholder(width: 100%, height: 4cm),
      caption: [#lorem(3)],
    ),
    figure(
      placeholder(width: 100%, height: 4cm),
      caption: [#lorem(3)],
    ),
    figure(
      placeholder(width: 100%, height: 4cm),
      caption: [#lorem(3)],
    ),
  )
]

=== #lorem(6)

#lorem(55)

== #lorem(4)

#lorem(24)

1. #strong[#lorem(2)]：#lorem(22)
2. #strong[#lorem(2)]：#lorem(22)
3. #strong[#lorem(2)]：#lorem(22)
4. #strong[#lorem(2)]：#lorem(22)

#lorem(18)

= #lorem(6)

#lorem(80)

#lorem(80)

= #lorem(2)

#lorem(70)

#lorem(60)

#align(center)[
  #figure(
    placeholder(width: 80%, height: 6cm),
    caption: [#lorem(8)]
  )
]

= #lorem(6)

#lorem(40)

#lorem(60)

1. #strong[#lorem(2)]：#lorem(20)
2. #strong[#lorem(2)]：#lorem(20)
3. #strong[#lorem(2)]：#lorem(20)
4. #strong[#lorem(2)]：#lorem(20)
5. #strong[#lorem(2)]：#lorem(20)

#lorem(40)

/// ----------- ///
/// Back Matter ///
/// ----------- ///

#show: back-matter
