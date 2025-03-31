import nltk
nltk.download('book')
from nltk.book import *

nltk.download('gutenberg')
nltk.corpus.gutenberg.fileids()

for fileid in gutenberg.fileids():
    num_chars = len(gutenberg.raw(fileid))
    num_words = len(gutenberg.words(fileid))
    num_vocab = len(set(w.lower() for w in gutenberg.words(fileid)))
print(round(num_chars/num_words), round(num_words/num_vocab), fileid)






