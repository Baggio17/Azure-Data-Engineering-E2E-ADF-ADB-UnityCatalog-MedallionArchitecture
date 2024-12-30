create table watermark_table
(
     last_load varchar(2000)
)

select * from watermark_table

select min(Date_ID) from [dbo].[source_cars_data]

insert into watermark_table
values ('DT00000')

select * from [dbo].[source_cars_data] where DATE_ID > 'dt00000'

select count(*) from [dbo].[source_cars_data] where DATE_ID > 'dt00000'

