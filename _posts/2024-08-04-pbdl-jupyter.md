---
layout: post
title: Deeply Learning Physics
date: 2024-08-04
description: A few notes in a Jupyter notebook
categories: Nippoblog
tags: machine-learning
giscus_comments: false
related_posts: false
related_publications: true
toc:
  sidebar: left
---



### Why Mix Physics with Deep Learning?

Physics-Based Deep Learning (PBDL) represents a interdisciplinary approach that combines the rigor of physics with the flexibility of deep learning {% cite thuerey:hal-04083995 %}. Originally proposed by researchers at Brown and Penn {% cite RAISSI2019686 %}, this emerging field leverages the strengths of both domains to address complex scientific problems that traditional methods strive to solve.

> PBDL = DL + Physics-Based Loss Functions

At its core, PBDL integrates physical laws and principles directly into the architecture of deep learning models. By embedding these fundamental rules, PBDL ensures that the models not only learn from data but also adhere to the underlying physical realities of the problem. This approach contrasts with purely data-driven models, which may lack interpretability and generalizability, especially in scenarios where data is sparse or noisy.

#### Industrial Applications 
In computer vision, PBDL enhances the accuracy and reliability of image recognition and analysis by incorporating physical principles into the model. For instance, in construction, PBDL can be used to analyze images of buildings and infrastructure to detect structural anomalies, such as cracks or deformations. By integrating physics-based models, the system can better understand how these structures should behave under normal conditions, improving its ability to identify potential issues. This approach reduces false positives and negatives in defect detection, leading to more precise assessments and maintenance recommendations.

In preventive maintenance, PBDL plays a critical role by predicting equipment failures before they occur. By integrating the physics of machinery, such as the wear and tear dynamics, with deep learning algorithms, PBDL can predict when a machine is likely to fail or require maintenance. This is particularly valuable in industries like transportation, where equipment reliability is crucial. For example, in aviation, PBDL can analyze sensor data from aircraft engines to predict potential failures, allowing for timely maintenance that prevents costly and dangerous breakdowns.

Overall, PBDL is a promising avenue that enhances the predictive power and reliability of machine learning models, enabling breakthroughs in various scientific and engineering disciplines by grounding data-driven methods in the solid foundation of physical laws.


### The Math of PBDL
It’s best to delve deeper into the formulation of a deep learning network using the Universal Approximation Theorem (UAT) and then incorporate physical laws into it. UAT states that a feedforward neural network with a single hidden layer containing a finite number of neurons can approximate any continuous function, provided it uses a non-linear activation function.


To illustrate, let's follow three steps:

1. Formulate a Deep Learning Network using UAT.
2. Insert Physical Laws into the Network.
3. Give a Simple Example.


Consider a neural network with an input vector \\( \mathbf{x} \in \mathbb{R}^n \\), a hidden layer with \\( m \\) neurons, and an output \\( y \in \mathbb{R} \\). The network can be described as follows:

\\[ \mathbf{h} = \sigma(\mathbf{W}_1 \mathbf{x} + \mathbf{b}_1) \\]
\\[ y = \mathbf{W}_2 \mathbf{h} + b_2 \\]

Where:
- \\( \mathbf{W}_1 \in \mathbb{R}^{m \times n} \\) is the weight matrix for the input layer.
- \\( \mathbf{b}_1 \in \mathbb{R}^m \\) is the bias vector for the hidden layer.
- \\( \sigma \\) is a non-linear activation function (e.g., ReLU, sigmoid).
- \\( \mathbf{W}_2 \in \mathbb{R}^m \\) is the weight vector for the output layer.
- \\( b_2 \in \mathbb{R} \\) is the bias term for the output layer.


To insert physical laws into the network, we incorporate known physical relationships directly into the learning process. This can be done by modifying the loss function to penalize violations of physical laws.


Take, for example, a simple physical law, such as Newton's second law of motion:

\\[ F = ma \\]

Where \\( F \\) is the force, \\( m \\) is the mass, and \\( a \\) is the acceleration. Suppose we want our neural network to predict the acceleration \\( a \\) given the force \\( F \\) and mass \\( m \\).

We can modify the loss function to include a term that penalizes deviations from this physical law. Let \\( \hat{a} \\) be the predicted acceleration from the neural network. The loss function \\( \mathcal{L} \\) can be defined as:


$$ \mathcal{L} = \mathcal{L}_{\text{data}} + \lambda \mathcal{L}_{\text{physics}} $$


Where:
- \\( \mathcal{L}_{\text{data}} \\) is the data-driven loss (e.g., mean squared error between predicted and true acceleration).
- \\( \mathcal{L}_{\text{physics}} = \| F - m \hat{a} \|^2 \\) penalizes deviations from Newton's second law.
- \\( \lambda \\) is a regularization parameter that controls the importance of the physical constraint.

#### Example: Predicting the Motion of a Particle

Consider a particle of mass \\( m = 2 \\) kg subject to a force \\( F(t) \\) over time \\( t \\). We want to predict the acceleration \\( a(t) \\) using a neural network.

1. Neural Network Model: Input: Force \\( F(t) \\), Output: Predicted acceleration \\( \hat{a}(t) \\).

2. Training Data: Simulated data for \\( F(t) \\) and true acceleration \\( a(t) \\).

3. Physics-Informed Loss Function:


$$ \mathcal{L} = \frac{1}{N} \sum_{i=1}^N \left( a_i - \hat{a}_i \right)^2 + \lambda \sum_{i=1}^N \left( F_i - 2 \hat{a}_i \right)^2 $$


Where \\( N \\) is the number of data points.

In this example, the neural network is trained to predict the acceleration while adhering to Newton's second law of motion. The regularization parameter \\( \lambda \\) ensures that the physical law is respected during the learning process.

Let's see the example in action with Jupyter:

{::nomarkdown}
{% assign jupyter_path = "assets/jupyter/pbdlexample.ipynb" | relative_url %}
{% capture notebook_exists %}{% file_exists assets/jupyter/pbdlexample.ipynb %}{% endcapture %}
{% if notebook_exists == "true" %}
{% jupyter_notebook jupyter_path %}
{% else %}

<p>Sorry, the notebook you are looking for does not exist.</p>
{% endif %}
{:/nomarkdown}


Note that how the code computes the highly accurate estimate of acceleration to be 2.500002861022949 $$ \textrm{ms}^{-2} $$ .

### Takeaways

PBDL enhances the accuracy and reliability of predictions by embedding physical laws into the learning process. This approach is particularly useful for systems where physical principles are well understood and can provide additional guidance to the model.

### To Dig Deeper

What better way than to listen to the experts on YouTube?

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.liquid path="https://www.youtube.com/embed/SU-OILSmR1M?si=HbFOpQ4xUvZebZx4" class="rounded z-depth-1" controls=true width=400 height=225 %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include video.liquid path="https://www.youtube.com/embed/-zrY7P2dVC4?si=6OBMW-y2u53CcqLR" class="rounded z-depth-1" controls=true width=400 height=225 %}
    </div>
</div>

