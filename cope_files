# Time : 2021.8.8 10:21
from docx import Document
from docx.oxml.ns import qn
from random import randint

# 模板文档
document = Document("recording.docx")

# 所有Normal级（正文级），更改字体方式
# document.styles['Normal'].font.name = u'宋体'
# document.styles['Normal']._element.rPr.rFonts.set(qn('w:eastAsia'), u'仿宋_GB2312')

# tbs 是document里所有的表的集合
tbs = document.tables
table_1 = tbs[0]


# student name
def student_name_f(student_name):
    student_name_cell = table_1.rows[0].cells[0].paragraphs[0]
    student_name_cell.text = "学生：" + student_name
    # 将runs（它实际式一个set）中第一个元素的字体变为指定的中文字体
    # table_1.rows[0].cells[0].paragraphs[0].runs[0].font.name = '仿宋_GB2312'
    # table_1.rows[0].cells[0].paragraphs[0].runs[0]._element.rPr.rFonts.set(qn('w:eastAsia'), '仿宋_GB2312')
    student_name_cell_run0 = table_1.rows[0].cells[0].paragraphs[0].runs[0]
    student_name_cell_run0.font.name = '仿宋_GB2312'
    student_name_cell_run0._element.rPr.rFonts.set(qn('w:eastAsia'), '仿宋_GB2312')


# talked date
def take_date_f(date_some):
    take_date_cell = table_1.rows[1].cells[0]
    take_date_cell.text = "时间： 2021年" + date_some
    take_date_cell_run0 = table_1.rows[1].cells[0].paragraphs[0].runs[0]
    take_date_cell_run0.font.name = '仿宋_GB2312'
    take_date_cell_run0._element.rPr.rFonts.set(qn('w:eastAsia'), '仿宋_GB2312')


# talk_after
table_1.rows[7].cells[1].paragraphs[0].text = "根据内容"
take_after_run0 = table_1.rows[7].cells[1].paragraphs[0].runs[0]
take_after_run0.font.name = '仿宋_GB2312'
take_after_run0._element.rPr.rFonts.set(qn('w:eastAsia'), '仿宋_GB2312')

# 读取所有学生姓名，并列表：
students_file = open("res/姓名.txt", "r", encoding="utf-8")
students_list = []
for i in students_file:
    students_list.append(i.strip())

# 读取日期，并列表：
date_file = open("res/日期.txt", "r", encoding="utf-8")
date_list = []
for i in date_file:
    date_list.append(i.strip())

# 读取谈话内容：
relation_file = open("res/情况1.txt", "r", encoding="utf-8")
relation_list = []
for i in students_file:
    relation_list.append(i.strip())

disciplines_file = open("res/情况.txt", "r", encoding="utf-8")
disciplines_list = []
for i in students_file:
    disciplines_list.append(i.strip())

study_file = open("res/能力.txt", "r", encoding="utf-8")
study_list = []
for i in students_file:
    study_list.append(i.strip())

career_file = open("res/理念.txt", "r", encoding="utf-8")
career_list = []
for i in students_file:
    career_list.append(i.strip())

upgrade_file = open("res/意愿.txt", "r", encoding="utf-8")
upgrade_list = []
for i in students_file:
    upgrade_list.append(i.strip())

student_name = students_list[0]
student_name_f(student_name)
date_some = date_list[randint(0, len(date_list) + 1)]
take_date_f(date_some)

# talk context


# 保存结果的目录：
result_ads = "students/"
str_test1 = result_ads + student_name + ".docx"
# str_test1 = result_ads + "test1" + ".docx"
document.save(str_test1)
