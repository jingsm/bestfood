-- bestfood_info 테이블 생성문
CREATE TABLE IF NOT EXISTS bestfood_info (
seq int(11) NOT NULL AUTO_INCREMENT,
member_seq int(11) NOT NULL,
name varchar(20) NOT NULL,
tel varchar(20) NOT NULL,
address varchar(50) NOT NULL,
latitude double NOT NULL,
longitude double NOT NULL,
description varchar(500) NOT NULL,
keep_cnt int(11) NOT NULL DEFAULT '0',
reg_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- bestfood_info_image 테이블 생성문
CREATE TABLE IF NOT EXISTS bestfood_info_image (
seq int(11) NOT NULL AUTO_INCREMENT,
info_seq int(11) NOT NULL,
filename varchar(30) NOT NULL,
image_memo varchar(100) NOT NULL,
reg_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- bestfood_keep 테이블 생성문
CREATE TABLE IF NOT EXISTS bestfood_keep (
seq int(11) NOT NULL AUTO_INCREMENT,
member_seq int(11) NOT NULL,
info_seq int(11) NOT NULL,
reg_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- bestfood_member 테이블 생성문
CREATE TABLE IF NOT EXISTS bestfood_member (
seq int(11) NOT NULL AUTO_INCREMENT,
phone varchar(30) NOT NULL,
name varchar(30) DEFAULT NULL,
sextype varchar(10) DEFAULT NULL,
birthday varchar(30) DEFAULT NULL,
member_icon_filename varchar(50) DEFAULT NULL,
reg_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;