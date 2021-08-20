from random import randint

poker_num = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
# 扑克花色分别为黑桃（Spade）、红桃（Heart）、方块（Diamond）、梅花（Club）
poker_kind = ['S', 'H', 'D', 'C']
res_list = []
# poker = poker_kind[randint(-1, 3)] + str(poker_num[randint(0, len(poker_num))-1])
# print(poker)
# input(">>>>>")

for i in range(52):
    poker = poker_kind[randint(0, 3)] + str(poker_num[randint(0, len(poker_num))-1])
    res_list.append(poker)

print(res_list)
print(len(res_list))
