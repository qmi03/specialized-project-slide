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
=== HPC and its Applications
#grid(
  columns: 2,
  gutter: 16pt,
  figure(
    image("static/images/Map.png"),
    caption: [Weather Simulation @nasa-weather],
  ),
  figure(
    image("static/images/distributedML.png"),
    caption: [Distributed Machine Learning @verbraeken-2020],
  ),
)

#figure(
  image("/static/images/Moore.png", height: 90%),
  caption: [Moore's Law @moores-law-graph],
)
#figure(
  image("/static/images/HPCCluster.JPG", width: 50%),
  caption: [Multiple Computing Nodes connect to each other to form a HPC Cluster @hpc-cluster],
)
- Nodes are connected via a very fast network (Infiniband, Ethernet, etc.)
---
=== MPI-3
- MPI is a standard for message-passing between nodes in a distributed system
- MPI is optimized for communication between nodes
- Multiple implementations of MPI are available (OpenMPI, MPICH, MVAPICH, etc.)
- Multiple programming languages support MPI (C, Fortran, etc.)
#figure(
  image("/static/images/02-send-recv.png", width: 50%),
  caption: [Live program communicating with each other using MPI @intermediate-mpi],
)

---
=== C++11
- C++11 is a standard for the C++ programming language released in 2011
- C++11 provides support for multithreading and parallel programming
//- Historically, we have to rely on 3rd party libraries like \<pthread> and Windows API to support multithreading in C++
- C++11 provides native support for multithreading
#figure(
  image("/static/images/c-11.png", width: 45%),
  caption: [Features introduced in C++11 @cpp-cyberplusIndia],
)
=== The Paper
- Quaranta et al @quaranta-mpi proposed to combine MPI-3 and C++11 (hybrid model)
- Only implements a simple barrier algorithm using the hybrid model
#sym.arrow Implement and benchmark more complex barrier algorithms using the hybrid model

== Objectives
- Research and familiarize with the MPI-3 and C++11 programming model #sym.checkmark
- Research about many barrier algorithms #sym.checkmark
- Implement a simple barrier algorithm using MPI-3 #sym.checkmark

= Background
== Barrier Algorithm
#grid(
  columns: 2,
  gutter: 16pt,
  align: (center, right),
  [#text(weight: "bold", size: 30pt)[What is a Barrier Algorithm?]],
  figure(
    block(image("static/images/barrier.svg"), clip: true),
    caption: [Barrier Algorithm],
  ),
)
== MPI-3
#grid(
  columns: 3,
  rows: 2,
  gutter: 16pt,
  align: (center, center),
  text(weight: "bold")[Traditional Message Passing],
  figure(
    image("/static/images/E02-send-recv_step2.svg"),
    caption: [Point-to-point communication @intermediate-mpi],
  ),
  [
    - Point-to-point
    - Explicit send and receive
  ],

  text(weight: "bold")[One-sided Communication],
  figure(
    image("/static/images/E02-steve-alice_step2.svg"),
    caption: [One-sided Communication @intermediate-mpi],
  ),
  [
    - Remote Memory Access
    - Handshake is implicit
  ],
)

=== One-sided Communication
- Introduced in MPI-2
- Share mechanism:
  - Declare a window of memory to be shared
  - read/write without explicit send/receive
- Simple operations:
  - MPI_Put
  - MPI_Get
  - MPI_Accumulate
- Atomic operations:
  - MPI_Get_accumulate
  - MPI_Fetch_and_op
  - MPI_Compare_and_swap

=== New Features in MPI-3
#grid(
  columns: 2,
  rows: 2,
  gutter: 16pt,
  align: (center, center),
  text(weight: "bold")[Separate Memory],
  figure(
    image("/static/images/separate-memory.svg", width: 62%),
  ),

  text(weight: "bold")[Unified Memory],
  figure(
    image("/static/images/E02-steve-alice_step2.svg", width: 60%),
    caption: [One-sided Communication @intermediate-mpi],
  ),
)
== C++11
- Introduced in 2011
- Support for multithreading and parallel programming within a single node
- Can use *shared memory* to communicate instead of *message passing*

= Related Works
== The MPI-3 C++11 Paper
- Quaranta et al @quaranta-mpi proposed a hybrid model of MPI-3 and C++11
== Other Barrier Algorithms
- :w

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

#bibliography("bibliography.yml")

#magic.bibliography-as-footnote.with(bibliography("bibliography.yml"))

Tổng thời lượng thuyết trình: nhóm 1 người = 10p (bao gồm cả demo)

1. Introduction (2p)
  1. Motivation (1.5p)
  2. Objectives (0.5p)
2. Background (1.5p)
  1. Vai trò của thuật toán Barrier trong xử lý đa luồng (0.2p)
  2. MPI: One-sided Communication dùng RMA (1p)
  3. C++11(?)
3. Related Works (1.5p)
4. Algorithm + Implementation (2p)
5. Conclusion (accomplishments + future works) (2.5p)

total = 2 + 1.5 + 1.5 + 2 + 0.2 + 2.5 = 9.5p

1. Ứng dụng của HPC và nhu cầu của parallel computing (15s)
- HPC dung de giai quyet cac van de kho tinh toan, nhu weather simulation, distributed machine learning
- Du lieu cang ngay cang lon, doi hoi toc do tinh toan va xu ly nhanh hon
- Tuy nhien, theo dinh luat Moore, chi phi cua viec tang toc do cua 1 CPU cang ngay cang cao
- Vi vay cac chuong trinh can duoc lap trinh de co the chay song song tren nhieu
may tinh
- Ma da nhac den xu ly song song thi khong the khong nhac den cac van de lien quan den
dong bo giua cac tien trinh, vi du nhu dong bo hang rao
- Giai thuat dong bo hang rao, hay con goi la Barrier Algorithm, la nhung giai thuat
nham den viec chan, cac tien trinh song song dung lai o mot thoi diem nao do trong chuong trinh
de giao tiep, hoac thuc hien mot cong viec nao do, truoc khi den giai doan tiep theo
cua giai thuat

2. HPC Cluster và Computing Node (15s)
3. Message Passing Interface (MPI) và vai trò của nó trong việc giao tiếp giữa
  các Compute Nodes (15s)
4. Giao tiếp bên trong 1 compute node phiên bản C++11 và hỗ trợ lập trình đa
  luồng của nó (20s)
5. Nhắc (5s):

- MPI hiện tại chỉ đang được tối ưu cho việc giao tiếp giữa nhiều Nodes
- C++11 multithread thì tối ưu để giao tiếp giữa các luồng xử lý trong 1 Node

6. Paper Hybrid MPI-3 và C++11
