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

CREATE TABLE disease_case(
`disease_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`disease_name` varchar(10) NOT NULL COMMENT '疾病名称',
`character_a` varchar(4) COMMENT '体表特征值',
`character_b` varchar(4) COMMENT '头部特征值',
`character_c` varchar(4) COMMENT '腮部特征值',
`character_d` varchar(4) COMMENT '腹部特征值',
`character_e` varchar(4) COMMENT '鳞片特征值',
`character_f` varchar(4) COMMENT '鱼鳍特征值',
`character_g` varchar(4) COMMENT '肌肉特征值',
`character_h` varchar(4) COMMENT '肠道特征值',
 PRIMARY KEY (disease_id),
key idx_disease(disease_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疾病特征表';

CREATE TABLE disease_weight(
`weight_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`weight_disease` int NOT NULL COMMENT '对应疾病编号',
`weight_name` varchar(10) NOT NULL COMMENT '对应疾病名称',
`weight_a` varchar(4) COMMENT '体表特征值权值',
`weight_b` varchar(4) COMMENT '头部特征值权值',
`weight_c` varchar(4) COMMENT '腮部特征值权值',
`weight_d` varchar(4) COMMENT '腹部特征值权值',
`weight_e` varchar(4) COMMENT '鳞片特征值权值',
`weight_f` varchar(4) COMMENT '鱼鳍特征值权值',
`weight_g` varchar(4) COMMENT '肌肉特征值权值',
`weight_h` varchar(4) COMMENT '肠道特征值权值',
 PRIMARY KEY (weight_id),
key idx_weight(weight_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疾病特征权值表';

CREATE TABLE treatment_case(
`case_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`object_id`  varchar(10) COMMENT '诊断对象id',
`behave` varchar(120) COMMENT '表现描述',
`disease_id` int COMMENT '疾病id',
`disease_name` varchar(20) COMMENT '疾病名称',
`disease_desc` varchar(120) COMMENT '疾病描述',
`treatment` varchar(255) COMMENT '治疗方法',
 PRIMARY KEY (case_id),
key idx_case(case_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='治疗方案表';

CREATE TABLE behave(
`behave_id` varchar(4) NOT NULL COMMENT '行为表现标号disease_character',
`behave_desc` varchar(120) COMMENT '行为描述',
`behave_value` int COMMENT '行为量化的值',
PRIMARY KEY (behave_id),
key idx_behave(behave_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行为量化表';

CREATE TABLE behave(
`behave_id` varchar(4) NOT NULL COMMENT '行为表现标号disease_character',
`behave_desc` varchar(120) COMMENT '行为描述',
`behave_part` varchar(4) COMMENT '描述部位',
`behave_value` int COMMENT '行为量化的值',
PRIMARY KEY (behave_id),
key idx_behave(behave_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行为量化表';

--插入数据
insert into device_data(device_id,ph_data,tds_data,temp_data)
values("0001",8.00,1.23,21.5);

insert into user_info(user_id,user_pwd,user_dev,user_email)
values("admin01","123456","0001","123456@qq.com");

insert into behave(behave_id,behave_desc,behave_part,behave_value)
values("A01","体色发黑","体表",1),("A02","体色苍白","体表",1),("A03","背鳍或臀鳍至尾鳍的体色呈白色","体表",1),("A04","鱼体局部、全部出血发炎明显","体表",1),("A05","鱼体两侧出血或充血","体表",1),
("B01","头部乌黑","头部",1),("B02","头部充血","头部",1),("B03","口腔充血","头部",1),("B04","唇肿胀、口腔溃烂","头部",1),("B05","口部溃烂、粘液分泌","头部",1),
("C01","鳃盖开天窗","腮部",1),("C02","鳃盖张开","腮部",1),("C03","鳃盖出血","腮部",1),("C04","鰓丝粘液多","腮部",1),("C05","鰓丝腐烂","腮部",1),
("D01","腹部膨大","腹部",1),("D02","腹水","腹部",1),("D03","腹部膨大、肛门红肿外凸","腹部",1),("D04","腹水、肛门红肿外凸","腹部",1),
("E01","鳞片脱落","鳞片",1),("E02","腹部两侧表皮腐烂","鳞片",1),("E03","鳞片张开似松球基部积水","鳞片",1),("E04","鳞片竖起，鳞下有线形虫体","鳞片",1),("E05","鳞片竖起，鳞下有胞囊","鳞片",1),
("F01","蛀鳍","鱼鳍",1),("F02","鳍基出血","鱼鳍",1),("F03","鱼鳍上有胞囊","鱼鳍",1),("F04","鱼鳍上有白色小点状胞囊","鱼鳍",1),("F05","鳍条有许多黑色小结节","鱼鳍",1),
("G01","肌肉充血呈红色","肌肉",1),("G02","肌肉出血呈暗红色","肌肉",1),("G03","肌肉点状或块状出血","肌肉",1),("G04","肌肉腐烂形成小坑甚至露出骨骼和内脏","肌肉",1),
("H01","肠道充血不腐烂","肠道",1),("H02","肠道充血发炎","肠道",1),("H03","肠道糜烂","肠道",1),("H04","肠道无食、充满积液","肠道",1),("H05","前肠粗大肠壁呈白色糜烂状","肠道",1);