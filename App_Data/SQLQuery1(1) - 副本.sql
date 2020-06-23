create table Admins(																		--����Ա��
Admin_ID int primary key identity(1,1),--����ԱID
Admin_Name nvarchar(50),--����Ա��¼�˺�				
Admin_Pwd nvarchar(50)  --����ԱID����
)

---------------------------------------------------------------------------------------------------------------------------
create table Users(																		--�û���
Users_ID int primary key identity(1,1),--�û�ID
Users_Email nvarchar(50),--�û�����
Users_Phone nvarchar(50),--�û��绰
Users_Name nvarchar(50),--�û��ǳ�
Users_address nvarchar(50),--�û���ַ
Users_Pwd nvarchar(50),	--�û�����
Users_Img_Url nvarchar(50),--ͷ��URL
Users_Sex nvarchar(50),	--�û��Ա�
Users_Age int,			--�û�����
Users_Sta_ID int DEFAULT (0)		--�û�״̬ID
)
select Users_Email,Users_Phone,Users_Name,Users_Pwd,Users_Img_Url,Users_Sex,Users_Age from Users where Users_ID=1
insert into Users values('669606722@qq.com','15224585244','������','����ʡ��������԰��','123','0404.jpg','��',20,default);


create table Music(																			--������
Music_ID int primary key identity(1,1),--����ID
Category_ID int,		--����ID
Singer_ID int,			--����ID
Albums_ID int,			--ר��ID
Music_Url nvarchar(200),--����·��
Music_Name nvarchar(50),--������
Music_Img nvarchar(200),--����ͼƬ
Music_Play_Count int,	--�ø�����������
Music_Play_Sta_ID int,	--����״̬ID
Music_Mv_Url nvarchar(200),--MV·��
Music_Mv_Name nvarchar(200),--MV����
Music_Mv_Play_Count int,--����MV���Ŵ���
Add_Time date			--�������ʱ��
)

insert into Music(Category_ID,Singer_ID,Albums_ID,Music_Url,Music_Img,Music_Name)
select 4,20,1,'����ʤ�����Լ�-�Ϻ촨.mp3','1.jpg','����ʤ�����Լ�' union
select 4,25,1,'������-��ǧ��.mp3','1.jpg','������' union
select 4,26,1,'â��-����ʫ��&�Է��.mp3','1.jpg','â��' union
select 4,15,1,'��Ů������˵-Uu.mp3','1.jpg','��Ů������˵' union
select 4,17,2,'��������-������.mp3','1.jpg','��������' union
select 1,6,2,'KoKoBop-EXO.mp3','1.jpg','Ko Ko Bop' union
select 4,19,2,'������˯�㲻˯-��6.mp3','1.jpg','������˯�㲻˯' union
select 4,23,2,'ըɽ����-������.mp3','1.jpg','ըɽ����' union
select 4,27,3,'ֻ��̫����-�ž���.mp3','1.jpg','ֻ��̫����' union
select 2,16,3,'AintMyFault-Zara.mp3','','Aint My Fault'union
select 2,11,3,'AllComesBackToYou-R3hab.mp3','','All Comes Back To You'union
select 4,7,3,'buttercup-Jack.mp3','','buttercup'union
select 4,13,4,'DaDaDa-Tanir&Tyomcha.mp3','','Da Da Da'union
select 4,14,4,'Fake-TheTechThieves.mp3','','Fake'union
select 4,3,4,'Hero-Cash.mp3','','Hero'union
select 4,2,4,'KeepThisFireBurning-Bolier.mp3','','Keep This Fire Burning'union
select 2,10,5,'Knockout-MartinTungevaag.mp3','','Knockout'union
select 2,9,5,'LoveSongs-KaashPaige&6LACK.mp3','','Love Songs'union
select 4,12,5,'LoveYouLikeaLoveSong-SelenaGomez.mp3','','Love You Likea Love Song'union
select 4,18,5,'love9-����.mp3','','love9'union
select 3,21,6,'NOONE(Feat.B-������B.I.mp3','','NOONE(Feat.B)'union
select 3,1,6,'PinkChampagne-ArianaGrande.mp3','','Pink Champagne'union
select 3,4,6,'PitbullTerrier-DieAntwoord.mp3','','Pitbull Terrier'union
select 3,8,6,'PleaseDontGo-JoelAdams.mp3','','Please Dont Go'union
select 3,24,7,'RinduSemalam-������.mp3','','Rindu Semalam'union
select 3,22,7,'ShallWeChat-������.mp3','','Shall WeChat-������'union
select 3,5,7,'ShapeofYou-EdSheeran.mp3','','Shapeof You'


create table Albums(																	--ר��
Albums_ID int primary key identity(1,1),		--ר��ID
Albums_Name nvarchar(100),		--ר������
Albums_player nvarchar(100),	--ר����Ʒ��
Albums_time nvarchar(100),--ר������ʱ��
Albums_city nvarchar(100),--ר�����й�˾
Albums_img nvarchar(100),--ר�����к���
Albums_Sign nvarchar(100),--ר����������
Albums_onclick int		--ר���������
)
insert into  Albums
select 'Package','Drake','2020-06-06','Drake','a8.jpg','â��-����ʫ��&�Է��.mp3',0 union
select '�����ϼ�','�ܽ���','2020-06-06','�ܽ���','a1.jpg','������˯�㲻˯-��6.mp3',0 union
select 'Ⱥ�Ǻϼ�','Ⱥ��','2020-06-06','Ⱥ��','a2.jpg','ֻ��̫����-�ž���.mp3',0 union
select '������ʶ','��è','2020-06-06','��è','a3.jpg','Hero-Cash.mp3',0 union
select '�������Ĺ���','�·Ұͺ�','2020-06-06','�·Ұͺ�','a4.jpg','love9-����.mp3',0 union
select 'T-School','��̩��','2020-06-06','��̩��','a5.jpg','NOONE(Feat.B-������B.I.mp3',0 union
select '��������2','������','2020-06-06','������','a6.jpg','ShallWeChat-������.mp3',0 




create table ALL_status(																	--����״̬������״̬���û�״̬��
Users_Sta_ID int,		--�û�״̬ID
Users_Sta_Name int,		--�û�״̬��
Music_Play_Sta_ID int,	--����״̬ID
Music_Play_Sta_Name int,--����״̬��
)

--------------------------------------------------------------------------------------------------------------------------
create table Music_Category(																--�������ͱ���ҥ��ҡ������������
Category_ID int primary key identity(1,1),--����ID
Category_Name nvarchar(50),--��������
)
insert into Music_Category
select '����'union
select '��ҥ'union
select '����'union
select 'ҡ��'union
select '����'union
select 'DJ'



create table Singer(																		--���ֱ�
Singer_ID int primary key identity(1,1),--����ID
Singer_Name nvarchar(50),			--��������
Singer_area nvarchar(50),			--����
Singer_Img nvarchar(50),			--����ͷ��
Singer_onclick int					--���ֵ������
)

insert into Singer
select '�Ϻ촨','�й�','u1.jpg',0 union
select '��ǧ��','�й�','u2.jpg',0 union
select '����ʫ��&�Է��','�й�','u3.jpg',0 union
select 'Uu','�й�','u4.jpg',0 union
select '������','�й�','u5.jpg',0 union
select 'EXO','�й�','u6.jpg',0 union
select '��6','�й�','u7.jpg',0 union
select '������','�й�','u8.jpg',0 union
select '�ž���','�й�','u6.png',0 union
select 'Zara','Ӣ��','u7.png',0union
select 'R3hab','Ӣ��','u1.jpg',0union
select 'Jack','�й�','u2.jpg',0union
select 'Tanir&Tyomcha','�й�','u3.jpg',0union
select 'The Tech Thieves','�й�','u4.jpg',0union
select 'Cash','�й�','u5.jpg',0union
select 'Bolier','�й�','u6.jpg',0union
select 'Martin Tungevaag','�й�','u6.png',0union
select 'Kaash Paige&6LACK','�й�','u7.jpg',0union
select 'SelenaGomez','�й�','u7.png',0union
select '����','�й�','u8.jpg',0union
select '������','�й�','u1.jpg',0union
select 'Ariana Grande','�й�','u2.jpg',0union
select 'Die Antwoord','�й�','u3.jpg',0union
select 'Joel Adams','�й�','u4.jpg',0union
select '������','�й�','u5.jpg',0union
select '������','�й�','u6.jpg',0union
select 'EdSheeran','�й�','u7.png',0

create table Play_History(																	--��ʷ���ż�¼��
Users_ID int,			--�û�ID
Music_ID int,			--����ID
)

---------------------------------------------------------------------------------------------------------------------------
create table Music_Rec_Category(															--�����Ƽ������������Ƽ���
Category_ID int,		--����ID
Category_Play_Count int,--���������ֲ�������
)

create table Music_Rec_Singer(																--�����Ƽ������ݸ����Ƽ���
Singer_ID int,			--����ID
Singer_Music_Play_Count int,--�ø��ָ�����������
)

create table Music_Rec_Area(																--�����Ƽ������ݸ��ֵ����Ƽ���
Area_ID int,			--����ID
Area_Music_Play_Count int,--�õ���������������
)

---------------------------------------------------------------------------------------------------------------------------
create table Play_lists(																	--��ǰ�����б�
Users_ID int,			--�û�ID
Music_ID int,			--����ID
Music_Url nvarchar(200),--����URL
Music_Name nvarchar(50)	--������
)
---------------------------------------------------------------------------------------------------------------------------
create table Song_list(																		--�赥
Song_list_ID int,		--�赥ID
Song_list_Name nvarchar(100),--�赥�����ƻ���̬���ɡ�
Users_ID int,			--�û�ID
Music_ID int,			--����ID
)
create table I_Like(																		--��ϲ�� ��
Users_ID int,			--�û�ID
Music_ID int,			--ϲ������ID
Music_Url nvarchar(200),--ϲ������URL
)

create table Favorite(																		--�ղؼ�
Song_list_ID int,		--�ղظ赥ID
Song_list_Name nvarchar(100),--�ղظ赥��
)

---------------------------------------------------------------------------------------------------------------------------
create table Comment(																		--���۱�
Music_ID int,			--��̬��������ID��ָ���������������׸裩
Users_ID int,			--���������û�ID
Content nvarchar(500),	--��������
Comment_Time date,		--��������
Like_Count int			--������
)
create table Reply(																			--�ظ���
Reply_ID int,			--�ظ�ID
Music_ID int,			--��̬��������ID��ָ���������������׸裩
Reply_Users_ID int,		--�ظ��û�ID
Comment_Users_ID int,	--���������û�ID
Reply_Content nvarchar(500),--�ظ�����
Reply_Time date,		--�ظ�ʱ��
Like_Count int			--������
)
select * from Albums 
--��ѯmusic��singer��
go
create proc sel_music_singer_all
as
select m.*,s.Singer_Name,s.Singer_area from Music m,Singer s where s.Singer_ID = m.Singer_ID




--��ѯmusic��singer��Music_Category��Albums��
go
create proc sel_music_singer_Albums_all
as
select  m.*,s.Singer_Name,s.Singer_area,s.Singer_Img,s.Singer_onclick,a.Albums_Name,a.Albums_player,a.Albums_time,a.Albums_city,a.Albums_img,c.Category_Name
from Music m,Singer s,Albums a ,Music_Category c
where s.Singer_ID = m.Singer_ID and m.Albums_ID = a.Albums_ID and m.Category_ID = c.Category_ID







