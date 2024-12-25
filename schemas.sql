CREATE TABLE products (
    id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '商品ID',
    name VARCHAR(64) NOT NULL DEFAULT '' COMMENT '商品名称',
    category_id BIGINT NOT NULL DEFAULT 0 COMMENT '分类ID，关联categories表',
    brand_id BIGINT NOT NULL DEFAULT 0 COMMENT '品牌ID，关联brands表',
    standard VARCHAR(64) NOT NULL COMMENT '产品标准号',
    price VARCHAR(64) NOT NULL DEFAULT '' COMMENT '价格描述',
    is_import BOOLEAN NOT NULL DEFAULT 0 COMMENT '是否是进口商品',
    contains_gmo BOOLEAN NOT NULL DEFAULT 0 COMMENT '是否含转基因成方',
    place VARCHAR(128) NOT NULL DEFAULT '' COMMENT '产地描述',
    description VARCHAR(256) DEFAULT '' COMMENT '商品描述',
    main_image VARCHAR(255) DEFAULT '' COMMENT '主图URL'
) COMMENT='商品主表';

CREATE TABLE categories (
    category_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '分类ID',
    name VARCHAR(64) NOT NULL DEFAULT '' COMMENT '分类名称',
    parent_id BIGINT DEFAULT 0 COMMENT '父分类ID，0表示顶级分类'
) COMMENT='商品分类表';


CREATE TABLE brands (
    brand_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '品牌ID',
    name VARCHAR(64) NOT NULL DEFAULT '' COMMENT '品牌名称',
    logo VARCHAR(255) NOT NULL DEFAULT '' COMMENT '品牌Logo URL'
) COMMENT='商品品牌表';

CREATE TABLE product_images (
    image_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '图片ID',
    product_id BIGINT NOT NULL COMMENT '商品ID，关联products表',
    image_url VARCHAR(255) NOT NULL COMMENT '图片URL',
    is_main TINYINT DEFAULT 0 COMMENT '是否主图：1-是，0-否'
) COMMENT='商品图片表';

CREATE TABLE product_attributes (
    attribute_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '属性ID',
    product_id BIGINT NOT NULL COMMENT '商品ID，关联products表',
    attribute_name VARCHAR(64) NOT NULL DEFAULT '' COMMENT '属性名称',
    attribute_value VARCHAR(64) NOT NULL DEFAULT '' COMMENT '属性值'
) COMMENT='商品属性表';

CREATE TABLE product_ingredients (
    ingredient_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '构成ID',
    product_id BIGINT NOT NULL COMMENT '商品ID，关联products表',
    ingredient_name VARCHAR(64) NOT NULL DEFAULT '' COMMENT '构成名称',
    ingredient_type VARCHAR(32) NOT NULL DEFAULT '' COMMENT '构成类型',
    ingredient_value VARCHAR(32) NOT NULL DEFAULT '' COMMENT '构成值',
    ingredient_min_value VARCHAR(32) NOT NULL DEFAULT '' COMMENT '构成最小值',
    ingredient_max_value VARCHAR(32) NOT NULL DEFAULT '' COMMENT '构成最大值',
    ingredient_unit VARCHAR(16) NOT NULL DEFAULT '' COMMENT '构成单位'
) COMMENT='商品成分表';

CREATE TABLE product_nutritions (
    nutrition_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '营养ID',
    product_id BIGINT NOT NULL COMMENT '商品ID，关联products表',
    nutrition_name VARCHAR(64) NOT NULL COMMENT '营养名称',
    nutrition_value VARCHAR(32) NOT NULL COMMENT '营养值',
    nutrition_min_value VARCHAR(32) NOT NULL COMMENT '营养最小值',
    nutrition_max_value VARCHAR(32) NOT NULL COMMENT '营养最大值',
    nutrition_unit VARCHAR(16) NOT NULL COMMENT '营养单位'
) COMMENT='商品营养表';



