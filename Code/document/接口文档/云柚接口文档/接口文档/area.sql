DROP TABLE IF EXISTS `Province`;
CREATE TABLE `Province` (
  `pro_id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `pro_sort` VARCHAR(32) DEFAULT NULL,
  `pro_remark` VARCHAR(50) DEFAULT NULL
);

DROP TABLE IF EXISTS `City`;
CREATE TABLE `City` (
  `city_id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `pro_id` VARCHAR(32) DEFAULT NULL,
  `city_sort` VARCHAR(50) DEFAULT NULL
);

DROP TABLE IF EXISTS `District`;
CREATE TABLE `District` (
  `dis_id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `city_id` VARCHAR(32) DEFAULT NULL,
  `dis_sort` VARCHAR(50) DEFAULT NULL
);

INSERT INTO Province VALUES  ('1','北京市','1','直辖市');  
   
INSERT INTO Province VALUES  ('2','天津市','2','直辖市');  
   
INSERT INTO Province VALUES  ('3','河北省','5','省份');  
   
INSERT INTO Province VALUES  ('4','山西省','6','省份');  
   
INSERT INTO Province VALUES  ('5','内蒙古自治区','32','自治区');  
   
INSERT INTO Province VALUES  ('6','辽宁省','8','省份');  
   
INSERT INTO Province VALUES  ('7','吉林省','9','省份');  
   
INSERT INTO Province VALUES  ('8','黑龙江省','10','省份');  
   
INSERT INTO Province VALUES  ('9','上海市','3','直辖市');  
   
INSERT INTO Province VALUES  ('10','江苏省','11','省份');  
   
INSERT INTO Province VALUES  ('11','浙江省','12','省份');  
   
INSERT INTO Province VALUES  ('12','安徽省','13','省份');  
   
INSERT INTO Province VALUES  ('13','福建省','14','省份');  
   
INSERT INTO Province VALUES  ('14','江西省','15','省份');  
   
INSERT INTO Province VALUES  ('15','山东省','16','省份');  
   
INSERT INTO Province VALUES  ('16','河南省','17','省份');  
   
INSERT INTO Province VALUES  ('17','湖北省','18','省份');  
   
INSERT INTO Province VALUES  ('18','湖南省','19','省份');  
   
INSERT INTO Province VALUES  ('19','广东省','20','省份');  
   
INSERT INTO Province VALUES  ('20','海南省','24','省份');  
   
INSERT INTO Province VALUES  ('21','广西壮族自治区','28','自治区');  
   
INSERT INTO Province VALUES  ('22','甘肃省','21','省份');  
   
INSERT INTO Province VALUES  ('23','陕西省','27','省份');  
   
INSERT INTO Province VALUES  ('24','新疆维吾尔自治区','31','自治区');  
   
INSERT INTO Province VALUES  ('25','青海省','26','省份');  
   
INSERT INTO Province VALUES  ('26','宁夏回族自治区','30','自治区');  
   
INSERT INTO Province VALUES  ('27','重庆市','4','直辖市');  
   
INSERT INTO Province VALUES  ('28','四川省','22','省份');  
   
INSERT INTO Province VALUES  ('29','贵州省','23','省份');  
   
INSERT INTO Province VALUES  ('30','云南省','25','省份');  
   
INSERT INTO Province VALUES  ('31','西藏自治区','29','自治区');  
   
INSERT INTO Province VALUES  ('32','台湾省','7','省份');  
   
INSERT INTO Province VALUES  ('33','澳门特别行政区','33','特别行政区');  
   
INSERT INTO Province VALUES  ('34','香港特别行政区','34','特别行政区');  
   
INSERT INTO City VALUES  ('1','北京市','1','1');  
   
INSERT INTO City VALUES  ('2','天津市','2','2');  
   
INSERT INTO City VALUES  ('3','上海市','9','3');  
   
INSERT INTO City VALUES  ('4','重庆市','27','4');  
   
INSERT INTO City VALUES  ('5','邯郸市','3','5');  
   
INSERT INTO City VALUES  ('6','石家庄市','3','6');  
   
INSERT INTO City VALUES  ('7','保定市','3','7');  
   
INSERT INTO City VALUES  ('8','张家口市','3','8');  
   
INSERT INTO City VALUES  ('9','承德市','3','9');  
   
INSERT INTO City VALUES  ('10','唐山市','3','10');  
   
INSERT INTO City VALUES  ('11','廊坊市','3','11');  
   
INSERT INTO City VALUES  ('12','沧州市','3','12');  
   
INSERT INTO City VALUES  ('13','衡水市','3','13');  
   
INSERT INTO City VALUES  ('14','邢台市','3','14');  
   
INSERT INTO City VALUES  ('16','朔州市','4','16');  
   
INSERT INTO City VALUES  ('17','忻州市','4','17');  
   
INSERT INTO City VALUES  ('18','太原市','4','18');  
   
INSERT INTO City VALUES  ('19','大同市','4','19');  
   
INSERT INTO City VALUES  ('20','阳泉市','4','20');  
   
INSERT INTO City VALUES  ('21','晋中市','4','21');  
   
INSERT INTO City VALUES  ('22','长治市','4','22');  
   
INSERT INTO City VALUES  ('23','晋城市','4','23');  
   
INSERT INTO City VALUES  ('24','临汾市','4','24');  
   
INSERT INTO City VALUES  ('25','吕梁市','4','25');  
   
INSERT INTO City VALUES  ('26','运城市','4','26');  
   
INSERT INTO City VALUES  ('27','沈阳市','6','27');  
   
INSERT INTO City VALUES  ('28','铁岭市','6','28');  
   
INSERT INTO City VALUES  ('29','大连市','6','29');  
   
INSERT INTO City VALUES  ('30','鞍山市','6','30');  
   
INSERT INTO City VALUES  ('31','抚顺市','6','31');  
   
INSERT INTO City VALUES  ('32','本溪市','6','32');  
   
INSERT INTO City VALUES  ('33','丹东市','6','33');  
   
INSERT INTO City VALUES  ('34','锦州市','6','34');  
   
INSERT INTO City VALUES  ('35','营口市','6','35');  
   
INSERT INTO City VALUES  ('36','阜新市','6','36');  
   
INSERT INTO City VALUES  ('37','辽阳市','6','37');  
   
INSERT INTO City VALUES  ('38','朝阳市','6','38');  
   
INSERT INTO City VALUES  ('39','盘锦市','6','39');  
   
INSERT INTO City VALUES  ('40','葫芦岛市','6','40');  
   
INSERT INTO City VALUES  ('41','长春市','7','41');  
   
INSERT INTO City VALUES  ('42','吉林市','7','42');  
   
INSERT INTO City VALUES  ('43','延边朝鲜族自治州','7','43');  
   
INSERT INTO City VALUES  ('44','四平市','7','44');  
   
INSERT INTO City VALUES  ('45','通化市','7','45');  
   
INSERT INTO City VALUES  ('46','白城市','7','46');  
   
INSERT INTO City VALUES  ('47','辽源市','7','47');  
   
INSERT INTO City VALUES  ('48','松原市','7','48');  
   
INSERT INTO City VALUES  ('49','白山市','7','49');  
   
INSERT INTO City VALUES  ('50','哈尔滨市','8','50');  
   
INSERT INTO City VALUES  ('51','齐齐哈尔市','8','51');  
   
INSERT INTO City VALUES  ('52','鸡西市','8','52');  
   
INSERT INTO City VALUES  ('53','牡丹江市','8','53');  
   
INSERT INTO City VALUES  ('54','七台河市','8','54');  
   
INSERT INTO City VALUES  ('55','佳木斯市','8','55');  
   
INSERT INTO City VALUES  ('56','鹤岗市','8','56');  
   
INSERT INTO City VALUES  ('57','双鸭山市','8','57');  
   
INSERT INTO City VALUES  ('58','绥化市','8','58');  
   
INSERT INTO City VALUES  ('59','黑河市','8','59');  
   
INSERT INTO City VALUES  ('60','大兴安岭地区','8','60');  
   
INSERT INTO City VALUES  ('61','伊春市','8','61');  
   
INSERT INTO City VALUES  ('62','大庆市','8','62');  
   
INSERT INTO City VALUES  ('63','南京市','10','63');  
   
INSERT INTO City VALUES  ('64','无锡市','10','64');  
   
INSERT INTO City VALUES  ('65','镇江市','10','65');  
   
INSERT INTO City VALUES  ('66','苏州市','10','66');  
   
INSERT INTO City VALUES  ('67','南通市','10','67');  
   
INSERT INTO City VALUES  ('68','扬州市','10','68');  
   
INSERT INTO City VALUES  ('69','盐城市','10','69');  
   
INSERT INTO City VALUES  ('70','徐州市','10','70');  
   
INSERT INTO City VALUES  ('71','淮安市','10','71');  
   
INSERT INTO City VALUES  ('72','连云港市','10','72');  
   
INSERT INTO City VALUES  ('73','常州市','10','73');  
   
INSERT INTO City VALUES  ('74','泰州市','10','74');  
   
INSERT INTO City VALUES  ('75','宿迁市','10','75');  
   
INSERT INTO City VALUES  ('76','舟山市','11','76');  
   
INSERT INTO City VALUES  ('77','衢州市','11','77');  
   
INSERT INTO City VALUES  ('78','杭州市','11','78');  
   
INSERT INTO City VALUES  ('79','湖州市','11','79');  
   
INSERT INTO City VALUES  ('80','嘉兴市','11','80');  
   
INSERT INTO City VALUES  ('81','宁波市','11','81');  
   
INSERT INTO City VALUES  ('82','绍兴市','11','82');  
   
INSERT INTO City VALUES  ('83','温州市','11','83');  
   
INSERT INTO City VALUES  ('84','丽水市','11','84');  
   
INSERT INTO City VALUES  ('85','金华市','11','85');  
   
INSERT INTO City VALUES  ('86','台州市','11','86');  
   
INSERT INTO City VALUES  ('87','合肥市','12','87');  
   
INSERT INTO City VALUES  ('88','芜湖市','12','88');  
   
INSERT INTO City VALUES  ('89','蚌埠市','12','89');  
   
INSERT INTO City VALUES  ('90','淮南市','12','90');  
   
INSERT INTO City VALUES  ('91','马鞍山市','12','91');  
   
INSERT INTO City VALUES  ('92','淮北市','12','92');  
   
INSERT INTO City VALUES  ('93','铜陵市','12','93');  
   
INSERT INTO City VALUES  ('94','安庆市','12','94');  
   
INSERT INTO City VALUES  ('95','黄山市','12','95');  
   
INSERT INTO City VALUES  ('96','滁州市','12','96');  
   
INSERT INTO City VALUES  ('97','阜阳市','12','97');  
   
INSERT INTO City VALUES  ('98','宿州市','12','98');  
   
INSERT INTO City VALUES  ('99','巢湖市','12','99');  
   
INSERT INTO City VALUES  ('100','六安市','12','100');  
   
INSERT INTO City VALUES  ('101','亳州市','12','101');  
   
INSERT INTO City VALUES  ('102','池州市','12','102');  
   
INSERT INTO City VALUES  ('103','宣城市','12','103');  
   
INSERT INTO City VALUES  ('104','福州市','13','104');  
   
INSERT INTO City VALUES  ('105','厦门市','13','105');  
   
INSERT INTO City VALUES  ('106','宁德市','13','106');  
   
INSERT INTO City VALUES  ('107','莆田市','13','107');  
   
INSERT INTO City VALUES  ('108','泉州市','13','108');  
   
INSERT INTO City VALUES  ('109','漳州市','13','109');  
   
INSERT INTO City VALUES  ('110','龙岩市','13','110');  
   
INSERT INTO City VALUES  ('111','三明市','13','111');  
   
INSERT INTO City VALUES  ('112','南平市','13','112');  
   
INSERT INTO City VALUES  ('113','鹰潭市','14','113');  
   
INSERT INTO City VALUES  ('114','新余市','14','114');  
   
INSERT INTO City VALUES  ('115','南昌市','14','115');  
   
INSERT INTO City VALUES  ('116','九江市','14','116');  
   
INSERT INTO City VALUES  ('117','上饶市','14','117');  
   
INSERT INTO City VALUES  ('118','抚州市','14','118');  
   
INSERT INTO City VALUES  ('119','宜春市','14','119');  
   
INSERT INTO City VALUES  ('120','吉安市','14','120');  
   
INSERT INTO City VALUES  ('121','赣州市','14','121');  
   
INSERT INTO City VALUES  ('122','景德镇市','14','122');  
   
INSERT INTO City VALUES  ('123','萍乡市','14','123');  
   
INSERT INTO City VALUES  ('124','菏泽市','15','124');  
   
INSERT INTO City VALUES  ('125','济南市','15','125');  
   
INSERT INTO City VALUES  ('126','青岛市','15','126');  
   
INSERT INTO City VALUES  ('127','淄博市','15','127');  
   
INSERT INTO City VALUES  ('128','德州市','15','128');  
   
INSERT INTO City VALUES  ('129','烟台市','15','129');  
   
INSERT INTO City VALUES  ('130','潍坊市','15','130');  
   
INSERT INTO City VALUES  ('131','济宁市','15','131');  
   
INSERT INTO City VALUES  ('132','泰安市','15','132');  
   
INSERT INTO City VALUES  ('133','临沂市','15','133');  
   
INSERT INTO City VALUES  ('134','滨州市','15','134');  
   
INSERT INTO City VALUES  ('135','东营市','15','135');  
   
INSERT INTO City VALUES  ('136','威海市','15','136');  
   
INSERT INTO City VALUES  ('137','枣庄市','15','137');  
   
INSERT INTO City VALUES  ('138','日照市','15','138');  
   
INSERT INTO City VALUES  ('139','莱芜市','15','139');  
   
INSERT INTO City VALUES  ('140','聊城市','15','140');  
   
INSERT INTO City VALUES  ('141','商丘市','16','141');  
   
INSERT INTO City VALUES  ('142','郑州市','16','142');  
   
INSERT INTO City VALUES  ('143','安阳市','16','143');  
   
INSERT INTO City VALUES  ('144','新乡市','16','144');  
   
INSERT INTO City VALUES  ('145','许昌市','16','145');  
   
INSERT INTO City VALUES  ('146','平顶山市','16','146');  
   
INSERT INTO City VALUES  ('147','信阳市','16','147');  
   
INSERT INTO City VALUES  ('148','南阳市','16','148');  
   
INSERT INTO City VALUES  ('149','开封市','16','149');  
   
INSERT INTO City VALUES  ('150','洛阳市','16','150');  
   
INSERT INTO City VALUES  ('151','济源市','16','151');  
   
INSERT INTO City VALUES  ('152','焦作市','16','152');  
   
INSERT INTO City VALUES  ('153','鹤壁市','16','153');  
   
INSERT INTO City VALUES  ('154','濮阳市','16','154');  
   
INSERT INTO City VALUES  ('155','周口市','16','155');  
   
INSERT INTO City VALUES  ('156','漯河市','16','156');  
   
INSERT INTO City VALUES  ('157','驻马店市','16','157');  
   
INSERT INTO City VALUES  ('158','三门峡市','16','158');  
   
INSERT INTO City VALUES  ('159','武汉市','17','159');  
   
INSERT INTO City VALUES  ('160','襄樊市','17','160');  
   
INSERT INTO City VALUES  ('161','鄂州市','17','161');  
   
INSERT INTO City VALUES  ('162','孝感市','17','162');  
   
INSERT INTO City VALUES  ('163','黄冈市','17','163');  
   
INSERT INTO City VALUES  ('164','黄石市','17','164');  
   
INSERT INTO City VALUES  ('165','咸宁市','17','165');  
   
INSERT INTO City VALUES  ('166','荆州市','17','166');  
   
INSERT INTO City VALUES  ('167','宜昌市','17','167');  
   
INSERT INTO City VALUES  ('168','恩施土家族苗族自治州','17','168');  
   
INSERT INTO City VALUES  ('169','神农架林区','17','169');  
   
INSERT INTO City VALUES  ('170','十堰市','17','170');  
   
INSERT INTO City VALUES  ('171','随州市','17','171');  
   
INSERT INTO City VALUES  ('172','荆门市','17','172');  
   
INSERT INTO City VALUES  ('173','仙桃市','17','173');  
   
INSERT INTO City VALUES  ('174','天门市','17','174');  
   
INSERT INTO City VALUES  ('175','潜江市','17','175');  
   
INSERT INTO City VALUES  ('176','岳阳市','18','176');  
   
INSERT INTO City VALUES  ('177','长沙市','18','177');  
   
INSERT INTO City VALUES  ('178','湘潭市','18','178');  
   
INSERT INTO City VALUES  ('179','株洲市','18','179');  
   
INSERT INTO City VALUES  ('180','衡阳市','18','180');  
   
INSERT INTO City VALUES  ('181','郴州市','18','181');  
   
INSERT INTO City VALUES  ('182','常德市','18','182');  
   
INSERT INTO City VALUES  ('183','益阳市','18','183');  
   
INSERT INTO City VALUES  ('184','娄底市','18','184');  
   
INSERT INTO City VALUES  ('185','邵阳市','18','185');  
   
INSERT INTO City VALUES  ('186','湘西土家族苗族自治州','18','186');  
   
INSERT INTO City VALUES  ('187','张家界市','18','187');  
   
INSERT INTO City VALUES  ('188','怀化市','18','188');  
   
INSERT INTO City VALUES  ('189','永州市','18','189');  
   
INSERT INTO City VALUES  ('190','广州市','19','190');  
   
INSERT INTO City VALUES  ('191','汕尾市','19','191');  
   
INSERT INTO City VALUES  ('192','阳江市','19','192');  
   
INSERT INTO City VALUES  ('193','揭阳市','19','193');  
   
INSERT INTO City VALUES  ('194','茂名市','19','194');  
   
INSERT INTO City VALUES  ('195','惠州市','19','195');  
   
INSERT INTO City VALUES  ('196','江门市','19','196');  
   
INSERT INTO City VALUES  ('197','韶关市','19','197');  
   
INSERT INTO City VALUES  ('198','梅州市','19','198');  
   
INSERT INTO City VALUES  ('199','汕头市','19','199');  
   
INSERT INTO City VALUES  ('200','深圳市','19','200');  
   
INSERT INTO City VALUES  ('201','珠海市','19','201');  
   
INSERT INTO City VALUES  ('202','佛山市','19','202');  
   
INSERT INTO City VALUES  ('203','肇庆市','19','203');  
   
INSERT INTO City VALUES  ('204','湛江市','19','204');  
   
INSERT INTO City VALUES  ('205','中山市','19','205');  
   
INSERT INTO City VALUES  ('206','河源市','19','206');  
   
INSERT INTO City VALUES  ('207','清远市','19','207');  
   
INSERT INTO City VALUES  ('208','云浮市','19','208');  
   
INSERT INTO City VALUES  ('209','潮州市','19','209');  
   
INSERT INTO City VALUES  ('210','东莞市','19','210');  
   
INSERT INTO City VALUES  ('211','兰州市','22','211');  
   
INSERT INTO City VALUES  ('212','金昌市','22','212');  
   
INSERT INTO City VALUES  ('213','白银市','22','213');  
   
INSERT INTO City VALUES  ('214','天水市','22','214');  
   
INSERT INTO City VALUES  ('215','嘉峪关市','22','215');  
   
INSERT INTO City VALUES  ('216','武威市','22','216');  
   
INSERT INTO City VALUES  ('217','张掖市','22','217');  
   
INSERT INTO City VALUES  ('218','平凉市','22','218');  
   
INSERT INTO City VALUES  ('219','酒泉市','22','219');  
   
INSERT INTO City VALUES  ('220','庆阳市','22','220');  
   
INSERT INTO City VALUES  ('221','定西市','22','221');  
   
INSERT INTO City VALUES  ('222','陇南市','22','222');  
   
INSERT INTO City VALUES  ('223','临夏回族自治州','22','223');  
   
INSERT INTO City VALUES  ('224','甘南藏族自治州','22','224');  
   
INSERT INTO City VALUES  ('225','成都市','28','225');  
   
INSERT INTO City VALUES  ('226','攀枝花市','28','226');  
   
INSERT INTO City VALUES  ('227','自贡市','28','227');  
   
INSERT INTO City VALUES  ('228','绵阳市','28','228');  
   
INSERT INTO City VALUES  ('229','南充市','28','229');  
   
INSERT INTO City VALUES  ('230','达州市','28','230');  
   
INSERT INTO City VALUES  ('231','遂宁市','28','231');  
   
INSERT INTO City VALUES  ('232','广安市','28','232');  
   
INSERT INTO City VALUES  ('233','巴中市','28','233');  
   
INSERT INTO City VALUES  ('234','泸州市','28','234');  
   
INSERT INTO City VALUES  ('235','宜宾市','28','235');  
   
INSERT INTO City VALUES  ('236','资阳市','28','236');  
   
INSERT INTO City VALUES  ('237','内江市','28','237');  
   
INSERT INTO City VALUES  ('238','乐山市','28','238');  
   
INSERT INTO City VALUES  ('239','眉山市','28','239');  
   
INSERT INTO City VALUES  ('240','凉山彝族自治州','28','240');  
   
INSERT INTO City VALUES  ('241','雅安市','28','241');  
   
INSERT INTO City VALUES  ('242','甘孜藏族自治州','28','242');  
   
INSERT INTO City VALUES  ('243','阿坝藏族羌族自治州','28','243');  
   
INSERT INTO City VALUES  ('244','德阳市','28','244');  
   
INSERT INTO City VALUES  ('245','广元市','28','245');  
   
INSERT INTO City VALUES  ('246','贵阳市','29','246');  
   
INSERT INTO City VALUES  ('247','遵义市','29','247');  
   
INSERT INTO City VALUES  ('248','安顺市','29','248');  
   
INSERT INTO City VALUES  ('249','黔南布依族苗族自治州','29','249');  
   
INSERT INTO City VALUES  ('250','黔东南苗族侗族自治州','29','250');  
   
INSERT INTO City VALUES  ('251','铜仁地区','29','251');  
   
INSERT INTO City VALUES  ('252','毕节地区','29','252');  
   
INSERT INTO City VALUES  ('253','六盘水市','29','253');  
   
INSERT INTO City VALUES  ('254','黔西南布依族苗族自治州','29','254');  
   
INSERT INTO City VALUES  ('255','海口市','20','255');  
   
INSERT INTO City VALUES  ('256','三亚市','20','256');  
   
INSERT INTO City VALUES  ('257','五指山市','20','257');  
   
INSERT INTO City VALUES  ('258','琼海市','20','258');  
   
INSERT INTO City VALUES  ('259','儋州市','20','259');  
   
INSERT INTO City VALUES  ('260','文昌市','20','260');  
   
INSERT INTO City VALUES  ('261','万宁市','20','261');  
   
INSERT INTO City VALUES  ('262','东方市','20','262');  
   
INSERT INTO City VALUES  ('263','澄迈县','20','263');  
   
INSERT INTO City VALUES  ('264','定安县','20','264');  
   
INSERT INTO City VALUES  ('265','屯昌县','20','265');  
   
INSERT INTO City VALUES  ('266','临高县','20','266');  
   
INSERT INTO City VALUES  ('267','白沙黎族自治县','20','267');  
   
INSERT INTO City VALUES  ('268','昌江黎族自治县','20','268');  
   
INSERT INTO City VALUES  ('269','乐东黎族自治县','20','269');  
   
INSERT INTO City VALUES  ('270','陵水黎族自治县','20','270');  
   
INSERT INTO City VALUES  ('271','保亭黎族苗族自治县','20','271');  
   
INSERT INTO City VALUES  ('272','琼中黎族苗族自治县','20','272');  
   
INSERT INTO City VALUES  ('273','西双版纳傣族自治州','30','273');  
   
INSERT INTO City VALUES  ('274','德宏傣族景颇族自治州','30','274');  
   
INSERT INTO City VALUES  ('275','昭通市','30','275');  
   
INSERT INTO City VALUES  ('276','昆明市','30','276');  
   
INSERT INTO City VALUES  ('277','大理白族自治州','30','277');  
   
INSERT INTO City VALUES  ('278','红河哈尼族彝族自治州','30','278');  
   
INSERT INTO City VALUES  ('279','曲靖市','30','279');  
   
INSERT INTO City VALUES  ('280','保山市','30','280');  
   
INSERT INTO City VALUES  ('281','文山壮族苗族自治州','30','281');  
   
INSERT INTO City VALUES  ('282','玉溪市','30','282');  
   
INSERT INTO City VALUES  ('283','楚雄彝族自治州','30','283');  
   
INSERT INTO City VALUES  ('284','普洱市','30','284');  
   
INSERT INTO City VALUES  ('285','临沧市','30','285');  
   
INSERT INTO City VALUES  ('286','怒江傈傈族自治州','30','286');  
   
INSERT INTO City VALUES  ('287','迪庆藏族自治州','30','287');  
   
INSERT INTO City VALUES  ('288','丽江市','30','288');  
   
INSERT INTO City VALUES  ('289','海北藏族自治州','25','289');  
   
INSERT INTO City VALUES  ('290','西宁市','25','290');  
   
INSERT INTO City VALUES  ('291','海东地区','25','291');  
   
INSERT INTO City VALUES  ('292','黄南藏族自治州','25','292');  
   
INSERT INTO City VALUES  ('293','海南藏族自治州','25','293');  
   
INSERT INTO City VALUES  ('294','果洛藏族自治州','25','294');  
   
INSERT INTO City VALUES  ('295','玉树藏族自治州','25','295');  
   
INSERT INTO City VALUES  ('296','海西蒙古族藏族自治州','25','296');  
   
INSERT INTO City VALUES  ('297','西安市','23','297');  
   
INSERT INTO City VALUES  ('298','咸阳市','23','298');  
   
INSERT INTO City VALUES  ('299','延安市','23','299');  
   
INSERT INTO City VALUES  ('300','榆林市','23','300');  
   
INSERT INTO City VALUES  ('301','渭南市','23','301');  
   
INSERT INTO City VALUES  ('302','商洛市','23','302');  
   
INSERT INTO City VALUES  ('303','安康市','23','303');  
   
INSERT INTO City VALUES  ('304','汉中市','23','304');  
   
INSERT INTO City VALUES  ('305','宝鸡市','23','305');  
   
INSERT INTO City VALUES  ('306','铜川市','23','306');  
   
INSERT INTO City VALUES  ('307','防城港市','21','307');  
   
INSERT INTO City VALUES  ('308','南宁市','21','308');  
   
INSERT INTO City VALUES  ('309','崇左市','21','309');  
   
INSERT INTO City VALUES  ('310','来宾市','21','310');  
   
INSERT INTO City VALUES  ('311','柳州市','21','311');  
   
INSERT INTO City VALUES  ('312','桂林市','21','312');  
   
INSERT INTO City VALUES  ('313','梧州市','21','313');  
   
INSERT INTO City VALUES  ('314','贺州市','21','314');  
   
INSERT INTO City VALUES  ('315','贵港市','21','315');  
   
INSERT INTO City VALUES  ('316','玉林市','21','316');  
   
INSERT INTO City VALUES  ('317','百色市','21','317');  
   
INSERT INTO City VALUES  ('318','钦州市','21','318');  
   
INSERT INTO City VALUES  ('319','河池市','21','319');  
   
INSERT INTO City VALUES  ('320','北海市','21','320');  
   
INSERT INTO City VALUES  ('321','拉萨市','31','321');  
   
INSERT INTO City VALUES  ('322','日喀则地区','31','322');  
   
INSERT INTO City VALUES  ('323','山南地区','31','323');  
   
INSERT INTO City VALUES  ('324','林芝地区','31','324');  
   
INSERT INTO City VALUES  ('325','昌都地区','31','325');  
   
INSERT INTO City VALUES  ('326','那曲地区','31','326');  
   
INSERT INTO City VALUES  ('327','阿里地区','31','327');  
   
INSERT INTO City VALUES  ('328','银川市','26','328');  
   
INSERT INTO City VALUES  ('329','石嘴山市','26','329');  
   
INSERT INTO City VALUES  ('330','吴忠市','26','330');  
   
INSERT INTO City VALUES  ('331','固原市','26','331');  
   
INSERT INTO City VALUES  ('332','中卫市','26','332');  
   
INSERT INTO City VALUES  ('333','塔城地区','24','333');  
   
INSERT INTO City VALUES  ('334','哈密地区','24','334');  
   
INSERT INTO City VALUES  ('335','和田地区','24','335');  
   
INSERT INTO City VALUES  ('336','阿勒泰地区','24','336');  
   
INSERT INTO City VALUES  ('337','克孜勒苏柯尔克孜自治州','24','337');  
   
INSERT INTO City VALUES  ('338','博尔塔拉蒙古自治州','24','338');  
   
INSERT INTO City VALUES  ('339','克拉玛依市','24','339');  
   
INSERT INTO City VALUES  ('340','乌鲁木齐市','24','340');  
   
INSERT INTO City VALUES  ('341','石河子市','24','341');  
   
INSERT INTO City VALUES  ('342','昌吉回族自治州','24','342');  
   
INSERT INTO City VALUES  ('343','五家渠市','24','343');  
   
INSERT INTO City VALUES  ('344','吐鲁番地区','24','344');  
   
INSERT INTO City VALUES  ('345','巴音郭楞蒙古自治州','24','345');  
   
INSERT INTO City VALUES  ('346','阿克苏地区','24','346');  
   
INSERT INTO City VALUES  ('347','阿拉尔市','24','347');  
   
INSERT INTO City VALUES  ('348','喀什地区','24','348');  
   
INSERT INTO City VALUES  ('349','图木舒克市','24','349');  
   
INSERT INTO City VALUES  ('350','伊犁哈萨克自治州','24','350');  
   
INSERT INTO City VALUES  ('351','呼伦贝尔市','5','351');  
   
INSERT INTO City VALUES  ('352','呼和浩特市','5','352');  
   
INSERT INTO City VALUES  ('353','包头市','5','353');  
   
INSERT INTO City VALUES  ('354','乌海市','5','354');  
   
INSERT INTO City VALUES  ('355','乌兰察布市','5','355');  
   
INSERT INTO City VALUES  ('356','通辽市','5','356');  
   
INSERT INTO City VALUES  ('357','赤峰市','5','357');  
   
INSERT INTO City VALUES  ('358','鄂尔多斯市','5','358');  
   
INSERT INTO City VALUES  ('359','巴彦淖尔市','5','359');  
   
INSERT INTO City VALUES  ('360','锡林郭勒盟','5','360');  
   
INSERT INTO City VALUES  ('361','兴安盟','5','361');  
   
INSERT INTO City VALUES  ('362','阿拉善盟','5','362');  
   
INSERT INTO City VALUES  ('363','台北市','32','363');  
   
INSERT INTO City VALUES  ('364','高雄市','32','364');  
   
INSERT INTO City VALUES  ('365','基隆市','32','365');  
   
INSERT INTO City VALUES  ('366','台中市','32','366');  
   
INSERT INTO City VALUES  ('367','台南市','32','367');  
   
INSERT INTO City VALUES  ('368','新竹市','32','368');  
   
INSERT INTO City VALUES  ('369','嘉义市','32','369');  
   
INSERT INTO City VALUES  ('370','澳门特别行政区','33','370');  
   
INSERT INTO City VALUES  ('371','香港特别行政区','34','371');  
   
INSERT INTO District VALUES  ('1','东城区','1','null');  
   
INSERT INTO District VALUES  ('2','西城区','1','null');  
   
INSERT INTO District VALUES  ('3','崇文区','1','null');  
   
INSERT INTO District VALUES  ('4','宣武区','1','null');  
   
INSERT INTO District VALUES  ('5','朝阳区','1','null');  
   
INSERT INTO District VALUES  ('6','丰台区','1','null');  
   
INSERT INTO District VALUES  ('7','石景山区','1','null');  
   
INSERT INTO District VALUES  ('8','海淀区','1','null');  
   
INSERT INTO District VALUES  ('9','门头沟区','1','null');  
   
INSERT INTO District VALUES  ('10','房山区','1','null');  
   
INSERT INTO District VALUES  ('11','通州区','1','null');  
   
INSERT INTO District VALUES  ('12','顺义区','1','null');  
   
INSERT INTO District VALUES  ('13','昌平区','1','null');  
   
INSERT INTO District VALUES  ('14','大兴区','1','null');  
   
INSERT INTO District VALUES  ('15','怀柔区','1','null');  
   
INSERT INTO District VALUES  ('16','平谷区','1','null');  
   
INSERT INTO District VALUES  ('17','密云县','1','null');  
   
INSERT INTO District VALUES  ('18','延庆县','1','null');  
   
INSERT INTO District VALUES  ('19','和平区','2','null');  
   
INSERT INTO District VALUES  ('20','河东区','2','null');  
   
INSERT INTO District VALUES  ('21','河西区','2','null');  
   
INSERT INTO District VALUES  ('22','南开区','2','null');  
   
INSERT INTO District VALUES  ('23','河北区','2','null');  
   
INSERT INTO District VALUES  ('24','红桥区','2','null');  
   
INSERT INTO District VALUES  ('25','塘沽区','2','null');  
   
INSERT INTO District VALUES  ('26','汉沽区','2','null');  
   
INSERT INTO District VALUES  ('27','大港区','2','null');  
   
INSERT INTO District VALUES  ('28','东丽区','2','null');  
   
INSERT INTO District VALUES  ('29','西青区','2','null');  
   
INSERT INTO District VALUES  ('30','津南区','2','null');  
   
INSERT INTO District VALUES  ('31','北辰区','2','null');  
   
INSERT INTO District VALUES  ('32','武清区','2','null');  
   
INSERT INTO District VALUES  ('33','宝坻区','2','null');  
   
INSERT INTO District VALUES  ('34','宁河县','2','null');  
   
INSERT INTO District VALUES  ('35','静海县','2','null');  
   
INSERT INTO District VALUES  ('36','蓟县','2','null');  
   
INSERT INTO District VALUES  ('37','黄浦区','3','null');  
   
INSERT INTO District VALUES  ('38','卢湾区','3','null');  
   
INSERT INTO District VALUES  ('39','徐汇区','3','null');  
   
INSERT INTO District VALUES  ('40','长宁区','3','null');  
   
INSERT INTO District VALUES  ('41','静安区','3','null');  
   
INSERT INTO District VALUES  ('42','普陀区','3','null');  
   
INSERT INTO District VALUES  ('43','闸北区','3','null');  
   
INSERT INTO District VALUES  ('44','虹口区','3','null');  
   
INSERT INTO District VALUES  ('45','杨浦区','3','null');  
   
INSERT INTO District VALUES  ('46','闵行区','3','null');  
   
INSERT INTO District VALUES  ('47','宝山区','3','null');  
   
INSERT INTO District VALUES  ('48','嘉定区','3','null');  
   
INSERT INTO District VALUES  ('49','浦东新区','3','null');  
   
INSERT INTO District VALUES  ('50','金山区','3','null');  
   
INSERT INTO District VALUES  ('51','松江区','3','null');  
   
INSERT INTO District VALUES  ('52','青浦区','3','null');  
   
INSERT INTO District VALUES  ('53','南汇区','3','null');  
   
INSERT INTO District VALUES  ('54','奉贤区','3','null');  
   
INSERT INTO District VALUES  ('55','崇明县','3','null');  
   
INSERT INTO District VALUES  ('56','万州区','4','null');  
   
INSERT INTO District VALUES  ('57','涪陵区','4','null');  
   
INSERT INTO District VALUES  ('58','渝中区','4','null');  
   
INSERT INTO District VALUES  ('59','大渡口区','4','null');  
   
INSERT INTO District VALUES  ('60','江北区','4','null');  
   
INSERT INTO District VALUES  ('61','沙坪坝区','4','null');  
   
INSERT INTO District VALUES  ('62','九龙坡区','4','null');  
   
INSERT INTO District VALUES  ('63','南岸区','4','null');  
   
INSERT INTO District VALUES  ('64','北碚区','4','null');  
   
INSERT INTO District VALUES  ('65','万盛区','4','null');  
   
INSERT INTO District VALUES  ('66','双桥区','4','null');  
   
INSERT INTO District VALUES  ('67','渝北区','4','null');  
   
INSERT INTO District VALUES  ('68','巴南区','4','null');  
   
INSERT INTO District VALUES  ('69','黔江区','4','null');  
   
INSERT INTO District VALUES  ('70','长寿区','4','null');  
   
INSERT INTO District VALUES  ('71','江津区','4','null');  
   
INSERT INTO District VALUES  ('72','合川区','4','null');  
   
INSERT INTO District VALUES  ('73','永川区','4','null');  
   
INSERT INTO District VALUES  ('74','南川区','4','null');  
   
INSERT INTO District VALUES  ('75','綦江县','4','null');  
   
INSERT INTO District VALUES  ('76','潼南县','4','null');  
   
INSERT INTO District VALUES  ('77','铜梁县','4','null');  
   
INSERT INTO District VALUES  ('78','大足县','4','null');  
   
INSERT INTO District VALUES  ('79','荣昌县','4','null');  
   
INSERT INTO District VALUES  ('80','璧山县','4','null');  
   
INSERT INTO District VALUES  ('81','梁平县','4','null');  
   
INSERT INTO District VALUES  ('82','城口县','4','null');  
   
INSERT INTO District VALUES  ('83','丰都县','4','null');  
   
INSERT INTO District VALUES  ('84','垫江县','4','null');  
   
INSERT INTO District VALUES  ('85','武隆县','4','null');  
   
INSERT INTO District VALUES  ('86','忠县','4','null');  
   
INSERT INTO District VALUES  ('87','开县','4','null');  
   
INSERT INTO District VALUES  ('88','云阳县','4','null');  
   
INSERT INTO District VALUES  ('89','奉节县','4','null');  
   
INSERT INTO District VALUES  ('90','巫山县','4','null');  
   
INSERT INTO District VALUES  ('91','巫溪县','4','null');  
   
INSERT INTO District VALUES  ('92','石柱土家族自治县','4','null');  
   
INSERT INTO District VALUES  ('93','秀山土家族苗族自治县','4','null');  
   
INSERT INTO District VALUES  ('94','酉阳土家族苗族自治县','4','null');  
   
INSERT INTO District VALUES  ('95','彭水苗族土家族自治县','4','null');  
   
INSERT INTO District VALUES  ('96','邯山区','5','null');  
   
INSERT INTO District VALUES  ('97','丛台区','5','null');  
   
INSERT INTO District VALUES  ('98','复兴区','5','null');  
   
INSERT INTO District VALUES  ('99','峰峰矿区','5','null');  
   
INSERT INTO District VALUES  ('100','邯郸县','5','null');  
   
INSERT INTO District VALUES  ('101','临漳县','5','null');  
   
INSERT INTO District VALUES  ('102','成安县','5','null');  
   
INSERT INTO District VALUES  ('103','大名县','5','null');  
   
INSERT INTO District VALUES  ('104','涉县','5','null');  
   
INSERT INTO District VALUES  ('105','磁县','5','null');  
   
INSERT INTO District VALUES  ('106','肥乡县','5','null');  
   
INSERT INTO District VALUES  ('107','永年县','5','null');  
   
INSERT INTO District VALUES  ('108','邱县','5','null');  
   
INSERT INTO District VALUES  ('109','鸡泽县','5','null');  
   
INSERT INTO District VALUES  ('110','广平县','5','null');  
   
INSERT INTO District VALUES  ('111','馆陶县','5','null');  
   
INSERT INTO District VALUES  ('112','魏县','5','null');  
   
INSERT INTO District VALUES  ('113','曲周县','5','null');  
   
INSERT INTO District VALUES  ('114','武安市','5','null');  
   
INSERT INTO District VALUES  ('115','长安区','6','null');  
   
INSERT INTO District VALUES  ('116','桥东区','6','null');  
   
INSERT INTO District VALUES  ('117','桥西区','6','null');  
   
INSERT INTO District VALUES  ('118','新华区','6','null');  
   
INSERT INTO District VALUES  ('119','井陉矿区','6','null');  
   
INSERT INTO District VALUES  ('120','裕华区','6','null');  
   
INSERT INTO District VALUES  ('121','井陉县','6','null');  
   
INSERT INTO District VALUES  ('122','正定县','6','null');  
   
INSERT INTO District VALUES  ('123','栾城县','6','null');  
   
INSERT INTO District VALUES  ('124','行唐县','6','null');  
   
INSERT INTO District VALUES  ('125','灵寿县','6','null');  
   
INSERT INTO District VALUES  ('126','高邑县','6','null');  
   
INSERT INTO District VALUES  ('127','深泽县','6','null');  
   
INSERT INTO District VALUES  ('128','赞皇县','6','null');  
   
INSERT INTO District VALUES  ('129','无极县','6','null');  
   
INSERT INTO District VALUES  ('130','平山县','6','null');  
   
INSERT INTO District VALUES  ('131','元氏县','6','null');  
   
INSERT INTO District VALUES  ('132','赵县','6','null');  
   
INSERT INTO District VALUES  ('133','辛集市','6','null');  
   
INSERT INTO District VALUES  ('134','藁城市','6','null');  
   
INSERT INTO District VALUES  ('135','晋州市','6','null');  
   
INSERT INTO District VALUES  ('136','新乐市','6','null');  
   
INSERT INTO District VALUES  ('137','鹿泉市','6','null');  
   
INSERT INTO District VALUES  ('138','新市区','7','null');  
   
INSERT INTO District VALUES  ('139','北市区','7','null');  
   
INSERT INTO District VALUES  ('140','南市区','7','null');  
   
INSERT INTO District VALUES  ('141','满城县','7','null');  
   
INSERT INTO District VALUES  ('142','清苑县','7','null');  
   
INSERT INTO District VALUES  ('143','涞水县','7','null');  
   
INSERT INTO District VALUES  ('144','阜平县','7','null');  
   
INSERT INTO District VALUES  ('145','徐水县','7','null');  
   
INSERT INTO District VALUES  ('146','定兴县','7','null');  
   
INSERT INTO District VALUES  ('147','唐县','7','null');  
   
INSERT INTO District VALUES  ('148','高阳县','7','null');  
   
INSERT INTO District VALUES  ('149','容城县','7','null');  
   
INSERT INTO District VALUES  ('150','涞源县','7','null');  
   
INSERT INTO District VALUES  ('151','望都县','7','null');  
   
INSERT INTO District VALUES  ('152','安新县','7','null');  
   
INSERT INTO District VALUES  ('153','易县','7','null');  
   
INSERT INTO District VALUES  ('154','曲阳县','7','null');  
   
INSERT INTO District VALUES  ('155','蠡县','7','null');  
   
INSERT INTO District VALUES  ('156','顺平县','7','null');  
   
INSERT INTO District VALUES  ('157','博野县','7','null');  
   
INSERT INTO District VALUES  ('158','雄县','7','null');  
   
INSERT INTO District VALUES  ('159','涿州市','7','null');  
   
INSERT INTO District VALUES  ('160','定州市','7','null');  
   
INSERT INTO District VALUES  ('161','安国市','7','null');  
   
INSERT INTO District VALUES  ('162','高碑店市','7','null');  
   
INSERT INTO District VALUES  ('163','桥东区','8','null');  
   
INSERT INTO District VALUES  ('164','桥西区','8','null');  
   
INSERT INTO District VALUES  ('165','宣化区','8','null');  
   
INSERT INTO District VALUES  ('166','下花园区','8','null');  
   
INSERT INTO District VALUES  ('167','宣化县','8','null');  
   
INSERT INTO District VALUES  ('168','张北县','8','null');  
   
INSERT INTO District VALUES  ('169','康保县','8','null');  
   
INSERT INTO District VALUES  ('170','沽源县','8','null');  
   
INSERT INTO District VALUES  ('171','尚义县','8','null');  
   
INSERT INTO District VALUES  ('172','蔚县','8','null');  
   
INSERT INTO District VALUES  ('173','阳原县','8','null');  
   
INSERT INTO District VALUES  ('174','怀安县','8','null');  
   
INSERT INTO District VALUES  ('175','万全县','8','null');  
   
INSERT INTO District VALUES  ('176','怀来县','8','null');  
   
INSERT INTO District VALUES  ('177','涿鹿县','8','null');  
   
INSERT INTO District VALUES  ('178','赤城县','8','null');  
   
INSERT INTO District VALUES  ('179','崇礼县','8','null');  
   
INSERT INTO District VALUES  ('180','双桥区','9','null');  
   
INSERT INTO District VALUES  ('181','双滦区','9','null');  
   
INSERT INTO District VALUES  ('182','鹰手营子矿区','9','null');  
   
INSERT INTO District VALUES  ('183','承德县','9','null');  
   
INSERT INTO District VALUES  ('184','兴隆县','9','null');  
   
INSERT INTO District VALUES  ('185','平泉县','9','null');  
   
INSERT INTO District VALUES  ('186','滦平县','9','null');  
   
INSERT INTO District VALUES  ('187','隆化县','9','null');  
   
INSERT INTO District VALUES  ('188','丰宁满族自治县','9','null');  
   
INSERT INTO District VALUES  ('189','宽城满族自治县','9','null');  
   
INSERT INTO District VALUES  ('190','围场满族蒙古族自治县','9','null');  
   
INSERT INTO District VALUES  ('191','路南区','10','null');  
   
INSERT INTO District VALUES  ('192','路北区','10','null');  
   
INSERT INTO District VALUES  ('193','古冶区','10','null');  
   
INSERT INTO District VALUES  ('194','开平区','10','null');  
   
INSERT INTO District VALUES  ('195','丰南区','10','null');  
   
INSERT INTO District VALUES  ('196','丰润区','10','null');  
   
INSERT INTO District VALUES  ('197','滦县','10','null');  
   
INSERT INTO District VALUES  ('198','滦南县','10','null');  
   
INSERT INTO District VALUES  ('199','乐亭县','10','null');  
   
INSERT INTO District VALUES  ('200','迁西县','10','null');  
   
INSERT INTO District VALUES  ('201','玉田县','10','null');  
   
INSERT INTO District VALUES  ('202','唐海县','10','null');  
   
INSERT INTO District VALUES  ('203','遵化市','10','null');  
   
INSERT INTO District VALUES  ('204','迁安市','10','null');  
   
INSERT INTO District VALUES  ('205','安次区','11','null');  
   
INSERT INTO District VALUES  ('206','广阳区','11','null');  
   
INSERT INTO District VALUES  ('207','固安县','11','null');  
   
INSERT INTO District VALUES  ('208','永清县','11','null');  
   
INSERT INTO District VALUES  ('209','香河县','11','null');  
   
INSERT INTO District VALUES  ('210','大城县','11','null');  
   
INSERT INTO District VALUES  ('211','文安县','11','null');  
   
INSERT INTO District VALUES  ('212','大厂回族自治县','11','null');  
   
INSERT INTO District VALUES  ('213','霸州市','11','null');  
   
INSERT INTO District VALUES  ('214','三河市','11','null');  
   
INSERT INTO District VALUES  ('215','新华区','12','null');  
   
INSERT INTO District VALUES  ('216','运河区','12','null');  
   
INSERT INTO District VALUES  ('217','沧县','12','null');  
   
INSERT INTO District VALUES  ('218','青县','12','null');  
   
INSERT INTO District VALUES  ('219','东光县','12','null');  
   
INSERT INTO District VALUES  ('220','海兴县','12','null');  
   
INSERT INTO District VALUES  ('221','盐山县','12','null');  
   
INSERT INTO District VALUES  ('222','肃宁县','12','null');  
   
INSERT INTO District VALUES  ('223','南皮县','12','null');  
   
INSERT INTO District VALUES  ('224','吴桥县','12','null');  
   
INSERT INTO District VALUES  ('225','献县','12','null');  
   
INSERT INTO District VALUES  ('226','孟村回族自治县','12','null');  
   
INSERT INTO District VALUES  ('227','泊头市','12','null');  
   
INSERT INTO District VALUES  ('228','任丘市','12','null');  
   
INSERT INTO District VALUES  ('229','黄骅市','12','null');  
   
INSERT INTO District VALUES  ('230','河间市','12','null');  
   
INSERT INTO District VALUES  ('231','桃城区','13','null');  
   
INSERT INTO District VALUES  ('232','枣强县','13','null');  
   
INSERT INTO District VALUES  ('233','武邑县','13','null');  
   
INSERT INTO District VALUES  ('234','武强县','13','null');  
   
INSERT INTO District VALUES  ('235','饶阳县','13','null');  
   
INSERT INTO District VALUES  ('236','安平县','13','null');  
   
INSERT INTO District VALUES  ('237','故城县','13','null');  
   
INSERT INTO District VALUES  ('238','景县','13','null');  
   
INSERT INTO District VALUES  ('239','阜城县','13','null');  
   
INSERT INTO District VALUES  ('240','冀州市','13','null');  
   
INSERT INTO District VALUES  ('241','深州市','13','null');  
   
INSERT INTO District VALUES  ('242','桥东区','14','null');  
   
INSERT INTO District VALUES  ('243','桥西区','14','null');  
   
INSERT INTO District VALUES  ('244','邢台县','14','null');  
   
INSERT INTO District VALUES  ('245','临城县','14','null');  
   
INSERT INTO District VALUES  ('246','内丘县','14','null');  
   
INSERT INTO District VALUES  ('247','柏乡县','14','null');  
   
INSERT INTO District VALUES  ('248','隆尧县','14','null');  
   
INSERT INTO District VALUES  ('249','任县','14','null');  
   
INSERT INTO District VALUES  ('250','南和县','14','null');  
   
INSERT INTO District VALUES  ('251','宁晋县','14','null');  
   
INSERT INTO District VALUES  ('252','巨鹿县','14','null');  
   
INSERT INTO District VALUES  ('253','新河县','14','null');  
   
INSERT INTO District VALUES  ('254','广宗县','14','null');  
   
INSERT INTO District VALUES  ('255','平乡县','14','null');  
   
INSERT INTO District VALUES  ('256','威县','14','null');  
   
INSERT INTO District VALUES  ('257','清河县','14','null');  
   
INSERT INTO District VALUES  ('258','临西县','14','null');  
   
INSERT INTO District VALUES  ('259','南宫市','14','null');  
   
INSERT INTO District VALUES  ('260','沙河市','14','null');  
   
INSERT INTO District VALUES  ('261','海港区','15','null');  
   
INSERT INTO District VALUES  ('262','山海关区','15','null');  
   
INSERT INTO District VALUES  ('263','北戴河区','15','null');  
   
INSERT INTO District VALUES  ('264','青龙满族自治县','15','null');  
   
INSERT INTO District VALUES  ('265','昌黎县','15','null');  
   
INSERT INTO District VALUES  ('266','抚宁县','15','null');  
   
INSERT INTO District VALUES  ('267','卢龙县','15','null');  
   
INSERT INTO District VALUES  ('268','朔城区','16','null');  
   
INSERT INTO District VALUES  ('269','平鲁区','16','null');  
   
INSERT INTO District VALUES  ('270','山阴县','16','null');  
   
INSERT INTO District VALUES  ('271','应县','16','null');  
   
INSERT INTO District VALUES  ('272','右玉县','16','null');  
   
INSERT INTO District VALUES  ('273','怀仁县','16','null');  
   
INSERT INTO District VALUES  ('274','忻府区','17','null');  
   
INSERT INTO District VALUES  ('275','定襄县','17','null');  
   
INSERT INTO District VALUES  ('276','五台县','17','null');  
   
INSERT INTO District VALUES  ('277','代县','17','null');  
   
INSERT INTO District VALUES  ('278','繁峙县','17','null');  
   
INSERT INTO District VALUES  ('279','宁武县','17','null');  
   
INSERT INTO District VALUES  ('280','静乐县','17','null');  
   
INSERT INTO District VALUES  ('281','神池县','17','null');  
   
INSERT INTO District VALUES  ('282','五寨县','17','null');  
   
INSERT INTO District VALUES  ('283','岢岚县','17','null');  
   
INSERT INTO District VALUES  ('284','河曲县','17','null');  
   
INSERT INTO District VALUES  ('285','保德县','17','null');  
   
INSERT INTO District VALUES  ('286','偏关县','17','null');  
   
INSERT INTO District VALUES  ('287','原平市','17','null');  
   
INSERT INTO District VALUES  ('288','小店区','18','null');  
   
INSERT INTO District VALUES  ('289','迎泽区','18','null');  
   
INSERT INTO District VALUES  ('290','杏花岭区','18','null');  
   
INSERT INTO District VALUES  ('291','尖草坪区','18','null');  
   
INSERT INTO District VALUES  ('292','万柏林区','18','null');  
   
INSERT INTO District VALUES  ('293','晋源区','18','null');  
   
INSERT INTO District VALUES  ('294','清徐县','18','null');  
   
INSERT INTO District VALUES  ('295','阳曲县','18','null');  
   
INSERT INTO District VALUES  ('296','娄烦县','18','null');  
   
INSERT INTO District VALUES  ('297','古交市','18','null');  
   
INSERT INTO District VALUES  ('298','矿区','19','null');  
   
INSERT INTO District VALUES  ('299','南郊区','19','null');  
   
INSERT INTO District VALUES  ('300','新荣区','19','null');  
   
INSERT INTO District VALUES  ('301','阳高县','19','null');  
   
INSERT INTO District VALUES  ('302','天镇县','19','null');  
   
INSERT INTO District VALUES  ('303','广灵县','19','null');  
   
INSERT INTO District VALUES  ('304','灵丘县','19','null');  
   
INSERT INTO District VALUES  ('305','浑源县','19','null');  
   
INSERT INTO District VALUES  ('306','左云县','19','null');  
   
INSERT INTO District VALUES  ('307','大同县','19','null');  
   
INSERT INTO District VALUES  ('308','矿区','20','null');  
   
INSERT INTO District VALUES  ('309','平定县','20','null');  
   
INSERT INTO District VALUES  ('310','盂县','20','null');  
   
INSERT INTO District VALUES  ('311','榆次区','21','null');  
   
INSERT INTO District VALUES  ('312','榆社县','21','null');  
   
INSERT INTO District VALUES  ('313','左权县','21','null');  
   
INSERT INTO District VALUES  ('314','和顺县','21','null');  
   
INSERT INTO District VALUES  ('315','昔阳县','21','null');  
   
INSERT INTO District VALUES  ('316','寿阳县','21','null');  
   
INSERT INTO District VALUES  ('317','太谷县','21','null');  
   
INSERT INTO District VALUES  ('318','祁县','21','null');  
   
INSERT INTO District VALUES  ('319','平遥县','21','null');  
   
INSERT INTO District VALUES  ('320','灵石县','21','null');  
   
INSERT INTO District VALUES  ('321','介休市','21','null');  
   
INSERT INTO District VALUES  ('322','长治县','22','null');  
   
INSERT INTO District VALUES  ('323','襄垣县','22','null');  
   
INSERT INTO District VALUES  ('324','屯留县','22','null');  
   
INSERT INTO District VALUES  ('325','平顺县','22','null');  
   
INSERT INTO District VALUES  ('326','黎城县','22','null');  
   
INSERT INTO District VALUES  ('327','壶关县','22','null');  
   
INSERT INTO District VALUES  ('328','长子县','22','null');  
   
INSERT INTO District VALUES  ('329','武乡县','22','null');  
   
INSERT INTO District VALUES  ('330','沁县','22','null');  
   
INSERT INTO District VALUES  ('331','沁源县','22','null');  
   
INSERT INTO District VALUES  ('332','潞城市','22','null');  
   
INSERT INTO District VALUES  ('333','沁水县','23','null');  
   
INSERT INTO District VALUES  ('334','阳城县','23','null');  
   
INSERT INTO District VALUES  ('335','陵川县','23','null');  
   
INSERT INTO District VALUES  ('336','泽州县','23','null');  
   
INSERT INTO District VALUES  ('337','高平市','23','null');  
   
INSERT INTO District VALUES  ('338','尧都区','24','null');  
   
INSERT INTO District VALUES  ('339','曲沃县','24','null');  
   
INSERT INTO District VALUES  ('340','翼城县','24','null');  
   
INSERT INTO District VALUES  ('341','襄汾县','24','null');  
   
INSERT INTO District VALUES  ('342','洪洞县','24','null');  
   
INSERT INTO District VALUES  ('343','古县','24','null');  
   
INSERT INTO District VALUES  ('344','安泽县','24','null');  
   
INSERT INTO District VALUES  ('345','浮山县','24','null');  
   
INSERT INTO District VALUES  ('346','吉县','24','null');  
   
INSERT INTO District VALUES  ('347','乡宁县','24','null');  
   
INSERT INTO District VALUES  ('348','大宁县','24','null');  
   
INSERT INTO District VALUES  ('349','隰县','24','null');  
   
INSERT INTO District VALUES  ('350','永和县','24','null');  
   
INSERT INTO District VALUES  ('351','蒲县','24','null');  
   
INSERT INTO District VALUES  ('352','汾西县','24','null');  
   
INSERT INTO District VALUES  ('353','侯马市','24','null');  
   
INSERT INTO District VALUES  ('354','霍州市','24','null');  
   
INSERT INTO District VALUES  ('355','离石区','25','null');  
   
INSERT INTO District VALUES  ('356','文水县','25','null');  
   
INSERT INTO District VALUES  ('357','交城县','25','null');  
   
INSERT INTO District VALUES  ('358','兴县','25','null');  
   
INSERT INTO District VALUES  ('359','临县','25','null');  
   
INSERT INTO District VALUES  ('360','柳林县','25','null');  
   
INSERT INTO District VALUES  ('361','石楼县','25','null');  
   
INSERT INTO District VALUES  ('362','岚县','25','null');  
   
INSERT INTO District VALUES  ('363','方山县','25','null');  
   
INSERT INTO District VALUES  ('364','中阳县','25','null');  
   
INSERT INTO District VALUES  ('365','交口县','25','null');  
   
INSERT INTO District VALUES  ('366','孝义市','25','null');  
   
INSERT INTO District VALUES  ('367','汾阳市','25','null');  
   
INSERT INTO District VALUES  ('368','盐湖区','26','null');  
   
INSERT INTO District VALUES  ('369','临猗县','26','null');  
   
INSERT INTO District VALUES  ('370','万荣县','26','null');  
   
INSERT INTO District VALUES  ('371','闻喜县','26','null');  
   
INSERT INTO District VALUES  ('372','稷山县','26','null');  
   
INSERT INTO District VALUES  ('373','新绛县','26','null');  
   
INSERT INTO District VALUES  ('374','绛县','26','null');  
   
INSERT INTO District VALUES  ('375','垣曲县','26','null');  
   
INSERT INTO District VALUES  ('376','夏县','26','null');  
   
INSERT INTO District VALUES  ('377','平陆县','26','null');  
   
INSERT INTO District VALUES  ('378','芮城县','26','null');  
   
INSERT INTO District VALUES  ('379','永济市','26','null');  
   
INSERT INTO District VALUES  ('380','河津市','26','null');  
   
INSERT INTO District VALUES  ('381','和平区','27','null');  
   
INSERT INTO District VALUES  ('382','沈河区','27','null');  
   
INSERT INTO District VALUES  ('383','大东区','27','null');  
   
INSERT INTO District VALUES  ('384','皇姑区','27','null');  
   
INSERT INTO District VALUES  ('385','铁西区','27','null');  
   
INSERT INTO District VALUES  ('386','苏家屯区','27','null');  
   
INSERT INTO District VALUES  ('387','东陵区','27','null');  
   
INSERT INTO District VALUES  ('388','沈北新区','27','null');  
   
INSERT INTO District VALUES  ('389','于洪区','27','null');  
   
INSERT INTO District VALUES  ('390','辽中县','27','null');  
   
INSERT INTO District VALUES  ('391','康平县','27','null');  
   
INSERT INTO District VALUES  ('392','法库县','27','null');  
   
INSERT INTO District VALUES  ('393','新民市','27','null');  
   
INSERT INTO District VALUES  ('394','银州区','28','null');  
   
INSERT INTO District VALUES  ('395','清河区','28','null');  
   
INSERT INTO District VALUES  ('396','铁岭县','28','null');  
   
INSERT INTO District VALUES  ('397','西丰县','28','null');  
   
INSERT INTO District VALUES  ('398','昌图县','28','null');  
   
INSERT INTO District VALUES  ('399','调兵山市','28','null');  
   
INSERT INTO District VALUES  ('400','开原市','28','null');  
   
INSERT INTO District VALUES  ('401','长海县','29','null');  
   
INSERT INTO District VALUES  ('402','旅顺口区','29','null');  
   
INSERT INTO District VALUES  ('403','中山区','29','null');  
   
INSERT INTO District VALUES  ('404','西岗区','29','null');  
   
INSERT INTO District VALUES  ('405','沙河口区','29','null');  
   
INSERT INTO District VALUES  ('406','甘井子区','29','null');  
   
INSERT INTO District VALUES  ('407','金州区','29','null');  
   
INSERT INTO District VALUES  ('408','普兰店市','29','null');  
   
INSERT INTO District VALUES  ('409','瓦房店市','29','null');  
   
INSERT INTO District VALUES  ('410','庄河市','29','null');  
   
INSERT INTO District VALUES  ('411','铁东区','30','null');  
   
INSERT INTO District VALUES  ('412','铁西区','30','null');  
   
INSERT INTO District VALUES  ('413','立山区','30','null');  
   
INSERT INTO District VALUES  ('414','千山区','30','null');  
   
INSERT INTO District VALUES  ('415','台安县','30','null');  
   
INSERT INTO District VALUES  ('416','岫岩满族自治县','30','null');  
   
INSERT INTO District VALUES  ('417','海城市','30','null');  
   
INSERT INTO District VALUES  ('418','新抚区','31','null');  
   
INSERT INTO District VALUES  ('419','东洲区','31','null');  
   
INSERT INTO District VALUES  ('420','望花区','31','null');  
   
INSERT INTO District VALUES  ('421','顺城区','31','null');  
   
INSERT INTO District VALUES  ('422','抚顺县','31','null');  
   
INSERT INTO District VALUES  ('423','新宾满族自治县','31','null');  
   
INSERT INTO District VALUES  ('424','清原满族自治县','31','null');  
   
INSERT INTO District VALUES  ('425','平山区','32','null');  
   
INSERT INTO District VALUES  ('426','溪湖区','32','null');  
   
INSERT INTO District VALUES  ('427','明山区','32','null');  
   
INSERT INTO District VALUES  ('428','南芬区','32','null');  
   
INSERT INTO District VALUES  ('429','本溪满族自治县','32','null');  
   
INSERT INTO District VALUES  ('430','桓仁满族自治县','32','null');  
   
INSERT INTO District VALUES  ('431','元宝区','33','null');  
   
INSERT INTO District VALUES  ('432','振兴区','33','null');  
   
INSERT INTO District VALUES  ('433','振安区','33','null');  
   
INSERT INTO District VALUES  ('434','宽甸满族自治县','33','null');  
   
INSERT INTO District VALUES  ('435','东港市','33','null');  
   
INSERT INTO District VALUES  ('436','凤城市','33','null');  
   
INSERT INTO District VALUES  ('437','古塔区','34','null');  
   
INSERT INTO District VALUES  ('438','凌河区','34','null');  
   
INSERT INTO District VALUES  ('439','太和区','34','null');  
   
INSERT INTO District VALUES  ('440','黑山县','34','null');  
   
INSERT INTO District VALUES  ('441','义县','34','null');  
   
INSERT INTO District VALUES  ('442','凌海市','34','null');  
   
INSERT INTO District VALUES  ('443','北镇市','34','null');  
   
INSERT INTO District VALUES  ('444','站前区','35','null');  
   
INSERT INTO District VALUES  ('445','西市区','35','null');  
   
INSERT INTO District VALUES  ('446','鮁鱼圈区','35','null');  
   
INSERT INTO District VALUES  ('447','老边区','35','null');  
   
INSERT INTO District VALUES  ('448','盖州市','35','null');  
   
INSERT INTO District VALUES  ('449','大石桥市','35','null');  
   
INSERT INTO District VALUES  ('450','海州区','36','null');  
   
INSERT INTO District VALUES  ('451','新邱区','36','null');  
   
INSERT INTO District VALUES  ('452','太平区','36','null');  
   
INSERT INTO District VALUES  ('453','清河门区','36','null');  
   
INSERT INTO District VALUES  ('454','细河区','36','null');  
   
INSERT INTO District VALUES  ('455','阜新蒙古族自治县','36','null');  
   
INSERT INTO District VALUES  ('456','彰武县','36','null');  
   
INSERT INTO District VALUES  ('457','白塔区','37','null');  
   
INSERT INTO District VALUES  ('458','文圣区','37','null');  
   
INSERT INTO District VALUES  ('459','宏伟区','37','null');  
   
INSERT INTO District VALUES  ('460','弓长岭区','37','null');  
   
INSERT INTO District VALUES  ('461','太子河区','37','null');  
   
INSERT INTO District VALUES  ('462','辽阳县','37','null');  
   
INSERT INTO District VALUES  ('463','灯塔市','37','null');  
   
INSERT INTO District VALUES  ('464','双塔区','38','null');  
   
INSERT INTO District VALUES  ('465','龙城区','38','null');  
   
INSERT INTO District VALUES  ('466','朝阳县','38','null');  
   
INSERT INTO District VALUES  ('467','建平县','38','null');  
   
INSERT INTO District VALUES  ('468','喀喇沁左翼蒙古族自治县','38','null');  
   
INSERT INTO District VALUES  ('469','北票市','38','null');  
   
INSERT INTO District VALUES  ('470','凌源市','38','null');  
   
INSERT INTO District VALUES  ('471','双台子区','39','null');  
   
INSERT INTO District VALUES  ('472','兴隆台区','39','null');  
   
INSERT INTO District VALUES  ('473','大洼县','39','null');  
   
INSERT INTO District VALUES  ('474','盘山县','39','null');  
   
INSERT INTO District VALUES  ('475','连山区','40','null');  
   
INSERT INTO District VALUES  ('476','龙港区','40','null');  
   
INSERT INTO District VALUES  ('477','南票区','40','null');  
   
INSERT INTO District VALUES  ('478','绥中县','40','null');  
   
INSERT INTO District VALUES  ('479','建昌县','40','null');  
   
INSERT INTO District VALUES  ('480','兴城市','40','null');  
   
INSERT INTO District VALUES  ('481','南关区','41','null');  
   
INSERT INTO District VALUES  ('482','宽城区','41','null');  
   
INSERT INTO District VALUES  ('483','朝阳区','41','null');  
   
INSERT INTO District VALUES  ('484','二道区','41','null');  
   
INSERT INTO District VALUES  ('485','绿园区','41','null');  
   
INSERT INTO District VALUES  ('486','双阳区','41','null');  
   
INSERT INTO District VALUES  ('487','农安县','41','null');  
   
INSERT INTO District VALUES  ('488','九台市','41','null');  
   
INSERT INTO District VALUES  ('489','榆树市','41','null');  
   
INSERT INTO District VALUES  ('490','德惠市','41','null');  
   
INSERT INTO District VALUES  ('491','昌邑区','42','null');  
   
INSERT INTO District VALUES  ('492','龙潭区','42','null');  
   
INSERT INTO District VALUES  ('493','船营区','42','null');  
   
INSERT INTO District VALUES  ('494','丰满区','42','null');  
   
INSERT INTO District VALUES  ('495','永吉县','42','null');  
   
INSERT INTO District VALUES  ('496','蛟河市','42','null');  
   
INSERT INTO District VALUES  ('497','桦甸市','42','null');  
   
INSERT INTO District VALUES  ('498','舒兰市','42','null');  
   
INSERT INTO District VALUES  ('499','磐石市','42','null');  
   
INSERT INTO District VALUES  ('500','延吉市','43','null');  
   
INSERT INTO District VALUES  ('501','图们市','43','null');  
   
INSERT INTO District VALUES  ('502','敦化市','43','null');  
   
INSERT INTO District VALUES  ('503','珲春市','43','null');  
   
INSERT INTO District VALUES  ('504','龙井市','43','null');  
   
INSERT INTO District VALUES  ('505','和龙市','43','null');  
   
INSERT INTO District VALUES  ('506','汪清县','43','null');  
   
INSERT INTO District VALUES  ('507','安图县','43','null');  
   
INSERT INTO District VALUES  ('508','铁西区','44','null');  
   
INSERT INTO District VALUES  ('509','铁东区','44','null');  
   
INSERT INTO District VALUES  ('510','梨树县','44','null');  
   
INSERT INTO District VALUES  ('511','伊通满族自治县','44','null');  
   
INSERT INTO District VALUES  ('512','公主岭市','44','null');  
   
INSERT INTO District VALUES  ('513','双辽市','44','null');  
   
INSERT INTO District VALUES  ('514','东昌区','45','null');  
   
INSERT INTO District VALUES  ('515','二道江区','45','null');  
   
INSERT INTO District VALUES  ('516','通化县','45','null');  
   
INSERT INTO District VALUES  ('517','辉南县','45','null');  
   
INSERT INTO District VALUES  ('518','柳河县','45','null');  
   
INSERT INTO District VALUES  ('519','梅河口市','45','null');  
   
INSERT INTO District VALUES  ('520','集安市','45','null');  
   
INSERT INTO District VALUES  ('521','洮北区','46','null');  
   
INSERT INTO District VALUES  ('522','镇赉县','46','null');  
   
INSERT INTO District VALUES  ('523','通榆县','46','null');  
   
INSERT INTO District VALUES  ('524','洮南市','46','null');  
   
INSERT INTO District VALUES  ('525','大安市','46','null');  
   
INSERT INTO District VALUES  ('526','龙山区','47','null');  
   
INSERT INTO District VALUES  ('527','西安区','47','null');  
   
INSERT INTO District VALUES  ('528','东丰县','47','null');  
   
INSERT INTO District VALUES  ('529','东辽县','47','null');  
   
INSERT INTO District VALUES  ('530','宁江区','48','null');  
   
INSERT INTO District VALUES  ('531','前郭尔罗斯蒙古族自治县','48','null');  
   
INSERT INTO District VALUES  ('532','长岭县','48','null');  
   
INSERT INTO District VALUES  ('533','乾安县','48','null');  
   
INSERT INTO District VALUES  ('534','扶余县','48','null');  
   
INSERT INTO District VALUES  ('535','八道江区','49','null');  
   
INSERT INTO District VALUES  ('536','江源区','49','null');  
   
INSERT INTO District VALUES  ('537','抚松县','49','null');  
   
INSERT INTO District VALUES  ('538','靖宇县','49','null');  
   
INSERT INTO District VALUES  ('539','长白朝鲜族自治县','49','null');  
   
INSERT INTO District VALUES  ('540','临江市','49','null');  
   
INSERT INTO District VALUES  ('541','道里区','50','null');  
   
INSERT INTO District VALUES  ('542','南岗区','50','null');  
   
INSERT INTO District VALUES  ('543','道外区','50','null');  
   
INSERT INTO District VALUES  ('544','平房区','50','null');  
   
INSERT INTO District VALUES  ('545','松北区','50','null');  
   
INSERT INTO District VALUES  ('546','香坊区','50','null');  
   
INSERT INTO District VALUES  ('547','呼兰区','50','null');  
   
INSERT INTO District VALUES  ('548','阿城区','50','null');  
   
INSERT INTO District VALUES  ('549','依兰县','50','null');  
   
INSERT INTO District VALUES  ('550','方正县','50','null');  
   
INSERT INTO District VALUES  ('551','宾县','50','null');  
   
INSERT INTO District VALUES  ('552','巴彦县','50','null');  
   
INSERT INTO District VALUES  ('553','木兰县','50','null');  
   
INSERT INTO District VALUES  ('554','通河县','50','null');  
   
INSERT INTO District VALUES  ('555','延寿县','50','null');  
   
INSERT INTO District VALUES  ('556','双城市','50','null');  
   
INSERT INTO District VALUES  ('557','尚志市','50','null');  
   
INSERT INTO District VALUES  ('558','五常市','50','null');  
   
INSERT INTO District VALUES  ('559','龙沙区','51','null');  
   
INSERT INTO District VALUES  ('560','建华区','51','null');  
   
INSERT INTO District VALUES  ('561','铁锋区','51','null');  
   
INSERT INTO District VALUES  ('562','昂昂溪区','51','null');  
   
INSERT INTO District VALUES  ('563','富拉尔基区','51','null');  
   
INSERT INTO District VALUES  ('564','碾子山区','51','null');  
   
INSERT INTO District VALUES  ('565','梅里斯达翰尔族区','51','null');  
   
INSERT INTO District VALUES  ('566','龙江县','51','null');  
   
INSERT INTO District VALUES  ('567','依安县','51','null');  
   
INSERT INTO District VALUES  ('568','泰来县','51','null');  
   
INSERT INTO District VALUES  ('569','甘南县','51','null');  
   
INSERT INTO District VALUES  ('570','富裕县','51','null');  
   
INSERT INTO District VALUES  ('571','克山县','51','null');  
   
INSERT INTO District VALUES  ('572','克东县','51','null');  
   
INSERT INTO District VALUES  ('573','拜泉县','51','null');  
   
INSERT INTO District VALUES  ('574','讷河市','51','null');  
   
INSERT INTO District VALUES  ('575','鸡冠区','52','null');  
   
INSERT INTO District VALUES  ('576','恒山区','52','null');  
   
INSERT INTO District VALUES  ('577','滴道区','52','null');  
   
INSERT INTO District VALUES  ('578','梨树区','52','null');  
   
INSERT INTO District VALUES  ('579','城子河区','52','null');  
   
INSERT INTO District VALUES  ('580','麻山区','52','null');  
   
INSERT INTO District VALUES  ('581','鸡东县','52','null');  
   
INSERT INTO District VALUES  ('582','虎林市','52','null');  
   
INSERT INTO District VALUES  ('583','密山市','52','null');  
   
INSERT INTO District VALUES  ('584','东安区','53','null');  
   
INSERT INTO District VALUES  ('585','阳明区','53','null');  
   
INSERT INTO District VALUES  ('586','爱民区','53','null');  
   
INSERT INTO District VALUES  ('587','西安区','53','null');  
   
INSERT INTO District VALUES  ('588','东宁县','53','null');  
   
INSERT INTO District VALUES  ('589','林口县','53','null');  
   
INSERT INTO District VALUES  ('590','绥芬河市','53','null');  
   
INSERT INTO District VALUES  ('591','海林市','53','null');  
   
INSERT INTO District VALUES  ('592','宁安市','53','null');  
   
INSERT INTO District VALUES  ('593','穆棱市','53','null');  
   
INSERT INTO District VALUES  ('594','新兴区','54','null');  
   
INSERT INTO District VALUES  ('595','桃山区','54','null');  
   
INSERT INTO District VALUES  ('596','茄子河区','54','null');  
   
INSERT INTO District VALUES  ('597','勃利县','54','null');  
   
INSERT INTO District VALUES  ('598','向阳区','55','null');  
   
INSERT INTO District VALUES  ('599','前进区','55','null');  
   
INSERT INTO District VALUES  ('600','东风区','55','null');  
   
INSERT INTO District VALUES  ('601','桦南县','55','null');  
   
INSERT INTO District VALUES  ('602','桦川县','55','null');  
   
INSERT INTO District VALUES  ('603','汤原县','55','null');  
   
INSERT INTO District VALUES  ('604','抚远县','55','null');  
   
INSERT INTO District VALUES  ('605','同江市','55','null');  
   
INSERT INTO District VALUES  ('606','富锦市','55','null');  
   
INSERT INTO District VALUES  ('607','向阳区','56','null');  
   
INSERT INTO District VALUES  ('608','工农区','56','null');  
   
INSERT INTO District VALUES  ('609','南山区','56','null');  
   
INSERT INTO District VALUES  ('610','兴安区','56','null');  
   
INSERT INTO District VALUES  ('611','东山区','56','null');  
   
INSERT INTO District VALUES  ('612','兴山区','56','null');  
   
INSERT INTO District VALUES  ('613','萝北县','56','null');  
   
INSERT INTO District VALUES  ('614','绥滨县','56','null');  
   
INSERT INTO District VALUES  ('615','尖山区','57','null');  
   
INSERT INTO District VALUES  ('616','岭东区','57','null');  
   
INSERT INTO District VALUES  ('617','四方台区','57','null');  
   
INSERT INTO District VALUES  ('618','宝山区','57','null');  
   
INSERT INTO District VALUES  ('619','集贤县','57','null');  
   
INSERT INTO District VALUES  ('620','友谊县','57','null');  
   
INSERT INTO District VALUES  ('621','宝清县','57','null');  
   
INSERT INTO District VALUES  ('622','饶河县','57','null');  
   
INSERT INTO District VALUES  ('623','北林区','58','null');  
   
INSERT INTO District VALUES  ('624','望奎县','58','null');  
   
INSERT INTO District VALUES  ('625','兰西县','58','null');  
   
INSERT INTO District VALUES  ('626','青冈县','58','null');  
   
INSERT INTO District VALUES  ('627','庆安县','58','null');  
   
INSERT INTO District VALUES  ('628','明水县','58','null');  
   
INSERT INTO District VALUES  ('629','绥棱县','58','null');  
   
INSERT INTO District VALUES  ('630','安达市','58','null');  
   
INSERT INTO District VALUES  ('631','肇东市','58','null');  
   
INSERT INTO District VALUES  ('632','海伦市','58','null');  
   
INSERT INTO District VALUES  ('633','爱辉区','59','null');  
   
INSERT INTO District VALUES  ('634','嫩江县','59','null');  
   
INSERT INTO District VALUES  ('635','逊克县','59','null');  
   
INSERT INTO District VALUES  ('636','孙吴县','59','null');  
   
INSERT INTO District VALUES  ('637','北安市','59','null');  
   
INSERT INTO District VALUES  ('638','五大连池市','59','null');  
   
INSERT INTO District VALUES  ('639','呼玛县','60','null');  
   
INSERT INTO District VALUES  ('640','塔河县','60','null');  
   
INSERT INTO District VALUES  ('641','漠河县','60','null');  
   
INSERT INTO District VALUES  ('642','伊春区','61','null');  
   
INSERT INTO District VALUES  ('643','南岔区','61','null');  
   
INSERT INTO District VALUES  ('644','友好区','61','null');  
   
INSERT INTO District VALUES  ('645','西林区','61','null');  
   
INSERT INTO District VALUES  ('646','翠峦区','61','null');  
   
INSERT INTO District VALUES  ('647','新青区','61','null');  
   
INSERT INTO District VALUES  ('648','美溪区','61','null');  
   
INSERT INTO District VALUES  ('649','金山屯区','61','null');  
   
INSERT INTO District VALUES  ('650','五营区','61','null');  
   
INSERT INTO District VALUES  ('651','乌马河区','61','null');  
   
INSERT INTO District VALUES  ('652','汤旺河区','61','null');  
   
INSERT INTO District VALUES  ('653','带岭区','61','null');  
   
INSERT INTO District VALUES  ('654','乌伊岭区','61','null');  
   
INSERT INTO District VALUES  ('655','红星区','61','null');  
   
INSERT INTO District VALUES  ('656','上甘岭区','61','null');  
   
INSERT INTO District VALUES  ('657','嘉荫县','61','null');  
   
INSERT INTO District VALUES  ('658','铁力市','61','null');  
   
INSERT INTO District VALUES  ('659','萨尔图区','62','null');  
   
INSERT INTO District VALUES  ('660','龙凤区','62','null');  
   
INSERT INTO District VALUES  ('661','让胡路区','62','null');  
   
INSERT INTO District VALUES  ('662','红岗区','62','null');  
   
INSERT INTO District VALUES  ('663','大同区','62','null');  
   
INSERT INTO District VALUES  ('664','肇州县','62','null');  
   
INSERT INTO District VALUES  ('665','肇源县','62','null');  
   
INSERT INTO District VALUES  ('666','林甸县','62','null');  
   
INSERT INTO District VALUES  ('667','杜尔伯特蒙古族自治县','62','null');  
   
INSERT INTO District VALUES  ('668','江宁区','63','null');  
   
INSERT INTO District VALUES  ('669','浦口区','63','null');  
   
INSERT INTO District VALUES  ('670','玄武区','63','null');  
   
INSERT INTO District VALUES  ('671','白下区','63','null');  
   
INSERT INTO District VALUES  ('672','秦淮区','63','null');  
   
INSERT INTO District VALUES  ('673','建邺区','63','null');  
   
INSERT INTO District VALUES  ('674','鼓楼区','63','null');  
   
INSERT INTO District VALUES  ('675','下关区','63','null');  
   
INSERT INTO District VALUES  ('676','栖霞区','63','null');  
   
INSERT INTO District VALUES  ('677','雨花台区','63','null');  
   
INSERT INTO District VALUES  ('678','六合区','63','null');  
   
INSERT INTO District VALUES  ('679','溧水县','63','null');  
   
INSERT INTO District VALUES  ('680','高淳县','63','null');  
   
INSERT INTO District VALUES  ('681','崇安区','64','null');  
   
INSERT INTO District VALUES  ('682','南长区','64','null');  
   
INSERT INTO District VALUES  ('683','北塘区','64','null');  
   
INSERT INTO District VALUES  ('684','锡山区','64','null');  
   
INSERT INTO District VALUES  ('685','惠山区','64','null');  
   
INSERT INTO District VALUES  ('686','滨湖区','64','null');  
   
INSERT INTO District VALUES  ('687','江阴市','64','null');  
   
INSERT INTO District VALUES  ('688','宜兴市','64','null');  
   
INSERT INTO District VALUES  ('689','京口区','65','null');  
   
INSERT INTO District VALUES  ('690','润州区','65','null');  
   
INSERT INTO District VALUES  ('691','丹徒区','65','null');  
   
INSERT INTO District VALUES  ('692','丹阳市','65','null');  
   
INSERT INTO District VALUES  ('693','扬中市','65','null');  
   
INSERT INTO District VALUES  ('694','句容市','65','null');  
   
INSERT INTO District VALUES  ('695','沧浪区','66','null');  
   
INSERT INTO District VALUES  ('696','常熟市','66','null');  
   
INSERT INTO District VALUES  ('697','平江区','66','null');  
   
INSERT INTO District VALUES  ('698','金阊区','66','null');  
   
INSERT INTO District VALUES  ('699','虎丘区','66','null');  
   
INSERT INTO District VALUES  ('700','昆山市','66','null');  
   
INSERT INTO District VALUES  ('701','太仓市','66','null');  
   
INSERT INTO District VALUES  ('702','吴江市','66','null');  
   
INSERT INTO District VALUES  ('703','吴中区','66','null');  
   
INSERT INTO District VALUES  ('704','相城区','66','null');  
   
INSERT INTO District VALUES  ('705','张家港市','66','null');  
   
INSERT INTO District VALUES  ('706','崇川区','67','null');  
   
INSERT INTO District VALUES  ('707','港闸区','67','null');  
   
INSERT INTO District VALUES  ('708','海安县','67','null');  
   
INSERT INTO District VALUES  ('709','如东县','67','null');  
   
INSERT INTO District VALUES  ('710','启东市','67','null');  
   
INSERT INTO District VALUES  ('711','如皋市','67','null');  
   
INSERT INTO District VALUES  ('712','通州市','67','null');  
   
INSERT INTO District VALUES  ('713','海门市','67','null');  
   
INSERT INTO District VALUES  ('714','高邮市','68','null');  
   
INSERT INTO District VALUES  ('715','广陵区','68','null');  
   
INSERT INTO District VALUES  ('716','邗江区','68','null');  
   
INSERT INTO District VALUES  ('717','维扬区','68','null');  
   
INSERT INTO District VALUES  ('718','宝应县','68','null');  
   
INSERT INTO District VALUES  ('719','江都市','68','null');  
   
INSERT INTO District VALUES  ('720','仪征市','68','null');  
   
INSERT INTO District VALUES  ('721','亭湖区','69','null');  
   
INSERT INTO District VALUES  ('722','盐都区','69','null');  
   
INSERT INTO District VALUES  ('723','响水县','69','null');  
   
INSERT INTO District VALUES  ('724','滨海县','69','null');  
   
INSERT INTO District VALUES  ('725','阜宁县','69','null');  
   
INSERT INTO District VALUES  ('726','射阳县','69','null');  
   
INSERT INTO District VALUES  ('727','建湖县','69','null');  
   
INSERT INTO District VALUES  ('728','东台市','69','null');  
   
INSERT INTO District VALUES  ('729','大丰市','69','null');  
   
INSERT INTO District VALUES  ('730','鼓楼区','70','null');  
   
INSERT INTO District VALUES  ('731','云龙区','70','null');  
   
INSERT INTO District VALUES  ('732','九里区','70','null');  
   
INSERT INTO District VALUES  ('733','贾汪区','70','null');  
   
INSERT INTO District VALUES  ('734','泉山区','70','null');  
   
INSERT INTO District VALUES  ('735','丰县','70','null');  
   
INSERT INTO District VALUES  ('736','沛县','70','null');  
   
INSERT INTO District VALUES  ('737','铜山县','70','null');  
   
INSERT INTO District VALUES  ('738','睢宁县','70','null');  
   
INSERT INTO District VALUES  ('739','新沂市','70','null');  
   
INSERT INTO District VALUES  ('740','邳州市','70','null');  
   
INSERT INTO District VALUES  ('741','清河区','71','null');  
   
INSERT INTO District VALUES  ('742','楚州区','71','null');  
   
INSERT INTO District VALUES  ('743','淮阴区','71','null');  
   
INSERT INTO District VALUES  ('744','清浦区','71','null');  
   
INSERT INTO District VALUES  ('745','涟水县','71','null');  
   
INSERT INTO District VALUES  ('746','洪泽县','71','null');  
   
INSERT INTO District VALUES  ('747','盱眙县','71','null');  
   
INSERT INTO District VALUES  ('748','金湖县','71','null');  
   
INSERT INTO District VALUES  ('749','连云区','72','null');  
   
INSERT INTO District VALUES  ('750','新浦区','72','null');  
   
INSERT INTO District VALUES  ('751','海州区','72','null');  
   
INSERT INTO District VALUES  ('752','赣榆县','72','null');  
   
INSERT INTO District VALUES  ('753','东海县','72','null');  
   
INSERT INTO District VALUES  ('754','灌云县','72','null');  
   
INSERT INTO District VALUES  ('755','灌南县','72','null');  
   
INSERT INTO District VALUES  ('756','天宁区','73','null');  
   
INSERT INTO District VALUES  ('757','钟楼区','73','null');  
   
INSERT INTO District VALUES  ('758','戚墅堰区','73','null');  
   
INSERT INTO District VALUES  ('759','新北区','73','null');  
   
INSERT INTO District VALUES  ('760','武进区','73','null');  
   
INSERT INTO District VALUES  ('761','溧阳市','73','null');  
   
INSERT INTO District VALUES  ('762','金坛市','73','null');  
   
INSERT INTO District VALUES  ('763','海陵区','74','null');  
   
INSERT INTO District VALUES  ('764','高港区','74','null');  
   
INSERT INTO District VALUES  ('765','兴化市','74','null');  
   
INSERT INTO District VALUES  ('766','靖江市','74','null');  
   
INSERT INTO District VALUES  ('767','泰兴市','74','null');  
   
INSERT INTO District VALUES  ('768','姜堰市','74','null');  
   
INSERT INTO District VALUES  ('769','宿城区','75','null');  
   
INSERT INTO District VALUES  ('770','宿豫区','75','null');  
   
INSERT INTO District VALUES  ('771','沭阳县','75','null');  
   
INSERT INTO District VALUES  ('772','泗阳县','75','null');  
   
INSERT INTO District VALUES  ('773','泗洪县','75','null');  
   
INSERT INTO District VALUES  ('774','定海区','76','null');  
   
INSERT INTO District VALUES  ('775','普陀区','76','null');  
   
INSERT INTO District VALUES  ('776','岱山县','76','null');  
   
INSERT INTO District VALUES  ('777','嵊泗县','76','null');  
   
INSERT INTO District VALUES  ('778','柯城区','77','null');  
   
INSERT INTO District VALUES  ('779','衢江区','77','null');  
   
INSERT INTO District VALUES  ('780','常山县','77','null');  
   
INSERT INTO District VALUES  ('781','开化县','77','null');  
   
INSERT INTO District VALUES  ('782','龙游县','77','null');  
   
INSERT INTO District VALUES  ('783','江山市','77','null');  
   
INSERT INTO District VALUES  ('784','上城区','78','null');  
   
INSERT INTO District VALUES  ('785','下城区','78','null');  
   
INSERT INTO District VALUES  ('786','江干区','78','null');  
   
INSERT INTO District VALUES  ('787','拱墅区','78','null');  
   
INSERT INTO District VALUES  ('788','西湖区','78','null');  
   
INSERT INTO District VALUES  ('789','滨江区','78','null');  
   
INSERT INTO District VALUES  ('790','余杭区','78','null');  
   
INSERT INTO District VALUES  ('791','桐庐县','78','null');  
   
INSERT INTO District VALUES  ('792','淳安县','78','null');  
   
INSERT INTO District VALUES  ('793','建德市','78','null');  
   
INSERT INTO District VALUES  ('794','富阳市','78','null');  
   
INSERT INTO District VALUES  ('795','临安市','78','null');  
   
INSERT INTO District VALUES  ('796','萧山区','78','null');  
   
INSERT INTO District VALUES  ('797','吴兴区','79','null');  
   
INSERT INTO District VALUES  ('798','南浔区','79','null');  
   
INSERT INTO District VALUES  ('799','德清县','79','null');  
   
INSERT INTO District VALUES  ('800','长兴县','79','null');  
   
INSERT INTO District VALUES  ('801','安吉县','79','null');  
   
INSERT INTO District VALUES  ('802','南湖区','80','null');  
   
INSERT INTO District VALUES  ('803','秀洲区','80','null');  
   
INSERT INTO District VALUES  ('804','嘉善县','80','null');  
   
INSERT INTO District VALUES  ('805','海盐县','80','null');  
   
INSERT INTO District VALUES  ('806','海宁市','80','null');  
   
INSERT INTO District VALUES  ('807','平湖市','80','null');  
   
INSERT INTO District VALUES  ('808','桐乡市','80','null');  
   
INSERT INTO District VALUES  ('809','海曙区','81','null');  
   
INSERT INTO District VALUES  ('810','江东区','81','null');  
   
INSERT INTO District VALUES  ('811','江北区','81','null');  
   
INSERT INTO District VALUES  ('812','北仑区','81','null');  
   
INSERT INTO District VALUES  ('813','镇海区','81','null');  
   
INSERT INTO District VALUES  ('814','鄞州区','81','null');  
   
INSERT INTO District VALUES  ('815','象山县','81','null');  
   
INSERT INTO District VALUES  ('816','宁海县','81','null');  
   
INSERT INTO District VALUES  ('817','余姚市','81','null');  
   
INSERT INTO District VALUES  ('818','慈溪市','81','null');  
   
INSERT INTO District VALUES  ('819','奉化市','81','null');  
   
INSERT INTO District VALUES  ('820','越城区','82','null');  
   
INSERT INTO District VALUES  ('821','绍兴县','82','null');  
   
INSERT INTO District VALUES  ('822','新昌县','82','null');  
   
INSERT INTO District VALUES  ('823','诸暨市','82','null');  
   
INSERT INTO District VALUES  ('824','上虞市','82','null');  
   
INSERT INTO District VALUES  ('825','嵊州市','82','null');  
   
INSERT INTO District VALUES  ('826','鹿城区','83','null');  
   
INSERT INTO District VALUES  ('827','龙湾区','83','null');  
   
INSERT INTO District VALUES  ('828','瓯海区','83','null');  
   
INSERT INTO District VALUES  ('829','洞头县','83','null');  
   
INSERT INTO District VALUES  ('830','永嘉县','83','null');  
   
INSERT INTO District VALUES  ('831','平阳县','83','null');  
   
INSERT INTO District VALUES  ('832','苍南县','83','null');  
   
INSERT INTO District VALUES  ('833','文成县','83','null');  
   
INSERT INTO District VALUES  ('834','泰顺县','83','null');  
   
INSERT INTO District VALUES  ('835','瑞安市','83','null');  
   
INSERT INTO District VALUES  ('836','乐清市','83','null');  
   
INSERT INTO District VALUES  ('837','莲都区','84','null');  
   
INSERT INTO District VALUES  ('838','青田县','84','null');  
   
INSERT INTO District VALUES  ('839','缙云县','84','null');  
   
INSERT INTO District VALUES  ('840','遂昌县','84','null');  
   
INSERT INTO District VALUES  ('841','松阳县','84','null');  
   
INSERT INTO District VALUES  ('842','云和县','84','null');  
   
INSERT INTO District VALUES  ('843','庆元县','84','null');  
   
INSERT INTO District VALUES  ('844','景宁畲族自治县','84','null');  
   
INSERT INTO District VALUES  ('845','龙泉市','84','null');  
   
INSERT INTO District VALUES  ('846','婺城区','85','null');  
   
INSERT INTO District VALUES  ('847','金东区','85','null');  
   
INSERT INTO District VALUES  ('848','武义县','85','null');  
   
INSERT INTO District VALUES  ('849','浦江县','85','null');  
   
INSERT INTO District VALUES  ('850','磐安县','85','null');  
   
INSERT INTO District VALUES  ('851','兰溪市','85','null');  
   
INSERT INTO District VALUES  ('852','义乌市','85','null');  
   
INSERT INTO District VALUES  ('853','东阳市','85','null');  
   
INSERT INTO District VALUES  ('854','永康市','85','null');  
   
INSERT INTO District VALUES  ('855','椒江区','86','null');  
   
INSERT INTO District VALUES  ('856','黄岩区','86','null');  
   
INSERT INTO District VALUES  ('857','路桥区','86','null');  
   
INSERT INTO District VALUES  ('858','玉环县','86','null');  
   
INSERT INTO District VALUES  ('859','三门县','86','null');  
   
INSERT INTO District VALUES  ('860','天台县','86','null');  
   
INSERT INTO District VALUES  ('861','仙居县','86','null');  
   
INSERT INTO District VALUES  ('862','温岭市','86','null');  
   
INSERT INTO District VALUES  ('863','临海市','86','null');  
   
INSERT INTO District VALUES  ('864','瑶海区','87','null');  
   
INSERT INTO District VALUES  ('865','庐阳区','87','null');  
   
INSERT INTO District VALUES  ('866','蜀山区','87','null');  
   
INSERT INTO District VALUES  ('867','包河区','87','null');  
   
INSERT INTO District VALUES  ('868','长丰县','87','null');  
   
INSERT INTO District VALUES  ('869','肥东县','87','null');  
   
INSERT INTO District VALUES  ('870','肥西县','87','null');  
   
INSERT INTO District VALUES  ('871','镜湖区','88','null');  
   
INSERT INTO District VALUES  ('872','弋江区','88','null');  
   
INSERT INTO District VALUES  ('873','鸠江区','88','null');  
   
INSERT INTO District VALUES  ('874','三山区','88','null');  
   
INSERT INTO District VALUES  ('875','芜湖县','88','null');  
   
INSERT INTO District VALUES  ('876','繁昌县','88','null');  
   
INSERT INTO District VALUES  ('877','南陵县','88','null');  
   
INSERT INTO District VALUES  ('878','龙子湖区','89','null');  
   
INSERT INTO District VALUES  ('879','蚌山区','89','null');  
   
INSERT INTO District VALUES  ('880','禹会区','89','null');  
   
INSERT INTO District VALUES  ('881','淮上区','89','null');  
   
INSERT INTO District VALUES  ('882','怀远县','89','null');  
   
INSERT INTO District VALUES  ('883','五河县','89','null');  
   
INSERT INTO District VALUES  ('884','固镇县','89','null');  
   
INSERT INTO District VALUES  ('885','大通区','90','null');  
   
INSERT INTO District VALUES  ('886','田家庵区','90','null');  
   
INSERT INTO District VALUES  ('887','谢家集区','90','null');  
   
INSERT INTO District VALUES  ('888','八公山区','90','null');  
   
INSERT INTO District VALUES  ('889','潘集区','90','null');  
   
INSERT INTO District VALUES  ('890','凤台县','90','null');  
   
INSERT INTO District VALUES  ('891','金家庄区','91','null');  
   
INSERT INTO District VALUES  ('892','花山区','91','null');  
   
INSERT INTO District VALUES  ('893','雨山区','91','null');  
   
INSERT INTO District VALUES  ('894','当涂县','91','null');  
   
INSERT INTO District VALUES  ('895','杜集区','92','null');  
   
INSERT INTO District VALUES  ('896','相山区','92','null');  
   
INSERT INTO District VALUES  ('897','烈山区','92','null');  
   
INSERT INTO District VALUES  ('898','濉溪县','92','null');  
   
INSERT INTO District VALUES  ('899','铜官山区','93','null');  
   
INSERT INTO District VALUES  ('900','狮子山区','93','null');  
   
INSERT INTO District VALUES  ('901','铜陵县','93','null');  
   
INSERT INTO District VALUES  ('902','迎江区','94','null');  
   
INSERT INTO District VALUES  ('903','大观区','94','null');  
   
INSERT INTO District VALUES  ('904','宜秀区','94','null');  
   
INSERT INTO District VALUES  ('905','怀宁县','94','null');  
   
INSERT INTO District VALUES  ('906','枞阳县','94','null');  
   
INSERT INTO District VALUES  ('907','潜山县','94','null');  
   
INSERT INTO District VALUES  ('908','太湖县','94','null');  
   
INSERT INTO District VALUES  ('909','宿松县','94','null');  
   
INSERT INTO District VALUES  ('910','望江县','94','null');  
   
INSERT INTO District VALUES  ('911','岳西县','94','null');  
   
INSERT INTO District VALUES  ('912','桐城市','94','null');  
   
INSERT INTO District VALUES  ('913','屯溪区','95','null');  
   
INSERT INTO District VALUES  ('914','黄山区','95','null');  
   
INSERT INTO District VALUES  ('915','徽州区','95','null');  
   
INSERT INTO District VALUES  ('916','歙县','95','null');  
   
INSERT INTO District VALUES  ('917','休宁县','95','null');  
   
INSERT INTO District VALUES  ('918','黟县','95','null');  
   
INSERT INTO District VALUES  ('919','祁门县','95','null');  
   
INSERT INTO District VALUES  ('920','琅琊区','96','null');  
   
INSERT INTO District VALUES  ('921','南谯区','96','null');  
   
INSERT INTO District VALUES  ('922','来安县','96','null');  
   
INSERT INTO District VALUES  ('923','全椒县','96','null');  
   
INSERT INTO District VALUES  ('924','定远县','96','null');  
   
INSERT INTO District VALUES  ('925','凤阳县','96','null');  
   
INSERT INTO District VALUES  ('926','天长市','96','null');  
   
INSERT INTO District VALUES  ('927','明光市','96','null');  
   
INSERT INTO District VALUES  ('928','颍州区','97','null');  
   
INSERT INTO District VALUES  ('929','颍东区','97','null');  
   
INSERT INTO District VALUES  ('930','颍泉区','97','null');  
   
INSERT INTO District VALUES  ('931','临泉县','97','null');  
   
INSERT INTO District VALUES  ('932','太和县','97','null');  
   
INSERT INTO District VALUES  ('933','阜南县','97','null');  
   
INSERT INTO District VALUES  ('934','颍上县','97','null');  
   
INSERT INTO District VALUES  ('935','界首市','97','null');  
   
INSERT INTO District VALUES  ('936','埇桥区','98','null');  
   
INSERT INTO District VALUES  ('937','砀山县','98','null');  
   
INSERT INTO District VALUES  ('938','萧县','98','null');  
   
INSERT INTO District VALUES  ('939','灵璧县','98','null');  
   
INSERT INTO District VALUES  ('940','泗县','98','null');  
   
INSERT INTO District VALUES  ('941','居巢区','99','null');  
   
INSERT INTO District VALUES  ('942','庐江县','99','null');  
   
INSERT INTO District VALUES  ('943','无为县','99','null');  
   
INSERT INTO District VALUES  ('944','含山县','99','null');  
   
INSERT INTO District VALUES  ('945','和县','99','null');  
   
INSERT INTO District VALUES  ('946','金安区','100','null');  
   
INSERT INTO District VALUES  ('947','裕安区','100','null');  
   
INSERT INTO District VALUES  ('948','寿县','100','null');  
   
INSERT INTO District VALUES  ('949','霍邱县','100','null');  
   
INSERT INTO District VALUES  ('950','舒城县','100','null');  
   
INSERT INTO District VALUES  ('951','金寨县','100','null');  
   
INSERT INTO District VALUES  ('952','霍山县','100','null');  
   
INSERT INTO District VALUES  ('953','谯城区','101','null');  
   
INSERT INTO District VALUES  ('954','涡阳县','101','null');  
   
INSERT INTO District VALUES  ('955','蒙城县','101','null');  
   
INSERT INTO District VALUES  ('956','利辛县','101','null');  
   
INSERT INTO District VALUES  ('957','贵池区','102','null');  
   
INSERT INTO District VALUES  ('958','东至县','102','null');  
   
INSERT INTO District VALUES  ('959','石台县','102','null');  
   
INSERT INTO District VALUES  ('960','青阳县','102','null');  
   
INSERT INTO District VALUES  ('961','宣州区','103','null');  
   
INSERT INTO District VALUES  ('962','郎溪县','103','null');  
   
INSERT INTO District VALUES  ('963','广德县','103','null');  
   
INSERT INTO District VALUES  ('964','泾县','103','null');  
   
INSERT INTO District VALUES  ('965','绩溪县','103','null');  
   
INSERT INTO District VALUES  ('966','旌德县','103','null');  
   
INSERT INTO District VALUES  ('967','宁国市','103','null');  
   
INSERT INTO District VALUES  ('968','鼓楼区','104','null');  
   
INSERT INTO District VALUES  ('969','台江区','104','null');  
   
INSERT INTO District VALUES  ('970','仓山区','104','null');  
   
INSERT INTO District VALUES  ('971','马尾区','104','null');  
   
INSERT INTO District VALUES  ('972','晋安区','104','null');  
   
INSERT INTO District VALUES  ('973','闽侯县','104','null');  
   
INSERT INTO District VALUES  ('974','连江县','104','null');  
   
INSERT INTO District VALUES  ('975','罗源县','104','null');  
   
INSERT INTO District VALUES  ('976','闽清县','104','null');  
   
INSERT INTO District VALUES  ('977','永泰县','104','null');  
   
INSERT INTO District VALUES  ('978','平潭县','104','null');  
   
INSERT INTO District VALUES  ('979','福清市','104','null');  
   
INSERT INTO District VALUES  ('980','长乐市','104','null');  
   
INSERT INTO District VALUES  ('981','思明区','105','null');  
   
INSERT INTO District VALUES  ('982','海沧区','105','null');  
   
INSERT INTO District VALUES  ('983','湖里区','105','null');  
   
INSERT INTO District VALUES  ('984','集美区','105','null');  
   
INSERT INTO District VALUES  ('985','同安区','105','null');  
   
INSERT INTO District VALUES  ('986','翔安区','105','null');  
   
INSERT INTO District VALUES  ('987','蕉城区','106','null');  
   
INSERT INTO District VALUES  ('988','霞浦县','106','null');  
   
INSERT INTO District VALUES  ('989','古田县','106','null');  
   
INSERT INTO District VALUES  ('990','屏南县','106','null');  
   
INSERT INTO District VALUES  ('991','寿宁县','106','null');  
   
INSERT INTO District VALUES  ('992','周宁县','106','null');  
   
INSERT INTO District VALUES  ('993','柘荣县','106','null');  
   
INSERT INTO District VALUES  ('994','福安市','106','null');  
   
INSERT INTO District VALUES  ('995','福鼎市','106','null');  
   
INSERT INTO District VALUES  ('996','城厢区','107','null');  
   
INSERT INTO District VALUES  ('997','涵江区','107','null');  
   
INSERT INTO District VALUES  ('998','荔城区','107','null');  
   
INSERT INTO District VALUES  ('999','秀屿区','107','null');  
   
INSERT INTO District VALUES  ('1000','仙游县','107','null');  
   
INSERT INTO District VALUES  ('1001','鲤城区','108','null');  
   
INSERT INTO District VALUES  ('1002','丰泽区','108','null');  
   
INSERT INTO District VALUES  ('1003','洛江区','108','null');  
   
INSERT INTO District VALUES  ('1004','泉港区','108','null');  
   
INSERT INTO District VALUES  ('1005','惠安县','108','null');  
   
INSERT INTO District VALUES  ('1006','安溪县','108','null');  
   
INSERT INTO District VALUES  ('1007','永春县','108','null');  
   
INSERT INTO District VALUES  ('1008','德化县','108','null');  
   
INSERT INTO District VALUES  ('1009','石狮市','108','null');  
   
INSERT INTO District VALUES  ('1010','晋江市','108','null');  
   
INSERT INTO District VALUES  ('1011','南安市','108','null');  
   
INSERT INTO District VALUES  ('1012','芗城区','109','null');  
   
INSERT INTO District VALUES  ('1013','龙文区','109','null');  
   
INSERT INTO District VALUES  ('1014','云霄县','109','null');  
   
INSERT INTO District VALUES  ('1015','漳浦县','109','null');  
   
INSERT INTO District VALUES  ('1016','诏安县','109','null');  
   
INSERT INTO District VALUES  ('1017','长泰县','109','null');  
   
INSERT INTO District VALUES  ('1018','东山县','109','null');  
   
INSERT INTO District VALUES  ('1019','南靖县','109','null');  
   
INSERT INTO District VALUES  ('1020','平和县','109','null');  
   
INSERT INTO District VALUES  ('1021','华安县','109','null');  
   
INSERT INTO District VALUES  ('1022','龙海市','109','null');  
   
INSERT INTO District VALUES  ('1023','新罗区','110','null');  
   
INSERT INTO District VALUES  ('1024','长汀县','110','null');  
   
INSERT INTO District VALUES  ('1025','永定县','110','null');  
   
INSERT INTO District VALUES  ('1026','上杭县','110','null');  
   
INSERT INTO District VALUES  ('1027','武平县','110','null');  
   
INSERT INTO District VALUES  ('1028','连城县','110','null');  
   
INSERT INTO District VALUES  ('1029','漳平市','110','null');  
   
INSERT INTO District VALUES  ('1030','梅列区','111','null');  
   
INSERT INTO District VALUES  ('1031','三元区','111','null');  
   
INSERT INTO District VALUES  ('1032','明溪县','111','null');  
   
INSERT INTO District VALUES  ('1033','清流县','111','null');  
   
INSERT INTO District VALUES  ('1034','宁化县','111','null');  
   
INSERT INTO District VALUES  ('1035','大田县','111','null');  
   
INSERT INTO District VALUES  ('1036','尤溪县','111','null');  
   
INSERT INTO District VALUES  ('1037','沙县','111','null');  
   
INSERT INTO District VALUES  ('1038','将乐县','111','null');  
   
INSERT INTO District VALUES  ('1039','泰宁县','111','null');  
   
INSERT INTO District VALUES  ('1040','建宁县','111','null');  
   
INSERT INTO District VALUES  ('1041','永安市','111','null');  
   
INSERT INTO District VALUES  ('1042','延平区','112','null');  
   
INSERT INTO District VALUES  ('1043','顺昌县','112','null');  
   
INSERT INTO District VALUES  ('1044','浦城县','112','null');  
   
INSERT INTO District VALUES  ('1045','光泽县','112','null');  
   
INSERT INTO District VALUES  ('1046','松溪县','112','null');  
   
INSERT INTO District VALUES  ('1047','政和县','112','null');  
   
INSERT INTO District VALUES  ('1048','邵武市','112','null');  
   
INSERT INTO District VALUES  ('1049','武夷山市','112','null');  
   
INSERT INTO District VALUES  ('1050','建瓯市','112','null');  
   
INSERT INTO District VALUES  ('1051','建阳市','112','null');  
   
INSERT INTO District VALUES  ('1052','月湖区','113','null');  
   
INSERT INTO District VALUES  ('1053','余江县','113','null');  
   
INSERT INTO District VALUES  ('1054','贵溪市','113','null');  
   
INSERT INTO District VALUES  ('1055','渝水区','114','null');  
   
INSERT INTO District VALUES  ('1056','分宜县','114','null');  
   
INSERT INTO District VALUES  ('1057','东湖区','115','null');  
   
INSERT INTO District VALUES  ('1058','西湖区','115','null');  
   
INSERT INTO District VALUES  ('1059','青云谱区','115','null');  
   
INSERT INTO District VALUES  ('1060','湾里区','115','null');  
   
INSERT INTO District VALUES  ('1061','青山湖区','115','null');  
   
INSERT INTO District VALUES  ('1062','南昌县','115','null');  
   
INSERT INTO District VALUES  ('1063','新建县','115','null');  
   
INSERT INTO District VALUES  ('1064','安义县','115','null');  
   
INSERT INTO District VALUES  ('1065','进贤县','115','null');  
   
INSERT INTO District VALUES  ('1066','庐山区','116','null');  
   
INSERT INTO District VALUES  ('1067','浔阳区','116','null');  
   
INSERT INTO District VALUES  ('1068','九江县','116','null');  
   
INSERT INTO District VALUES  ('1069','武宁县','116','null');  
   
INSERT INTO District VALUES  ('1070','修水县','116','null');  
   
INSERT INTO District VALUES  ('1071','永修县','116','null');  
   
INSERT INTO District VALUES  ('1072','德安县','116','null');  
   
INSERT INTO District VALUES  ('1073','星子县','116','null');  
   
INSERT INTO District VALUES  ('1074','都昌县','116','null');  
   
INSERT INTO District VALUES  ('1075','湖口县','116','null');  
   
INSERT INTO District VALUES  ('1076','彭泽县','116','null');  
   
INSERT INTO District VALUES  ('1077','瑞昌市','116','null');  
   
INSERT INTO District VALUES  ('1078','信州区','117','null');  
   
INSERT INTO District VALUES  ('1079','上饶县','117','null');  
   
INSERT INTO District VALUES  ('1080','广丰县','117','null');  
   
INSERT INTO District VALUES  ('1081','玉山县','117','null');  
   
INSERT INTO District VALUES  ('1082','铅山县','117','null');  
   
INSERT INTO District VALUES  ('1083','横峰县','117','null');  
   
INSERT INTO District VALUES  ('1084','弋阳县','117','null');  
   
INSERT INTO District VALUES  ('1085','余干县','117','null');  
   
INSERT INTO District VALUES  ('1086','鄱阳县','117','null');  
   
INSERT INTO District VALUES  ('1087','万年县','117','null');  
   
INSERT INTO District VALUES  ('1088','婺源县','117','null');  
   
INSERT INTO District VALUES  ('1089','德兴市','117','null');  
   
INSERT INTO District VALUES  ('1090','临川区','118','null');  
   
INSERT INTO District VALUES  ('1091','南城县','118','null');  
   
INSERT INTO District VALUES  ('1092','黎川县','118','null');  
   
INSERT INTO District VALUES  ('1093','南丰县','118','null');  
   
INSERT INTO District VALUES  ('1094','崇仁县','118','null');  
   
INSERT INTO District VALUES  ('1095','乐安县','118','null');  
   
INSERT INTO District VALUES  ('1096','宜黄县','118','null');  
   
INSERT INTO District VALUES  ('1097','金溪县','118','null');  
   
INSERT INTO District VALUES  ('1098','资溪县','118','null');  
   
INSERT INTO District VALUES  ('1099','东乡县','118','null');  
   
INSERT INTO District VALUES  ('1100','广昌县','118','null');  
   
INSERT INTO District VALUES  ('1101','袁州区','119','null');  
   
INSERT INTO District VALUES  ('1102','奉新县','119','null');  
   
INSERT INTO District VALUES  ('1103','万载县','119','null');  
   
INSERT INTO District VALUES  ('1104','上高县','119','null');  
   
INSERT INTO District VALUES  ('1105','宜丰县','119','null');  
   
INSERT INTO District VALUES  ('1106','靖安县','119','null');  
   
INSERT INTO District VALUES  ('1107','铜鼓县','119','null');  
   
INSERT INTO District VALUES  ('1108','丰城市','119','null');  
   
INSERT INTO District VALUES  ('1109','樟树市','119','null');  
   
INSERT INTO District VALUES  ('1110','高安市','119','null');  
   
INSERT INTO District VALUES  ('1111','吉州区','120','null');  
   
INSERT INTO District VALUES  ('1112','青原区','120','null');  
   
INSERT INTO District VALUES  ('1113','吉安县','120','null');  
   
INSERT INTO District VALUES  ('1114','吉水县','120','null');  
   
INSERT INTO District VALUES  ('1115','峡江县','120','null');  
   
INSERT INTO District VALUES  ('1116','新干县','120','null');  
   
INSERT INTO District VALUES  ('1117','永丰县','120','null');  
   
INSERT INTO District VALUES  ('1118','泰和县','120','null');  
   
INSERT INTO District VALUES  ('1119','遂川县','120','null');  
   
INSERT INTO District VALUES  ('1120','万安县','120','null');  
   
INSERT INTO District VALUES  ('1121','安福县','120','null');  
   
INSERT INTO District VALUES  ('1122','永新县','120','null');  
   
INSERT INTO District VALUES  ('1123','井冈山市','120','null');  
   
INSERT INTO District VALUES  ('1124','章贡区','121','null');  
   
INSERT INTO District VALUES  ('1125','赣县','121','null');  
   
INSERT INTO District VALUES  ('1126','信丰县','121','null');  
   
INSERT INTO District VALUES  ('1127','大余县','121','null');  
   
INSERT INTO District VALUES  ('1128','上犹县','121','null');  
   
INSERT INTO District VALUES  ('1129','崇义县','121','null');  
   
INSERT INTO District VALUES  ('1130','安远县','121','null');  
   
INSERT INTO District VALUES  ('1131','龙南县','121','null');  
   
INSERT INTO District VALUES  ('1132','定南县','121','null');  
   
INSERT INTO District VALUES  ('1133','全南县','121','null');  
   
INSERT INTO District VALUES  ('1134','宁都县','121','null');  
   
INSERT INTO District VALUES  ('1135','于都县','121','null');  
   
INSERT INTO District VALUES  ('1136','兴国县','121','null');  
   
INSERT INTO District VALUES  ('1137','会昌县','121','null');  
   
INSERT INTO District VALUES  ('1138','寻乌县','121','null');  
   
INSERT INTO District VALUES  ('1139','石城县','121','null');  
   
INSERT INTO District VALUES  ('1140','瑞金市','121','null');  
   
INSERT INTO District VALUES  ('1141','南康市','121','null');  
   
INSERT INTO District VALUES  ('1142','昌江区','122','null');  
   
INSERT INTO District VALUES  ('1143','珠山区','122','null');  
   
INSERT INTO District VALUES  ('1144','浮梁县','122','null');  
   
INSERT INTO District VALUES  ('1145','乐平市','122','null');  
   
INSERT INTO District VALUES  ('1146','安源区','123','null');  
   
INSERT INTO District VALUES  ('1147','湘东区','123','null');  
   
INSERT INTO District VALUES  ('1148','莲花县','123','null');  
   
INSERT INTO District VALUES  ('1149','上栗县','123','null');  
   
INSERT INTO District VALUES  ('1150','芦溪县','123','null');  
   
INSERT INTO District VALUES  ('1151','牡丹区','124','null');  
   
INSERT INTO District VALUES  ('1152','曹县','124','null');  
   
INSERT INTO District VALUES  ('1153','单县','124','null');  
   
INSERT INTO District VALUES  ('1154','成武县','124','null');  
   
INSERT INTO District VALUES  ('1155','巨野县','124','null');  
   
INSERT INTO District VALUES  ('1156','郓城县','124','null');  
   
INSERT INTO District VALUES  ('1157','鄄城县','124','null');  
   
INSERT INTO District VALUES  ('1158','定陶县','124','null');  
   
INSERT INTO District VALUES  ('1159','东明县','124','null');  
   
INSERT INTO District VALUES  ('1160','历下区','125','null');  
   
INSERT INTO District VALUES  ('1161','市中区','125','null');  
   
INSERT INTO District VALUES  ('1162','槐荫区','125','null');  
   
INSERT INTO District VALUES  ('1163','天桥区','125','null');  
   
INSERT INTO District VALUES  ('1164','历城区','125','null');  
   
INSERT INTO District VALUES  ('1165','长清区','125','null');  
   
INSERT INTO District VALUES  ('1166','平阴县','125','null');  
   
INSERT INTO District VALUES  ('1167','济阳县','125','null');  
   
INSERT INTO District VALUES  ('1168','商河县','125','null');  
   
INSERT INTO District VALUES  ('1169','章丘市','125','null');  
   
INSERT INTO District VALUES  ('1170','市南区','126','null');  
   
INSERT INTO District VALUES  ('1171','市北区','126','null');  
   
INSERT INTO District VALUES  ('1172','四方区','126','null');  
   
INSERT INTO District VALUES  ('1173','黄岛区','126','null');  
   
INSERT INTO District VALUES  ('1174','崂山区','126','null');  
   
INSERT INTO District VALUES  ('1175','李沧区','126','null');  
   
INSERT INTO District VALUES  ('1176','城阳区','126','null');  
   
INSERT INTO District VALUES  ('1177','胶州市','126','null');  
   
INSERT INTO District VALUES  ('1178','即墨市','126','null');  
   
INSERT INTO District VALUES  ('1179','平度市','126','null');  
   
INSERT INTO District VALUES  ('1180','胶南市','126','null');  
   
INSERT INTO District VALUES  ('1181','莱西市','126','null');  
   
INSERT INTO District VALUES  ('1182','淄川区','127','null');  
   
INSERT INTO District VALUES  ('1183','张店区','127','null');  
   
INSERT INTO District VALUES  ('1184','博山区','127','null');  
   
INSERT INTO District VALUES  ('1185','临淄区','127','null');  
   
INSERT INTO District VALUES  ('1186','周村区','127','null');  
   
INSERT INTO District VALUES  ('1187','桓台县','127','null');  
   
INSERT INTO District VALUES  ('1188','高青县','127','null');  
   
INSERT INTO District VALUES  ('1189','沂源县','127','null');  
   
INSERT INTO District VALUES  ('1190','德城区','128','null');  
   
INSERT INTO District VALUES  ('1191','陵县','128','null');  
   
INSERT INTO District VALUES  ('1192','宁津县','128','null');  
   
INSERT INTO District VALUES  ('1193','庆云县','128','null');  
   
INSERT INTO District VALUES  ('1194','临邑县','128','null');  
   
INSERT INTO District VALUES  ('1195','齐河县','128','null');  
   
INSERT INTO District VALUES  ('1196','平原县','128','null');  
   
INSERT INTO District VALUES  ('1197','夏津县','128','null');  
   
INSERT INTO District VALUES  ('1198','武城县','128','null');  
   
INSERT INTO District VALUES  ('1199','乐陵市','128','null');  
   
INSERT INTO District VALUES  ('1200','禹城市','128','null');  
   
INSERT INTO District VALUES  ('1201','芝罘区','129','null');  
   
INSERT INTO District VALUES  ('1202','福山区','129','null');  
   
INSERT INTO District VALUES  ('1203','牟平区','129','null');  
   
INSERT INTO District VALUES  ('1204','莱山区','129','null');  
   
INSERT INTO District VALUES  ('1205','长岛县','129','null');  
   
INSERT INTO District VALUES  ('1206','龙口市','129','null');  
   
INSERT INTO District VALUES  ('1207','莱阳市','129','null');  
   
INSERT INTO District VALUES  ('1208','莱州市','129','null');  
   
INSERT INTO District VALUES  ('1209','蓬莱市','129','null');  
   
INSERT INTO District VALUES  ('1210','招远市','129','null');  
   
INSERT INTO District VALUES  ('1211','栖霞市','129','null');  
   
INSERT INTO District VALUES  ('1212','海阳市','129','null');  
   
INSERT INTO District VALUES  ('1213','潍城区','130','null');  
   
INSERT INTO District VALUES  ('1214','寒亭区','130','null');  
   
INSERT INTO District VALUES  ('1215','坊子区','130','null');  
   
INSERT INTO District VALUES  ('1216','奎文区','130','null');  
   
INSERT INTO District VALUES  ('1217','临朐县','130','null');  
   
INSERT INTO District VALUES  ('1218','昌乐县','130','null');  
   
INSERT INTO District VALUES  ('1219','青州市','130','null');  
   
INSERT INTO District VALUES  ('1220','诸城市','130','null');  
   
INSERT INTO District VALUES  ('1221','寿光市','130','null');  
   
INSERT INTO District VALUES  ('1222','安丘市','130','null');  
   
INSERT INTO District VALUES  ('1223','高密市','130','null');  
   
INSERT INTO District VALUES  ('1224','昌邑市','130','null');  
   
INSERT INTO District VALUES  ('1225','市中区','131','null');  
   
INSERT INTO District VALUES  ('1226','任城区','131','null');  
   
INSERT INTO District VALUES  ('1227','微山县','131','null');  
   
INSERT INTO District VALUES  ('1228','鱼台县','131','null');  
   
INSERT INTO District VALUES  ('1229','金乡县','131','null');  
   
INSERT INTO District VALUES  ('1230','嘉祥县','131','null');  
   
INSERT INTO District VALUES  ('1231','汶上县','131','null');  
   
INSERT INTO District VALUES  ('1232','泗水县','131','null');  
   
INSERT INTO District VALUES  ('1233','梁山县','131','null');  
   
INSERT INTO District VALUES  ('1234','曲阜市','131','null');  
   
INSERT INTO District VALUES  ('1235','兖州市','131','null');  
   
INSERT INTO District VALUES  ('1236','邹城市','131','null');  
   
INSERT INTO District VALUES  ('1237','泰山区','132','null');  
   
INSERT INTO District VALUES  ('1238','岱岳区','132','null');  
   
INSERT INTO District VALUES  ('1239','宁阳县','132','null');  
   
INSERT INTO District VALUES  ('1240','东平县','132','null');  
   
INSERT INTO District VALUES  ('1241','新泰市','132','null');  
   
INSERT INTO District VALUES  ('1242','肥城市','132','null');  
   
INSERT INTO District VALUES  ('1243','兰山区','133','null');  
   
INSERT INTO District VALUES  ('1244','罗庄区','133','null');  
   
INSERT INTO District VALUES  ('1245','河东区','133','null');  
   
INSERT INTO District VALUES  ('1246','沂南县','133','null');  
   
INSERT INTO District VALUES  ('1247','郯城县','133','null');  
   
INSERT INTO District VALUES  ('1248','沂水县','133','null');  
   
INSERT INTO District VALUES  ('1249','苍山县','133','null');  
   
INSERT INTO District VALUES  ('1250','费县','133','null');  
   
INSERT INTO District VALUES  ('1251','平邑县','133','null');  
   
INSERT INTO District VALUES  ('1252','莒南县','133','null');  
   
INSERT INTO District VALUES  ('1253','蒙阴县','133','null');  
   
INSERT INTO District VALUES  ('1254','临沭县','133','null');  
   
INSERT INTO District VALUES  ('1255','滨城区','134','null');  
   
INSERT INTO District VALUES  ('1256','惠民县','134','null');  
   
INSERT INTO District VALUES  ('1257','阳信县','134','null');  
   
INSERT INTO District VALUES  ('1258','无棣县','134','null');  
   
INSERT INTO District VALUES  ('1259','沾化县','134','null');  
   
INSERT INTO District VALUES  ('1260','博兴县','134','null');  
   
INSERT INTO District VALUES  ('1261','邹平县','134','null');  
   
INSERT INTO District VALUES  ('1262','东营区','135','null');  
   
INSERT INTO District VALUES  ('1263','河口区','135','null');  
   
INSERT INTO District VALUES  ('1264','垦利县','135','null');  
   
INSERT INTO District VALUES  ('1265','利津县','135','null');  
   
INSERT INTO District VALUES  ('1266','广饶县','135','null');  
   
INSERT INTO District VALUES  ('1267','环翠区','136','null');  
   
INSERT INTO District VALUES  ('1268','文登市','136','null');  
   
INSERT INTO District VALUES  ('1269','荣成市','136','null');  
   
INSERT INTO District VALUES  ('1270','乳山市','136','null');  
   
INSERT INTO District VALUES  ('1271','市中区','137','null');  
   
INSERT INTO District VALUES  ('1272','薛城区','137','null');  
   
INSERT INTO District VALUES  ('1273','峄城区','137','null');  
   
INSERT INTO District VALUES  ('1274','台儿庄区','137','null');  
   
INSERT INTO District VALUES  ('1275','山亭区','137','null');  
   
INSERT INTO District VALUES  ('1276','滕州市','137','null');  
   
INSERT INTO District VALUES  ('1277','东港区','138','null');  
   
INSERT INTO District VALUES  ('1278','岚山区','138','null');  
   
INSERT INTO District VALUES  ('1279','五莲县','138','null');  
   
INSERT INTO District VALUES  ('1280','莒县','138','null');  
   
INSERT INTO District VALUES  ('1281','莱城区','139','null');  
   
INSERT INTO District VALUES  ('1282','钢城区','139','null');  
   
INSERT INTO District VALUES  ('1283','东昌府区','140','null');  
   
INSERT INTO District VALUES  ('1284','阳谷县','140','null');  
   
INSERT INTO District VALUES  ('1285','莘县','140','null');  
   
INSERT INTO District VALUES  ('1286','茌平县','140','null');  
   
INSERT INTO District VALUES  ('1287','东阿县','140','null');  
   
INSERT INTO District VALUES  ('1288','冠县','140','null');  
   
INSERT INTO District VALUES  ('1289','高唐县','140','null');  
   
INSERT INTO District VALUES  ('1290','临清市','140','null');  
   
INSERT INTO District VALUES  ('1291','梁园区','141','null');  
   
INSERT INTO District VALUES  ('1292','睢阳区','141','null');  
   
INSERT INTO District VALUES  ('1293','民权县','141','null');  
   
INSERT INTO District VALUES  ('1294','睢县','141','null');  
   
INSERT INTO District VALUES  ('1295','宁陵县','141','null');  
   
INSERT INTO District VALUES  ('1296','柘城县','141','null');  
   
INSERT INTO District VALUES  ('1297','虞城县','141','null');  
   
INSERT INTO District VALUES  ('1298','夏邑县','141','null');  
   
INSERT INTO District VALUES  ('1299','永城市','141','null');  
   
INSERT INTO District VALUES  ('1300','中原区','142','null');  
   
INSERT INTO District VALUES  ('1301','二七区','142','null');  
   
INSERT INTO District VALUES  ('1302','管城回族区','142','null');  
   
INSERT INTO District VALUES  ('1303','金水区','142','null');  
   
INSERT INTO District VALUES  ('1304','上街区','142','null');  
   
INSERT INTO District VALUES  ('1305','惠济区','142','null');  
   
INSERT INTO District VALUES  ('1306','中牟县','142','null');  
   
INSERT INTO District VALUES  ('1307','巩义市','142','null');  
   
INSERT INTO District VALUES  ('1308','荥阳市','142','null');  
   
INSERT INTO District VALUES  ('1309','新密市','142','null');  
   
INSERT INTO District VALUES  ('1310','新郑市','142','null');  
   
INSERT INTO District VALUES  ('1311','登封市','142','null');  
   
INSERT INTO District VALUES  ('1312','文峰区','143','null');  
   
INSERT INTO District VALUES  ('1313','北关区','143','null');  
   
INSERT INTO District VALUES  ('1314','殷都区','143','null');  
   
INSERT INTO District VALUES  ('1315','龙安区','143','null');  
   
INSERT INTO District VALUES  ('1316','安阳县','143','null');  
   
INSERT INTO District VALUES  ('1317','汤阴县','143','null');  
   
INSERT INTO District VALUES  ('1318','滑县','143','null');  
   
INSERT INTO District VALUES  ('1319','内黄县','143','null');  
   
INSERT INTO District VALUES  ('1320','林州市','143','null');  
   
INSERT INTO District VALUES  ('1321','红旗区','144','null');  
   
INSERT INTO District VALUES  ('1322','卫滨区','144','null');  
   
INSERT INTO District VALUES  ('1323','凤泉区','144','null');  
   
INSERT INTO District VALUES  ('1324','牧野区','144','null');  
   
INSERT INTO District VALUES  ('1325','新乡县','144','null');  
   
INSERT INTO District VALUES  ('1326','获嘉县','144','null');  
   
INSERT INTO District VALUES  ('1327','原阳县','144','null');  
   
INSERT INTO District VALUES  ('1328','延津县','144','null');  
   
INSERT INTO District VALUES  ('1329','封丘县','144','null');  
   
INSERT INTO District VALUES  ('1330','长垣县','144','null');  
   
INSERT INTO District VALUES  ('1331','卫辉市','144','null');  
   
INSERT INTO District VALUES  ('1332','辉县市','144','null');  
   
INSERT INTO District VALUES  ('1333','魏都区','145','null');  
   
INSERT INTO District VALUES  ('1334','许昌县','145','null');  
   
INSERT INTO District VALUES  ('1335','鄢陵县','145','null');  
   
INSERT INTO District VALUES  ('1336','襄城县','145','null');  
   
INSERT INTO District VALUES  ('1337','禹州市','145','null');  
   
INSERT INTO District VALUES  ('1338','长葛市','145','null');  
   
INSERT INTO District VALUES  ('1339','新华区','146','null');  
   
INSERT INTO District VALUES  ('1340','卫东区','146','null');  
   
INSERT INTO District VALUES  ('1341','石龙区','146','null');  
   
INSERT INTO District VALUES  ('1342','湛河区','146','null');  
   
INSERT INTO District VALUES  ('1343','宝丰县','146','null');  
   
INSERT INTO District VALUES  ('1344','叶县','146','null');  
   
INSERT INTO District VALUES  ('1345','鲁山县','146','null');  
   
INSERT INTO District VALUES  ('1346','郏县','146','null');  
   
INSERT INTO District VALUES  ('1347','舞钢市','146','null');  
   
INSERT INTO District VALUES  ('1348','汝州市','146','null');  
   
INSERT INTO District VALUES  ('1349','浉河区','147','null');  
   
INSERT INTO District VALUES  ('1350','平桥区','147','null');  
   
INSERT INTO District VALUES  ('1351','罗山县','147','null');  
   
INSERT INTO District VALUES  ('1352','光山县','147','null');  
   
INSERT INTO District VALUES  ('1353','新县','147','null');  
   
INSERT INTO District VALUES  ('1354','商城县','147','null');  
   
INSERT INTO District VALUES  ('1355','固始县','147','null');  
   
INSERT INTO District VALUES  ('1356','潢川县','147','null');  
   
INSERT INTO District VALUES  ('1357','淮滨县','147','null');  
   
INSERT INTO District VALUES  ('1358','息县','147','null');  
   
INSERT INTO District VALUES  ('1359','宛城区','148','null');  
   
INSERT INTO District VALUES  ('1360','卧龙区','148','null');  
   
INSERT INTO District VALUES  ('1361','南召县','148','null');  
   
INSERT INTO District VALUES  ('1362','方城县','148','null');  
   
INSERT INTO District VALUES  ('1363','西峡县','148','null');  
   
INSERT INTO District VALUES  ('1364','镇平县','148','null');  
   
INSERT INTO District VALUES  ('1365','内乡县','148','null');  
   
INSERT INTO District VALUES  ('1366','淅川县','148','null');  
   
INSERT INTO District VALUES  ('1367','社旗县','148','null');  
   
INSERT INTO District VALUES  ('1368','唐河县','148','null');  
   
INSERT INTO District VALUES  ('1369','新野县','148','null');  
   
INSERT INTO District VALUES  ('1370','桐柏县','148','null');  
   
INSERT INTO District VALUES  ('1371','邓州市','148','null');  
   
INSERT INTO District VALUES  ('1372','龙亭区','149','null');  
   
INSERT INTO District VALUES  ('1373','顺河回族区','149','null');  
   
INSERT INTO District VALUES  ('1374','鼓楼区','149','null');  
   
INSERT INTO District VALUES  ('1375','禹王台区','149','null');  
   
INSERT INTO District VALUES  ('1376','金明区','149','null');  
   
INSERT INTO District VALUES  ('1377','杞县','149','null');  
   
INSERT INTO District VALUES  ('1378','通许县','149','null');  
   
INSERT INTO District VALUES  ('1379','尉氏县','149','null');  
   
INSERT INTO District VALUES  ('1380','开封县','149','null');  
   
INSERT INTO District VALUES  ('1381','兰考县','149','null');  
   
INSERT INTO District VALUES  ('1382','老城区','150','null');  
   
INSERT INTO District VALUES  ('1383','西工区','150','null');  
   
INSERT INTO District VALUES  ('1384','瀍河回族区','150','null');  
   
INSERT INTO District VALUES  ('1385','涧西区','150','null');  
   
INSERT INTO District VALUES  ('1386','吉利区','150','null');  
   
INSERT INTO District VALUES  ('1387','洛龙区','150','null');  
   
INSERT INTO District VALUES  ('1388','孟津县','150','null');  
   
INSERT INTO District VALUES  ('1389','新安县','150','null');  
   
INSERT INTO District VALUES  ('1390','栾川县','150','null');  
   
INSERT INTO District VALUES  ('1391','嵩县','150','null');  
   
INSERT INTO District VALUES  ('1392','汝阳县','150','null');  
   
INSERT INTO District VALUES  ('1393','宜阳县','150','null');  
   
INSERT INTO District VALUES  ('1394','洛宁县','150','null');  
   
INSERT INTO District VALUES  ('1395','伊川县','150','null');  
   
INSERT INTO District VALUES  ('1396','偃师市','150','null');  
   
INSERT INTO District VALUES  ('1397','解放区','152','null');  
   
INSERT INTO District VALUES  ('1398','中站区','152','null');  
   
INSERT INTO District VALUES  ('1399','马村区','152','null');  
   
INSERT INTO District VALUES  ('1400','山阳区','152','null');  
   
INSERT INTO District VALUES  ('1401','修武县','152','null');  
   
INSERT INTO District VALUES  ('1402','博爱县','152','null');  
   
INSERT INTO District VALUES  ('1403','武陟县','152','null');  
   
INSERT INTO District VALUES  ('1404','温县','152','null');  
   
INSERT INTO District VALUES  ('1405','沁阳市','152','null');  
   
INSERT INTO District VALUES  ('1406','孟州市','152','null');  
   
INSERT INTO District VALUES  ('1407','鹤山区','153','null');  
   
INSERT INTO District VALUES  ('1408','山城区','153','null');  
   
INSERT INTO District VALUES  ('1409','淇滨区','153','null');  
   
INSERT INTO District VALUES  ('1410','浚县','153','null');  
   
INSERT INTO District VALUES  ('1411','淇县','153','null');  
   
INSERT INTO District VALUES  ('1412','华龙区','154','null');  
   
INSERT INTO District VALUES  ('1413','清丰县','154','null');  
   
INSERT INTO District VALUES  ('1414','南乐县','154','null');  
   
INSERT INTO District VALUES  ('1415','范县','154','null');  
   
INSERT INTO District VALUES  ('1416','台前县','154','null');  
   
INSERT INTO District VALUES  ('1417','濮阳县','154','null');  
   
INSERT INTO District VALUES  ('1418','川汇区','155','null');  
   
INSERT INTO District VALUES  ('1419','扶沟县','155','null');  
   
INSERT INTO District VALUES  ('1420','西华县','155','null');  
   
INSERT INTO District VALUES  ('1421','商水县','155','null');  
   
INSERT INTO District VALUES  ('1422','沈丘县','155','null');  
   
INSERT INTO District VALUES  ('1423','郸城县','155','null');  
   
INSERT INTO District VALUES  ('1424','淮阳县','155','null');  
   
INSERT INTO District VALUES  ('1425','太康县','155','null');  
   
INSERT INTO District VALUES  ('1426','鹿邑县','155','null');  
   
INSERT INTO District VALUES  ('1427','项城市','155','null');  
   
INSERT INTO District VALUES  ('1428','源汇区','156','null');  
   
INSERT INTO District VALUES  ('1429','郾城区','156','null');  
   
INSERT INTO District VALUES  ('1430','召陵区','156','null');  
   
INSERT INTO District VALUES  ('1431','舞阳县','156','null');  
   
INSERT INTO District VALUES  ('1432','临颍县','156','null');  
   
INSERT INTO District VALUES  ('1433','驿城区','157','null');  
   
INSERT INTO District VALUES  ('1434','西平县','157','null');  
   
INSERT INTO District VALUES  ('1435','上蔡县','157','null');  
   
INSERT INTO District VALUES  ('1436','平舆县','157','null');  
   
INSERT INTO District VALUES  ('1437','正阳县','157','null');  
   
INSERT INTO District VALUES  ('1438','确山县','157','null');  
   
INSERT INTO District VALUES  ('1439','泌阳县','157','null');  
   
INSERT INTO District VALUES  ('1440','汝南县','157','null');  
   
INSERT INTO District VALUES  ('1441','遂平县','157','null');  
   
INSERT INTO District VALUES  ('1442','新蔡县','157','null');  
   
INSERT INTO District VALUES  ('1443','湖滨区','158','null');  
   
INSERT INTO District VALUES  ('1444','渑池县','158','null');  
   
INSERT INTO District VALUES  ('1445','陕县','158','null');  
   
INSERT INTO District VALUES  ('1446','卢氏县','158','null');  
   
INSERT INTO District VALUES  ('1447','义马市','158','null');  
   
INSERT INTO District VALUES  ('1448','灵宝市','158','null');  
   
INSERT INTO District VALUES  ('1449','江岸区','159','null');  
   
INSERT INTO District VALUES  ('1450','江汉区','159','null');  
   
INSERT INTO District VALUES  ('1451','硚口区','159','null');  
   
INSERT INTO District VALUES  ('1452','汉阳区','159','null');  
   
INSERT INTO District VALUES  ('1453','武昌区','159','null');  
   
INSERT INTO District VALUES  ('1454','青山区','159','null');  
   
INSERT INTO District VALUES  ('1455','洪山区','159','null');  
   
INSERT INTO District VALUES  ('1456','东西湖区','159','null');  
   
INSERT INTO District VALUES  ('1457','汉南区','159','null');  
   
INSERT INTO District VALUES  ('1458','蔡甸区','159','null');  
   
INSERT INTO District VALUES  ('1459','江夏区','159','null');  
   
INSERT INTO District VALUES  ('1460','黄陂区','159','null');  
   
INSERT INTO District VALUES  ('1461','新洲区','159','null');  
   
INSERT INTO District VALUES  ('1462','襄城区','160','null');  
   
INSERT INTO District VALUES  ('1463','樊城区','160','null');  
   
INSERT INTO District VALUES  ('1464','襄阳区','160','null');  
   
INSERT INTO District VALUES  ('1465','南漳县','160','null');  
   
INSERT INTO District VALUES  ('1466','谷城县','160','null');  
   
INSERT INTO District VALUES  ('1467','保康县','160','null');  
   
INSERT INTO District VALUES  ('1468','老河口市','160','null');  
   
INSERT INTO District VALUES  ('1469','枣阳市','160','null');  
   
INSERT INTO District VALUES  ('1470','宜城市','160','null');  
   
INSERT INTO District VALUES  ('1471','梁子湖区','161','null');  
   
INSERT INTO District VALUES  ('1472','华容区','161','null');  
   
INSERT INTO District VALUES  ('1473','鄂城区','161','null');  
   
INSERT INTO District VALUES  ('1474','孝南区','162','null');  
   
INSERT INTO District VALUES  ('1475','孝昌县','162','null');  
   
INSERT INTO District VALUES  ('1476','大悟县','162','null');  
   
INSERT INTO District VALUES  ('1477','云梦县','162','null');  
   
INSERT INTO District VALUES  ('1478','应城市','162','null');  
   
INSERT INTO District VALUES  ('1479','安陆市','162','null');  
   
INSERT INTO District VALUES  ('1480','汉川市','162','null');  
   
INSERT INTO District VALUES  ('1481','黄州区','163','null');  
   
INSERT INTO District VALUES  ('1482','团风县','163','null');  
   
INSERT INTO District VALUES  ('1483','红安县','163','null');  
   
INSERT INTO District VALUES  ('1484','罗田县','163','null');  
   
INSERT INTO District VALUES  ('1485','英山县','163','null');  
   
INSERT INTO District VALUES  ('1486','浠水县','163','null');  
   
INSERT INTO District VALUES  ('1487','蕲春县','163','null');  
   
INSERT INTO District VALUES  ('1488','黄梅县','163','null');  
   
INSERT INTO District VALUES  ('1489','麻城市','163','null');  
   
INSERT INTO District VALUES  ('1490','武穴市','163','null');  
   
INSERT INTO District VALUES  ('1491','黄石港区','164','null');  
   
INSERT INTO District VALUES  ('1492','西塞山区','164','null');  
   
INSERT INTO District VALUES  ('1493','下陆区','164','null');  
   
INSERT INTO District VALUES  ('1494','铁山区','164','null');  
   
INSERT INTO District VALUES  ('1495','阳新县','164','null');  
   
INSERT INTO District VALUES  ('1496','大冶市','164','null');  
   
INSERT INTO District VALUES  ('1497','咸安区','165','null');  
   
INSERT INTO District VALUES  ('1498','嘉鱼县','165','null');  
   
INSERT INTO District VALUES  ('1499','通城县','165','null');  
   
INSERT INTO District VALUES  ('1500','崇阳县','165','null');  
   
INSERT INTO District VALUES  ('1501','通山县','165','null');  
   
INSERT INTO District VALUES  ('1502','赤壁市','165','null');  
   
INSERT INTO District VALUES  ('1503','沙市区','166','null');  
   
INSERT INTO District VALUES  ('1504','荆州区','166','null');  
   
INSERT INTO District VALUES  ('1505','公安县','166','null');  
   
INSERT INTO District VALUES  ('1506','监利县','166','null');  
   
INSERT INTO District VALUES  ('1507','江陵县','166','null');  
   
INSERT INTO District VALUES  ('1508','石首市','166','null');  
   
INSERT INTO District VALUES  ('1509','洪湖市','166','null');  
   
INSERT INTO District VALUES  ('1510','松滋市','166','null');  
   
INSERT INTO District VALUES  ('1511','西陵区','167','null');  
   
INSERT INTO District VALUES  ('1512','伍家岗区','167','null');  
   
INSERT INTO District VALUES  ('1513','点军区','167','null');  
   
INSERT INTO District VALUES  ('1514','猇亭区','167','null');  
   
INSERT INTO District VALUES  ('1515','夷陵区','167','null');  
   
INSERT INTO District VALUES  ('1516','远安县','167','null');  
   
INSERT INTO District VALUES  ('1517','兴山县','167','null');  
   
INSERT INTO District VALUES  ('1518','秭归县','167','null');  
   
INSERT INTO District VALUES  ('1519','长阳土家族自治县','167','null');  
   
INSERT INTO District VALUES  ('1520','五峰土家族自治县','167','null');  
   
INSERT INTO District VALUES  ('1521','宜都市','167','null');  
   
INSERT INTO District VALUES  ('1522','当阳市','167','null');  
   
INSERT INTO District VALUES  ('1523','枝江市','167','null');  
   
INSERT INTO District VALUES  ('1524','恩施市','168','null');  
   
INSERT INTO District VALUES  ('1525','利川市','168','null');  
   
INSERT INTO District VALUES  ('1526','建始县','168','null');  
   
INSERT INTO District VALUES  ('1527','巴东县','168','null');  
   
INSERT INTO District VALUES  ('1528','宣恩县','168','null');  
   
INSERT INTO District VALUES  ('1529','咸丰县','168','null');  
   
INSERT INTO District VALUES  ('1530','来凤县','168','null');  
   
INSERT INTO District VALUES  ('1531','鹤峰县','168','null');  
   
INSERT INTO District VALUES  ('1532','茅箭区','170','null');  
   
INSERT INTO District VALUES  ('1533','张湾区','170','null');  
   
INSERT INTO District VALUES  ('1534','郧县','170','null');  
   
INSERT INTO District VALUES  ('1535','郧西县','170','null');  
   
INSERT INTO District VALUES  ('1536','竹山县','170','null');  
   
INSERT INTO District VALUES  ('1537','竹溪县','170','null');  
   
INSERT INTO District VALUES  ('1538','房县','170','null');  
   
INSERT INTO District VALUES  ('1539','丹江口市','170','null');  
   
INSERT INTO District VALUES  ('1540','曾都区','171','null');  
   
INSERT INTO District VALUES  ('1541','广水市','171','null');  
   
INSERT INTO District VALUES  ('1542','东宝区','172','null');  
   
INSERT INTO District VALUES  ('1543','掇刀区','172','null');  
   
INSERT INTO District VALUES  ('1544','京山县','172','null');  
   
INSERT INTO District VALUES  ('1545','沙洋县','172','null');  
   
INSERT INTO District VALUES  ('1546','钟祥市','172','null');  
   
INSERT INTO District VALUES  ('1547','岳阳楼区','176','null');  
   
INSERT INTO District VALUES  ('1548','云溪区','176','null');  
   
INSERT INTO District VALUES  ('1549','君山区','176','null');  
   
INSERT INTO District VALUES  ('1550','岳阳县','176','null');  
   
INSERT INTO District VALUES  ('1551','华容县','176','null');  
   
INSERT INTO District VALUES  ('1552','湘阴县','176','null');  
   
INSERT INTO District VALUES  ('1553','平江县','176','null');  
   
INSERT INTO District VALUES  ('1554','汨罗市','176','null');  
   
INSERT INTO District VALUES  ('1555','临湘市','176','null');  
   
INSERT INTO District VALUES  ('1556','芙蓉区','177','null');  
   
INSERT INTO District VALUES  ('1557','天心区','177','null');  
   
INSERT INTO District VALUES  ('1558','岳麓区','177','null');  
   
INSERT INTO District VALUES  ('1559','开福区','177','null');  
   
INSERT INTO District VALUES  ('1560','雨花区','177','null');  
   
INSERT INTO District VALUES  ('1561','长沙县','177','null');  
   
INSERT INTO District VALUES  ('1562','望城县','177','null');  
   
INSERT INTO District VALUES  ('1563','宁乡县','177','null');  
   
INSERT INTO District VALUES  ('1564','浏阳市','177','null');  
   
INSERT INTO District VALUES  ('1565','雨湖区','178','null');  
   
INSERT INTO District VALUES  ('1566','岳塘区','178','null');  
   
INSERT INTO District VALUES  ('1567','湘潭县','178','null');  
   
INSERT INTO District VALUES  ('1568','湘乡市','178','null');  
   
INSERT INTO District VALUES  ('1569','韶山市','178','null');  
   
INSERT INTO District VALUES  ('1570','荷塘区','179','null');  
   
INSERT INTO District VALUES  ('1571','芦淞区','179','null');  
   
INSERT INTO District VALUES  ('1572','石峰区','179','null');  
   
INSERT INTO District VALUES  ('1573','天元区','179','null');  
   
INSERT INTO District VALUES  ('1574','株洲县','179','null');  
   
INSERT INTO District VALUES  ('1575','攸县','179','null');  
   
INSERT INTO District VALUES  ('1576','茶陵县','179','null');  
   
INSERT INTO District VALUES  ('1577','炎陵县','179','null');  
   
INSERT INTO District VALUES  ('1578','醴陵市','179','null');  
   
INSERT INTO District VALUES  ('1579','珠晖区','180','null');  
   
INSERT INTO District VALUES  ('1580','雁峰区','180','null');  
   
INSERT INTO District VALUES  ('1581','石鼓区','180','null');  
   
INSERT INTO District VALUES  ('1582','蒸湘区','180','null');  
   
INSERT INTO District VALUES  ('1583','南岳区','180','null');  
   
INSERT INTO District VALUES  ('1584','衡阳县','180','null');  
   
INSERT INTO District VALUES  ('1585','衡南县','180','null');  
   
INSERT INTO District VALUES  ('1586','衡山县','180','null');  
   
INSERT INTO District VALUES  ('1587','衡东县','180','null');  
   
INSERT INTO District VALUES  ('1588','祁东县','180','null');  
   
INSERT INTO District VALUES  ('1589','耒阳市','180','null');  
   
INSERT INTO District VALUES  ('1590','常宁市','180','null');  
   
INSERT INTO District VALUES  ('1591','北湖区','181','null');  
   
INSERT INTO District VALUES  ('1592','苏仙区','181','null');  
   
INSERT INTO District VALUES  ('1593','桂阳县','181','null');  
   
INSERT INTO District VALUES  ('1594','宜章县','181','null');  
   
INSERT INTO District VALUES  ('1595','永兴县','181','null');  
   
INSERT INTO District VALUES  ('1596','嘉禾县','181','null');  
   
INSERT INTO District VALUES  ('1597','临武县','181','null');  
   
INSERT INTO District VALUES  ('1598','汝城县','181','null');  
   
INSERT INTO District VALUES  ('1599','桂东县','181','null');  
   
INSERT INTO District VALUES  ('1600','安仁县','181','null');  
   
INSERT INTO District VALUES  ('1601','资兴市','181','null');  
   
INSERT INTO District VALUES  ('1602','武陵区','182','null');  
   
INSERT INTO District VALUES  ('1603','鼎城区','182','null');  
   
INSERT INTO District VALUES  ('1604','安乡县','182','null');  
   
INSERT INTO District VALUES  ('1605','汉寿县','182','null');  
   
INSERT INTO District VALUES  ('1606','澧县','182','null');  
   
INSERT INTO District VALUES  ('1607','临澧县','182','null');  
   
INSERT INTO District VALUES  ('1608','桃源县','182','null');  
   
INSERT INTO District VALUES  ('1609','石门县','182','null');  
   
INSERT INTO District VALUES  ('1610','津市市','182','null');  
   
INSERT INTO District VALUES  ('1611','资阳区','183','null');  
   
INSERT INTO District VALUES  ('1612','赫山区','183','null');  
   
INSERT INTO District VALUES  ('1613','南县','183','null');  
   
INSERT INTO District VALUES  ('1614','桃江县','183','null');  
   
INSERT INTO District VALUES  ('1615','安化县','183','null');  
   
INSERT INTO District VALUES  ('1616','沅江市','183','null');  
   
INSERT INTO District VALUES  ('1617','娄星区','184','null');  
   
INSERT INTO District VALUES  ('1618','双峰县','184','null');  
   
INSERT INTO District VALUES  ('1619','新化县','184','null');  
   
INSERT INTO District VALUES  ('1620','冷水江市','184','null');  
   
INSERT INTO District VALUES  ('1621','涟源市','184','null');  
   
INSERT INTO District VALUES  ('1622','双清区','185','null');  
   
INSERT INTO District VALUES  ('1623','大祥区','185','null');  
   
INSERT INTO District VALUES  ('1624','北塔区','185','null');  
   
INSERT INTO District VALUES  ('1625','邵东县','185','null');  
   
INSERT INTO District VALUES  ('1626','新邵县','185','null');  
   
INSERT INTO District VALUES  ('1627','邵阳县','185','null');  
   
INSERT INTO District VALUES  ('1628','隆回县','185','null');  
   
INSERT INTO District VALUES  ('1629','洞口县','185','null');  
   
INSERT INTO District VALUES  ('1630','绥宁县','185','null');  
   
INSERT INTO District VALUES  ('1631','新宁县','185','null');  
   
INSERT INTO District VALUES  ('1632','城步苗族自治县','185','null');  
   
INSERT INTO District VALUES  ('1633','武冈市','185','null');  
   
INSERT INTO District VALUES  ('1634','吉首市','186','null');  
   
INSERT INTO District VALUES  ('1635','泸溪县','186','null');  
   
INSERT INTO District VALUES  ('1636','凤凰县','186','null');  
   
INSERT INTO District VALUES  ('1637','花垣县','186','null');  
   
INSERT INTO District VALUES  ('1638','保靖县','186','null');  
   
INSERT INTO District VALUES  ('1639','古丈县','186','null');  
   
INSERT INTO District VALUES  ('1640','永顺县','186','null');  
   
INSERT INTO District VALUES  ('1641','龙山县','186','null');  
   
INSERT INTO District VALUES  ('1642','永定区','187','null');  
   
INSERT INTO District VALUES  ('1643','武陵源区','187','null');  
   
INSERT INTO District VALUES  ('1644','慈利县','187','null');  
   
INSERT INTO District VALUES  ('1645','桑植县','187','null');  
   
INSERT INTO District VALUES  ('1646','鹤城区','188','null');  
   
INSERT INTO District VALUES  ('1647','中方县','188','null');  
   
INSERT INTO District VALUES  ('1648','沅陵县','188','null');  
   
INSERT INTO District VALUES  ('1649','辰溪县','188','null');  
   
INSERT INTO District VALUES  ('1650','溆浦县','188','null');  
   
INSERT INTO District VALUES  ('1651','会同县','188','null');  
   
INSERT INTO District VALUES  ('1652','麻阳苗族自治县','188','null');  
   
INSERT INTO District VALUES  ('1653','新晃侗族自治县','188','null');  
   
INSERT INTO District VALUES  ('1654','芷江侗族自治县','188','null');  
   
INSERT INTO District VALUES  ('1655','靖州苗族侗族自治县','188','null');  
   
INSERT INTO District VALUES  ('1656','通道侗族自治县','188','null');  
   
INSERT INTO District VALUES  ('1657','洪江市','188','null');  
   
INSERT INTO District VALUES  ('1658','零陵区','189','null');  
   
INSERT INTO District VALUES  ('1659','冷水滩区','189','null');  
   
INSERT INTO District VALUES  ('1660','祁阳县','189','null');  
   
INSERT INTO District VALUES  ('1661','东安县','189','null');  
   
INSERT INTO District VALUES  ('1662','双牌县','189','null');  
   
INSERT INTO District VALUES  ('1663','道县','189','null');  
   
INSERT INTO District VALUES  ('1664','江永县','189','null');  
   
INSERT INTO District VALUES  ('1665','宁远县','189','null');  
   
INSERT INTO District VALUES  ('1666','蓝山县','189','null');  
   
INSERT INTO District VALUES  ('1667','新田县','189','null');  
   
INSERT INTO District VALUES  ('1668','江华瑶族自治县','189','null');  
   
INSERT INTO District VALUES  ('1669','从化市','190','null');  
   
INSERT INTO District VALUES  ('1670','荔湾区','190','null');  
   
INSERT INTO District VALUES  ('1671','越秀区','190','null');  
   
INSERT INTO District VALUES  ('1672','海珠区','190','null');  
   
INSERT INTO District VALUES  ('1673','天河区','190','null');  
   
INSERT INTO District VALUES  ('1674','白云区','190','null');  
   
INSERT INTO District VALUES  ('1675','花都区','190','null');  
   
INSERT INTO District VALUES  ('1676','黄埔区','190','null');  
   
INSERT INTO District VALUES  ('1677','萝岗区','190','null');  
   
INSERT INTO District VALUES  ('1678','南沙区','190','null');  
   
INSERT INTO District VALUES  ('1679','番禺区','190','null');  
   
INSERT INTO District VALUES  ('1680','增城市','190','null');  
   
INSERT INTO District VALUES  ('1681','海丰县','191','null');  
   
INSERT INTO District VALUES  ('1682','陆河县','191','null');  
   
INSERT INTO District VALUES  ('1683','陆丰市','191','null');  
   
INSERT INTO District VALUES  ('1684','江城区','192','null');  
   
INSERT INTO District VALUES  ('1685','阳西县','192','null');  
   
INSERT INTO District VALUES  ('1686','阳东县','192','null');  
   
INSERT INTO District VALUES  ('1687','阳春市','192','null');  
   
INSERT INTO District VALUES  ('1688','榕城区','193','null');  
   
INSERT INTO District VALUES  ('1689','揭东县','193','null');  
   
INSERT INTO District VALUES  ('1690','揭西县','193','null');  
   
INSERT INTO District VALUES  ('1691','惠来县','193','null');  
   
INSERT INTO District VALUES  ('1692','普宁市','193','null');  
   
INSERT INTO District VALUES  ('1693','茂南区','194','null');  
   
INSERT INTO District VALUES  ('1694','茂港区','194','null');  
   
INSERT INTO District VALUES  ('1695','电白县','194','null');  
   
INSERT INTO District VALUES  ('1696','高州市','194','null');  
   
INSERT INTO District VALUES  ('1697','化州市','194','null');  
   
INSERT INTO District VALUES  ('1698','信宜市','194','null');  
   
INSERT INTO District VALUES  ('1699','惠城区','195','null');  
   
INSERT INTO District VALUES  ('1700','惠阳区','195','null');  
   
INSERT INTO District VALUES  ('1701','博罗县','195','null');  
   
INSERT INTO District VALUES  ('1702','惠东县','195','null');  
   
INSERT INTO District VALUES  ('1703','龙门县','195','null');  
   
INSERT INTO District VALUES  ('1704','蓬江区','196','null');  
   
INSERT INTO District VALUES  ('1705','江海区','196','null');  
   
INSERT INTO District VALUES  ('1706','新会区','196','null');  
   
INSERT INTO District VALUES  ('1707','台山市','196','null');  
   
INSERT INTO District VALUES  ('1708','开平市','196','null');  
   
INSERT INTO District VALUES  ('1709','鹤山市','196','null');  
   
INSERT INTO District VALUES  ('1710','恩平市','196','null');  
   
INSERT INTO District VALUES  ('1711','武江区','197','null');  
   
INSERT INTO District VALUES  ('1712','浈江区','197','null');  
   
INSERT INTO District VALUES  ('1713','曲江区','197','null');  
   
INSERT INTO District VALUES  ('1714','始兴县','197','null');  
   
INSERT INTO District VALUES  ('1715','仁化县','197','null');  
   
INSERT INTO District VALUES  ('1716','翁源县','197','null');  
   
INSERT INTO District VALUES  ('1717','乳源瑶族自治县','197','null');  
   
INSERT INTO District VALUES  ('1718','新丰县','197','null');  
   
INSERT INTO District VALUES  ('1719','乐昌市','197','null');  
   
INSERT INTO District VALUES  ('1720','南雄市','197','null');  
   
INSERT INTO District VALUES  ('1721','梅江区','198','null');  
   
INSERT INTO District VALUES  ('1722','梅县','198','null');  
   
INSERT INTO District VALUES  ('1723','大埔县','198','null');  
   
INSERT INTO District VALUES  ('1724','丰顺县','198','null');  
   
INSERT INTO District VALUES  ('1725','五华县','198','null');  
   
INSERT INTO District VALUES  ('1726','平远县','198','null');  
   
INSERT INTO District VALUES  ('1727','蕉岭县','198','null');  
   
INSERT INTO District VALUES  ('1728','兴宁市','198','null');  
   
INSERT INTO District VALUES  ('1729','龙湖区','199','null');  
   
INSERT INTO District VALUES  ('1730','金平区','199','null');  
   
INSERT INTO District VALUES  ('1731','濠江区','199','null');  
   
INSERT INTO District VALUES  ('1732','潮阳区','199','null');  
   
INSERT INTO District VALUES  ('1733','潮南区','199','null');  
   
INSERT INTO District VALUES  ('1734','澄海区','199','null');  
   
INSERT INTO District VALUES  ('1735','南澳县','199','null');  
   
INSERT INTO District VALUES  ('1736','罗湖区','200','null');  
   
INSERT INTO District VALUES  ('1737','福田区','200','null');  
   
INSERT INTO District VALUES  ('1738','南山区','200','null');  
   
INSERT INTO District VALUES  ('1739','宝安区','200','null');  
   
INSERT INTO District VALUES  ('1740','龙岗区','200','null');  
   
INSERT INTO District VALUES  ('1741','盐田区','200','null');  
   
INSERT INTO District VALUES  ('1742','香洲区','201','null');  
   
INSERT INTO District VALUES  ('1743','斗门区','201','null');  
   
INSERT INTO District VALUES  ('1744','金湾区','201','null');  
   
INSERT INTO District VALUES  ('1745','禅城区','202','null');  
   
INSERT INTO District VALUES  ('1746','南海区','202','null');  
   
INSERT INTO District VALUES  ('1747','顺德区','202','null');  
   
INSERT INTO District VALUES  ('1748','三水区','202','null');  
   
INSERT INTO District VALUES  ('1749','高明区','202','null');  
   
INSERT INTO District VALUES  ('1750','端州区','203','null');  
   
INSERT INTO District VALUES  ('1751','鼎湖区','203','null');  
   
INSERT INTO District VALUES  ('1752','广宁县','203','null');  
   
INSERT INTO District VALUES  ('1753','怀集县','203','null');  
   
INSERT INTO District VALUES  ('1754','封开县','203','null');  
   
INSERT INTO District VALUES  ('1755','德庆县','203','null');  
   
INSERT INTO District VALUES  ('1756','高要市','203','null');  
   
INSERT INTO District VALUES  ('1757','四会市','203','null');  
   
INSERT INTO District VALUES  ('1758','赤坎区','204','null');  
   
INSERT INTO District VALUES  ('1759','霞山区','204','null');  
   
INSERT INTO District VALUES  ('1760','坡头区','204','null');  
   
INSERT INTO District VALUES  ('1761','麻章区','204','null');  
   
INSERT INTO District VALUES  ('1762','遂溪县','204','null');  
   
INSERT INTO District VALUES  ('1763','徐闻县','204','null');  
   
INSERT INTO District VALUES  ('1764','廉江市','204','null');  
   
INSERT INTO District VALUES  ('1765','雷州市','204','null');  
   
INSERT INTO District VALUES  ('1766','吴川市','204','null');  
   
INSERT INTO District VALUES  ('1767','源城区','206','null');  
   
INSERT INTO District VALUES  ('1768','紫金县','206','null');  
   
INSERT INTO District VALUES  ('1769','龙川县','206','null');  
   
INSERT INTO District VALUES  ('1770','连平县','206','null');  
   
INSERT INTO District VALUES  ('1771','和平县','206','null');  
   
INSERT INTO District VALUES  ('1772','东源县','206','null');  
   
INSERT INTO District VALUES  ('1773','清城区','207','null');  
   
INSERT INTO District VALUES  ('1774','佛冈县','207','null');  
   
INSERT INTO District VALUES  ('1775','阳山县','207','null');  
   
INSERT INTO District VALUES  ('1776','连山壮族瑶族自治县','207','null');  
   
INSERT INTO District VALUES  ('1777','连南瑶族自治县','207','null');  
   
INSERT INTO District VALUES  ('1778','清新县','207','null');  
   
INSERT INTO District VALUES  ('1779','英德市','207','null');  
   
INSERT INTO District VALUES  ('1780','连州市','207','null');  
   
INSERT INTO District VALUES  ('1781','云城区','208','null');  
   
INSERT INTO District VALUES  ('1782','新兴县','208','null');  
   
INSERT INTO District VALUES  ('1783','郁南县','208','null');  
   
INSERT INTO District VALUES  ('1784','云安县','208','null');  
   
INSERT INTO District VALUES  ('1785','罗定市','208','null');  
   
INSERT INTO District VALUES  ('1786','湘桥区','209','null');  
   
INSERT INTO District VALUES  ('1787','潮安县','209','null');  
   
INSERT INTO District VALUES  ('1788','饶平县','209','null');  
   
INSERT INTO District VALUES  ('1789','城关区','211','null');  
   
INSERT INTO District VALUES  ('1790','七里河区','211','null');  
   
INSERT INTO District VALUES  ('1791','西固区','211','null');  
   
INSERT INTO District VALUES  ('1792','安宁区','211','null');  
   
INSERT INTO District VALUES  ('1793','红古区','211','null');  
   
INSERT INTO District VALUES  ('1794','永登县','211','null');  
   
INSERT INTO District VALUES  ('1795','皋兰县','211','null');  
   
INSERT INTO District VALUES  ('1796','榆中县','211','null');  
   
INSERT INTO District VALUES  ('1797','金川区','212','null');  
   
INSERT INTO District VALUES  ('1798','永昌县','212','null');  
   
INSERT INTO District VALUES  ('1799','白银区','213','null');  
   
INSERT INTO District VALUES  ('1800','平川区','213','null');  
   
INSERT INTO District VALUES  ('1801','靖远县','213','null');  
   
INSERT INTO District VALUES  ('1802','会宁县','213','null');  
   
INSERT INTO District VALUES  ('1803','景泰县','213','null');  
   
INSERT INTO District VALUES  ('1804','秦州区','214','null');  
   
INSERT INTO District VALUES  ('1805','麦积区','214','null');  
   
INSERT INTO District VALUES  ('1806','清水县','214','null');  
   
INSERT INTO District VALUES  ('1807','秦安县','214','null');  
   
INSERT INTO District VALUES  ('1808','甘谷县','214','null');  
   
INSERT INTO District VALUES  ('1809','武山县','214','null');  
   
INSERT INTO District VALUES  ('1810','张家川回族自治县','214','null');  
   
INSERT INTO District VALUES  ('1811','凉州区','216','null');  
   
INSERT INTO District VALUES  ('1812','民勤县','216','null');  
   
INSERT INTO District VALUES  ('1813','古浪县','216','null');  
   
INSERT INTO District VALUES  ('1814','天祝藏族自治县','216','null');  
   
INSERT INTO District VALUES  ('1815','甘州区','217','null');  
   
INSERT INTO District VALUES  ('1816','肃南裕固族自治县','217','null');  
   
INSERT INTO District VALUES  ('1817','民乐县','217','null');  
   
INSERT INTO District VALUES  ('1818','临泽县','217','null');  
   
INSERT INTO District VALUES  ('1819','高台县','217','null');  
   
INSERT INTO District VALUES  ('1820','山丹县','217','null');  
   
INSERT INTO District VALUES  ('1821','崆峒区','218','null');  
   
INSERT INTO District VALUES  ('1822','泾川县','218','null');  
   
INSERT INTO District VALUES  ('1823','灵台县','218','null');  
   
INSERT INTO District VALUES  ('1824','崇信县','218','null');  
   
INSERT INTO District VALUES  ('1825','华亭县','218','null');  
   
INSERT INTO District VALUES  ('1826','庄浪县','218','null');  
   
INSERT INTO District VALUES  ('1827','静宁县','218','null');  
   
INSERT INTO District VALUES  ('1828','肃州区','219','null');  
   
INSERT INTO District VALUES  ('1829','金塔县','219','null');  
   
INSERT INTO District VALUES  ('1830','瓜州县','219','null');  
   
INSERT INTO District VALUES  ('1831','肃北蒙古族自治县','219','null');  
   
INSERT INTO District VALUES  ('1832','阿克塞哈萨克族自治县','219','null');  
   
INSERT INTO District VALUES  ('1833','玉门市','219','null');  
   
INSERT INTO District VALUES  ('1834','敦煌市','219','null');  
   
INSERT INTO District VALUES  ('1835','西峰区','220','null');  
   
INSERT INTO District VALUES  ('1836','庆城县','220','null');  
   
INSERT INTO District VALUES  ('1837','环县','220','null');  
   
INSERT INTO District VALUES  ('1838','华池县','220','null');  
   
INSERT INTO District VALUES  ('1839','合水县','220','null');  
   
INSERT INTO District VALUES  ('1840','正宁县','220','null');  
   
INSERT INTO District VALUES  ('1841','宁县','220','null');  
   
INSERT INTO District VALUES  ('1842','镇原县','220','null');  
   
INSERT INTO District VALUES  ('1843','安定区','221','null');  
   
INSERT INTO District VALUES  ('1844','通渭县','221','null');  
   
INSERT INTO District VALUES  ('1845','陇西县','221','null');  
   
INSERT INTO District VALUES  ('1846','渭源县','221','null');  
   
INSERT INTO District VALUES  ('1847','临洮县','221','null');  
   
INSERT INTO District VALUES  ('1848','漳县','221','null');  
   
INSERT INTO District VALUES  ('1849','岷县','221','null');  
   
INSERT INTO District VALUES  ('1850','武都区','222','null');  
   
INSERT INTO District VALUES  ('1851','成县','222','null');  
   
INSERT INTO District VALUES  ('1852','文县','222','null');  
   
INSERT INTO District VALUES  ('1853','宕昌县','222','null');  
   
INSERT INTO District VALUES  ('1854','康县','222','null');  
   
INSERT INTO District VALUES  ('1855','西和县','222','null');  
   
INSERT INTO District VALUES  ('1856','礼县','222','null');  
   
INSERT INTO District VALUES  ('1857','徽县','222','null');  
   
INSERT INTO District VALUES  ('1858','两当县','222','null');  
   
INSERT INTO District VALUES  ('1859','临夏市','223','null');  
   
INSERT INTO District VALUES  ('1860','临夏县','223','null');  
   
INSERT INTO District VALUES  ('1861','康乐县','223','null');  
   
INSERT INTO District VALUES  ('1862','永靖县','223','null');  
   
INSERT INTO District VALUES  ('1863','广河县','223','null');  
   
INSERT INTO District VALUES  ('1864','和政县','223','null');  
   
INSERT INTO District VALUES  ('1865','东乡族自治县','223','null');  
   
INSERT INTO District VALUES  ('1866','积石山保安族东乡族撒拉族自治县','223','null');  
   
INSERT INTO District VALUES  ('1867','合作市','224','null');  
   
INSERT INTO District VALUES  ('1868','临潭县','224','null');  
   
INSERT INTO District VALUES  ('1869','卓尼县','224','null');  
   
INSERT INTO District VALUES  ('1870','舟曲县','224','null');  
   
INSERT INTO District VALUES  ('1871','迭部县','224','null');  
   
INSERT INTO District VALUES  ('1872','玛曲县','224','null');  
   
INSERT INTO District VALUES  ('1873','碌曲县','224','null');  
   
INSERT INTO District VALUES  ('1874','夏河县','224','null');  
   
INSERT INTO District VALUES  ('1875','锦江区','225','null');  
   
INSERT INTO District VALUES  ('1876','青羊区','225','null');  
   
INSERT INTO District VALUES  ('1877','金牛区','225','null');  
   
INSERT INTO District VALUES  ('1878','武侯区','225','null');  
   
INSERT INTO District VALUES  ('1879','成华区','225','null');  
   
INSERT INTO District VALUES  ('1880','龙泉驿区','225','null');  
   
INSERT INTO District VALUES  ('1881','青白江区','225','null');  
   
INSERT INTO District VALUES  ('1882','新都区','225','null');  
   
INSERT INTO District VALUES  ('1883','温江区','225','null');  
   
INSERT INTO District VALUES  ('1884','金堂县','225','null');  
   
INSERT INTO District VALUES  ('1885','双流县','225','null');  
   
INSERT INTO District VALUES  ('1886','郫县','225','null');  
   
INSERT INTO District VALUES  ('1887','大邑县','225','null');  
   
INSERT INTO District VALUES  ('1888','蒲江县','225','null');  
   
INSERT INTO District VALUES  ('1889','新津县','225','null');  
   
INSERT INTO District VALUES  ('1890','都江堰市','225','null');  
   
INSERT INTO District VALUES  ('1891','彭州市','225','null');  
   
INSERT INTO District VALUES  ('1892','邛崃市','225','null');  
   
INSERT INTO District VALUES  ('1893','崇州市','225','null');  
   
INSERT INTO District VALUES  ('1894','东区','226','null');  
   
INSERT INTO District VALUES  ('1895','西区','226','null');  
   
INSERT INTO District VALUES  ('1896','仁和区','226','null');  
   
INSERT INTO District VALUES  ('1897','米易县','226','null');  
   
INSERT INTO District VALUES  ('1898','盐边县','226','null');  
   
INSERT INTO District VALUES  ('1899','自流井区','227','null');  
   
INSERT INTO District VALUES  ('1900','贡井区','227','null');  
   
INSERT INTO District VALUES  ('1901','大安区','227','null');  
   
INSERT INTO District VALUES  ('1902','沿滩区','227','null');  
   
INSERT INTO District VALUES  ('1903','荣县','227','null');  
   
INSERT INTO District VALUES  ('1904','富顺县','227','null');  
   
INSERT INTO District VALUES  ('1905','涪城区','228','null');  
   
INSERT INTO District VALUES  ('1906','游仙区','228','null');  
   
INSERT INTO District VALUES  ('1907','三台县','228','null');  
   
INSERT INTO District VALUES  ('1908','盐亭县','228','null');  
   
INSERT INTO District VALUES  ('1909','安县','228','null');  
   
INSERT INTO District VALUES  ('1910','梓潼县','228','null');  
   
INSERT INTO District VALUES  ('1911','北川羌族自治县','228','null');  
   
INSERT INTO District VALUES  ('1912','平武县','228','null');  
   
INSERT INTO District VALUES  ('1913','江油市','228','null');  
   
INSERT INTO District VALUES  ('1914','顺庆区','229','null');  
   
INSERT INTO District VALUES  ('1915','高坪区','229','null');  
   
INSERT INTO District VALUES  ('1916','嘉陵区','229','null');  
   
INSERT INTO District VALUES  ('1917','南部县','229','null');  
   
INSERT INTO District VALUES  ('1918','营山县','229','null');  
   
INSERT INTO District VALUES  ('1919','蓬安县','229','null');  
   
INSERT INTO District VALUES  ('1920','仪陇县','229','null');  
   
INSERT INTO District VALUES  ('1921','西充县','229','null');  
   
INSERT INTO District VALUES  ('1922','阆中市','229','null');  
   
INSERT INTO District VALUES  ('1923','通川区','230','null');  
   
INSERT INTO District VALUES  ('1924','达县','230','null');  
   
INSERT INTO District VALUES  ('1925','宣汉县','230','null');  
   
INSERT INTO District VALUES  ('1926','开江县','230','null');  
   
INSERT INTO District VALUES  ('1927','大竹县','230','null');  
   
INSERT INTO District VALUES  ('1928','渠县','230','null');  
   
INSERT INTO District VALUES  ('1929','万源市','230','null');  
   
INSERT INTO District VALUES  ('1930','船山区','231','null');  
   
INSERT INTO District VALUES  ('1931','安居区','231','null');  
   
INSERT INTO District VALUES  ('1932','蓬溪县','231','null');  
   
INSERT INTO District VALUES  ('1933','射洪县','231','null');  
   
INSERT INTO District VALUES  ('1934','大英县','231','null');  
   
INSERT INTO District VALUES  ('1935','广安区','232','null');  
   
INSERT INTO District VALUES  ('1936','岳池县','232','null');  
   
INSERT INTO District VALUES  ('1937','武胜县','232','null');  
   
INSERT INTO District VALUES  ('1938','邻水县','232','null');  
   
INSERT INTO District VALUES  ('1939','华蓥市','232','null');  
   
INSERT INTO District VALUES  ('1940','巴州区','233','null');  
   
INSERT INTO District VALUES  ('1941','通江县','233','null');  
   
INSERT INTO District VALUES  ('1942','南江县','233','null');  
   
INSERT INTO District VALUES  ('1943','平昌县','233','null');  
   
INSERT INTO District VALUES  ('1944','江阳区','234','null');  
   
INSERT INTO District VALUES  ('1945','纳溪区','234','null');  
   
INSERT INTO District VALUES  ('1946','龙马潭区','234','null');  
   
INSERT INTO District VALUES  ('1947','泸县','234','null');  
   
INSERT INTO District VALUES  ('1948','合江县','234','null');  
   
INSERT INTO District VALUES  ('1949','叙永县','234','null');  
   
INSERT INTO District VALUES  ('1950','古蔺县','234','null');  
   
INSERT INTO District VALUES  ('1951','翠屏区','235','null');  
   
INSERT INTO District VALUES  ('1952','宜宾县','235','null');  
   
INSERT INTO District VALUES  ('1953','南溪县','235','null');  
   
INSERT INTO District VALUES  ('1954','江安县','235','null');  
   
INSERT INTO District VALUES  ('1955','长宁县','235','null');  
   
INSERT INTO District VALUES  ('1956','高县','235','null');  
   
INSERT INTO District VALUES  ('1957','珙县','235','null');  
   
INSERT INTO District VALUES  ('1958','筠连县','235','null');  
   
INSERT INTO District VALUES  ('1959','兴文县','235','null');  
   
INSERT INTO District VALUES  ('1960','屏山县','235','null');  
   
INSERT INTO District VALUES  ('1961','雁江区','236','null');  
   
INSERT INTO District VALUES  ('1962','安岳县','236','null');  
   
INSERT INTO District VALUES  ('1963','乐至县','236','null');  
   
INSERT INTO District VALUES  ('1964','简阳市','236','null');  
   
INSERT INTO District VALUES  ('1965','市中区','237','null');  
   
INSERT INTO District VALUES  ('1966','东兴区','237','null');  
   
INSERT INTO District VALUES  ('1967','威远县','237','null');  
   
INSERT INTO District VALUES  ('1968','资中县','237','null');  
   
INSERT INTO District VALUES  ('1969','隆昌县','237','null');  
   
INSERT INTO District VALUES  ('1970','市中区','238','null');  
   
INSERT INTO District VALUES  ('1971','沙湾区','238','null');  
   
INSERT INTO District VALUES  ('1972','五通桥区','238','null');  
   
INSERT INTO District VALUES  ('1973','金口河区','238','null');  
   
INSERT INTO District VALUES  ('1974','犍为县','238','null');  
   
INSERT INTO District VALUES  ('1975','井研县','238','null');  
   
INSERT INTO District VALUES  ('1976','夹江县','238','null');  
   
INSERT INTO District VALUES  ('1977','沐川县','238','null');  
   
INSERT INTO District VALUES  ('1978','峨边彝族自治县','238','null');  
   
INSERT INTO District VALUES  ('1979','马边彝族自治县','238','null');  
   
INSERT INTO District VALUES  ('1980','峨眉山市','238','null');  
   
INSERT INTO District VALUES  ('1981','东坡区','239','null');  
   
INSERT INTO District VALUES  ('1982','仁寿县','239','null');  
   
INSERT INTO District VALUES  ('1983','彭山县','239','null');  
   
INSERT INTO District VALUES  ('1984','洪雅县','239','null');  
   
INSERT INTO District VALUES  ('1985','丹棱县','239','null');  
   
INSERT INTO District VALUES  ('1986','青神县','239','null');  
   
INSERT INTO District VALUES  ('1987','西昌市','240','null');  
   
INSERT INTO District VALUES  ('1988','木里藏族自治县','240','null');  
   
INSERT INTO District VALUES  ('1989','盐源县','240','null');  
   
INSERT INTO District VALUES  ('1990','德昌县','240','null');  
   
INSERT INTO District VALUES  ('1991','会理县','240','null');  
   
INSERT INTO District VALUES  ('1992','会东县','240','null');  
   
INSERT INTO District VALUES  ('1993','宁南县','240','null');  
   
INSERT INTO District VALUES  ('1994','普格县','240','null');  
   
INSERT INTO District VALUES  ('1995','布拖县','240','null');  
   
INSERT INTO District VALUES  ('1996','金阳县','240','null');  
   
INSERT INTO District VALUES  ('1997','昭觉县','240','null');  
   
INSERT INTO District VALUES  ('1998','喜德县','240','null');  
   
INSERT INTO District VALUES  ('1999','冕宁县','240','null');  
   
INSERT INTO District VALUES  ('2000','越西县','240','null');  
   
INSERT INTO District VALUES  ('2001','甘洛县','240','null');  
   
INSERT INTO District VALUES  ('2002','美姑县','240','null');  
   
INSERT INTO District VALUES  ('2003','雷波县','240','null');  
   
INSERT INTO District VALUES  ('2004','雨城区','241','null');  
   
INSERT INTO District VALUES  ('2005','名山县','241','null');  
   
INSERT INTO District VALUES  ('2006','荥经县','241','null');  
   
INSERT INTO District VALUES  ('2007','汉源县','241','null');  
   
INSERT INTO District VALUES  ('2008','石棉县','241','null');  
   
INSERT INTO District VALUES  ('2009','天全县','241','null');  
   
INSERT INTO District VALUES  ('2010','芦山县','241','null');  
   
INSERT INTO District VALUES  ('2011','宝兴县','241','null');  
   
INSERT INTO District VALUES  ('2012','康定县','242','null');  
   
INSERT INTO District VALUES  ('2013','泸定县','242','null');  
   
INSERT INTO District VALUES  ('2014','丹巴县','242','null');  
   
INSERT INTO District VALUES  ('2015','九龙县','242','null');  
   
INSERT INTO District VALUES  ('2016','雅江县','242','null');  
   
INSERT INTO District VALUES  ('2017','道孚县','242','null');  
   
INSERT INTO District VALUES  ('2018','炉霍县','242','null');  
   
INSERT INTO District VALUES  ('2019','甘孜县','242','null');  
   
INSERT INTO District VALUES  ('2020','新龙县','242','null');  
   
INSERT INTO District VALUES  ('2021','德格县','242','null');  
   
INSERT INTO District VALUES  ('2022','白玉县','242','null');  
   
INSERT INTO District VALUES  ('2023','石渠县','242','null');  
   
INSERT INTO District VALUES  ('2024','色达县','242','null');  
   
INSERT INTO District VALUES  ('2025','理塘县','242','null');  
   
INSERT INTO District VALUES  ('2026','巴塘县','242','null');  
   
INSERT INTO District VALUES  ('2027','乡城县','242','null');  
   
INSERT INTO District VALUES  ('2028','稻城县','242','null');  
   
INSERT INTO District VALUES  ('2029','得荣县','242','null');  
   
INSERT INTO District VALUES  ('2030','汶川县','243','null');  
   
INSERT INTO District VALUES  ('2031','理县','243','null');  
   
INSERT INTO District VALUES  ('2032','茂县','243','null');  
   
INSERT INTO District VALUES  ('2033','松潘县','243','null');  
   
INSERT INTO District VALUES  ('2034','九寨沟县','243','null');  
   
INSERT INTO District VALUES  ('2035','金川县','243','null');  
   
INSERT INTO District VALUES  ('2036','小金县','243','null');  
   
INSERT INTO District VALUES  ('2037','黑水县','243','null');  
   
INSERT INTO District VALUES  ('2038','马尔康县','243','null');  
   
INSERT INTO District VALUES  ('2039','壤塘县','243','null');  
   
INSERT INTO District VALUES  ('2040','阿坝县','243','null');  
   
INSERT INTO District VALUES  ('2041','若尔盖县','243','null');  
   
INSERT INTO District VALUES  ('2042','红原县','243','null');  
   
INSERT INTO District VALUES  ('2043','旌阳区','244','null');  
   
INSERT INTO District VALUES  ('2044','中江县','244','null');  
   
INSERT INTO District VALUES  ('2045','罗江县','244','null');  
   
INSERT INTO District VALUES  ('2046','广汉市','244','null');  
   
INSERT INTO District VALUES  ('2047','什邡市','244','null');  
   
INSERT INTO District VALUES  ('2048','绵竹市','244','null');  
   
INSERT INTO District VALUES  ('2049','市中区','245','null');  
   
INSERT INTO District VALUES  ('2050','元坝区','245','null');  
   
INSERT INTO District VALUES  ('2051','朝天区','245','null');  
   
INSERT INTO District VALUES  ('2052','旺苍县','245','null');  
   
INSERT INTO District VALUES  ('2053','青川县','245','null');  
   
INSERT INTO District VALUES  ('2054','剑阁县','245','null');  
   
INSERT INTO District VALUES  ('2055','苍溪县','245','null');  
   
INSERT INTO District VALUES  ('2056','南明区','246','null');  
   
INSERT INTO District VALUES  ('2057','云岩区','246','null');  
   
INSERT INTO District VALUES  ('2058','花溪区','246','null');  
   
INSERT INTO District VALUES  ('2059','乌当区','246','null');  
   
INSERT INTO District VALUES  ('2060','白云区','246','null');  
   
INSERT INTO District VALUES  ('2061','小河区','246','null');  
   
INSERT INTO District VALUES  ('2062','开阳县','246','null');  
   
INSERT INTO District VALUES  ('2063','息烽县','246','null');  
   
INSERT INTO District VALUES  ('2064','修文县','246','null');  
   
INSERT INTO District VALUES  ('2065','清镇市','246','null');  
   
INSERT INTO District VALUES  ('2066','红花岗区','247','null');  
   
INSERT INTO District VALUES  ('2067','汇川区','247','null');  
   
INSERT INTO District VALUES  ('2068','遵义县','247','null');  
   
INSERT INTO District VALUES  ('2069','桐梓县','247','null');  
   
INSERT INTO District VALUES  ('2070','绥阳县','247','null');  
   
INSERT INTO District VALUES  ('2071','正安县','247','null');  
   
INSERT INTO District VALUES  ('2072','道真仡佬族苗族自治县','247','null');  
   
INSERT INTO District VALUES  ('2073','务川仡佬族苗族自治县','247','null');  
   
INSERT INTO District VALUES  ('2074','凤冈县','247','null');  
   
INSERT INTO District VALUES  ('2075','湄潭县','247','null');  
   
INSERT INTO District VALUES  ('2076','余庆县','247','null');  
   
INSERT INTO District VALUES  ('2077','习水县','247','null');  
   
INSERT INTO District VALUES  ('2078','赤水市','247','null');  
   
INSERT INTO District VALUES  ('2079','仁怀市','247','null');  
   
INSERT INTO District VALUES  ('2080','西秀区','248','null');  
   
INSERT INTO District VALUES  ('2081','平坝县','248','null');  
   
INSERT INTO District VALUES  ('2082','普定县','248','null');  
   
INSERT INTO District VALUES  ('2083','镇宁布依族苗族自治县','248','null');  
   
INSERT INTO District VALUES  ('2084','关岭布依族苗族自治县','248','null');  
   
INSERT INTO District VALUES  ('2085','紫云苗族布依族自治县','248','null');  
   
INSERT INTO District VALUES  ('2086','都匀市','249','null');  
   
INSERT INTO District VALUES  ('2087','福泉市','249','null');  
   
INSERT INTO District VALUES  ('2088','荔波县','249','null');  
   
INSERT INTO District VALUES  ('2089','贵定县','249','null');  
   
INSERT INTO District VALUES  ('2090','瓮安县','249','null');  
   
INSERT INTO District VALUES  ('2091','独山县','249','null');  
   
INSERT INTO District VALUES  ('2092','平塘县','249','null');  
   
INSERT INTO District VALUES  ('2093','罗甸县','249','null');  
   
INSERT INTO District VALUES  ('2094','长顺县','249','null');  
   
INSERT INTO District VALUES  ('2095','龙里县','249','null');  
   
INSERT INTO District VALUES  ('2096','惠水县','249','null');  
   
INSERT INTO District VALUES  ('2097','三都水族自治县','249','null');  
   
INSERT INTO District VALUES  ('2098','凯里市','250','null');  
   
INSERT INTO District VALUES  ('2099','黄平县','250','null');  
   
INSERT INTO District VALUES  ('2100','施秉县','250','null');  
   
INSERT INTO District VALUES  ('2101','三穗县','250','null');  
   
INSERT INTO District VALUES  ('2102','镇远县','250','null');  
   
INSERT INTO District VALUES  ('2103','岑巩县','250','null');  
   
INSERT INTO District VALUES  ('2104','天柱县','250','null');  
   
INSERT INTO District VALUES  ('2105','锦屏县','250','null');  
   
INSERT INTO District VALUES  ('2106','剑河县','250','null');  
   
INSERT INTO District VALUES  ('2107','台江县','250','null');  
   
INSERT INTO District VALUES  ('2108','黎平县','250','null');  
   
INSERT INTO District VALUES  ('2109','榕江县','250','null');  
   
INSERT INTO District VALUES  ('2110','从江县','250','null');  
   
INSERT INTO District VALUES  ('2111','雷山县','250','null');  
   
INSERT INTO District VALUES  ('2112','麻江县','250','null');  
   
INSERT INTO District VALUES  ('2113','丹寨县','250','null');  
   
INSERT INTO District VALUES  ('2114','铜仁市','251','null');  
   
INSERT INTO District VALUES  ('2115','江口县','251','null');  
   
INSERT INTO District VALUES  ('2116','玉屏侗族自治县','251','null');  
   
INSERT INTO District VALUES  ('2117','石阡县','251','null');  
   
INSERT INTO District VALUES  ('2118','思南县','251','null');  
   
INSERT INTO District VALUES  ('2119','印江土家族苗族自治县','251','null');  
   
INSERT INTO District VALUES  ('2120','德江县','251','null');  
   
INSERT INTO District VALUES  ('2121','沿河土家族自治县','251','null');  
   
INSERT INTO District VALUES  ('2122','松桃苗族自治县','251','null');  
   
INSERT INTO District VALUES  ('2123','万山特区','251','null');  
   
INSERT INTO District VALUES  ('2124','毕节市','252','null');  
   
INSERT INTO District VALUES  ('2125','大方县','252','null');  
   
INSERT INTO District VALUES  ('2126','黔西县','252','null');  
   
INSERT INTO District VALUES  ('2127','金沙县','252','null');  
   
INSERT INTO District VALUES  ('2128','织金县','252','null');  
   
INSERT INTO District VALUES  ('2129','纳雍县','252','null');  
   
INSERT INTO District VALUES  ('2130','威宁彝族回族苗族自治县','252','null');  
   
INSERT INTO District VALUES  ('2131','赫章县','252','null');  
   
INSERT INTO District VALUES  ('2132','钟山区','253','null');  
   
INSERT INTO District VALUES  ('2133','六枝特区','253','null');  
   
INSERT INTO District VALUES  ('2134','水城县','253','null');  
   
INSERT INTO District VALUES  ('2135','盘县','253','null');  
   
INSERT INTO District VALUES  ('2136','兴义市','254','null');  
   
INSERT INTO District VALUES  ('2137','兴仁县','254','null');  
   
INSERT INTO District VALUES  ('2138','普安县','254','null');  
   
INSERT INTO District VALUES  ('2139','晴隆县','254','null');  
   
INSERT INTO District VALUES  ('2140','贞丰县','254','null');  
   
INSERT INTO District VALUES  ('2141','望谟县','254','null');  
   
INSERT INTO District VALUES  ('2142','册亨县','254','null');  
   
INSERT INTO District VALUES  ('2143','安龙县','254','null');  
   
INSERT INTO District VALUES  ('2144','秀英区','255','null');  
   
INSERT INTO District VALUES  ('2145','龙华区','255','null');  
   
INSERT INTO District VALUES  ('2146','琼山区','255','null');  
   
INSERT INTO District VALUES  ('2147','美兰区','255','null');  
   
INSERT INTO District VALUES  ('2148','景洪市','273','null');  
   
INSERT INTO District VALUES  ('2149','勐海县','273','null');  
   
INSERT INTO District VALUES  ('2150','勐腊县','273','null');  
   
INSERT INTO District VALUES  ('2151','瑞丽市','274','null');  
   
INSERT INTO District VALUES  ('2152','潞西市','274','null');  
   
INSERT INTO District VALUES  ('2153','梁河县','274','null');  
   
INSERT INTO District VALUES  ('2154','盈江县','274','null');  
   
INSERT INTO District VALUES  ('2155','陇川县','274','null');  
   
INSERT INTO District VALUES  ('2156','昭阳区','275','null');  
   
INSERT INTO District VALUES  ('2157','鲁甸县','275','null');  
   
INSERT INTO District VALUES  ('2158','巧家县','275','null');  
   
INSERT INTO District VALUES  ('2159','盐津县','275','null');  
   
INSERT INTO District VALUES  ('2160','大关县','275','null');  
   
INSERT INTO District VALUES  ('2161','永善县','275','null');  
   
INSERT INTO District VALUES  ('2162','绥江县','275','null');  
   
INSERT INTO District VALUES  ('2163','镇雄县','275','null');  
   
INSERT INTO District VALUES  ('2164','彝良县','275','null');  
   
INSERT INTO District VALUES  ('2165','威信县','275','null');  
   
INSERT INTO District VALUES  ('2166','水富县','275','null');  
   
INSERT INTO District VALUES  ('2167','五华区','276','null');  
   
INSERT INTO District VALUES  ('2168','盘龙区','276','null');  
   
INSERT INTO District VALUES  ('2169','官渡区','276','null');  
   
INSERT INTO District VALUES  ('2170','西山区','276','null');  
   
INSERT INTO District VALUES  ('2171','东川区','276','null');  
   
INSERT INTO District VALUES  ('2172','呈贡县','276','null');  
   
INSERT INTO District VALUES  ('2173','晋宁县','276','null');  
   
INSERT INTO District VALUES  ('2174','富民县','276','null');  
   
INSERT INTO District VALUES  ('2175','宜良县','276','null');  
   
INSERT INTO District VALUES  ('2176','石林彝族自治县','276','null');  
   
INSERT INTO District VALUES  ('2177','嵩明县','276','null');  
   
INSERT INTO District VALUES  ('2178','禄劝彝族苗族自治县','276','null');  
   
INSERT INTO District VALUES  ('2179','寻甸回族彝族自治县','276','null');  
   
INSERT INTO District VALUES  ('2180','安宁市','276','null');  
   
INSERT INTO District VALUES  ('2181','大理市','277','null');  
   
INSERT INTO District VALUES  ('2182','漾濞彝族自治县','277','null');  
   
INSERT INTO District VALUES  ('2183','祥云县','277','null');  
   
INSERT INTO District VALUES  ('2184','宾川县','277','null');  
   
INSERT INTO District VALUES  ('2185','弥渡县','277','null');  
   
INSERT INTO District VALUES  ('2186','南涧彝族自治县','277','null');  
   
INSERT INTO District VALUES  ('2187','巍山彝族回族自治县','277','null');  
   
INSERT INTO District VALUES  ('2188','永平县','277','null');  
   
INSERT INTO District VALUES  ('2189','云龙县','277','null');  
   
INSERT INTO District VALUES  ('2190','洱源县','277','null');  
   
INSERT INTO District VALUES  ('2191','剑川县','277','null');  
   
INSERT INTO District VALUES  ('2192','鹤庆县','277','null');  
   
INSERT INTO District VALUES  ('2193','个旧市','278','null');  
   
INSERT INTO District VALUES  ('2194','开远市','278','null');  
   
INSERT INTO District VALUES  ('2195','蒙自县','278','null');  
   
INSERT INTO District VALUES  ('2196','屏边苗族自治县','278','null');  
   
INSERT INTO District VALUES  ('2197','建水县','278','null');  
   
INSERT INTO District VALUES  ('2198','石屏县','278','null');  
   
INSERT INTO District VALUES  ('2199','弥勒县','278','null');  
   
INSERT INTO District VALUES  ('2200','泸西县','278','null');  
   
INSERT INTO District VALUES  ('2201','元阳县','278','null');  
   
INSERT INTO District VALUES  ('2202','红河县','278','null');  
   
INSERT INTO District VALUES  ('2203','金平苗族瑶族傣族自治县','278','null');  
   
INSERT INTO District VALUES  ('2204','绿春县','278','null');  
   
INSERT INTO District VALUES  ('2205','河口瑶族自治县','278','null');  
   
INSERT INTO District VALUES  ('2206','麒麟区','279','null');  
   
INSERT INTO District VALUES  ('2207','马龙县','279','null');  
   
INSERT INTO District VALUES  ('2208','陆良县','279','null');  
   
INSERT INTO District VALUES  ('2209','师宗县','279','null');  
   
INSERT INTO District VALUES  ('2210','罗平县','279','null');  
   
INSERT INTO District VALUES  ('2211','富源县','279','null');  
   
INSERT INTO District VALUES  ('2212','会泽县','279','null');  
   
INSERT INTO District VALUES  ('2213','沾益县','279','null');  
   
INSERT INTO District VALUES  ('2214','宣威市','279','null');  
   
INSERT INTO District VALUES  ('2215','隆阳区','280','null');  
   
INSERT INTO District VALUES  ('2216','施甸县','280','null');  
   
INSERT INTO District VALUES  ('2217','腾冲县','280','null');  
   
INSERT INTO District VALUES  ('2218','龙陵县','280','null');  
   
INSERT INTO District VALUES  ('2219','昌宁县','280','null');  
   
INSERT INTO District VALUES  ('2220','文山县','281','null');  
   
INSERT INTO District VALUES  ('2221','砚山县','281','null');  
   
INSERT INTO District VALUES  ('2222','西畴县','281','null');  
   
INSERT INTO District VALUES  ('2223','麻栗坡县','281','null');  
   
INSERT INTO District VALUES  ('2224','马关县','281','null');  
   
INSERT INTO District VALUES  ('2225','丘北县','281','null');  
   
INSERT INTO District VALUES  ('2226','广南县','281','null');  
   
INSERT INTO District VALUES  ('2227','富宁县','281','null');  
   
INSERT INTO District VALUES  ('2228','红塔区','282','null');  
   
INSERT INTO District VALUES  ('2229','江川县','282','null');  
   
INSERT INTO District VALUES  ('2230','澄江县','282','null');  
   
INSERT INTO District VALUES  ('2231','通海县','282','null');  
   
INSERT INTO District VALUES  ('2232','华宁县','282','null');  
   
INSERT INTO District VALUES  ('2233','易门县','282','null');  
   
INSERT INTO District VALUES  ('2234','峨山彝族自治县','282','null');  
   
INSERT INTO District VALUES  ('2235','新平彝族傣族自治县','282','null');  
   
INSERT INTO District VALUES  ('2236','元江哈尼族彝族傣族自治县','282','null');  
   
INSERT INTO District VALUES  ('2237','楚雄市','283','null');  
   
INSERT INTO District VALUES  ('2238','双柏县','283','null');  
   
INSERT INTO District VALUES  ('2239','牟定县','283','null');  
   
INSERT INTO District VALUES  ('2240','南华县','283','null');  
   
INSERT INTO District VALUES  ('2241','姚安县','283','null');  
   
INSERT INTO District VALUES  ('2242','大姚县','283','null');  
   
INSERT INTO District VALUES  ('2243','永仁县','283','null');  
   
INSERT INTO District VALUES  ('2244','元谋县','283','null');  
   
INSERT INTO District VALUES  ('2245','武定县','283','null');  
   
INSERT INTO District VALUES  ('2246','禄丰县','283','null');  
   
INSERT INTO District VALUES  ('2247','思茅区','284','null');  
   
INSERT INTO District VALUES  ('2248','宁洱哈尼族彝族自治县','284','null');  
   
INSERT INTO District VALUES  ('2249','墨江哈尼族自治县','284','null');  
   
INSERT INTO District VALUES  ('2250','景东彝族自治县','284','null');  
   
INSERT INTO District VALUES  ('2251','景谷傣族彝族自治县','284','null');  
   
INSERT INTO District VALUES  ('2252','镇沅彝族哈尼族拉祜族自治县','284','null');  
   
INSERT INTO District VALUES  ('2253','江城哈尼族彝族自治县','284','null');  
   
INSERT INTO District VALUES  ('2254','孟连傣族拉祜族佤族自治县','284','null');  
   
INSERT INTO District VALUES  ('2255','澜沧拉祜族自治县','284','null');  
   
INSERT INTO District VALUES  ('2256','西盟佤族自治县','284','null');  
   
INSERT INTO District VALUES  ('2257','临翔区','285','null');  
   
INSERT INTO District VALUES  ('2258','凤庆县','285','null');  
   
INSERT INTO District VALUES  ('2259','云县','285','null');  
   
INSERT INTO District VALUES  ('2260','永德县','285','null');  
   
INSERT INTO District VALUES  ('2261','镇康县','285','null');  
   
INSERT INTO District VALUES  ('2262','双江拉祜族佤族布朗族傣族自治县','285','null');  
   
INSERT INTO District VALUES  ('2263','耿马傣族佤族自治县','285','null');  
   
INSERT INTO District VALUES  ('2264','沧源佤族自治县','285','null');  
   
INSERT INTO District VALUES  ('2265','泸水县','286','null');  
   
INSERT INTO District VALUES  ('2266','福贡县','286','null');  
   
INSERT INTO District VALUES  ('2267','贡山独龙族怒族自治县','286','null');  
   
INSERT INTO District VALUES  ('2268','兰坪白族普米族自治县','286','null');  
   
INSERT INTO District VALUES  ('2269','香格里拉县','287','null');  
   
INSERT INTO District VALUES  ('2270','德钦县','287','null');  
   
INSERT INTO District VALUES  ('2271','维西傈僳族自治县','287','null');  
   
INSERT INTO District VALUES  ('2272','古城区','288','null');  
   
INSERT INTO District VALUES  ('2273','玉龙纳西族自治县','288','null');  
   
INSERT INTO District VALUES  ('2274','永胜县','288','null');  
   
INSERT INTO District VALUES  ('2275','华坪县','288','null');  
   
INSERT INTO District VALUES  ('2276','宁蒗彝族自治县','288','null');  
   
INSERT INTO District VALUES  ('2277','门源回族自治县','289','null');  
   
INSERT INTO District VALUES  ('2278','祁连县','289','null');  
   
INSERT INTO District VALUES  ('2279','海晏县','289','null');  
   
INSERT INTO District VALUES  ('2280','刚察县','289','null');  
   
INSERT INTO District VALUES  ('2281','城东区','290','null');  
   
INSERT INTO District VALUES  ('2282','城中区','290','null');  
   
INSERT INTO District VALUES  ('2283','城西区','290','null');  
   
INSERT INTO District VALUES  ('2284','城北区','290','null');  
   
INSERT INTO District VALUES  ('2285','大通回族土族自治县','290','null');  
   
INSERT INTO District VALUES  ('2286','湟中县','290','null');  
   
INSERT INTO District VALUES  ('2287','湟源县','290','null');  
   
INSERT INTO District VALUES  ('2288','平安县','291','null');  
   
INSERT INTO District VALUES  ('2289','民和回族土族自治县','291','null');  
   
INSERT INTO District VALUES  ('2290','乐都县','291','null');  
   
INSERT INTO District VALUES  ('2291','互助土族自治县','291','null');  
   
INSERT INTO District VALUES  ('2292','化隆回族自治县','291','null');  
   
INSERT INTO District VALUES  ('2293','循化撒拉族自治县','291','null');  
   
INSERT INTO District VALUES  ('2294','同仁县','292','null');  
   
INSERT INTO District VALUES  ('2295','尖扎县','292','null');  
   
INSERT INTO District VALUES  ('2296','泽库县','292','null');  
   
INSERT INTO District VALUES  ('2297','河南蒙古族自治县','292','null');  
   
INSERT INTO District VALUES  ('2298','共和县','293','null');  
   
INSERT INTO District VALUES  ('2299','同德县','293','null');  
   
INSERT INTO District VALUES  ('2300','贵德县','293','null');  
   
INSERT INTO District VALUES  ('2301','兴海县','293','null');  
   
INSERT INTO District VALUES  ('2302','贵南县','293','null');  
   
INSERT INTO District VALUES  ('2303','玛沁县','294','null');  
   
INSERT INTO District VALUES  ('2304','班玛县','294','null');  
   
INSERT INTO District VALUES  ('2305','甘德县','294','null');  
   
INSERT INTO District VALUES  ('2306','达日县','294','null');  
   
INSERT INTO District VALUES  ('2307','久治县','294','null');  
   
INSERT INTO District VALUES  ('2308','玛多县','294','null');  
   
INSERT INTO District VALUES  ('2309','玉树县','295','null');  
   
INSERT INTO District VALUES  ('2310','杂多县','295','null');  
   
INSERT INTO District VALUES  ('2311','称多县','295','null');  
   
INSERT INTO District VALUES  ('2312','治多县','295','null');  
   
INSERT INTO District VALUES  ('2313','囊谦县','295','null');  
   
INSERT INTO District VALUES  ('2314','曲麻莱县','295','null');  
   
INSERT INTO District VALUES  ('2315','格尔木市','296','null');  
   
INSERT INTO District VALUES  ('2316','德令哈市','296','null');  
   
INSERT INTO District VALUES  ('2317','乌兰县','296','null');  
   
INSERT INTO District VALUES  ('2318','都兰县','296','null');  
   
INSERT INTO District VALUES  ('2319','天峻县','296','null');  
   
INSERT INTO District VALUES  ('2320','新城区','297','null');  
   
INSERT INTO District VALUES  ('2321','碑林区','297','null');  
   
INSERT INTO District VALUES  ('2322','莲湖区','297','null');  
   
INSERT INTO District VALUES  ('2323','灞桥区','297','null');  
   
INSERT INTO District VALUES  ('2324','未央区','297','null');  
   
INSERT INTO District VALUES  ('2325','雁塔区','297','null');  
   
INSERT INTO District VALUES  ('2326','阎良区','297','null');  
   
INSERT INTO District VALUES  ('2327','临潼区','297','null');  
   
INSERT INTO District VALUES  ('2328','长安区','297','null');  
   
INSERT INTO District VALUES  ('2329','蓝田县','297','null');  
   
INSERT INTO District VALUES  ('2330','周至县','297','null');  
   
INSERT INTO District VALUES  ('2331','户县','297','null');  
   
INSERT INTO District VALUES  ('2332','高陵县','297','null');  
   
INSERT INTO District VALUES  ('2333','秦都区','298','null');  
   
INSERT INTO District VALUES  ('2334','杨陵区','298','null');  
   
INSERT INTO District VALUES  ('2335','渭城区','298','null');  
   
INSERT INTO District VALUES  ('2336','三原县','298','null');  
   
INSERT INTO District VALUES  ('2337','泾阳县','298','null');  
   
INSERT INTO District VALUES  ('2338','乾县','298','null');  
   
INSERT INTO District VALUES  ('2339','礼泉县','298','null');  
   
INSERT INTO District VALUES  ('2340','永寿县','298','null');  
   
INSERT INTO District VALUES  ('2341','彬县','298','null');  
   
INSERT INTO District VALUES  ('2342','长武县','298','null');  
   
INSERT INTO District VALUES  ('2343','旬邑县','298','null');  
   
INSERT INTO District VALUES  ('2344','淳化县','298','null');  
   
INSERT INTO District VALUES  ('2345','武功县','298','null');  
   
INSERT INTO District VALUES  ('2346','兴平市','298','null');  
   
INSERT INTO District VALUES  ('2347','宝塔区','299','null');  
   
INSERT INTO District VALUES  ('2348','延长县','299','null');  
   
INSERT INTO District VALUES  ('2349','延川县','299','null');  
   
INSERT INTO District VALUES  ('2350','子长县','299','null');  
   
INSERT INTO District VALUES  ('2351','安塞县','299','null');  
   
INSERT INTO District VALUES  ('2352','志丹县','299','null');  
   
INSERT INTO District VALUES  ('2353','吴起县','299','null');  
   
INSERT INTO District VALUES  ('2354','甘泉县','299','null');  
   
INSERT INTO District VALUES  ('2355','富县','299','null');  
   
INSERT INTO District VALUES  ('2356','洛川县','299','null');  
   
INSERT INTO District VALUES  ('2357','宜川县','299','null');  
   
INSERT INTO District VALUES  ('2358','黄龙县','299','null');  
   
INSERT INTO District VALUES  ('2359','黄陵县','299','null');  
   
INSERT INTO District VALUES  ('2360','榆阳区','300','null');  
   
INSERT INTO District VALUES  ('2361','神木县','300','null');  
   
INSERT INTO District VALUES  ('2362','府谷县','300','null');  
   
INSERT INTO District VALUES  ('2363','横山县','300','null');  
   
INSERT INTO District VALUES  ('2364','靖边县','300','null');  
   
INSERT INTO District VALUES  ('2365','定边县','300','null');  
   
INSERT INTO District VALUES  ('2366','绥德县','300','null');  
   
INSERT INTO District VALUES  ('2367','米脂县','300','null');  
   
INSERT INTO District VALUES  ('2368','佳县','300','null');  
   
INSERT INTO District VALUES  ('2369','吴堡县','300','null');  
   
INSERT INTO District VALUES  ('2370','清涧县','300','null');  
   
INSERT INTO District VALUES  ('2371','子洲县','300','null');  
   
INSERT INTO District VALUES  ('2372','临渭区','301','null');  
   
INSERT INTO District VALUES  ('2373','华县','301','null');  
   
INSERT INTO District VALUES  ('2374','潼关县','301','null');  
   
INSERT INTO District VALUES  ('2375','大荔县','301','null');  
   
INSERT INTO District VALUES  ('2376','合阳县','301','null');  
   
INSERT INTO District VALUES  ('2377','澄城县','301','null');  
   
INSERT INTO District VALUES  ('2378','蒲城县','301','null');  
   
INSERT INTO District VALUES  ('2379','白水县','301','null');  
   
INSERT INTO District VALUES  ('2380','富平县','301','null');  
   
INSERT INTO District VALUES  ('2381','韩城市','301','null');  
   
INSERT INTO District VALUES  ('2382','华阴市','301','null');  
   
INSERT INTO District VALUES  ('2383','商州区','302','null');  
   
INSERT INTO District VALUES  ('2384','洛南县','302','null');  
   
INSERT INTO District VALUES  ('2385','丹凤县','302','null');  
   
INSERT INTO District VALUES  ('2386','商南县','302','null');  
   
INSERT INTO District VALUES  ('2387','山阳县','302','null');  
   
INSERT INTO District VALUES  ('2388','镇安县','302','null');  
   
INSERT INTO District VALUES  ('2389','柞水县','302','null');  
   
INSERT INTO District VALUES  ('2390','汉滨区','303','null');  
   
INSERT INTO District VALUES  ('2391','汉阴县','303','null');  
   
INSERT INTO District VALUES  ('2392','石泉县','303','null');  
   
INSERT INTO District VALUES  ('2393','宁陕县','303','null');  
   
INSERT INTO District VALUES  ('2394','紫阳县','303','null');  
   
INSERT INTO District VALUES  ('2395','岚皋县','303','null');  
   
INSERT INTO District VALUES  ('2396','平利县','303','null');  
   
INSERT INTO District VALUES  ('2397','镇坪县','303','null');  
   
INSERT INTO District VALUES  ('2398','旬阳县','303','null');  
   
INSERT INTO District VALUES  ('2399','白河县','303','null');  
   
INSERT INTO District VALUES  ('2400','汉台区','304','null');  
   
INSERT INTO District VALUES  ('2401','南郑县','304','null');  
   
INSERT INTO District VALUES  ('2402','城固县','304','null');  
   
INSERT INTO District VALUES  ('2403','洋县','304','null');  
   
INSERT INTO District VALUES  ('2404','西乡县','304','null');  
   
INSERT INTO District VALUES  ('2405','勉县','304','null');  
   
INSERT INTO District VALUES  ('2406','宁强县','304','null');  
   
INSERT INTO District VALUES  ('2407','略阳县','304','null');  
   
INSERT INTO District VALUES  ('2408','镇巴县','304','null');  
   
INSERT INTO District VALUES  ('2409','留坝县','304','null');  
   
INSERT INTO District VALUES  ('2410','佛坪县','304','null');  
   
INSERT INTO District VALUES  ('2411','渭滨区','305','null');  
   
INSERT INTO District VALUES  ('2412','金台区','305','null');  
   
INSERT INTO District VALUES  ('2413','陈仓区','305','null');  
   
INSERT INTO District VALUES  ('2414','凤翔县','305','null');  
   
INSERT INTO District VALUES  ('2415','岐山县','305','null');  
   
INSERT INTO District VALUES  ('2416','扶风县','305','null');  
   
INSERT INTO District VALUES  ('2417','眉县','305','null');  
   
INSERT INTO District VALUES  ('2418','陇县','305','null');  
   
INSERT INTO District VALUES  ('2419','千阳县','305','null');  
   
INSERT INTO District VALUES  ('2420','麟游县','305','null');  
   
INSERT INTO District VALUES  ('2421','凤县','305','null');  
   
INSERT INTO District VALUES  ('2422','太白县','305','null');  
   
INSERT INTO District VALUES  ('2423','王益区','306','null');  
   
INSERT INTO District VALUES  ('2424','印台区','306','null');  
   
INSERT INTO District VALUES  ('2425','耀州区','306','null');  
   
INSERT INTO District VALUES  ('2426','宜君县','306','null');  
   
INSERT INTO District VALUES  ('2427','港口区','307','null');  
   
INSERT INTO District VALUES  ('2428','防城区','307','null');  
   
INSERT INTO District VALUES  ('2429','上思县','307','null');  
   
INSERT INTO District VALUES  ('2430','东兴市','307','null');  
   
INSERT INTO District VALUES  ('2431','兴宁区','308','null');  
   
INSERT INTO District VALUES  ('2432','青秀区','308','null');  
   
INSERT INTO District VALUES  ('2433','江南区','308','null');  
   
INSERT INTO District VALUES  ('2434','西乡塘区','308','null');  
   
INSERT INTO District VALUES  ('2435','良庆区','308','null');  
   
INSERT INTO District VALUES  ('2436','邕宁区','308','null');  
   
INSERT INTO District VALUES  ('2437','武鸣县','308','null');  
   
INSERT INTO District VALUES  ('2438','隆安县','308','null');  
   
INSERT INTO District VALUES  ('2439','马山县','308','null');  
   
INSERT INTO District VALUES  ('2440','上林县','308','null');  
   
INSERT INTO District VALUES  ('2441','宾阳县','308','null');  
   
INSERT INTO District VALUES  ('2442','横县','308','null');  
   
INSERT INTO District VALUES  ('2443','江洲区','309','null');  
   
INSERT INTO District VALUES  ('2444','扶绥县','309','null');  
   
INSERT INTO District VALUES  ('2445','宁明县','309','null');  
   
INSERT INTO District VALUES  ('2446','龙州县','309','null');  
   
INSERT INTO District VALUES  ('2447','大新县','309','null');  
   
INSERT INTO District VALUES  ('2448','天等县','309','null');  
   
INSERT INTO District VALUES  ('2449','凭祥市','309','null');  
   
INSERT INTO District VALUES  ('2450','兴宾区','310','null');  
   
INSERT INTO District VALUES  ('2451','忻城县','310','null');  
   
INSERT INTO District VALUES  ('2452','象州县','310','null');  
   
INSERT INTO District VALUES  ('2453','武宣县','310','null');  
   
INSERT INTO District VALUES  ('2454','金秀瑶族自治县','310','null');  
   
INSERT INTO District VALUES  ('2455','合山市','310','null');  
   
INSERT INTO District VALUES  ('2456','城中区','311','null');  
   
INSERT INTO District VALUES  ('2457','鱼峰区','311','null');  
   
INSERT INTO District VALUES  ('2458','柳南区','311','null');  
   
INSERT INTO District VALUES  ('2459','柳北区','311','null');  
   
INSERT INTO District VALUES  ('2460','柳江县','311','null');  
   
INSERT INTO District VALUES  ('2461','柳城县','311','null');  
   
INSERT INTO District VALUES  ('2462','鹿寨县','311','null');  
   
INSERT INTO District VALUES  ('2463','融安县','311','null');  
   
INSERT INTO District VALUES  ('2464','融水苗族自治县','311','null');  
   
INSERT INTO District VALUES  ('2465','三江侗族自治县','311','null');  
   
INSERT INTO District VALUES  ('2466','秀峰区','312','null');  
   
INSERT INTO District VALUES  ('2467','叠彩区','312','null');  
   
INSERT INTO District VALUES  ('2468','象山区','312','null');  
   
INSERT INTO District VALUES  ('2469','七星区','312','null');  
   
INSERT INTO District VALUES  ('2470','雁山区','312','null');  
   
INSERT INTO District VALUES  ('2471','阳朔县','312','null');  
   
INSERT INTO District VALUES  ('2472','临桂县','312','null');  
   
INSERT INTO District VALUES  ('2473','灵川县','312','null');  
   
INSERT INTO District VALUES  ('2474','全州县','312','null');  
   
INSERT INTO District VALUES  ('2475','兴安县','312','null');  
   
INSERT INTO District VALUES  ('2476','永福县','312','null');  
   
INSERT INTO District VALUES  ('2477','灌阳县','312','null');  
   
INSERT INTO District VALUES  ('2478','龙胜各族自治县','312','null');  
   
INSERT INTO District VALUES  ('2479','资源县','312','null');  
   
INSERT INTO District VALUES  ('2480','平乐县','312','null');  
   
INSERT INTO District VALUES  ('2481','荔浦县','312','null');  
   
INSERT INTO District VALUES  ('2482','恭城瑶族自治县','312','null');  
   
INSERT INTO District VALUES  ('2483','万秀区','313','null');  
   
INSERT INTO District VALUES  ('2484','碟山区','313','null');  
   
INSERT INTO District VALUES  ('2485','长洲区','313','null');  
   
INSERT INTO District VALUES  ('2486','苍梧县','313','null');  
   
INSERT INTO District VALUES  ('2487','藤县','313','null');  
   
INSERT INTO District VALUES  ('2488','蒙山县','313','null');  
   
INSERT INTO District VALUES  ('2489','岑溪市','313','null');  
   
INSERT INTO District VALUES  ('2490','八步区','314','null');  
   
INSERT INTO District VALUES  ('2491','昭平县','314','null');  
   
INSERT INTO District VALUES  ('2492','钟山县','314','null');  
   
INSERT INTO District VALUES  ('2493','富川瑶族自治县','314','null');  
   
INSERT INTO District VALUES  ('2494','港北区','315','null');  
   
INSERT INTO District VALUES  ('2495','港南区','315','null');  
   
INSERT INTO District VALUES  ('2496','覃塘区','315','null');  
   
INSERT INTO District VALUES  ('2497','平南县','315','null');  
   
INSERT INTO District VALUES  ('2498','桂平市','315','null');  
   
INSERT INTO District VALUES  ('2499','玉州区','316','null');  
   
INSERT INTO District VALUES  ('2500','容县','316','null');  
   
INSERT INTO District VALUES  ('2501','陆川县','316','null');  
   
INSERT INTO District VALUES  ('2502','博白县','316','null');  
   
INSERT INTO District VALUES  ('2503','兴业县','316','null');  
   
INSERT INTO District VALUES  ('2504','北流市','316','null');  
   
INSERT INTO District VALUES  ('2505','右江区','317','null');  
   
INSERT INTO District VALUES  ('2506','田阳县','317','null');  
   
INSERT INTO District VALUES  ('2507','田东县','317','null');  
   
INSERT INTO District VALUES  ('2508','平果县','317','null');  
   
INSERT INTO District VALUES  ('2509','德保县','317','null');  
   
INSERT INTO District VALUES  ('2510','靖西县','317','null');  
   
INSERT INTO District VALUES  ('2511','那坡县','317','null');  
   
INSERT INTO District VALUES  ('2512','凌云县','317','null');  
   
INSERT INTO District VALUES  ('2513','乐业县','317','null');  
   
INSERT INTO District VALUES  ('2514','田林县','317','null');  
   
INSERT INTO District VALUES  ('2515','西林县','317','null');  
   
INSERT INTO District VALUES  ('2516','隆林各族自治县','317','null');  
   
INSERT INTO District VALUES  ('2517','钦南区','318','null');  
   
INSERT INTO District VALUES  ('2518','钦北区','318','null');  
   
INSERT INTO District VALUES  ('2519','灵山县','318','null');  
   
INSERT INTO District VALUES  ('2520','浦北县','318','null');  
   
INSERT INTO District VALUES  ('2521','金城江区','319','null');  
   
INSERT INTO District VALUES  ('2522','南丹县','319','null');  
   
INSERT INTO District VALUES  ('2523','天峨县','319','null');  
   
INSERT INTO District VALUES  ('2524','凤山县','319','null');  
   
INSERT INTO District VALUES  ('2525','东兰县','319','null');  
   
INSERT INTO District VALUES  ('2526','罗城仫佬族自治县','319','null');  
   
INSERT INTO District VALUES  ('2527','环江毛南族自治县','319','null');  
   
INSERT INTO District VALUES  ('2528','巴马瑶族自治县','319','null');  
   
INSERT INTO District VALUES  ('2529','都安瑶族自治县','319','null');  
   
INSERT INTO District VALUES  ('2530','大化瑶族自治县','319','null');  
   
INSERT INTO District VALUES  ('2531','宜州市','319','null');  
   
INSERT INTO District VALUES  ('2532','海城区','320','null');  
   
INSERT INTO District VALUES  ('2533','银海区','320','null');  
   
INSERT INTO District VALUES  ('2534','铁山港区','320','null');  
   
INSERT INTO District VALUES  ('2535','合浦县','320','null');  
   
INSERT INTO District VALUES  ('2536','城关区','321','null');  
   
INSERT INTO District VALUES  ('2537','林周县','321','null');  
   
INSERT INTO District VALUES  ('2538','当雄县','321','null');  
   
INSERT INTO District VALUES  ('2539','尼木县','321','null');  
   
INSERT INTO District VALUES  ('2540','曲水县','321','null');  
   
INSERT INTO District VALUES  ('2541','堆龙德庆县','321','null');  
   
INSERT INTO District VALUES  ('2542','达孜县','321','null');  
   
INSERT INTO District VALUES  ('2543','墨竹工卡县','321','null');  
   
INSERT INTO District VALUES  ('2544','日喀则市','322','null');  
   
INSERT INTO District VALUES  ('2545','南木林县','322','null');  
   
INSERT INTO District VALUES  ('2546','江孜县','322','null');  
   
INSERT INTO District VALUES  ('2547','定日县','322','null');  
   
INSERT INTO District VALUES  ('2548','萨迦县','322','null');  
   
INSERT INTO District VALUES  ('2549','拉孜县','322','null');  
   
INSERT INTO District VALUES  ('2550','昂仁县','322','null');  
   
INSERT INTO District VALUES  ('2551','谢通门县','322','null');  
   
INSERT INTO District VALUES  ('2552','白朗县','322','null');  
   
INSERT INTO District VALUES  ('2553','仁布县','322','null');  
   
INSERT INTO District VALUES  ('2554','康马县','322','null');  
   
INSERT INTO District VALUES  ('2555','定结县','322','null');  
   
INSERT INTO District VALUES  ('2556','仲巴县','322','null');  
   
INSERT INTO District VALUES  ('2557','亚东县','322','null');  
   
INSERT INTO District VALUES  ('2558','吉隆县','322','null');  
   
INSERT INTO District VALUES  ('2559','聂拉木县','322','null');  
   
INSERT INTO District VALUES  ('2560','萨嘎县','322','null');  
   
INSERT INTO District VALUES  ('2561','岗巴县','322','null');  
   
INSERT INTO District VALUES  ('2562','乃东县','323','null');  
   
INSERT INTO District VALUES  ('2563','扎囊县','323','null');  
   
INSERT INTO District VALUES  ('2564','贡嘎县','323','null');  
   
INSERT INTO District VALUES  ('2565','桑日县','323','null');  
   
INSERT INTO District VALUES  ('2566','琼结县','323','null');  
   
INSERT INTO District VALUES  ('2567','曲松县','323','null');  
   
INSERT INTO District VALUES  ('2568','措美县','323','null');  
   
INSERT INTO District VALUES  ('2569','洛扎县','323','null');  
   
INSERT INTO District VALUES  ('2570','加查县','323','null');  
   
INSERT INTO District VALUES  ('2571','隆子县','323','null');  
   
INSERT INTO District VALUES  ('2572','错那县','323','null');  
   
INSERT INTO District VALUES  ('2573','浪卡子县','323','null');  
   
INSERT INTO District VALUES  ('2574','林芝县','324','null');  
   
INSERT INTO District VALUES  ('2575','工布江达县','324','null');  
   
INSERT INTO District VALUES  ('2576','米林县','324','null');  
   
INSERT INTO District VALUES  ('2577','墨脱县','324','null');  
   
INSERT INTO District VALUES  ('2578','波密县','324','null');  
   
INSERT INTO District VALUES  ('2579','察隅县','324','null');  
   
INSERT INTO District VALUES  ('2580','朗县','324','null');  
   
INSERT INTO District VALUES  ('2581','昌都县','325','null');  
   
INSERT INTO District VALUES  ('2582','江达县','325','null');  
   
INSERT INTO District VALUES  ('2583','贡觉县','325','null');  
   
INSERT INTO District VALUES  ('2584','类乌齐县','325','null');  
   
INSERT INTO District VALUES  ('2585','丁青县','325','null');  
   
INSERT INTO District VALUES  ('2586','察雅县','325','null');  
   
INSERT INTO District VALUES  ('2587','八宿县','325','null');  
   
INSERT INTO District VALUES  ('2588','左贡县','325','null');  
   
INSERT INTO District VALUES  ('2589','芒康县','325','null');  
   
INSERT INTO District VALUES  ('2590','洛隆县','325','null');  
   
INSERT INTO District VALUES  ('2591','边坝县','325','null');  
   
INSERT INTO District VALUES  ('2592','那曲县','326','null');  
   
INSERT INTO District VALUES  ('2593','嘉黎县','326','null');  
   
INSERT INTO District VALUES  ('2594','比如县','326','null');  
   
INSERT INTO District VALUES  ('2595','聂荣县','326','null');  
   
INSERT INTO District VALUES  ('2596','安多县','326','null');  
   
INSERT INTO District VALUES  ('2597','申扎县','326','null');  
   
INSERT INTO District VALUES  ('2598','索县','326','null');  
   
INSERT INTO District VALUES  ('2599','班戈县','326','null');  
   
INSERT INTO District VALUES  ('2600','巴青县','326','null');  
   
INSERT INTO District VALUES  ('2601','尼玛县','326','null');  
   
INSERT INTO District VALUES  ('2602','普兰县','327','null');  
   
INSERT INTO District VALUES  ('2603','札达县','327','null');  
   
INSERT INTO District VALUES  ('2604','噶尔县','327','null');  
   
INSERT INTO District VALUES  ('2605','日土县','327','null');  
   
INSERT INTO District VALUES  ('2606','革吉县','327','null');  
   
INSERT INTO District VALUES  ('2607','改则县','327','null');  
   
INSERT INTO District VALUES  ('2608','措勤县','327','null');  
   
INSERT INTO District VALUES  ('2609','兴庆区','328','null');  
   
INSERT INTO District VALUES  ('2610','西夏区','328','null');  
   
INSERT INTO District VALUES  ('2611','金凤区','328','null');  
   
INSERT INTO District VALUES  ('2612','永宁县','328','null');  
   
INSERT INTO District VALUES  ('2613','贺兰县','328','null');  
   
INSERT INTO District VALUES  ('2614','灵武市','328','null');  
   
INSERT INTO District VALUES  ('2615','大武口区','329','null');  
   
INSERT INTO District VALUES  ('2616','惠农区','329','null');  
   
INSERT INTO District VALUES  ('2617','平罗县','329','null');  
   
INSERT INTO District VALUES  ('2618','利通区','330','null');  
   
INSERT INTO District VALUES  ('2619','盐池县','330','null');  
   
INSERT INTO District VALUES  ('2620','同心县','330','null');  
   
INSERT INTO District VALUES  ('2621','青铜峡市','330','null');  
   
INSERT INTO District VALUES  ('2622','原州区','331','null');  
   
INSERT INTO District VALUES  ('2623','西吉县','331','null');  
   
INSERT INTO District VALUES  ('2624','隆德县','331','null');  
   
INSERT INTO District VALUES  ('2625','泾源县','331','null');  
   
INSERT INTO District VALUES  ('2626','彭阳县','331','null');  
   
INSERT INTO District VALUES  ('2627','沙坡头区','332','null');  
   
INSERT INTO District VALUES  ('2628','中宁县','332','null');  
   
INSERT INTO District VALUES  ('2629','海原县','332','null');  
   
INSERT INTO District VALUES  ('2630','塔城市','333','null');  
   
INSERT INTO District VALUES  ('2631','乌苏市','333','null');  
   
INSERT INTO District VALUES  ('2632','额敏县','333','null');  
   
INSERT INTO District VALUES  ('2633','沙湾县','333','null');  
   
INSERT INTO District VALUES  ('2634','托里县','333','null');  
   
INSERT INTO District VALUES  ('2635','裕民县','333','null');  
   
INSERT INTO District VALUES  ('2636','和布克赛尔蒙古自治县','333','null');  
   
INSERT INTO District VALUES  ('2637','哈密市','334','null');  
   
INSERT INTO District VALUES  ('2638','巴里坤哈萨克自治县','334','null');  
   
INSERT INTO District VALUES  ('2639','伊吾县','334','null');  
   
INSERT INTO District VALUES  ('2640','和田市','335','null');  
   
INSERT INTO District VALUES  ('2641','和田县','335','null');  
   
INSERT INTO District VALUES  ('2642','墨玉县','335','null');  
   
INSERT INTO District VALUES  ('2643','皮山县','335','null');  
   
INSERT INTO District VALUES  ('2644','洛浦县','335','null');  
   
INSERT INTO District VALUES  ('2645','策勒县','335','null');  
   
INSERT INTO District VALUES  ('2646','于田县','335','null');  
   
INSERT INTO District VALUES  ('2647','民丰县','335','null');  
   
INSERT INTO District VALUES  ('2648','阿勒泰市','336','null');  
   
INSERT INTO District VALUES  ('2649','布尔津县','336','null');  
   
INSERT INTO District VALUES  ('2650','富蕴县','336','null');  
   
INSERT INTO District VALUES  ('2651','福海县','336','null');  
   
INSERT INTO District VALUES  ('2652','哈巴河县','336','null');  
   
INSERT INTO District VALUES  ('2653','青河县','336','null');  
   
INSERT INTO District VALUES  ('2654','吉木乃县','336','null');  
   
INSERT INTO District VALUES  ('2655','阿图什市','337','null');  
   
INSERT INTO District VALUES  ('2656','阿克陶县','337','null');  
   
INSERT INTO District VALUES  ('2657','阿合奇县','337','null');  
   
INSERT INTO District VALUES  ('2658','乌恰县','337','null');  
   
INSERT INTO District VALUES  ('2659','博乐市','338','null');  
   
INSERT INTO District VALUES  ('2660','精河县','338','null');  
   
INSERT INTO District VALUES  ('2661','温泉县','338','null');  
   
INSERT INTO District VALUES  ('2662','独山子区','339','null');  
   
INSERT INTO District VALUES  ('2663','克拉玛依区','339','null');  
   
INSERT INTO District VALUES  ('2664','白碱滩区','339','null');  
   
INSERT INTO District VALUES  ('2665','乌尔禾区','339','null');  
   
INSERT INTO District VALUES  ('2666','天山区','340','null');  
   
INSERT INTO District VALUES  ('2667','沙依巴克区','340','null');  
   
INSERT INTO District VALUES  ('2668','新市区','340','null');  
   
INSERT INTO District VALUES  ('2669','水磨沟区','340','null');  
   
INSERT INTO District VALUES  ('2670','头屯河区','340','null');  
   
INSERT INTO District VALUES  ('2671','达坂城区','340','null');  
   
INSERT INTO District VALUES  ('2672','米东区','340','null');  
   
INSERT INTO District VALUES  ('2673','乌鲁木齐县','340','null');  
   
INSERT INTO District VALUES  ('2674','昌吉市','342','null');  
   
INSERT INTO District VALUES  ('2675','阜康市','342','null');  
   
INSERT INTO District VALUES  ('2676','呼图壁县','342','null');  
   
INSERT INTO District VALUES  ('2677','玛纳斯县','342','null');  
   
INSERT INTO District VALUES  ('2678','奇台县','342','null');  
   
INSERT INTO District VALUES  ('2679','吉木萨尔县','342','null');  
   
INSERT INTO District VALUES  ('2680','木垒哈萨克自治县','342','null');  
   
INSERT INTO District VALUES  ('2681','吐鲁番市','344','null');  
   
INSERT INTO District VALUES  ('2682','鄯善县','344','null');  
   
INSERT INTO District VALUES  ('2683','托克逊县','344','null');  
   
INSERT INTO District VALUES  ('2684','库尔勒市','345','null');  
   
INSERT INTO District VALUES  ('2685','轮台县','345','null');  
   
INSERT INTO District VALUES  ('2686','尉犁县','345','null');  
   
INSERT INTO District VALUES  ('2687','若羌县','345','null');  
   
INSERT INTO District VALUES  ('2688','且末县','345','null');  
   
INSERT INTO District VALUES  ('2689','焉耆回族自治县','345','null');  
   
INSERT INTO District VALUES  ('2690','和静县','345','null');  
   
INSERT INTO District VALUES  ('2691','和硕县','345','null');  
   
INSERT INTO District VALUES  ('2692','博湖县','345','null');  
   
INSERT INTO District VALUES  ('2693','阿克苏市','346','null');  
   
INSERT INTO District VALUES  ('2694','温宿县','346','null');  
   
INSERT INTO District VALUES  ('2695','库车县','346','null');  
   
INSERT INTO District VALUES  ('2696','沙雅县','346','null');  
   
INSERT INTO District VALUES  ('2697','新和县','346','null');  
   
INSERT INTO District VALUES  ('2698','拜城县','346','null');  
   
INSERT INTO District VALUES  ('2699','乌什县','346','null');  
   
INSERT INTO District VALUES  ('2700','阿瓦提县','346','null');  
   
INSERT INTO District VALUES  ('2701','柯坪县','346','null');  
   
INSERT INTO District VALUES  ('2702','喀什市','348','null');  
   
INSERT INTO District VALUES  ('2703','疏附县','348','null');  
   
INSERT INTO District VALUES  ('2704','疏勒县','348','null');  
   
INSERT INTO District VALUES  ('2705','英吉沙县','348','null');  
   
INSERT INTO District VALUES  ('2706','泽普县','348','null');  
   
INSERT INTO District VALUES  ('2707','莎车县','348','null');  
   
INSERT INTO District VALUES  ('2708','叶城县','348','null');  
   
INSERT INTO District VALUES  ('2709','麦盖提县','348','null');  
   
INSERT INTO District VALUES  ('2710','岳普湖县','348','null');  
   
INSERT INTO District VALUES  ('2711','伽师县','348','null');  
   
INSERT INTO District VALUES  ('2712','巴楚县','348','null');  
   
INSERT INTO District VALUES  ('2713','塔什库尔干塔吉克自治县','348','null');  
   
INSERT INTO District VALUES  ('2714','伊宁市','350','null');  
   
INSERT INTO District VALUES  ('2715','奎屯市','350','null');  
   
INSERT INTO District VALUES  ('2716','伊宁县','350','null');  
   
INSERT INTO District VALUES  ('2717','察布查尔锡伯自治县','350','null');  
   
INSERT INTO District VALUES  ('2718','霍城县','350','null');  
   
INSERT INTO District VALUES  ('2719','巩留县','350','null');  
   
INSERT INTO District VALUES  ('2720','新源县','350','null');  
   
INSERT INTO District VALUES  ('2721','昭苏县','350','null');  
   
INSERT INTO District VALUES  ('2722','特克斯县','350','null');  
   
INSERT INTO District VALUES  ('2723','尼勒克县','350','null');  
   
INSERT INTO District VALUES  ('2724','海拉尔区','351','null');  
   
INSERT INTO District VALUES  ('2725','阿荣旗','351','null');  
   
INSERT INTO District VALUES  ('2726','莫力达瓦达斡尔族自治旗','351','null');  
   
INSERT INTO District VALUES  ('2727','鄂伦春自治旗','351','null');  
   
INSERT INTO District VALUES  ('2728','鄂温克族自治旗','351','null');  
   
INSERT INTO District VALUES  ('2729','陈巴尔虎旗','351','null');  
   
INSERT INTO District VALUES  ('2730','新巴尔虎左旗','351','null');  
   
INSERT INTO District VALUES  ('2731','新巴尔虎右旗','351','null');  
   
INSERT INTO District VALUES  ('2732','满洲里市','351','null');  
   
INSERT INTO District VALUES  ('2733','牙克石市','351','null');  
   
INSERT INTO District VALUES  ('2734','扎兰屯市','351','null');  
   
INSERT INTO District VALUES  ('2735','额尔古纳市','351','null');  
   
INSERT INTO District VALUES  ('2736','根河市','351','null');  
   
INSERT INTO District VALUES  ('2737','新城区','352','null');  
   
INSERT INTO District VALUES  ('2738','回民区','352','null');  
   
INSERT INTO District VALUES  ('2739','玉泉区','352','null');  
   
INSERT INTO District VALUES  ('2740','赛罕区','352','null');  
   
INSERT INTO District VALUES  ('2741','土默特左旗','352','null');  
   
INSERT INTO District VALUES  ('2742','托克托县','352','null');  
   
INSERT INTO District VALUES  ('2743','和林格尔县','352','null');  
   
INSERT INTO District VALUES  ('2744','清水河县','352','null');  
   
INSERT INTO District VALUES  ('2745','武川县','352','null');  
   
INSERT INTO District VALUES  ('2746','东河区','353','null');  
   
INSERT INTO District VALUES  ('2747','昆都仑区','353','null');  
   
INSERT INTO District VALUES  ('2748','青山区','353','null');  
   
INSERT INTO District VALUES  ('2749','石拐区','353','null');  
   
INSERT INTO District VALUES  ('2750','白云鄂博矿区','353','null');  
   
INSERT INTO District VALUES  ('2751','九原区','353','null');  
   
INSERT INTO District VALUES  ('2752','土默特右旗','353','null');  
   
INSERT INTO District VALUES  ('2753','固阳县','353','null');  
   
INSERT INTO District VALUES  ('2754','达尔罕茂明安联合旗','353','null');  
   
INSERT INTO District VALUES  ('2755','海勃湾区','354','null');  
   
INSERT INTO District VALUES  ('2756','海南区','354','null');  
   
INSERT INTO District VALUES  ('2757','乌达区','354','null');  
   
INSERT INTO District VALUES  ('2758','集宁区','355','null');  
   
INSERT INTO District VALUES  ('2759','卓资县','355','null');  
   
INSERT INTO District VALUES  ('2760','化德县','355','null');  
   
INSERT INTO District VALUES  ('2761','商都县','355','null');  
   
INSERT INTO District VALUES  ('2762','兴和县','355','null');  
   
INSERT INTO District VALUES  ('2763','凉城县','355','null');  
   
INSERT INTO District VALUES  ('2764','察哈尔右翼前旗','355','null');  
   
INSERT INTO District VALUES  ('2765','察哈尔右翼中旗','355','null');  
   
INSERT INTO District VALUES  ('2766','察哈尔右翼后旗','355','null');  
   
INSERT INTO District VALUES  ('2767','四子王旗','355','null');  
   
INSERT INTO District VALUES  ('2768','丰镇市','355','null');  
   
INSERT INTO District VALUES  ('2769','科尔沁区','356','null');  
   
INSERT INTO District VALUES  ('2770','科尔沁左翼中旗','356','null');  
   
INSERT INTO District VALUES  ('2771','科尔沁左翼后旗','356','null');  
   
INSERT INTO District VALUES  ('2772','开鲁县','356','null');  
   
INSERT INTO District VALUES  ('2773','库伦旗','356','null');  
   
INSERT INTO District VALUES  ('2774','奈曼旗','356','null');  
   
INSERT INTO District VALUES  ('2775','扎鲁特旗','356','null');  
   
INSERT INTO District VALUES  ('2776','霍林郭勒市','356','null');  
   
INSERT INTO District VALUES  ('2777','红山区','357','null');  
   
INSERT INTO District VALUES  ('2778','元宝山区','357','null');  
   
INSERT INTO District VALUES  ('2779','松山区','357','null');  
   
INSERT INTO District VALUES  ('2780','阿鲁科尔沁旗','357','null');  
   
INSERT INTO District VALUES  ('2781','巴林左旗','357','null');  
   
INSERT INTO District VALUES  ('2782','巴林右旗','357','null');  
   
INSERT INTO District VALUES  ('2783','林西县','357','null');  
   
INSERT INTO District VALUES  ('2784','克什克腾旗','357','null');  
   
INSERT INTO District VALUES  ('2785','翁牛特旗','357','null');  
   
INSERT INTO District VALUES  ('2786','喀喇沁旗','357','null');  
   
INSERT INTO District VALUES  ('2787','宁城县','357','null');  
   
INSERT INTO District VALUES  ('2788','敖汉旗','357','null');  
   
INSERT INTO District VALUES  ('2789','东胜区','358','null');  
   
INSERT INTO District VALUES  ('2790','达拉特旗','358','null');  
   
INSERT INTO District VALUES  ('2791','准格尔旗','358','null');  
   
INSERT INTO District VALUES  ('2792','鄂托克前旗','358','null');  
   
INSERT INTO District VALUES  ('2793','鄂托克旗','358','null');  
   
INSERT INTO District VALUES  ('2794','杭锦旗','358','null');  
   
INSERT INTO District VALUES  ('2795','乌审旗','358','null');  
   
INSERT INTO District VALUES  ('2796','伊金霍洛旗','358','null');  
   
INSERT INTO District VALUES  ('2797','临河区','359','null');  
   
INSERT INTO District VALUES  ('2798','五原县','359','null');  
   
INSERT INTO District VALUES  ('2799','磴口县','359','null');  
   
INSERT INTO District VALUES  ('2800','乌拉特前旗','359','null');  
   
INSERT INTO District VALUES  ('2801','乌拉特中旗','359','null');  
   
INSERT INTO District VALUES  ('2802','乌拉特后旗','359','null');  
   
INSERT INTO District VALUES  ('2803','杭锦后旗','359','null');  
   
INSERT INTO District VALUES  ('2804','二连浩特市','360','null');  
   
INSERT INTO District VALUES  ('2805','锡林浩特市','360','null');  
   
INSERT INTO District VALUES  ('2806','阿巴嘎旗','360','null');  
   
INSERT INTO District VALUES  ('2807','苏尼特左旗','360','null');  
   
INSERT INTO District VALUES  ('2808','苏尼特右旗','360','null');  
   
INSERT INTO District VALUES  ('2809','东乌珠穆沁旗','360','null');  
   
INSERT INTO District VALUES  ('2810','西乌珠穆沁旗','360','null');  
   
INSERT INTO District VALUES  ('2811','太仆寺旗','360','null');  
   
INSERT INTO District VALUES  ('2812','镶黄旗','360','null');  
   
INSERT INTO District VALUES  ('2813','正镶白旗','360','null');  
   
INSERT INTO District VALUES  ('2814','正蓝旗','360','null');  
   
INSERT INTO District VALUES  ('2815','多伦县','360','null');  
   
INSERT INTO District VALUES  ('2816','乌兰浩特市','361','null');  
   
INSERT INTO District VALUES  ('2817','阿尔山市','361','null');  
   
INSERT INTO District VALUES  ('2818','科尔沁右翼前旗','361','null');  
   
INSERT INTO District VALUES  ('2819','科尔沁右翼中旗','361','null');  
   
INSERT INTO District VALUES  ('2820','扎赉特旗','361','null');  
   
INSERT INTO District VALUES  ('2821','突泉县','361','null');  
   
INSERT INTO District VALUES  ('2822','阿拉善左旗','362','null');  
   
INSERT INTO District VALUES  ('2823','阿拉善右旗','362','null');  
   
INSERT INTO District VALUES  ('2824','额济纳旗','362','null');  
   
 
