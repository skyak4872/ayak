CREATE TABLE Medicine (
   Mid            BIGINT      	  NOT NULL AUTO_INCREMENT	PRIMARY KEY,
   M_Company        VARCHAR(30)     NOT NULL,
   M_DrugName       VARCHAR(30)     NOT NULL,   
   M_DrugEffect     VARCHAR(2300)   NOT NULL,
   M_UseDrug        VARCHAR(2300)   NOT NULL,
   M_BeforeWarn     VARCHAR(2300)   NOT NULL,
   M_AfterWarn      VARCHAR(2300)   NOT NULL,
   M_Interaction    VARCHAR(2300)   NOT NULL,
   M_SideEffect     VARCHAR(2300)   NOT NULL,
   M_StorageMethod  VARCHAR(2300)   NOT NULL,
   M_DrugImage      VARCHAR(200)   NOT NULL
) AUTO_INCREMENT = 1

drop table Medicine;