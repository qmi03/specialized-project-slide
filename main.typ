#import "@preview/touying:0.5.5": *
#import themes.stargazer: *
#import "@preview/numbly:0.1.0": numbly

#let g = yaml("/global.yml")
#let m = yaml("/metadata.yml")
#set text(font: m.at("fonts").at("serif"))
#set heading(numbering: numbly("{1}.", default: "1.1"))
#show: stargazer-theme.with(
  aspect-ratio: "16-9",
  config-colors(
    primary: rgb("#008BDD"),
    primary-dark: rgb("#004078"),
    secondary: rgb("#ffffff"),
    tertiary: rgb("#005bac"),
    neutral-lightest: rgb("#ffffff"),
    neutral-darkest: rgb("#000000"),
  ),
  config-info(
    title: [#upper[#g.course.name report]],
    subtitle: [#upper(g.title)],
    author: [#g.students.at(0).name - #g.students.at(0).id],
    date: datetime.today(),
    institution: [#g.institution],
    logo: image("/static/images/logo.png"),
    short-subtitle: [Specialized Project Report],
    short-title: [Distributed Barrier Algorithms using MPI-3 & C++11],
  ),
)

#title-slide()
#outline-slide()


= Introduction
== Motivation

== Objectives

= Background
== Barrier Algorithm
== MPI-3
== C++11

= Related Works
== The MPI-3 C++11 Paper
== Other Barrier Algorithms

= Algorithm & Simple Implementaion
== Brook 2 process algorithm
== Implementation using RMA Operation
== Preliminary Result

= Conclusions
== Accomplishments
== Challenges
== Future Works
=== Plan
=== Timeline


Tổng thời lượng thuyết trình: nhóm 1 người = 10p (bao gồm cả demo)
1. Introduction (2p)
  1. Motivation (1.5p)
  2. Objectives (0.5p)
2. Background (1.5p)
  1. Vai trò của thuật toán Barrier trong xử lý đa luồng (0.2p)
  2. MPI: One-sided Communication dùng RMA (1p)
  3. C++11(?)
3. Related Works (1.5p)
4. Algorithm + Implementation + Result (2p)
5. Future Works (accomplishments + challenges + plan + timeline) (2.5p)
total = 2 + 1.5 + 1.5 + 2 + 0.2 + 2.5 = 9.5p

