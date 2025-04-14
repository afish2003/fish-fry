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
import tk

plt.plot(range(20))
plt.show()
### See how these words are dispersed (I changed to search Monty Python!)
words = ["ni", "grail", "king", "no"]
nltk.draw.dispersion_plot(text6, words)
plt.show()
# Another dispersion plot written closer to the NLTK example:
# Choose the text first (I edited this to search the book of genesis)
text3.dispersion_plot(["he", "thy", "thine", "who", "father"])
plt.show()