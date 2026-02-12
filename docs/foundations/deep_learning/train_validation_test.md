# Train, Validation, and Test Sets in Deep Learning

In deep learning, data splitting is not only good practice —
it is essential for controlling model behavior during training.

Neural networks contain many parameters.
Without proper data separation, overfitting happens quickly.

---

# The Three Dataset Splits

A deep learning workflow typically uses:

- Training set
- Validation set
- Test set

Each split has a specific role.

---

# Training Set

The training set is used to:

- update model parameters
- compute gradients
- minimize the loss function

During training:

- the model sees this data repeatedly
- parameters are updated using gradient descent
- learning happens here

The training set directly influences the model.

---

# Validation Set

The validation set is used to:

- monitor model performance
- tune hyperparameters
- detect overfitting

The model does not update its parameters
based on validation data.

Instead, validation performance helps decide:

- when to stop training
- which architecture is better
- which hyperparameters to keep

---

# Test Set

The test set is used only once:

- after training is complete
- after hyperparameters are chosen

It provides an unbiased estimate
of generalization performance.

The test set must never influence model decisions.

---

# Why Deep Learning Requires Careful Splitting

Neural networks are highly flexible.

They can:

- memorize training data
- adapt to noise
- overfit easily

Validation monitoring is therefore critical.

---

# Epochs and Monitoring

In deep learning, training occurs over multiple epochs.

An epoch is:

- one complete pass over the training dataset

After each epoch, performance is often evaluated
on the validation set.

Typical training behavior:

- Training loss decreases steadily
- Validation loss decreases at first
- Then validation loss may increase

This increase indicates overfitting.

---

# Early Stopping

Early stopping is a regularization technique.

Training stops when:

- validation performance stops improving
- validation loss begins to increase consistently

This prevents the model from memorizing noise.

---

# Common Split Ratios

Typical splits include:

- 70% training
- 15% validation
- 15% test

For large datasets:

- 80% training
- 10% validation
- 10% test

The exact ratio depends on dataset size.

---

# Key Principle

Training data teaches the model.

Validation data guides decisions.

Test data evaluates final performance.

Mixing these roles compromises generalization.
