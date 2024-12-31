# Thesis Presentation Story

## Các Mục

Tổng thời lượng thuyết trình: nhóm 1 người = 10p (bao gồm cả demo)

1. Introduction (2p)
   1. Motivation (1.5p)
   1. Objectives (0.5p)
1. Background (1.5p)
   1. Vai trò của thuật toán Barrier trong xử lý đa luồng (0.2p)
   1. MPI: One-sided Communication dùng RMA (1p)
   1. C++11(?)
1. Related Works (1.5p)
1. Algorithm + Implementation (2p)
1. Conclusion (accomplishments + future works) (2.5p)

total = 2 + 1.5 + 1.5 + 2 + 2.5 = 9.5p

## Story

### Introduction

#### Motivation

1. Ứng dụng của HPC và nhu cầu của parallel computing (15s)
2. HPC Cluster và Computing Node (15s)
3. Message Passing Interface (MPI) và vai trò của nó trong việc giao tiếp giữa
   các Compute Nodes (15s)
4. Giao tiếp bên trong 1 compute node phiên bản C++11 và hỗ trợ lập trình đa
   luồng của nó (20s)
5. Nhắc (5s):

- MPI hiện tại chỉ đang được tối ưu cho việc giao tiếp giữa nhiều Nodes
- C++11 multithread thì tối ưu để giao tiếp giữa các luồng xử lý trong 1 Node

6. Paper Hybrid MPI-3 và C++11

#### Objectives Trong Đồ Án Chuyên Ngành Này

1. Nghiên cứu về model programming của MPI, cụ thể là One Sided
2. Nghiên cứu về việc lập trình đa luồng được giới thiệu trong C++11
3. Nghiên cứu về các thuật toán Barrier
4. Implement 1 thuật toán đơn giản với MPI

#### Background

##### Vai Trò Của Thuật Toán Barrier

- Đồng bộ các luồng xử lý về một điểm nào đó, để giao tiếp rồi sau đó mới được
  thực thi tiếp chẳng hạn.

##### RMA Và One-Sided Communication

- Nói nhanh về Point-to-Point Message Passing
- Nói về introduction của RMA Operations và One Sided được giới thiệu ở MPI-2
- Nói về Memory Model, đặc biệt là Unified Memory Model được giới thiệu ở MPI-3.
  Model cũ (MPI-2) giờ được gọi là Seperate Memory Model
- Các operation giao tiếp Get, Put, Accumulate,…

#### C++11

- Ở đây chưa biết nói gì cả…
