# 📊 Basic Probability for Data Science

---

## 🌟 Overview

Probability is the mathematical framework for measuring uncertainty. It allows us to quantify how likely an event is to occur when outcomes are not deterministic.

In data science, probability is essential for:

* Predicting outcomes
* Understanding data patterns
* Making decisions under uncertainty
* Building machine learning models

---

## 🧮 Probability Definition

```
P(A) = Favorable Outcomes / Total Outcomes
```

### 📌 Interpretation

* `P(A) = 0` → Impossible event
* `P(A) = 1` → Certain event
* `0 < P(A) < 1` → Likely event

---

## 🧠 Fundamental Concepts

### 🔹 Sample Space (S)

The set of all possible outcomes of an experiment.

---

### 🔹 Event

A subset of the sample space.

---

### 🔹 Random Variable

A variable that assigns numerical values to outcomes.

---

### 🔹 Experiment

A process that produces outcomes under uncertainty.

---

## 📐 Types of Probability

| Type       | Description                      |
| ---------- | -------------------------------- |
| Classical  | Based on equally likely outcomes |
| Empirical  | Based on observed data           |
| Subjective | Based on belief or experience    |

---

## 📊 Probability Rules

### ➕ Addition Rule

For mutually exclusive events:

```
P(A ∪ B) = P(A) + P(B)
```

---

### ✖️ Multiplication Rule

**Independent Events:**

```
P(A ∩ B) = P(A) × P(B)
```

**Dependent Events:**

```
P(A ∩ B) = P(A) × P(B|A)
```

---

### 🔁 Complement Rule

```
P(A') = 1 - P(A)
```

---

### 🔗 Conditional Probability

```
P(B|A) = P(A ∩ B) / P(A)
```

---

### 🔗 Independence of Events

Two events are independent if:

```
P(A ∩ B) = P(A) × P(B)
```

---

## 📊 Probability Distributions

| Type | Use                    |
| ---- | ---------------------- |
| PMF  | Discrete variables     |
| PDF  | Continuous variables   |
| CDF  | Cumulative probability |

---

## 🤖 Role in Data Science

Probability powers:

* Classification models
* Predictive analytics
* Statistical inference
* Uncertainty estimation

---

## 🚀 Why It Matters

* Helps quantify uncertainty
* Enables better decision-making
* Forms the foundation of machine learning
* Supports statistical modeling

---

## 📚 Prerequisites

* Basic mathematics
* Understanding of sets and functions

---

## 🔜 What’s Next

* Bayes’ Theorem
* Random Variables
* Probability Distributions
* Statistical Inference

---

# 🧩 Events in Probability

---

## 📌 Event Definition

An event is a set of outcomes from a random experiment.

---

## 🎯 Sample Space (S)

All possible outcomes.

---

## 🔢 Types of Events

### 1️⃣ Impossible & Sure Events

* Impossible → Probability = 0
* Sure → Probability = 1

---

### 2️⃣ Independent & Dependent Events

* Independent → No influence between events
* Dependent → Outcome depends on previous results

---

### 3️⃣ Simple & Compound Events

* Simple → Single outcome
* Compound → Multiple outcomes

---

### 4️⃣ Mutually Exclusive Events

Events that cannot occur together:

```
A ∩ B = ∅
```

---

### 5️⃣ Exhaustive Events

Events that together cover the entire sample space:

```
A ∪ B = S
```

---

### 6️⃣ Equally Likely Events

All outcomes have equal probability.

---

## 🧮 Finding Probability

```
P(A) = Favorable Outcomes / Total Outcomes
```

---

## ✨ Final Summary

* Probability measures uncertainty
* Events describe outcomes
* Rules help compute likelihoods
* Core foundation for data science and machine learning

---