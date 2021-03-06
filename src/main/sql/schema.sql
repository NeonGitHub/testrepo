--数据库初始化脚本
--连接数据库
mysql -uroot -p
--创建数据库
CREATE DATABASE fishbowl;
--使用数据库
use fishbowl;
--创建表
CREATE TABLE user_info(
`user_id` varchar(20) NOT NULL COMMENT '用户名',
`user_pwd` varchar(20) NOT NULL COMMENT '密码',
`user_dev` varchar(20) NOT NULL COMMENT '设备号',
`user_email` varchar(20) NOT NULL COMMENT '邮箱',
`user_picture` varchar(120) COMMENT '头像',
`user_permission` tinyint NOT NULL COMMENT '权限',
PRIMARY KEY (user_id),
key idx_dev(user_dev)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE device_data(
`data_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`device_id` varchar(20) NOT NULL COMMENT '设备号',
`ph_data` double NOT NULL COMMENT 'PH值',
`tds_data` double NOT NULL COMMENT 'TDS值',
`temp_data` double NOT NULL COMMENT '温度值',
`upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '传入时间',
PRIMARY KEY (data_id),
key idx_dev(device_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备表';

CREATE TABLE device_warn(
`device_id` varchar(20) NOT NULL COMMENT '设备号',
`ph_max` double NOT NULL COMMENT 'PH值最大',
`ph_min` double NOT NULL COMMENT 'PH值最小',
`tds_max` double NOT NULL COMMENT 'TDS值最大',
`tds_min` double NOT NULL COMMENT 'TDS值最小',
`temp_max` double NOT NULL COMMENT '温度值最大',
`temp_min` double NOT NULL COMMENT '温度值最小',
PRIMARY KEY (device_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备警告表';

CREATE TABLE disease_desc(
`disease_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`disease_name` varchar(10) NOT NULL COMMENT '疾病名称',
`character_a` tinyint COMMENT '体表特征值',
`character_b` tinyint COMMENT '头部特征值',
`character_c` tinyint COMMENT '腮部特征值',
`character_d` tinyint COMMENT '腹部特征值',
`character_e` tinyint COMMENT '鳞片特征值',
`character_f` tinyint COMMENT '鱼鳍特征值',
`character_g` tinyint COMMENT '肌肉特征值',
`character_h` tinyint COMMENT '肠道特征值',
 PRIMARY KEY (disease_id),
key idx_disease(disease_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疾病特征表';


CREATE TABLE disease_weight(
`weight_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`weight_disease` int NOT NULL COMMENT '对应疾病编号',
`weight_name` varchar(10) NOT NULL COMMENT '对应疾病名称',
`weight_a` double COMMENT '体表特征值权值',
`weight_b` double COMMENT '头部特征值权值',
`weight_c` double COMMENT '腮部特征值权值',
`weight_d` double COMMENT '腹部特征值权值',
`weight_e` double COMMENT '鳞片特征值权值',
`weight_f` double COMMENT '鱼鳍特征值权值',
`weight_g` double COMMENT '肌肉特征值权值',
`weight_h` double COMMENT '肠道特征值权值',
 PRIMARY KEY (weight_id),
key idx_weight(weight_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疾病特征权值表暂时没用';

CREATE TABLE treatment_case(
`case_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`case_author` varchar(20) NOT NULL COMMENT '添加案例的用户',
`fish_name`  varchar(20) NOT NULL COMMENT '诊断对象id',
`ph_data` double NOT NULL COMMENT 'PH值',
`tds_data` double NOT NULL COMMENT 'TDS值',
`temp_data` double NOT NULL COMMENT '温度值',
`disease_id` int UNSIGNED NOT NULL COMMENT '疾病id',
`disease_name` varchar(10) NOT NULL COMMENT '疾病名称',
`treatment` varchar(255) NOT NULL COMMENT '治疗方法',
PRIMARY KEY (case_id),
key idx_case(case_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='治疗方案表';

CREATE TABLE treatment_check(
`case_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`case_author` varchar(20) NOT NULL COMMENT '添加案例的用户',
`fish_name`  varchar(20) NOT NULL COMMENT '诊断对象id',
`ph_data` double NOT NULL COMMENT 'PH值',
`tds_data` double NOT NULL COMMENT 'TDS值',
`temp_data` double NOT NULL COMMENT '温度值',
`disease_id` int UNSIGNED NOT NULL COMMENT '疾病id',
`disease_name` varchar(10) NOT NULL COMMENT '疾病名称',
`treatment` varchar(255) NOT NULL COMMENT '治疗方法',
PRIMARY KEY (case_id),
key idx_case(case_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待审核治疗方案表';

CREATE TABLE fish_type(
`fish_id`  int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '诊断对象id',
`fish_name`  varchar(10) NOT NULL COMMENT '诊断对象名称',
PRIMARY KEY (fish_id),
key idx_type(fish_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='鱼种表';

CREATE TABLE disease_case(
`disease_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '疾病id',
`disease_name` varchar(10) NOT NULL COMMENT '疾病名称',
`disease_show` varchar(120) NOT NULL COMMENT '疾病表现描述',
`disease_reason` varchar(120) NOT NULL COMMENT '疾病原因',
PRIMARY KEY(disease_id),
key idx_name(disease_name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疾病描述表';


CREATE TABLE behave(
`behave_id` varchar(4) NOT NULL COMMENT '行为表现标号disease_character_a~h',
`behave_desc` varchar(120) COMMENT '行为描述',
`behave_part` varchar(4) COMMENT '描述部位',
`behave_value` int COMMENT '行为量化的值',
PRIMARY KEY (behave_id),
key idx_behave(behave_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行为量化表';

--插入模拟传感器的数据`
insert into device_data(device_id,ph_data,tds_data,temp_data)
values("0001",8.00,1.23,21.5);
--插入用户数据
insert into user_info(user_id,user_pwd,user_dev,user_email,user_permission)
values("admin01","123456","0000","admin@qq.com","1");
("user01","123456","0001","user@qq.com","0");

--插入行为数据
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("A01","体色发黑","体表",100),("A02","体色苍白","体表",101),("A03","背鳍或臀鳍至尾鳍的体色呈白色","体表",102),("A04","鱼体局部、全部出血发炎明显","体表",103),("A05","鱼体两侧出血或充血","体表",104);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("B01","头部乌黑","头部",100),("B02","头部充血","头部",101),("B03","口腔充血","头部",102),("B04","唇肿胀、口腔溃烂","头部",103),("B05","口部溃烂、粘液分泌","头部",104);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("C01","鳃盖开天窗","腮部",100),("C02","鳃盖张开","腮部",101),("C03","鳃盖出血","腮部",102),("C04","鰓丝粘液多","腮部",103),("C05","鰓丝腐烂","腮部",104);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("D01","腹部膨大","腹部",100),("D02","腹水","腹部",101),("D03","腹部膨大、肛门红肿外凸","腹部",102),("D04","腹水、肛门红肿外凸","腹部",103);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("E01","鳞片脱落","鳞片",100),("E02","腹部两侧表皮腐烂","鳞片",101),("E03","鳞片张开似松球基部积水","鳞片",102),("E04","鳞片竖起，鳞下有线形虫体","鳞片",103),("E05","鳞片竖起，鳞下有胞囊","鳞片",104);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("F01","蛀鳍","鱼鳍",100),("F02","鳍基出血","鱼鳍",101),("F03","鱼鳍上有胞囊","鱼鳍",102),("F04","鱼鳍上有白色小点状胞囊","鱼鳍",103),("F05","鳍条有许多黑色小结节","鱼鳍",104);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("G01","肌肉充血呈红色","肌肉",100),("G02","肌肉出血呈暗红色","肌肉",101),("G03","肌肉点状或块状出血","肌肉",102),("G04","肌肉腐烂形成小坑甚至露出骨骼和内脏","肌肉",103);
insert into behave(behave_id,behave_desc,behave_part,behave_value) values("H01","肠道充血不腐烂","肠道",100),("H02","肠道充血发炎","肠道",101),("H03","肠道糜烂","肠道",102),("H04","肠道无食、充满积液","肠道",103),("H05","前肠粗大肠壁呈白色糜烂状","肠道",104);
--插入鱼种数据
insert into fish_type(fish_name)
values("金鱼"),("银龙鱼"),("鹦鹉鱼"),("锦鲤"),("印尼虎鱼"),("孔雀鱼");

