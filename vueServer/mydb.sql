CREATE DATABASE basketball CHARSET=utf8;
USE basketball;
/*轮播图片*/
CREATE TABLE lunbotu(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title   VARCHAR(50)
);
INSERT INTO lunbotu VALUES(null,"http://127.0.0.1:3000/img/post.jpg","nba海报");
INSERT INTO lunbotu VALUES(null,"http://127.0.0.1:3000/img/post1.jpg","nba海报1");
INSERT INTO lunbotu VALUES(null,"http://127.0.0.1:3000/img/ball.jpg","篮球");
INSERT INTO lunbotu VALUES(null,"http://127.0.0.1:3000/img/shoes.jpg","球鞋");


/*赛事信息*/
CREATE TABLE news(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    ptime DATE,
    teams VARCHAR(255),
    points VARCHAR(255)
);
INSERT INTO news VALUES(null,"2018-10-25","勇士vs奇才","144-122");
INSERT INTO news VALUES(null,"2018-10-25","国王vs灰熊","97-92");
INSERT INTO news VALUES(null,"2018-10-25","太阳vs湖人","113-131");
INSERT INTO news VALUES(null,"2018-10-25","雄鹿vs76人","123-108");
INSERT INTO news VALUES(null,"2018-10-25","马刺vs步行者","96-116");
INSERT INTO news VALUES(null,"2018-10-25","公牛vs黄蜂","112-110");
INSERT INTO news VALUES(null,"2018-10-25","火箭vs爵士","89-100");
INSERT INTO news VALUES(null,"2018-10-25","热火vs尼克斯","110-87");
INSERT INTO news VALUES(null,"2018-10-25","猛龙vs森林狼","112-105");
INSERT INTO news VALUES(null,"2018-10-25","骑士vs篮网","86-102");
INSERT INTO news VALUES(null,"2018-10-28","热火vs尼克斯","110-87");
INSERT INTO news VALUES(null,"2018-10-28","国王vs灰熊","97-92");
INSERT INTO news VALUES(null,"2018-10-28","太阳vs湖人","113-131");
INSERT INTO news VALUES(null,"2018-10-28","雄鹿vs76人","123-108");
INSERT INTO news VALUES(null,"2018-10-28","马刺vs步行者","96-116");
INSERT INTO news VALUES(null,"2018-11-01","勇士vs奇才","144-122");
INSERT INTO news VALUES(null,"2018-11-01","国王vs灰熊","97-92");
INSERT INTO news VALUES(null,"2018-11-01","太阳vs湖人","113-131");
INSERT INTO news VALUES(null,"2018-11-01","雄鹿vs76人","123-108");
INSERT INTO news VALUES(null,"2018-11-01","马刺vs步行者","96-116");
INSERT INTO news VALUES(null,"2018-11-01","公牛vs黄蜂","112-110");
INSERT INTO news VALUES(null,"2018-11-05","火箭vs爵士","89-110");
INSERT INTO news VALUES(null,"2018-11-05","热火vs尼克斯","111-87");
INSERT INTO news VALUES(null,"2018-11-05","猛龙vs森林狼","112-105");
INSERT INTO news VALUES(null,"2018-11-08","骑士vs篮网","86-102");
INSERT INTO news VALUES(null,"2018-11-08","热火vs尼克斯","110-87");
INSERT INTO news VALUES(null,"2018-11-11","国王vs灰熊","97-92");
INSERT INTO news VALUES(null,"2018-11-11","太阳vs湖人","113-131");
INSERT INTO news VALUES(null,"2018-11-11","雄鹿vs76人","123-108");
INSERT INTO news VALUES(null,"2018-11-11","马刺vs步行者","96-116");


/*球队球星*/
CREATE TABLE plays(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pname VARCHAR(100),
    content VARCHAR(255),
    img_url VARCHAR(255),
    ptime DATE
);
INSERT INTO plays VALUES(null,"勒布朗·詹姆斯","来到狂野西部的詹姆斯，能否还会像之前在东部那样傲视群雄，一览众山小。。。","http://127.0.0.1:3000/img/s1.jpg","2018-10-15");
INSERT INTO plays VALUES(null,"凯文·杜兰特","连庄fmvp,当今NBA最好的得分手,詹姆斯之后最好的球员。。。","http://127.0.0.1:3000/img/s2.jpg","2018-10-18");
INSERT INTO plays VALUES(null,"史蒂芬·库里","银鞍照白马，飒沓如流星。十步杀一人，千里不留行。真正的杀手。。。","http://127.0.0.1:3000/img/s3.jpg","2018-10-20");
INSERT INTO plays VALUES(null,"德维恩·韦德","廉颇老矣尚能饭否？","http://127.0.0.1:3000/img/s4.jpg","2018-10-24");

/*篮球装备-篮球*/
CREATE TABLE balls (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bname VARCHAR(100),
    brand VARCHAR(255),
    img_url VARCHAR(255),
    price DECIMAL (8,2),
    sell INT
);
INSERT INTO balls VALUES(null,"室内7号专属","斯伯丁","http://127.0.0.1:3000/img/b1.jpg",289.99,48);
INSERT INTO balls VALUES(null,"户外必备","李宁","http://127.0.0.1:3000/img/b2.jpg",126.99,32);
INSERT INTO balls VALUES(null,"内外通吃","耐克","http://127.0.0.1:3000/img/b3.jpg",200.00,95);
INSERT INTO balls VALUES(null,"水泥杀手","安踏","http://127.0.0.1:3000/img/b4.jpg",99.99,12);
INSERT INTO balls VALUES(null,"室内7号专属","斯伯丁","http://127.0.0.1:3000/img/b1.jpg",289.99,28);
INSERT INTO balls VALUES(null,"室内7号专属","斯伯丁","http://127.0.0.1:3000/img/b1.jpg",289.99,58);


/*篮球装备-球衣*/
CREATE TABLE shirt (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sname VARCHAR(100),
    content VARCHAR(255),
    img_url VARCHAR(255),
    price DECIMAL (8,2),
    sell INT
);
INSERT INTO shirt VALUES(null,"詹姆斯23号-湖人","洛杉矶新王全新版湖人球衣，詹密必备！！!","http://127.0.0.1:3000/img/yifu1.jpg",298,36);
INSERT INTO shirt VALUES(null,"詹姆斯23号-湖人","洛杉矶新王全新版湖人球衣，詹密必备！！!","http://127.0.0.1:3000/img/yifu2.jpg",240,60);
INSERT INTO shirt VALUES(null,"杜兰特35号-勇士","还是那个死神杜，勇士新版35号，KD粉绝对喜欢！！！","http://127.0.0.1:3000/img/yifu3.jpg",255,42);
INSERT INTO shirt VALUES(null,"库里30号-勇士","萌神库里，金州的宠儿，穿上库里30战袍，传递三分手感！！！","http://127.0.0.1:3000/img/yifu4.jpg",280,22);
INSERT INTO shirt VALUES(null,"欧文11号-凯尔特人","伤愈归来的德鲁大叔，披上铁血绿军的新款球衣，绝对王者归来！！！","http://127.0.0.1:3000/img/yifu5.jpg",209,33);INSERT INTO shirt VALUES(null,"哈登13号-火箭","记忆中那一抹经典的红色，永远的休斯顿火箭，老炮火密专属！！！","http://127.0.0.1:3000/img/yifu6.jpg",360,18);

/*篮球装备-球鞋*/
CREATE TABLE shoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    brand VARCHAR(100),
    style VARCHAR(255),
    img_url VARCHAR(255),
    price DECIMAL (8,2),
    sell INT
);
INSERT INTO shoes VALUES(null,"阿迪达斯","罗斯系列-减震耐磨","http://127.0.0.1:3000/img/xie1.jpg",889,58);
INSERT INTO shoes VALUES(null,"耐克","KD全新签名球鞋-酷炫","http://127.0.0.1:3000/img/xie2.jpg",1029,18);
INSERT INTO shoes VALUES(null,"耐克","勒布朗系列15代-王者","http://127.0.0.1:3000/img/xie3.jpg",1299,12);
INSERT INTO shoes VALUES(null,"安踏","克雷汤普森-要疯系列","http://127.0.0.1:3000/img/xie4.jpg",789,68);
INSERT INTO shoes VALUES(null,"李宁","韦德之道-全新款","http://127.0.0.1:3000/img/xie5.jpg",678,78);
INSERT INTO shoes VALUES(null,"安德玛","库里第5代-球场精灵","http://127.0.0.1:3000/img/xie6.jpg",999,20);



UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news1.jpg",`title`='麦科勒姆40+6 字母哥23+9 开拓者力擒雄鹿取连胜',`content`='<p>开拓者（8-3）：麦科勒姆40分5篮板6助攻4抢断，利拉德13分5篮板3助攻，努尔基奇12分8篮板6助攻，莱曼10分2篮板，阿米努8分7篮板，特纳16分11篮板4助攻，柯林斯9分5篮板，莱昂纳德6分5篮板2助攻，斯陶斯卡斯2分2篮板2助攻。</p>
<p>雄鹿（8-2）：字母哥23分9篮板6助攻，米德尔顿22分8篮板6助攻，洛佩斯22分4篮板1助攻，布莱德索5分2篮板7助攻，布罗格登4分3篮板4助攻，斯内尔8分3篮板1助攻，迪文岑佐6分1篮板，亨森6分1篮板1助攻，伊利亚索瓦5分9篮板，康诺顿2分2篮板</p>' WHERE id=1;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news2.jpg",`title`='詹姆斯28+5+7 隆多17+10+6 双枪合砍60分 湖人险胜开拓者',`content`='<p>湖人（4-5）：詹姆斯28分5篮板7助攻，库兹马12分6篮板，隆多17分10篮板6助攻3抢断，麦基12分9篮板6封盖，哈特11分，祖巴茨9分8篮板，英格拉姆8分6篮板。</p>
<p>开拓者（6-3）：利拉德30分4篮板4助攻3抢断，麦科勒姆30分5篮板4助攻，阿米奴4分13篮板，努尔基奇14分13篮板2封盖，特纳11分3篮板3助攻，科林斯10分。</p>' WHERE id=2;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news3.jpg",`title`='兰姆19+8 沃克18分 黄蜂7人上双大胜骑士拒连败',`content`='<p>骑士（1-8）：德克尔11分、奥斯曼9分4板3助、特里斯坦-汤普森8分8板、希尔3分4助、胡德7分、南斯9分4板、克拉克森13分3断、科沃尔11分、JR史密斯14分</p>
<p>黄蜂（5-5）：兰姆19分8板、沃克18分5板4助、布里奇斯12分3板、迈基吉10分、埃尔南戈麦斯11分7板、帕克12分4板4助、蒙克16分5助、马文-威廉姆斯7分、巴图姆9分8助、泽勒6分4板</p>' WHERE id=3;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news4.jpg",`title`='德罗赞26分 阿德22+12 霍乐迪29+8 马刺生擒鹈鹕取4连胜',`content`='<p>鹈鹕（4-5）：霍乐迪29分4篮板8助攻、米罗蒂奇22分16篮板、戴维斯17分8篮板3助攻2抢断5盖帽、韦斯利-约翰逊3分5篮板、兰德尔10分6篮板2助攻、克拉克3分4篮板3助攻</p>
<p>马刺（6-2）：德罗赞26分3篮板4助攻、阿尔德里奇22分12篮板6助攻、康宁汉姆15分7篮板2助攻、福布斯7分3抢断、盖伊6分4篮板2助攻、米尔斯15分7篮板7助攻、贝里内利14分3篮板2助攻、加索尔2分4篮板3助攻、贝尔坦斯2分2助攻</p>' WHERE id=4;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news5.jpg",`title`='哈登复出25+7 安东尼17+6 卡佩拉12+11 火箭擒公牛迎连胜',`content`='<p>火箭（3-5）：哈登25分7助攻4抢断，保罗7分6篮板8助攻，恩尼斯15分，卡佩拉12分11篮板2封盖，塔克6分5篮板，安东尼17分7篮板，克拉克6分7篮板。</p>
<p>公牛（2-8）：拉文21分4篮板4助攻，帕克15分3篮板，佩恩8分3篮板3助攻3抢断，霍勒迪9分6篮板，卡特14分13篮板4封盖，哈奇森12分4篮板。</p>' WHERE id=5;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news6.jpg",`title`='特雷-杨24+5+15 理查德森32+3 韦德19分 老鹰胜热火',`content`='<p>老鹰：特雷-杨24分5板14助，戴德蒙15分7板2帽，普林斯15分4板3助，许尔特12分3助，莱恩11分5板3帽，贝兹莫尔10分3板，卡特12分2板2助</p>
<p>热火：理查德森32分3助2断，韦德19分4板3助，迈克格拉德18分4板5助，泰勒17分4板4助，温斯洛15分10板8助2断</p>' WHERE id=6;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news7.jpg",`title`='恩比德39+17 格里芬38+13+6 76人主场力克活塞',`content`='<p>76人：恩比德39分17篮板2盖帽，雷迪克16分4助攻，穆斯卡拉14分4篮板，西蒙斯9分5篮板5助攻5抢断，沙梅特11分1篮板，考文顿5分3篮板，萨里奇5分4篮板，阿米尔-约翰逊6分3篮板3助攻。</p>
<p>活塞：格里芬38分13篮板6助攻，雷吉9分3篮板，德拉蒙德8分9篮板，帕楚利亚9分3篮板3助攻，加洛维13分，鲁埃尔6分7篮板，帕楚利亚9分3篮板，史密斯8分2篮板2助攻，斯坦利-约翰逊2分2篮板。</p>' WHERE id=7;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news8.jpg",`title`='哈里斯20+4 约基奇7+10+16 克劳德21分 掘金大胜爵士',`content`='<p>掘金：哈里斯20分4板，穆雷19分5板4助，米尔萨普13分5板2助3断，比斯利12分2助，约基奇7分10板16助，埃尔南戈麦斯8分4板</p>
<p>爵士：克劳德21分5板3帽，米切尔16分5板2助5断，戈贝尔12分12板，费沃斯12分5板，卢比奥11分4板6助4断</p>' WHERE id=8;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news9.jpg",`title`='康利28分 加索尔17+10+7 卢比奥22+11 灰熊逆转胜爵士',`content`='</p>灰熊:康利28分5板5助，马克19分6板3助，加索尔17分10板7助4断，杰克逊13分，坦普尔12分4板2断，卡斯比4分3板</p>
<p>爵士:卢比奥22分11助2板，英格尔斯19分3板2助，克劳德18分6板，费沃斯12分6板，戈贝尔9分16板，阿伦9分，奥尼尔5分</p>' WHERE id=9;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news10.jpg",`title`='字母哥33+11 欧文28+7 绿军破队史纪录24记三分险胜雄鹿',`content`='<p>雄鹿（7-1）：阿德托昆博33分11篮板2助攻，布罗格登16分6篮板2助攻，布莱索13分7助攻，米德尔顿16分4篮板5助攻，伊利亚索瓦8分5篮板。</p>
<p>凯尔特人（6-2）：欧文28分3篮板7助攻，海沃德18分4篮板5助攻，霍弗德18分5篮板8助攻，奥杰莱10分5篮板，塔图姆12分6篮板4助攻，莫里斯17分5篮板。</p>' WHERE id=10;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news11.jpg",`title`='库里37+9 杜兰特24+8 霍乐迪28+9 勇士擒鹈鹕取6连胜',`content`='勇士：德雷蒙德-格林16分15篮板8助攻1帽，杜兰特24分5篮板6助攻2断，达米安-琼斯4分3篮板，库里37分9助攻3篮板2断，克莱-汤普森18分4篮板4助攻1断，杰雷布科10分2助攻，贝尔2分3篮板，卢尼4分6篮板2助攻1断，麦金尼2分2篮板，伊戈达拉9分3助攻
鹈鹕：米罗蒂奇26分12篮板2断1助攻，戴维斯17分12篮板7助攻1帽，弗雷泽8分，霍乐迪28分9助攻3篮板2断，摩尔21分4篮板2断，兰德尔11分10篮板2助攻，所罗门-希尔2分2助攻，弗兰克-杰克逊3分，克拉克5分2助攻' WHERE id=11;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news8.jpg",`title`='哈里斯20+4 约基奇7+10+16 克劳德21分 掘金大胜爵士',`content`='掘金：哈里斯20分4板，穆雷19分5板4助，米尔萨普13分5板2助3断，比斯利12分2助，约基奇7分10板16助，埃尔南戈麦斯8分4板
爵士：克劳德21分5板3帽，米切尔16分5板2助5断，戈贝尔12分12板，费沃斯12分5板，卢比奥11分4板6助4断' WHERE id=12;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news9.jpg",`title`='康利28分 加索尔17+10+7 卢比奥22+11 灰熊逆转胜爵士',`content`='灰熊:康利28分5板5助，马克19分6板3助，加索尔17分10板7助4断，杰克逊13分，坦普尔12分4板2断，卡斯比4分3板
爵士:卢比奥22分11助2板，英格尔斯19分3板2助，克劳德18分6板，费沃斯12分6板，戈贝尔9分16板，阿伦9分，奥尼尔5分' WHERE id=13;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news10.jpg",`title`='字母哥33+11 欧文28+7 绿军破队史纪录24记三分险胜雄鹿',`content`='雄鹿（7-1）：阿德托昆博33分11篮板2助攻，布罗格登16分6篮板2助攻，布莱索13分7助攻，米德尔顿16分4篮板5助攻，伊利亚索瓦8分5篮板。
凯尔特人（6-2）：欧文28分3篮板7助攻，海沃德18分4篮板5助攻，霍弗德18分5篮板8助攻，奥杰莱10分5篮板，塔图姆12分6篮板4助攻，莫里斯17分5篮板。' WHERE id=14;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news11.jpg",`title`='库里37+9 杜兰特24+8 霍乐迪28+9 勇士擒鹈鹕取6连胜',`content`='勇士：德雷蒙德-格林16分15篮板8助攻1帽，杜兰特24分5篮板6助攻2断，达米安-琼斯4分3篮板，库里37分9助攻3篮板2断，克莱-汤普森18分4篮板4助攻1断，杰雷布科10分2助攻，贝尔2分3篮板，卢尼4分6篮板2助攻1断，麦金尼2分2篮板，伊戈达拉9分3助攻
鹈鹕：米罗蒂奇26分12篮板2断1助攻，戴维斯17分12篮板7助攻1帽，弗雷泽8分，霍乐迪28分9助攻3篮板2断，摩尔21分4篮板2断，兰德尔11分10篮板2助攻，所罗门-希尔2分2助攻，弗兰克-杰克逊3分，克拉克5分2助攻' WHERE id=15;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news8.jpg",`title`='哈里斯20+4 约基奇7+10+16 克劳德21分 掘金大胜爵士',`content`='掘金：哈里斯20分4板，穆雷19分5板4助，米尔萨普13分5板2助3断，比斯利12分2助，约基奇7分10板16助，埃尔南戈麦斯8分4板
爵士：克劳德21分5板3帽，米切尔16分5板2助5断，戈贝尔12分12板，费沃斯12分5板，卢比奥11分4板6助4断' WHERE id=16;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news9.jpg",`title`='康利28分 加索尔17+10+7 卢比奥22+11 灰熊逆转胜爵士',`content`='灰熊:康利28分5板5助，马克19分6板3助，加索尔17分10板7助4断，杰克逊13分，坦普尔12分4板2断，卡斯比4分3板
爵士:卢比奥22分11助2板，英格尔斯19分3板2助，克劳德18分6板，费沃斯12分6板，戈贝尔9分16板，阿伦9分，奥尼尔5分' WHERE id=17;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news10.jpg",`title`='字母哥33+11 欧文28+7 绿军破队史纪录24记三分险胜雄鹿',`content`='雄鹿（7-1）：阿德托昆博33分11篮板2助攻，布罗格登16分6篮板2助攻，布莱索13分7助攻，米德尔顿16分4篮板5助攻，伊利亚索瓦8分5篮板。
凯尔特人（6-2）：欧文28分3篮板7助攻，海沃德18分4篮板5助攻，霍弗德18分5篮板8助攻，奥杰莱10分5篮板，塔图姆12分6篮板4助攻，莫里斯17分5篮板。' WHERE id=18;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news11.jpg",`title`='库里37+9 杜兰特24+8 霍乐迪28+9 勇士擒鹈鹕取6连胜',`content`='勇士：德雷蒙德-格林16分15篮板8助攻1帽，杜兰特24分5篮板6助攻2断，达米安-琼斯4分3篮板，库里37分9助攻3篮板2断，克莱-汤普森18分4篮板4助攻1断，杰雷布科10分2助攻，贝尔2分3篮板，卢尼4分6篮板2助攻1断，麦金尼2分2篮板，伊戈达拉9分3助攻
鹈鹕：米罗蒂奇26分12篮板2断1助攻，戴维斯17分12篮板7助攻1帽，弗雷泽8分，霍乐迪28分9助攻3篮板2断，摩尔21分4篮板2断，兰德尔11分10篮板2助攻，所罗门-希尔2分2助攻，弗兰克-杰克逊3分，克拉克5分2助攻' WHERE id=19;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news4.jpg",`title`='德罗赞26分 阿德22+12 霍乐迪29+8 马刺生擒鹈鹕取4连胜',`content`='鹈鹕（4-5）：霍乐迪29分4篮板8助攻、米罗蒂奇22分16篮板、戴维斯17分8篮板3助攻2抢断5盖帽、韦斯利-约翰逊3分5篮板、兰德尔10分6篮板2助攻、克拉克3分4篮板3助攻
马刺（6-2）：德罗赞26分3篮板4助攻、阿尔德里奇22分12篮板6助攻、康宁汉姆15分7篮板2助攻、福布斯7分3抢断、盖伊6分4篮板2助攻、米尔斯15分7篮板7助攻、贝里内利14分3篮板2助攻、加索尔2分4篮板3助攻、贝尔坦斯2分2助攻' WHERE id=20;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news1.jpg",`title`='麦科勒姆40+6 字母哥23+9 开拓者力擒雄鹿取连胜',`content`='开拓者（8-3）：麦科勒姆40分5篮板6助攻4抢断，利拉德13分5篮板3助攻，努尔基奇12分8篮板6助攻，莱曼10分2篮板，阿米努8分7篮板，特纳16分11篮板4助攻，柯林斯9分5篮板，莱昂纳德6分5篮板2助攻，斯陶斯卡斯2分2篮板2助攻。
雄鹿（8-2）：字母哥23分9篮板6助攻，米德尔顿22分8篮板6助攻，洛佩斯22分4篮板1助攻，布莱德索5分2篮板7助攻，布罗格登4分3篮板4助攻，斯内尔8分3篮板1助攻，迪文岑佐6分1篮板，亨森6分1篮板1助攻，伊利亚索瓦5分9篮板，康诺顿2分2篮板' WHERE id=21;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news2.jpg",`title`='詹姆斯28+5+7 隆多17+10+6 双枪合砍60分 湖人险胜开拓者',`content`='湖人（4-5）：詹姆斯28分5篮板7助攻，库兹马12分6篮板，隆多17分10篮板6助攻3抢断，麦基12分9篮板6封盖，哈特11分，祖巴茨9分8篮板，英格拉姆8分6篮板。
开拓者（6-3）：利拉德30分4篮板4助攻3抢断，麦科勒姆30分5篮板4助攻，阿米奴4分13篮板，努尔基奇14分13篮板2封盖，特纳11分3篮板3助攻，科林斯10分。' WHERE id=22;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news3.jpg",`title`='兰姆19+8 沃克18分 黄蜂7人上双大胜骑士拒连败',`content`='骑士（1-8）：德克尔11分、奥斯曼9分4板3助、特里斯坦-汤普森8分8板、希尔3分4助、胡德7分、南斯9分4板、克拉克森13分3断、科沃尔11分、JR史密斯14分
黄蜂（5-5）：兰姆19分8板、沃克18分5板4助、布里奇斯12分3板、迈基吉10分、埃尔南戈麦斯11分7板、帕克12分4板4助、蒙克16分5助、马文-威廉姆斯7分、巴图姆9分8助、泽勒6分4板' WHERE id=23;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news4.jpg",`title`='德罗赞26分 阿德22+12 霍乐迪29+8 马刺生擒鹈鹕取4连胜',`content`='鹈鹕（4-5）：霍乐迪29分4篮板8助攻、米罗蒂奇22分16篮板、戴维斯17分8篮板3助攻2抢断5盖帽、韦斯利-约翰逊3分5篮板、兰德尔10分6篮板2助攻、克拉克3分4篮板3助攻
马刺（6-2）：德罗赞26分3篮板4助攻、阿尔德里奇22分12篮板6助攻、康宁汉姆15分7篮板2助攻、福布斯7分3抢断、盖伊6分4篮板2助攻、米尔斯15分7篮板7助攻、贝里内利14分3篮板2助攻、加索尔2分4篮板3助攻、贝尔坦斯2分2助攻' WHERE id=24;
UPDATE `news` SET `pic`="http://127.0.0.1:3000/img/news5.jpg",`title`='哈登复出25+7 安东尼17+6 卡佩拉12+11 火箭擒公牛迎连胜',`content`='火箭（3-5）：哈登25分7助攻4抢断，保罗7分6篮板8助攻，恩尼斯15分，卡佩拉12分11篮板2封盖，塔克6分5篮板，安东尼17分7篮板，克拉克6分7篮板。
公牛（2-8）：拉文21分4篮板4助攻，帕克15分3篮板，佩恩8分3篮板3助攻3抢断，霍勒迪9分6篮板，卡特14分13篮板4封盖，哈奇森12分4篮板。' WHERE id=25;



/*评论表*/
/*球队球星*/
CREATE TABLE comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nid INT,
    ctime DATETIME,
    content VARCHAR(255),
    username VARCHAR(20),
    isdel  INT
);
INSERT INTO comment VALUES(null,1,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,1,now(),"湖人牛逼","我不是土粉啊",0);
INSERT INTO comment VALUES(null,1,now(),"厉害啊","我是小明",0);
INSERT INTO comment VALUES(null,1,now(),"老詹牛逼","我是小红",0);
INSERT INTO comment VALUES(null,1,now(),"喜闻乐见","我是土粉啊",0);
INSERT INTO comment VALUES(null,1,now(),"裁判抢镜","我是土粉啊",0);
INSERT INTO comment VALUES(null,1,now(),"勇士无敌","哈哈",0);
INSERT INTO comment VALUES(null,1,now(),"铁血绿军","我是土粉啊",0);
INSERT INTO comment VALUES(null,1,now(),"76人新王","恩恩额",0);
INSERT INTO comment VALUES(null,1,now(),"大帝牛逼","钉钉",0);


INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,2,now(),"湖人总冠军","我是土粉啊",0);


INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,3,now(),"湖人总冠军","我是土粉啊",0);


INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,4,now(),"湖人总冠军","我是土粉啊",0);

INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,5,now(),"湖人总冠军","我是土粉啊",0);

INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,6,now(),"湖人总冠军","我是土粉啊",0);

INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,7,now(),"湖人总冠军","我是土粉啊",0);

INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,8,now(),"湖人总冠军","我是土粉啊",0);

INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,9,now(),"湖人总冠军","我是土粉啊",0);

INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
INSERT INTO comment VALUES(null,10,now(),"湖人总冠军","我是土粉啊",0);
