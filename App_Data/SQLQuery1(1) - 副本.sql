create table Admins(																		--管理员表
Admin_ID int primary key identity(1,1),--管理员ID
Admin_Name nvarchar(50),--管理员登录账号				
Admin_Pwd nvarchar(50)  --管理员ID密码
)

---------------------------------------------------------------------------------------------------------------------------
create table Users(																		--用户表
Users_ID int primary key identity(1,1),--用户ID
Users_Email nvarchar(50),--用户邮箱
Users_Phone nvarchar(50),--用户电话
Users_Name nvarchar(50),--用户昵称
Users_address nvarchar(50),--用户地址
Users_Pwd nvarchar(50),	--用户密码
Users_Img_Url nvarchar(50),--头像URL
Users_Sex nvarchar(50),	--用户性别
Users_Age int,			--用户年龄
Users_Sta_ID int DEFAULT (0)		--用户状态ID
)
select Users_Email,Users_Phone,Users_Name,Users_Pwd,Users_Img_Url,Users_Sex,Users_Age from Users where Users_ID=1
insert into Users values('669606722@qq.com','15224585244','苏梓辰','河南省商丘市梁园区','123','0404.jpg','男',20,default);


create table Music(																			--歌曲表
Music_ID int primary key identity(1,1),--歌曲ID
Category_ID int,		--类型ID
Singer_ID int,			--歌手ID
Albums_ID int,			--专辑ID
Music_Url nvarchar(200),--歌曲路径
Music_Name nvarchar(50),--歌曲名
Music_Img nvarchar(200),--歌曲图片
Music_Play_Count int,	--该歌曲播放总量
Music_Play_Sta_ID int,	--歌曲状态ID
Music_Mv_Url nvarchar(200),--MV路径
Music_Mv_Name nvarchar(200),--MV名称
Music_Mv_Play_Count int,--歌曲MV播放次数
Add_Time date			--歌曲添加时间
)

insert into Music(Category_ID,Singer_ID,Albums_ID,Music_Url,Music_Img,Music_Name)
select 4,20,1,'爱你胜过爱自己-鞠红川.mp3','1.jpg','爱你胜过爱自己' union
select 4,25,1,'处处吻-杨千嬅.mp3','1.jpg','处处吻' union
select 4,26,1,'芒种-音阙诗听&赵方婧.mp3','1.jpg','芒种' union
select 4,15,1,'那女孩对我说-Uu.mp3','1.jpg','那女孩对我说' union
select 4,17,2,'你若三冬-阿悠悠.mp3','1.jpg','你若三冬' union
select 1,6,2,'KoKoBop-EXO.mp3','1.jpg','Ko Ko Bop' union
select 4,19,2,'月亮不睡你不睡-金6.mp3','1.jpg','月亮不睡你不睡' union
select 4,23,2,'炸山姑娘-七音盒.mp3','1.jpg','炸山姑娘' union
select 4,27,3,'只是太爱你-张敬轩.mp3','1.jpg','只是太爱你' union
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
select 4,18,5,'love9-江辰.mp3','','love9'union
select 3,21,6,'NOONE(Feat.B-李夏怡B.I.mp3','','NOONE(Feat.B)'union
select 3,1,6,'PinkChampagne-ArianaGrande.mp3','','Pink Champagne'union
select 3,4,6,'PitbullTerrier-DieAntwoord.mp3','','Pitbull Terrier'union
select 3,8,6,'PleaseDontGo-JoelAdams.mp3','','Please Dont Go'union
select 3,24,7,'RinduSemalam-沈梦逸.mp3','','Rindu Semalam'union
select 3,22,7,'ShallWeChat-李行亮.mp3','','Shall WeChat-李行亮'union
select 3,5,7,'ShapeofYou-EdSheeran.mp3','','Shapeof You'


create table Albums(																	--专辑
Albums_ID int primary key identity(1,1),		--专辑ID
Albums_Name nvarchar(100),		--专辑名称
Albums_player nvarchar(100),	--专辑出品人
Albums_time nvarchar(100),--专辑发行时间
Albums_city nvarchar(100),--专辑发行公司
Albums_img nvarchar(100),--专辑发行海报
Albums_Sign nvarchar(100),--专辑代表音乐
Albums_onclick int		--专辑点击次数
)
insert into  Albums
select 'Package','Drake','2020-06-06','Drake','a8.jpg','芒种-音阙诗听&赵方婧.mp3',0 union
select '金曲合辑','周杰伦','2020-06-06','周杰伦','a1.jpg','月亮不睡你不睡-金6.mp3',0 union
select '群星合集','群星','2020-06-06','群星','a2.jpg','只是太爱你-张敬轩.mp3',0 union
select '似曾相识','老猫','2020-06-06','老猫','a3.jpg','Hero-Cash.mp3',0 union
select '霍夫曼的故事','奥芬巴赫','2020-06-06','奥芬巴赫','a4.jpg','love9-江辰.mp3',0 union
select 'T-School','金泰宇','2020-06-06','金泰宇','a5.jpg','NOONE(Feat.B-李夏怡B.I.mp3',0 union
select '宁夏制造2','郭启亮','2020-06-06','郭启亮','a6.jpg','ShallWeChat-李行亮.mp3',0 




create table ALL_status(																	--所有状态表【歌曲状态、用户状态】
Users_Sta_ID int,		--用户状态ID
Users_Sta_Name int,		--用户状态名
Music_Play_Sta_ID int,	--歌曲状态ID
Music_Play_Sta_Name int,--歌曲状态名
)

--------------------------------------------------------------------------------------------------------------------------
create table Music_Category(																--音乐类型表（民谣、摇滚。。。。）
Category_ID int primary key identity(1,1),--类型ID
Category_Name nvarchar(50),--类型名称
)
insert into Music_Category
select '流行'union
select '民谣'union
select '华语'union
select '摇滚'union
select '电子'union
select 'DJ'



create table Singer(																		--歌手表
Singer_ID int primary key identity(1,1),--歌手ID
Singer_Name nvarchar(50),			--歌手姓名
Singer_area nvarchar(50),			--地区
Singer_Img nvarchar(50),			--歌手头像
Singer_onclick int					--歌手点击次数
)

insert into Singer
select '鞠红川','中国','u1.jpg',0 union
select '杨千嬅','中国','u2.jpg',0 union
select '音阙诗听&赵方婧','中国','u3.jpg',0 union
select 'Uu','中国','u4.jpg',0 union
select '阿悠悠','中国','u5.jpg',0 union
select 'EXO','中国','u6.jpg',0 union
select '金6','中国','u7.jpg',0 union
select '七音盒','中国','u8.jpg',0 union
select '张敬轩','中国','u6.png',0 union
select 'Zara','英国','u7.png',0union
select 'R3hab','英国','u1.jpg',0union
select 'Jack','中国','u2.jpg',0union
select 'Tanir&Tyomcha','中国','u3.jpg',0union
select 'The Tech Thieves','中国','u4.jpg',0union
select 'Cash','中国','u5.jpg',0union
select 'Bolier','中国','u6.jpg',0union
select 'Martin Tungevaag','中国','u6.png',0union
select 'Kaash Paige&6LACK','中国','u7.jpg',0union
select 'SelenaGomez','中国','u7.png',0union
select '江辰','中国','u8.jpg',0union
select '李夏怡','中国','u1.jpg',0union
select 'Ariana Grande','中国','u2.jpg',0union
select 'Die Antwoord','中国','u3.jpg',0union
select 'Joel Adams','中国','u4.jpg',0union
select '沈梦逸','中国','u5.jpg',0union
select '李行亮','中国','u6.jpg',0union
select 'EdSheeran','中国','u7.png',0

create table Play_History(																	--历史播放记录表
Users_ID int,			--用户ID
Music_ID int,			--歌曲ID
)

---------------------------------------------------------------------------------------------------------------------------
create table Music_Rec_Category(															--音乐推荐（根据类型推荐）
Category_ID int,		--类型ID
Category_Play_Count int,--该类型音乐播放总量
)

create table Music_Rec_Singer(																--音乐推荐（根据歌手推荐）
Singer_ID int,			--歌手ID
Singer_Music_Play_Count int,--该歌手歌曲播放总量
)

create table Music_Rec_Area(																--音乐推荐（根据歌手地区推荐）
Area_ID int,			--地区ID
Area_Music_Play_Count int,--该地区歌曲播放总量
)

---------------------------------------------------------------------------------------------------------------------------
create table Play_lists(																	--当前播放列表
Users_ID int,			--用户ID
Music_ID int,			--歌曲ID
Music_Url nvarchar(200),--歌曲URL
Music_Name nvarchar(50)	--歌曲名
)
---------------------------------------------------------------------------------------------------------------------------
create table Song_list(																		--歌单
Song_list_ID int,		--歌单ID
Song_list_Name nvarchar(100),--歌单名【计划动态生成】
Users_ID int,			--用户ID
Music_ID int,			--歌曲ID
)
create table I_Like(																		--我喜欢 表
Users_ID int,			--用户ID
Music_ID int,			--喜欢歌曲ID
Music_Url nvarchar(200),--喜欢歌曲URL
)

create table Favorite(																		--收藏夹
Song_list_ID int,		--收藏歌单ID
Song_list_Name nvarchar(100),--收藏歌单名
)

---------------------------------------------------------------------------------------------------------------------------
create table Comment(																		--评论表
Music_ID int,			--动态【歌曲】ID（指定该评论属于哪首歌）
Users_ID int,			--发表评论用户ID
Content nvarchar(500),	--评论内容
Comment_Time date,		--发表日期
Like_Count int			--点赞数
)
create table Reply(																			--回复表
Reply_ID int,			--回复ID
Music_ID int,			--动态【歌曲】ID（指定该评论属于哪首歌）
Reply_Users_ID int,		--回复用户ID
Comment_Users_ID int,	--发表评论用户ID
Reply_Content nvarchar(500),--回复内容
Reply_Time date,		--回复时间
Like_Count int			--点赞数
)
select * from Albums 
--查询music和singer表
go
create proc sel_music_singer_all
as
select m.*,s.Singer_Name,s.Singer_area from Music m,Singer s where s.Singer_ID = m.Singer_ID




--查询music和singer和Music_Category和Albums表
go
create proc sel_music_singer_Albums_all
as
select  m.*,s.Singer_Name,s.Singer_area,s.Singer_Img,s.Singer_onclick,a.Albums_Name,a.Albums_player,a.Albums_time,a.Albums_city,a.Albums_img,c.Category_Name
from Music m,Singer s,Albums a ,Music_Category c
where s.Singer_ID = m.Singer_ID and m.Albums_ID = a.Albums_ID and m.Category_ID = c.Category_ID







