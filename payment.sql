CREATE TABLE `transactions`
(
    `id`                    INT(11) NOT NULL AUTO_INCREMENT,
    `paycom_transaction_id` VARCHAR(25) NOT NULL COLLATE 'utf8_unicode_ci',
    `paycom_time`           VARCHAR(13) NOT NULL COLLATE 'utf8_unicode_ci',
    `paycom_time_datetime`  DATETIME    NOT NULL,
    `create_time`           DATETIME    NOT NULL,
    `perform_time`          DATETIME NULL DEFAULT NULL,
    `cancel_time`           DATETIME NULL DEFAULT NULL,
    `amount`                INT(11) NOT NULL,
    `state`                 TINYINT(2) NOT NULL,
    `reason`                TINYINT(2) NULL DEFAULT NULL,
    `receivers`             VARCHAR(500) NULL DEFAULT NULL COMMENT 'JSON array of receivers' COLLATE 'utf8_unicode_ci',
    `order_id`              INT(11) NOT NULL,

    PRIMARY KEY (`id`)
) COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;


CREATE TABLE `payments`
(
    `id`                int(11) NOT NULL,
    `product_id`        int(11) DEFAULT NULL,
    `status`            varchar(50)    NOT NULL,
    `status_note`       varchar(250)            DEFAULT NULL,
    `created`           timestamp      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `modified`          timestamp      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `currency`          varchar(3)     NOT NULL DEFAULT 'UZB',
    `total`             decimal(10, 2) NOT NULL DEFAULT '0.00',
    `amount`            decimal(10, 2) NOT NULL DEFAULT '0.00',
    `delivery`          decimal(10, 2) NOT NULL DEFAULT '0.00',
    `tax`               decimal(10, 2) NOT NULL DEFAULT '0.00',
    `description`       text           NOT NULL,
    `user_id`           int(11) DEFAULT NULL,
    `invoice_id`        int(11) DEFAULT NULL,
    `payment_id`        int(11) DEFAULT NULL,
    `card_token`        varchar(250)            DEFAULT NULL,
    `token`             varchar(50)    NOT NULL,
    `phone_number`      varchar(50)             DEFAULT NULL,
    `merchant_trans_id` varchar(200)            DEFAULT NULL,
    `note`              text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `payments`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `payments`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

