CREATE TABLE user_info(
`user_id` varchar(120) NOT NULL COMMENT '用户名',
`user_pwd` varchar(120) NOT NULL COMMENT '密码',
`user_dev` varchar(120) NOT NULL COMMENT '设备号',
`user_email` varchar(120) COMMENT '邮箱',
`user_sex` char(1) NOT NULL COMMENT '性别',
PRIMARY KEY (user_id),
key idx_dev(user_dev),
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';


CREATE TABLE device_info(
`dev_id` varchar(120) NOT NULL COMMENT '设备号',
`ph_data` double NOT NULL COMMENT 'PH值',
`tds_data` double NOT NULL COMMENT 'TDS值',
`temp_data` double NOT NULL COMMENT '温度值',
`upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '传入时间',
PRIMARY KEY (dev_id),
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据表'