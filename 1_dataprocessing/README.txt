��ʹ��˳��
1.���빤���ռ�patch1_1
2.���нű�patch1_2_0
3.���нű�patch1_2_1

���õ������
#���Լ�list(set_test)
#ѵ����list(set_training)
#�͹ݻ�����Ϣ�ܱ�business_A
#�͹�������Ϣ�ܱ�business_B

�����ݽṹ˵����
#set_test��set_trainingΪ����list���ṹһ����ȡ25���û���ʱ�����򣬷ֱ�������100��������Ϊ���Լ�test��֮ǰ������Ϊѵ����training��ÿ������������ԼΪ500-1300��

#ÿ��list������3��Ԫ�أ���֮ǰ��welldone��ͬ���ֱ���user_id,basic,attributes

#���÷�����
	set_test$user_id;
	set_test$basic[[i]];
	set_test$attributes[[i]];
	����iΪ�����û���š�
	��ʽ�ֱ�Ϊfactor,data.frameX2

��p.s.��
#������user_id��������

#û�м�parking��parking��5��Ҫ�ϲ������Ҵ��ڱ���1,3����True�����������ȡֵ��Ψһ���������ô���������ۡ�

#��basic��attributes��������business_id������ص�business�ܱ��м�����

#��basic��������state��city���ҹ۲���һ�£�����һ���û���ĳ���Ҳ���䣬�ݻ����̶�Ϊһ������������Χ��ȡ��ͼ����ܼ�Ϊֱ�����ݻ�ܷ��㡣