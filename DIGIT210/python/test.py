import nltk
nltk.download('punkt')
nltk.download('averaged_perceptron_tagger_eng')
nltk.download('wordnet')
nltk.download('omw-1.4')

from nltk import word_tokenize, pos_tag

text = "This is just a test sentence."
tokens = word_tokenize(text)
tags = pos_tag(tokens)
print(tags)