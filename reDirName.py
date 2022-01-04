# 批量文件重命名（单级目录）
import os

path = "" #fill in an actual directory.
print(path)
# 获得当前文件夹下所有文件列表(不能搜寻子目录)
fileList = os.listdir(path)
print(fileList[0].replace(a, b))
old_name_t1 = path + os.sep + fileList[1]  # os.sep添加系统分隔符 os.sep = /
print(old_name_t1)

n = 0
for i in fileList:
    # 设置旧文件名（就是路径+文件名）
    old_name = path + os.sep + fileList[n]  # os.sep添加系统分隔符
    # 设置新文件名
    new_name = path + os.sep + fileList[n].replace(a, b)
    os.rename(old_name, new_name)  # 用os模块中的rename方法对文件改名
    print(old_name, '======>', new_name)
    n = n + 1
