# Supervised vs Unsupervised Learning

Machine learning problems can be divided into two main categories:

- Supervised learning
- Unsupervised learning

The difference depends on whether we have labeled data.

---

# Supervised Learning

In supervised learning, each training example includes:

- input features (X)
- a known target label (y)

The model learns a mapping from inputs to outputs.

In other words:

> We know the correct answer during training.

---

## Examples of Supervised Learning

- House price prediction (regression)
- Spam detection (classification)
- Disease diagnosis (classification)
- Energy consumption forecasting (regression)

Supervised learning problems are divided into:
- Regression (continuous output)
- Classification (discrete output)

---

## What the Model Learns

The model tries to:

- minimize prediction error
- generalize to unseen data
- approximate the relationship between X and y

Supervised learning is goal-oriented:
we explicitly define what we want to predict.

---

# Unsupervised Learning

In unsupervised learning, the dataset contains:

- input features (X)
- no target labels

There is no "correct answer" provided.

The model tries to discover patterns, structure, or relationships within the data.

---

## Examples of Unsupervised Learning

- Customer segmentation
- Anomaly detection
- Topic modeling
- Dimensionality reduction

---

## What the Model Learns

The model may try to:

- group similar samples (clustering)
- reduce data complexity
- detect unusual patterns
- find hidden structure

Unsupervised learning is exploratory:
we do not specify a prediction target.

---

# Key Differences

Supervised Learning:
Input (X) ---> Model ---> Known Target (y)

Unsupervised Learning:
Input (X) ---> Model ---> Discovered Structure


---

# When to Use Each Approach

Use supervised learning when:
- labeled data is available
- a clear prediction goal exists

Use unsupervised learning when:
- labels are unavailable
- the objective is exploration
- you want to understand the structure of the data

---

# Why This Distinction Matters

Understanding whether a problem is supervised or unsupervised:

- determines model choice
- determines evaluation strategy
- determines how performance is measured

It is one of the first decisions in any machine learning project.
