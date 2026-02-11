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

High varia
