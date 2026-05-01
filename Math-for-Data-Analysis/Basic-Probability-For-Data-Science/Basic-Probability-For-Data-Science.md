# 📊 Basic Probability for Data Science (Theory)

---

## 📌 Overview

Probability is a branch of mathematics that deals with **uncertainty and randomness**. It provides a framework to model, analyze, and predict outcomes in situations where results are not deterministic.

In data science and machine learning, probability is used to:

* Model uncertainty
* Make predictions
* Analyze data patterns
* Support decision-making

---

## 🧮 Definition of Probability

Probability measures the likelihood of an event occurring.

[
P(A) = \frac{\text{Number of Favorable Outcomes}}{\text{Total Number of Outcomes}}
]

* ( P(A) = 0 ) → Impossible event
* ( P(A) = 1 ) → Certain event

---

## 🧠 Fundamental Concepts

### Sample Space

The set of all possible outcomes of an experiment.

### Event

A subset of the sample space representing one or more outcomes.

### Random Variable

A variable that assigns numerical values to outcomes of a random process.

### Experiment

A process that produces observable outcomes under uncertain conditions.

---

## 📐 Types of Probability

### 1. Classical Probability

Based on equally likely outcomes.

### 2. Empirical Probability

Based on observed data and experiments.

### 3. Subjective Probability

Based on personal belief or experience.

---

## 📊 Probability Rules

### Addition Rule

For any two events:

[
P(A \cup B) = P(A) + P(B) - P(A \cap B)
]

If events are mutually exclusive:

[
P(A \cup B) = P(A) + P(B)
]

---

### Multiplication Rule

#### Independent Events

[
P(A \cap B) = P(A) \times P(B)
]

#### Dependent Events

[
P(A \cap B) = P(A) \times P(B|A)
]

---

### Complement Rule

[
P(A') = 1 - P(A)
]

---

### Conditional Probability

[
P(A|B) = \frac{P(A \cap B)}{P(B)}
]

---

## 🔗 Independence of Events

Two events are independent if the occurrence of one does not affect the probability of the other.

[
P(A \cap B) = P(A) \times P(B)
]

---

## 📊 Probability Distributions

### PMF (Probability Mass Function)

Used for discrete random variables.

### PDF (Probability Density Function)

Used for continuous random variables.

### CDF (Cumulative Distribution Function)

Represents cumulative probability up to a value.

---

## 🤖 Role in Data Science & Machine Learning

Probability forms the backbone of many algorithms and techniques, including:

* Classification models
* Statistical inference
* Predictive modeling
* Uncertainty estimation

It enables systems to make decisions under incomplete or uncertain information.

---

## 🚀 Importance

* Helps quantify uncertainty
* Supports data-driven decisions
* Essential for statistical modeling
* Core foundation for machine learning

---

## 📚 Prerequisites

* Basic mathematics
* Understanding of sets and functions

---

## 🔜 Next Topics

* Bayes’ Theorem
* Random Variables
* Probability Distributions
* Statistical Inference

---