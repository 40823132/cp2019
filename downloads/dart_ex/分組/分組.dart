import random
import urllib3
 
target_url = "https://github.com/40823132/cp2019/tree/master/downloads/dart_ex/%E4%BA%82%E6%95%B8%E5%88%86%E7%B5%84/math.txt"
 
# 從 url 讀取資料, 之後利用 splitlines() 存入學員學號字串數列中
http = urllib3.PoolManager()
response = http.request('GET', target_url)
data = response.data.decode('utf-8')
read_data = data.splitlines() 
#print(read_data)
 
# 每組人數
num_in_one_group = 10
# 組序由 1 開始
group = 1
# 各班分組後所得數列
c2019 = []
print("共有 " + str(len(read_data)) + " 位學員")
# 利用 shuffle 將數列隨機弄亂
random.shuffle(read_data)
for i in range(len(read_data)):
    # 利用整數相除的餘數進行分組
    if i%num_in_one_group == 0:
        # 列出分隔符號
        print("-"*20)
        print("group " + str(group) +":")
        # 在分組區隔時重置各組學員數列
        group_list = []
        print()
        # 同時列出與分隔標註對應 i 的數列內容
        print(read_data[i])
        group_list.append(read_data[i])
        group = group + 1
    else:
        # 逐一列出同組的其他學員
        print(read_data[i])
        group_list.append(read_data[i])
    if i%num_in_one_group == 0:
        c2019.append(group_list)
# c2019 為該班分組後所得分組數列
print(c2019)