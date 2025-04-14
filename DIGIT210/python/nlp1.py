# start with project text file. Pull its tagged words. Also pull its whole text.
# objective: Learn to open and read in data from files.
# play with spaCy
# If necessary at Git Bash or terminal do: pip3 install spacy

import spacy
# Need line 8 the first time: Then comment it out after the first time you run it:
#nlp = spacy.cli.download("en_core_web_sm")
nlp = spacy.load('en_core_web_sm')

song1 = open('projectfiles/song-1.txt', 'r', encoding='utf8')
words = song1.read()
wordstrings = str(words)
print(wordstrings)

count=0
for w in words:
    count += 1
    print(count, ": ", w)

# start playing with spaCy and nlp:song1Words = nlp(wordstrings)
for token in song1:
    if token.pos_ == "VERB":
        print(token.text, "---->", token.pos_, ":::::", token.lemma_)


    def wordCollector(words):
        wordList = []
        count = 0
        for token in words:
            if token.pos_ == "VERB":
                count += 1
                # print(count, ": ", token.text, " lemma: ", token.lemma_, " pos: ", token.pos_)
                # don't forget the underscore after token.lemma_ , token.pos_, etc.!
                wordList.append(token.lemma_)
                # print(count, ": ", token, token.pos_)
        # print(count, ": ", adjectives)
        return wordList


    myWords = wordCollector(words)
    print(myWords)

    from collections import Counter

    word_freq = Counter(myWords)
    # most_common() converts the Counter's dictionary to a tuple series and sorts it
    ranked = word_freq.most_common()
    topTen = word_freq.most_common(10)
    print(topTen)
    lastTen = word_freq.most_common()[:-11:-1]
    print(lastTen)

# On windows ctrl / comments out blocks.
# On mac command / comments out blocks
# grimmFile = open('grimm.txt', 'r')
# doc2 = grimmFile.read()
docstring = str(song1)
# print(doc2)

nlpS1 = nlp(docstring)
for token in nlpS1:
    # print the token and its part of speech tag from spacy
    print(token.text, "--->", token.pos_)




