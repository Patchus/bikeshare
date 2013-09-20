create table q4_2010(
Duration text,
start_date text,
end_date text,
start_station text,
start_station_id int,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);


create table q1_2011(
Duration text,
start_date text,
end_date text,
start_station text,
start_station_id int,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);
create table q2_2011(
Duration text,
start_date text,
end_date text,
start_station text,
start_station_id int,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);
create table q3_2011(
Duration text,
start_date text,
end_date text,
start_station text,
start_station_id int,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);
create table q4_2011(
Duration text,
start_date text,
end_date text,
start_station text,
start_station_id int,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);


.import 2011-1st-quarter2.csv q1_2011
.import 2011-2nd-quarter2.csv q2_2011
.import 2011-3rd-quarter2.csv q3_2011
.import 2011-4th-quarter2.csv q4_2011

create table q1_2012(
Duration text,
Duration_sec int,
start_date text,
start_station text,
start_station_id int,
end_date text,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);
create table q2_2012(
Duration text,
Duration_sec int,
start_date text,
start_station text,
start_station_id int,
end_date text,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);

create table q3_2012(
Duration text,
start_date text,
start_station text,
start_station_id int,
end_date text,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);

create table q4_2012(
Duration text,
start_date text,
start_station text,
start_station_id int,
end_date text,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);

create table q1_2013(
Duration text,
start_date text,
start_station text,
start_station_id int,
end_date text,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);

create table q2_2013(
Duration text,
start_date text,
start_station text,
start_station_id int,
end_date text,
end_station text,
end_station_id int,
bike_id text,
sub_type text
);


.import 2012-1st-quarter.csv q1_2012
.import 2012-2nd-quarter.csv q2_2012
.import 2012-3rd-quarter.csv q3_2012
.import 2012-4th-quarter.csv q4_2012
.import 2013-1st-quarter.csv q1_2013
.import 2013-2nd-quarter.csv q2_2013





create table total_share as
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2010' as year,'q4' as quarter
from q4_2010
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2011' as year,'q1' as quarter
from q1_2011
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2011' as year,'q2' as quarter
from q2_2011
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2011' as year,'q3' as quarter
from q3_2011
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2011' as year,'q4' as quarter
from q4_2011
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2012' as year,'q1' as quarter
from q1_2012
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2012' as year,'q2' as quarter
from q2_2012
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2012' as year,'q3' as quarter
from q3_2012
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2012' as year,'q4' as quarter
from q4_2012
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2013' as year,'q1' as quarter
from q1_2013
UNION ALL
select Duration,start_date,start_station,start_station_id,end_date,end_station,end_station_id,bike_id,sub_type, '2013' as year,'q2' as quarter
from q2_2013;
