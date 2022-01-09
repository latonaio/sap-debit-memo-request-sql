CREATE TABLE `sap_credit_memo_request_header_partner_data`
(
  `DebitMemoRequest`             varchar(10) NOT NULL,
  `PartnerFunction`              varchar(2) NOT NULL,
  `Customer`                     varchar(10) DEFAULT NULL,
  `Supplier`                     varchar(10) DEFAULT NULL,
    PRIMARY KEY (`DebitMemoRequest`, `PartnerFunction`),
    CONSTRAINT `SAPDebitMemoRequestHeaderPartnerData_fk` FOREIGN KEY (`DebitMemoRequest`) REFERENCES `sap_debit_memo_request_header_data` (`DebitMemoRequest`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
