%%%%%%%%%%used to restaurant

clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�õ�����·�����������ø�ʽ
%     OperationRout=getOperationRout
%���Ĳ�����Ϣ�ķ���ֵ����Ϊ
%     [closeingTime,dayWeek,openingTime]=Modify
%��ȡһ�������в�����id����
%     restaurantId=getRestaurantId
%������ɲ�ѯ�������鼰�����
%     [zipcode,day0fweek,hour,minute]=getQueryValue
%
%·����������
%1.�޸Ĳ���
%2.ɾ������
%3.����������ѯ����
%4.����id��ѯ����

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%�������closeingTime & openingTime
rng shuffle;      %%�������������

%��ȡ���������·��
OperationRout=getOperationRout

RoutLength=length(OperationRout);  %��ȡ·������

for i=1:RoutLength 
	switch OperationRout(i)
		case 1                         %�ڵ�1�޸�һ������
		  ModifyId=getRestaurantId
			[closeingTime,dayWeek,openingTime]=Modify;
			ModifyData=[closeingTime,dayWeek,openingTime]
		case 2                         %�ڵ�2����idɾ��һ������
			DeleteId=getRestaurantId
		case 3                         %�ڵ�3��������ȡһ������
			[zipcode,day0fweek,hour,minute]=getQueryValue;
			QueryValue=[zipcode,day0fweek,hour,minute]
		case 4                         %�ڵ�4����id��ѯһ������
			QueryId=getRestaurantId
	end
end


