# This is the first edition about cope with nlp
from nltk.tokenize import WordPunctTokenizer
from nltk.tokenize import RegexpTokenizer
from PyPDF2 import PdfFileReader as pdf_read

# 输入一个句子，分成词组
def wordtokenizer(sentence):
        #分段
    words = WordPunctTokenizer().tokenize(sentence)
    return words

# 处理PDF文档, 其中a为文件具体位置，如：x:\xxx\xxx.pdf
with open(a, 'rb') as f:
#     根据正则初始化分词器
    tokenizer = RegexpTokenizer(r'[a-zA-Z]\w+')
    pdf = pdf_read(f)
    con_txt = pdf.getPage(10).extractText()
    print(con_txt)
    l2 = con_txt.split("\n")
    print(len(l2))
