%%%%%%%%%%used to restaurant

clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%得到操作路径函数及调用格式
%     OperationRout=getOperationRout
%更改餐厅信息的返回值函数为
%     [closeingTime,dayWeek,openingTime]=Modify
%获取一即将进行操作的id函数
%     restaurantId=getRestaurantId
%随机生成查询数据数组及其调用
%     [zipcode,day0fweek,hour,minute]=getQueryValue
%
%路径定义如下
%1.修改餐厅
%2.删除餐厅
%3.按照条件查询餐厅
%4.按照id查询餐厅

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%随机生成closeingTime & openingTime
rng shuffle;      %%产生随机数种子

%获取随机操作的路径
OperationRout=getOperationRout

RoutLength=length(OperationRout);  %获取路径长度

for i=1:RoutLength 
	switch OperationRout(i)
		case 1                         %节点1修改一个餐厅
		  ModifyId=getRestaurantId
			[closeingTime,dayWeek,openingTime]=Modify;
			ModifyData=[closeingTime,dayWeek,openingTime]
		case 2                         %节点2按照id删除一个餐厅
			DeleteId=getRestaurantId
		case 3                         %节点3按条件获取一个餐厅
			[zipcode,day0fweek,hour,minute]=getQueryValue;
			QueryValue=[zipcode,day0fweek,hour,minute]
		case 4                         %节点4按照id查询一个餐厅
			QueryId=getRestaurantId
	end
end


