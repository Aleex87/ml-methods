# Normalization vs Standardization in Deep Learning

In deep learning, proper data scaling is critical.

Neural networks are trained using gradient descent.
If input features have very different scales,
training can become unstable or inefficient.

Normalization and standardization are two common preprocessing techniques.

---

# Why Scaling Matters in Neural Networks

Neural networks rely on:

- weighted sums
- activation functions
- gradient-based optimization

If input values are too large:

- gradients may explode
- updates become unstable

If input values are too small:

- gradients may vanish
- learning becomes slow

Proper scaling improves:

- training speed
- numerical stability
- convergence behavior

---

# Standardization

Standardization transforms data so that:

- mean becomes 0
- standard deviation becomes 1

After transformation:

- most values fall roughly between -3 and +3

Standardization centers the distribution
and keeps relative distances between samples.

It works well when:

- data is approximately normally distributed
- features have different units
- inputs are
