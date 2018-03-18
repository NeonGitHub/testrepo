--数据库初始化脚本
--连接数据库
mysql -uroot -p
--创建数据库
CREATE DATABASE fishbowl;
--使用数据库
use fishbowl;
--创建表
CREATE TABLE user_info(
`user_id` varchar(120) NOT NULL COMMENT '用户名',
`user_pwd` varchar(120) NOT NULL COMMENT '密码',
`user_dev` varchar(120) NOT NULL COMMENT '设备号',
`user_email` varchar(120) COMMENT '邮箱',
PRIMARY KEY (user_id),
key idx_dev(user_dev)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE device_data(
`data_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '数据记录自增主键',
`dev_id` varchar(120) NOT NULL COMMENT '设备号',
`ph_data` double NOT NULL COMMENT 'PH值',
`tds_data` double NOT NULL COMMENT 'TDS值',
`temp_data` double NOT NULL COMMENT '温度值',
`upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '传入时间',
PRIMARY KEY (data_id),
key idx_dev(dev_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备表';


CREATE TABLE fish_case(
`case_id` int NOT NULL COMMENT '案例编号',
`fish_name` varchar(120) NOT NULL COMMENT '鱼的种类',
`ph_min` double NOT NULL COMMENT '适应的最小的ph值',
`ph_max` double NOT NULL COMMENT '适应的最大的ph值',
`temp_min` double NOT NULL COMMENT '适应的最小温度值',
`temp_max` double NOT NULL COMMENT '适应的最大温度值',
`details` varchar(255) COMMENT '解决方案',
PRIMARY KEY (case_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='鱼类案例表';