# Bias, Variance, and Generalization

In machine learning, the goal is to learn a function that approximates
the true relationship between inputs (X) and outputs (y).

However, every model makes assumptions.

Prediction error can be decomposed into three components:

- Bias
- Variance
- Irreducible error

Understanding these components explains why models underfit or overfit.

---

# The True Function

Assume there exists an unknown true function:

    y = f(x) + ε

Where:
- f(x) is the real underlying relationship
- ε is random noise (irreducible error)

A model tries to approximate f(x) with an estimated function:

    ŷ = g(x)

The difference between f(x) and g(x) is where bias and variance arise.

---

# Bias

Bias measures how far the average model prediction is from the true function.

Formally:

    Bias(x) = E[g(x)] − f(x)

Bias represents systematic error.

Geometrically:

- If the true relationship is curved
- But the model is linear

The model cannot bend to match the curve.

It will consistently miss the true pattern,
even if trained on many datasets.

High bias means:

- The model is too rigid
- The hypothesis space is too limited
- Important structure cannot be captured

This leads to underfitting.

---

# Variance

Variance measures how much the model prediction changes
when trained on different datasets.

Formally:

    Variance(x) = E[(g(x) − E[g(x)])²]

Geometrically:

- If we train the same complex model on slightly different data,
- The learned function may change significantly.

High variance means:

- The model is too flexible
- It adapts strongly to noise
- It memorizes training samples

This leads to overfitting.

---

# Error Decomposition

For a given input x, expected prediction error can be decomposed as:

    Total Error = Bias² + Variance + Irreducible Error

Irreducible error comes from noise ε
and cannot be eliminated.

The model can only control bias and variance.

---

# Geometric Interpretation

Consider fitting points in 2D space.

Case 1: Linear model for nonlinear data
- The fitted line cannot follow the curve
- Systematic deviation appears
→ High Bias

Case 2: Very high-degree polynomial
- The curve passes through every point
- Small fluctuations in data drastically change the shape
→ High Variance

The ideal model:

- Follows the true pattern
- Ignores random noise
- Remains stable across datasets

---

# Bias–Variance Tradeoff

Model complexity affects both components:

- Increasing complexity ↓ Bias
- Increasing complexity ↑ Variance

There is no free improvement.

The goal is to find a balance that minimizes total error.

---

# Connection to Overfitting and Underfitting

Underfitting:
- High Bias
- Low Variance
- Poor training performance

Overfitting:
- Low Bias
- High Variance
- Large gap between training and validation performance

---

# Why This Matters

Bias and variance explain:

- Why adding parameters sometimes improves performance
- Why adding too many parameters can hurt performance
- Why regularization works
- Why more data reduces variance

They are central to understanding model behavior.
