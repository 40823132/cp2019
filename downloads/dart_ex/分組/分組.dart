import random
import urllib3
 
target_url = "https://github.com/40823132/cp2019/tree/master/downloads/dart_ex/%E4%BA%82%E6%95%B8%E5%88%86%E7%B5%84/math.txt"
 
# �q url Ū�����, ����Q�� splitlines() �s�J�ǭ��Ǹ��r��ƦC��
http = urllib3.PoolManager()
response = http.request('GET', target_url)
data = response.data.decode('utf-8')
read_data = data.splitlines() 
#print(read_data)
 
# �C�դH��
num_in_one_group = 10
# �էǥ� 1 �}�l
group = 1
# �U�Z���ի�ұo�ƦC
c2019 = []
print("�@�� " + str(len(read_data)) + " ��ǭ�")
# �Q�� shuffle �N�ƦC�H���˶�
random.shuffle(read_data)
for i in range(len(read_data)):
    # �Q�ξ�Ƭ۰����l�ƶi�����
    if i%num_in_one_group == 0:
        # �C�X���j�Ÿ�
        print("-"*20)
        print("group " + str(group) +":")
        # �b���հϹj�ɭ��m�U�վǭ��ƦC
        group_list = []
        print()
        # �P�ɦC�X�P���j�е����� i ���ƦC���e
        print(read_data[i])
        group_list.append(read_data[i])
        group = group + 1
    else:
        # �v�@�C�X�P�ժ���L�ǭ�
        print(read_data[i])
        group_list.append(read_data[i])
    if i%num_in_one_group == 0:
        c2019.append(group_list)
# c2019 ���ӯZ���ի�ұo���ռƦC
print(c2019)