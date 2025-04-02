import nltk
import nltk.corpus
# The next line downloads all the example texts used in the NLTK book at https://www.nltk.org/book !
# You can comment out the download line after the first time you do it.
nltk.download('book')
from nltk.book import *
# The next line lets us do GET requests from remote URLs on the web:
from urllib import request
# The following import lines are for plotting interactive visualizations in Python
import matplotlib
import matplotlib.pyplot as plt
import tkinter as tk

plt.plot(range(10))
plt.show()
### See how these words are dispersed in NLTK text 1 (Moby Dick)
words = ["whale", "sea", "ship", "captain"]
nltk.draw.dispersion_plot(text1, words)
plt.show()
# Another dispersion plot written closer to the NLTK example:
# Choose the text first (text 4 is Inaugural Addresses):
text4.dispersion_plot(["citizens", "democracy", "freedom", "duties", "America"])
plt.show()

text6.common_contexts(["find","seek"])