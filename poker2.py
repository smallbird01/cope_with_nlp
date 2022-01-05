# Time : 2021/8/23 18:35
from random import sample
import pikepdf

num = 11
num_list = []
# 生成num个整数，且在[10，21)范围内不重复的整数
num_tmp = sample(range(10, 21), 11)
num_list = [str(i) for i in num_tmp]
num_str = ''.join(num_list)
print(num_str)

# a为具体文件的地址
with pikepdf.open(a) as pdf:
    num_pages = len(pdf.pages)
    print(num_pages)
