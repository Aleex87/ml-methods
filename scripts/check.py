import tensorflow as tf

print("\n=== TensorFlow Environment Check ===\n")

print("TensorFlow version:", tf.__version__)

gpus = tf.config.list_physical_devices('GPU')

if gpus:
    print("GPU detected:", gpus)
else:
    print("No GPU detected — running on CPU")

# test computazionale
a = tf.constant([[1.0, 2.0]])
b = tf.constant([[3.0], [4.0]])

c = tf.matmul(a, b)

print("\nTensor computation successful:")
print(c)
