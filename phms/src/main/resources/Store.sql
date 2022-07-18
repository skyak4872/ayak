CREATE table Store(
Sid					BIGINT			NOT NULL AUTO_INCREMENT	PRIMARY KEY,
S_Name				VARCHAR(100)	,	-- 약국 이름
S_Addr				VARCHAR(200) 	,
S_Tel				VARCHAR(14) 	,
Mon_Time			VARCHAR(15)		,	-- s:영업시작
Tue_Time			VARCHAR(15)		,	-- c:영업종료
Wed_Time			VARCHAR(15)		,
Thu_Time			VARCHAR(15)		,
Fri_Time			VARCHAR(15)		,
Sat_Time			VARCHAR(15)		,
Sun_Time			VARCHAR(15)		,
holi_Time			VARCHAR(15)		,	
Lon					VARCHAR(30)		,	-- 경도
Lat					VARCHAR(30)	-- 위도
) AUTO_INCREMENT=1;

DROP table store;
select * from store;