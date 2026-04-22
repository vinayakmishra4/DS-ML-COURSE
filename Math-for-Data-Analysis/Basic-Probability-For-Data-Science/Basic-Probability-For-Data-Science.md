# 📊 Basic Probability for Data Science

![GitHub stars](https://img.shields.io/github/stars/your-username/your-repo?style=social)
![GitHub forks](https://img.shields.io/github/forks/your-username/your-repo?style=social)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Made With](https://img.shields.io/badge/Made%20with-Python-yellow)
![Status](https://img.shields.io/badge/Status-Learning-green)

---

## 📌 Overview

Probability is a branch of mathematics that deals with uncertainty. In **data science and machine learning**, it plays a crucial role in:

* Making predictions 📈
* Classifying data 🧠
* Handling uncertainty ⚡
* Improving model accuracy 🎯

---

## 🧮 What is Probability?

[
P(A) = \frac{\text{Favorable Outcomes}}{\text{Total Outcomes}}
]

* **0** → Impossible event
* **1** → Certain event

**Example:**

```math
P(H) = \frac{1}{2}
```

---

## 🧠 Basics of Probability

| Concept           | Description           | Example         |
| ----------------- | --------------------- | --------------- |
| Sample Space      | All possible outcomes | `{1,2,3,4,5,6}` |
| Event             | Subset of outcomes    | `{2,4,6}`       |
| Random Variable   | Numerical outcome     | Heads count     |
| Random Experiment | Uncertain process     | Coin toss       |

---

## 📐 Probability Rules

### ➕ Addition Rule

```math
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
```

### ✖️ Multiplication Rule

```math
P(A ∩ B) = P(A) ⋅ P(B)
```

### 🔄 Complement Rule

```math
P(A') = 1 - P(A)
```

### 🔗 Conditional Probability

```math
P(A|B) = \frac{P(A ∩ B)}{P(B)}
```

### 🔁 Bayes' Theorem

```math
P(A|B) = \frac{P(B|A)P(A)}{P(B)}
```

---

## 📊 Key Probability Functions

| Function | Use Case               | Example        |
| -------- | ---------------------- | -------------- |
| PMF      | Discrete variables     | Spam detection |
| PDF      | Continuous variables   | Sensor data    |
| CDF      | Cumulative probability | Risk scoring   |

---

## 🔍 Likelihood

```math
L(\theta|X) = \prod_{i=1}^{n} P(x_i|\theta)
```

Log form:

```math
\log L(\theta|X) = \sum_{i=1}^{n} \log P(x_i|\theta)
```

Used in **Maximum Likelihood Estimation (MLE)**.

---

## 🔥 Entropy

```math
H(X) = -\sum P(x_i)\log P(x_i)
```

* High → More uncertainty
* Low → Less uncertainty

---

## 📏 Confidence Interval

```math
\bar{x} \pm z \frac{s}{\sqrt{n}}
```

---

## 📈 Probability Distributions

* 🎯 **Bernoulli** → Binary outcome
* 🎲 **Binomial** → Multiple trials
* ⏱️ **Geometric** → First success
* 📉 **Poisson** → Rare events
* 📏 **Uniform** → Equal probability
* ⌛ **Exponential** → Time between events
* 🔔 **Normal (Gaussian)** → Bell curve

---

## 🤖 ML Algorithms Using Probability

* 📧 **Naive Bayes** → Spam detection
* 🗣️ **HMM** → Speech recognition
* 🧩 **Bayesian Networks** → Decision making
* 📊 **GMM** → Clustering

---

## 🚀 Why It Matters

✔ Handles uncertainty
✔ Improves predictions
✔ Supports decision-making
✔ Core of machine learning

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repo
2. Create a new branch
3. Commit changes
4. Open a PR

---

## 📜 License

This project is licensed under the **MIT License**.

---

## ⭐ Support

If you like this project:

👉 Give it a ⭐ on GitHub
👉 Share with others

---