---
layout: post
title: "When Precision Fails"
date: 2026-01-28
description: From Intel's FDIV Debacle to NVIDIA's Floating-Point Maze
categories: Nippoblog
tags: hpc quant machine-learning
thumbnail: assets/img/add113.jpg
giscus_comments: false
related_posts: false
related_publications: true
---

> What happens when processor lies?

Sometimes it triggers a billion-dollar recall. Other times, it quietly corrupts your results until a scientist or engineer finally catches it. This is the story of two very different paths to computational inaccuracy: one from Intel's historic FDIV failure, and another from NVIDIA's modern, high-speed but low-predictability floating-point world.

---

## Intel's FDIV: No Fooling a Math Prof

In 1994, Intel's new Pentium chip shipped with a division flaw—specifically, five missing entries in a table used by the radix-4 SRT algorithm. The result? Specific floating-point divisions would yield the wrong answer. Not "fuzzy." Wrong.

For example:

```
4195835 / 3145727 = 1.333820449136241002
```

The Pentium returned:

```
1.333739068902037589
```

Off by 0.00008138023420341. You might argue that such precision only matters for edge cases. But when the chip promises correct rounding, wrong is wrong.

The bug was spotted by Dr. Thomas Nicely, mathematics professor at Lynchburg College in Virginia, who reported it publicly. {% cite coe1995computational hoemmen2015getting %} That's when things got messy.

Intel, it turns out, already knew. The company had begun quietly correcting the flaw in newly manufactured chips, but had no immediate plans to replace flawed units already in customer hands. Their reasoning? Most users wouldn't notice. If you really wanted a replacement, you had to *prove* the bug impacted you. That didn't go over well.

When Intel brushed off the issue as rare and inconsequential, the backlash came swiftly. IBM—one of Intel's largest partners—paused sales of all Pentium-based machines and began offering its own replacements. Other OEMs followed suit. Intel's dismissive stance had turned a technical hiccup into a full-scale trust crisis.

By the time Intel reversed course and offered unconditional replacements, the damage had been done: nearly half a billion dollars in cost, plus a brand image bruising that took years to heal.

---

## NVIDIA: Precision as a Configurable Setting

Today, it's NVIDIA's GPUs that dominate computational workloads—especially in AI and simulation. And while they haven't had a single, catastrophic bug like FDIV, they come with their own flavor of surprises.

The key difference? NVIDIA's floating-point "issues" are often intentional.

GPUs prioritize speed over consistency. That's why operations like `(a + b) + c` might not equal `a + (b + c)`. Scheduler optimizations, non-determinism, and hardware-level liberties mean two runs of the same code might give slightly different answers—even on the same machine.

Then there's `-use_fast_math`, a compiler flag that activates:

* **Flush-To-Zero (FTZ):** Treats tiny numbers as zero
* **Fused Multiply-Add (FMA):** Changes rounding behavior
* **Reciprocal approximations** for division and square roots

Combine that with a zoo of floating-point formats—TF32, FP16, BF16, FP8—and it becomes easy to get blindsided by reduced accuracy or unexpected behavior. {% cite heldens2025kernel %} Even a matrix multiplication could silently switch from FP32 to TF32, yielding different results across GPU generations.

### The Kernel That Went Rogue

During internal benchmarking of a physics simulation kernel—one that relied on precise floating-point summation—developers noticed a subtle divergence in results between runs on the same NVIDIA A100 GPU. {% cite gokhale2023report %} The culprit turned out to be the use of Tensor Cores, which defaulted to TF32 for matrix multiplications.

Switching the environment variable `NVIDIA_TF32_OVERRIDE=0` restored consistency—but at a notable performance cost.

Worse, no warnings were emitted. If you didn't know that TF32 was being used behind the scenes, you might spend days chasing what looked like a data bug. The lesson? Sometimes, determinism is something you have to explicitly demand from the GPU.

## A Piece of Advice: Don't Assume the Chip Is Right

Intel's mistake was more than just a bug. It was treating correctness as optional until a math professor (and the IBM reaction) forced its hand. NVIDIA, in contrast, gives you performance knobs and says: "Use at your own risk."

In both cases, the lesson is the same: 

> **Never assume your hardware gets math right just because it's fast**.

If you're working on simulations, scientific models, or financial calculations, disable fast math, validate results, and understand your precision formats. Because sometimes, a tiny number—missed, flushed, or silently approximated—can be the thing that breaks everything.
