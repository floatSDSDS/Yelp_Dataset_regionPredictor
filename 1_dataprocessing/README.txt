【使用顺序】
1.载入工作空间patch1_1
2.运行脚本patch1_2_0
3.运行脚本patch1_2_1

【得到结果】
#测试集list(set_test)
#训练集list(set_training)
#餐馆基本信息总表business_A
#餐馆特征信息总表business_B

【数据结构说明】
#set_test和set_training为两个list，结构一样，取25名用户以时间排序，分别存入最后100个数据作为测试集test，之前数据作为训练集training，每个样本数据量约为500-1300。

#每个list里面有3个元素，和之前的welldone不同。分别是user_id,basic,attributes

#引用方法：
	set_test$user_id;
	set_test$basic[[i]];
	set_test$attributes[[i]];
	其中i为所需用户编号。
	格式分别为factor,data.frameX2

【p.s.】
#保留了user_id方便索引

#没有加parking，parking有5列要合并，而且存在比如1,3都是True的情况，这种取值不唯一的情况该怎么处理还待讨论。

#在basic和attributes都增加了business_id，方便回到business总表中检索。

#在basic中增加了state和city。我观察了一下，基本一个用户活动的城市也许会变，州基本固定为一到两个，划范围和取地图如果能简化为直接用州会很方便。