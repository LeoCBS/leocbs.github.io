---
layout: post
title: Introduction about Apache Beam
---

# Introduction

I've been working with Apache Beam in my daily life, and the idea is to share a little about the use case, what Apache Beam is (your advantages), what problem we tried to solve, why we chose it as a solution and finally an Apache beam example. The concept of big data has become increasingly common in our daily lives and with this, several technologies are emerging. However, it is very common to have specific solutions for batch or stream processing. The idea of meeting both concepts (batch and stream) is where Apache beam fits.

## What is apache beam?

Apache Beam (Batch + strEAM) is an open-source, unified model for defining batch and streaming data-parallel processing pipelines. This means that you can run the same code (transformations) for both stream and batch processing. You don't need to program anything specific.

## Apache Beam advantages

    1 - Unified — Use a single programming model for both batch and streaming use cases.
    2 - Portable — Execute pipelines in multiple execution environments. Ex. Locally Runner, Spark Runner, Dataflow Runner, etc
    3 - Extensible — Write custom SDKs, IO connectors, and transformation libraries.  
