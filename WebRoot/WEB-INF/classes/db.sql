/*
	电影类别表
*/
DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
	movie_cat VARCHAR(20) NOT NULL,
	PRIMARY KEY(movie_cat)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO categories VALUES('喜剧片');
INSERT INTO categories VALUES('动作片');
INSERT INTO categories VALUES('灾难片');
INSERT INTO categories VALUES('爱情片');
INSERT INTO categories VALUES('战争片');
INSERT INTO categories VALUES('恐怖片');
INSERT INTO categories VALUES('科幻片');
INSERT INTO categories VALUES('经典影片');
/*
	用户列表
*/
DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id VARCHAR(20) NOT NULL,
	password VARCHAR(20) NOT NULL,
	gender VARCHAR(6),
	age INT(4),
	moviecat VARCHAR(50),
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO users VALUES('陈志文','1995','Male',22,'comedy,love,classic,');
/*
	电影列表
*/
DROP TABLE IF EXISTS movies;
CREATE TABLE movies(
	id int NOT NULL AUTO_INCREMENT,
	moviename VARCHAR(50) NOT NULL,
	releasetime DATE,
	image VARCHAR(20),
	director VARCHAR(50),
	actor VARCHAR(50),
	introduction VARCHAR(500),
	moviecat VARCHAR(20),
	commentnum INT(10),
	totalscore DOUBLE,
	PRIMARY KEY(id),
	FOREIGN KEY(moviecat) REFERENCES categories(movie_cat)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('唐人街探案2','2018-02-16','001.jpg','陈思诚','王宝强/刘昊然/肖央/刘承羽',
'唐仁（王宝强 饰）为巨额奖金欺骗秦风（刘昊然 饰）到纽约参加世界名侦探大赛，然而随着和世界各国侦探们啼笑皆非的较量，两人却发现了隐藏在这次挑战背后的更大秘密...',
'喜剧片',345527,6.9);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('羞羞的铁拳','2017-09-30','002.jpg','宋阳/张吃鱼','艾伦/马丽/沈腾/田雨/宋阳',
'靠打假拳混日子的艾迪生（艾伦 饰），本来和正义感十足的体育记者马小（马丽 饰）是一对冤家，没想到因为一场意外的电击，男女身体互换。性别错乱后，两人互坑互害，引发了拳坛的大地震，也揭开了假拳界的秘密，惹来一堆麻烦，最终两人在“卷莲门”副掌门张茱萸（沈腾 饰）的指点下，向恶势力挥起了羞羞的铁拳。',
'喜剧片',347204,7.0);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('驴得水','2016-10-28','003.jpg','周申/刘露','任素汐/大力/刘帅良/裴魁山/阿如那',
'一群“品行不端”却怀揣教育梦想的大学教师，从大城市来到偏远乡村开办了一所小学校。学校待遇惨淡、生活艰苦，但老师们都自得其乐，每天嘻嘻哈哈打成一片。然而教育部特派员要来突击检查的消息打破了安宁，因为学校有一位“驴得水老师”隐藏着不可告人的秘密。就在所有人都担心丑事即将败露的时候，一个神奇天才的出现拯救了大家，然而谁能料到真正的麻烦才刚刚开始……',
'喜剧片',342187,8.4);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('寻梦环游记','2017-11-24','004.jpg','李·昂克里奇/阿德里安·莫利纳',' 安东尼·冈萨雷斯/盖尔·加西亚·贝纳尔/本杰明·布拉特/阿兰纳·乌巴奇/芮妮·维克托',
'热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。 
　　在一场意外中，米格尔竟然穿越到了亡灵国度之中，在太阳升起之前，他必须得到一位亲人的祝福，否则就将会永远地留在这个世界里。米格尔决定去寻找已故的歌神德拉库斯（本杰明·布拉特 Benjamin Bratt 配音），因为他很有可能就是自己的祖父。途中，米格尔邂逅了落魄乐手埃克托（盖尔·加西亚·贝纳尔 Gael García Bernal 配音），也渐渐发现了德拉库斯隐藏已久的秘密。',
'喜剧片',488827,9.1);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('战狼2','2017-07-27','005.jpg','吴京','吴京/弗兰克·格里罗/吴刚/张翰/卢靖姗',
'故事发生在非洲附近的大海上，主人公冷锋（吴京 饰）遭遇人生滑铁卢，被“开除军籍”，本想漂泊一生的他，正当他打算这么做的时候，一场突如其来的意外打破了他的计划，突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。随着斗争的持续，体内的狼性逐渐复苏，最终孤身闯入战乱区域，为同胞而战斗。',
'动作片',512715,7.2);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('红海行动','2018-02-16','006.jpg','林超贤','张译/黄景瑜/海清/杜江/蒋璐霞',
'索马里海域外，中国商船遭遇劫持，船员全数沦为阶下囚。蛟龙突击队沉着应对，潜入商船进行突袭，成功解救全部人质。 
　　返航途中，非洲北部伊维亚共和国发生政变，恐怖组织连同叛军攻入首都， 当地华侨面临危险，海军战舰接到上级命令改变航向，前往执行撤侨任务。蛟龙突击队八人，整装待发。 
　　时间紧迫，在“撤侨遇袭可反击，相反则必须避免交火，以免引起外交冲突”的大原则下，海军战舰及蛟龙突击队深入伊维亚，在恶劣的环境之下，借助海陆等多种装备，成功转移等候在码头的中国侨民，并在激烈的遭遇战之后，营救了被恐怖分子追击的中国领事馆巴士。 
　　然而事情尚未完结，就在掩护华侨撤离之际，蛟龙突击队收到中国人质被恐怖分子劫持的消息。众人深感责任重大，义无反顾地再度展开营救行动。前方路途险恶，蛟龙突击队即将遭遇的，远不止人质营救那么简单,恐怖分子的惊天阴谋即将浮出水面…..',
'动作片',376443,8.5);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('奇异博士','2016-11-04','007.jpg','斯科特·德瑞克森','本尼迪克特·康伯巴奇/蒂尔达·斯文顿/麦斯·米科尔森/切瓦特·埃加福特/瑞秋·麦克亚当斯',
'斯特兰奇博士（本尼迪克特·康伯巴奇 Benedict Cumberbatch 饰）是一名外科手术医生，他拥有着高超的智商和精湛的技艺，是医院乃至整个医学界的传奇人物。某一日，斯特兰奇博士遭遇了一场可怕的车祸，尽管保住了双手，但这双手伤痕累累不住颤抖，这也就意味着，他再也不能拿起手术刀，站在无影灯下了。 
　　斯特兰奇博士的生活就此失去了意义陷入了绝望之中，他决定远赴尼泊尔，寻找传说中能够治愈他双手的神秘力量。在尼泊尔，风尘仆仆的斯特兰奇博士拜入了神秘的古一法师（蒂尔达·斯文顿 Tilda Swinton 饰）门下，成为了其弟子，与此同时，古一法师曾经的弟子卡西利亚斯（麦斯·米科尔森 饰）亦在虎视眈眈，企图完成他获得永生的大业。',
'动作片',272669,7.6);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('肖生克的救赎','1994-09-10','008.jpg','弗兰克·德拉邦特','蒂姆·罗宾斯/摩根·弗里曼/鲍勃·冈顿/威廉姆·赛德勒/克兰西·布朗',
'20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步…… ',
'经典影片',1025029,9.6);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('霸王别姬','1993-01-01','009.jpg','陈凯歌','张国荣/张丰毅/巩俐/葛优/英达',
'段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分。 
　　段小楼在认为该成家立业之时迎娶了名妓菊仙（巩俐），致使程蝶衣认定菊仙是可耻的第三者，使段小楼做了叛徒，自此，三人围绕一出《霸王别姬》生出的爱恨情仇战开始随着时代风云的变迁不断升级，终酿成悲剧。',
'经典影片',745795,9.5);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('这个杀手不太冷','1994-09-14','010.jpg','吕克·贝松','让·雷诺/娜塔莉·波特曼/加里·奥德曼/丹尼·爱罗/彼得·阿佩尔',
'里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。 
　　女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……',
'经典影片',960409,9.4);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('阿甘正传','1994-06-23','011.jpg','罗伯特·泽米吉斯','汤姆·汉克斯/罗宾·怀特/加里·西尼斯/麦凯尔泰·威廉逊/莎莉·菲尔德',
'阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。 
　　阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。 
　　阿甘成为橄榄球巨星、越战英雄、乒乓球外交使者、亿万富翁，但是，他始终忘不了珍妮，几次匆匆的相聚和离别，更是加深了阿甘的思念。 
　　有一天，阿甘收到珍妮的信，他们终于又要见面……',
'经典影片',817150,9.4);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('千与千寻','2001-07-20','012.jpg','宫崎骏','柊瑠美/入野自由/夏木真理/菅原文太/中村彰男',
'千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。 
　　千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一分工作才能不被魔法变成别的东西。 
　　千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。 
　　一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。 
　　为了救小白，千寻又踏上了她的冒险之旅。',
'经典影片',765037,9.3);
INSERT INTO movies(moviename,releasetime,image,director,actor,introduction,moviecat,commentnum,totalscore) VALUES('泰坦尼克号','1998-04-03','013.jpg','詹姆斯·卡梅隆','莱昂纳多·迪卡普里奥/凯特·温丝莱特/比利·赞恩/凯西·贝茨/弗兰西丝·费',
'1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。 
　　罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。 
　　1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验。',
'经典影片',756779,9.3);
/*
	评论表
*/
DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
	idnum int NOT NULL AUTO_INCREMENT,
	userid VARCHAR(20) NOT NULL,
	moviename VARCHAR(50) NOT NULL,
	moviecomment VARCHAR(150),
	score DOUBLE,
	commentime DATE,
	PRIMARY KEY(idnum),
	FOREIGN KEY(userid) REFERENCES users(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;