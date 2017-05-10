 
MODULE_big = smlar
OBJS = smlar.o smlar_gist.o smlar_gin.o smlar_cache.o \
		tsarr.o smlar_guc.o smlar_stat.o 

EXTENSION = smlar
DATA = smlar--1.0.sql  smlar--unpackaged--1.0.sql
REGRESS = smlar int2 int4 int8 float4 float8 money oid \
		timestamp timestamptz time timetz date interval \
		macaddr	inet cidr \
		text varchar char bytea bit varbit numeric \
		int4g int8g intervalg textg \
		int4i int8i intervali texti \
		composite_int4 composite_text

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

