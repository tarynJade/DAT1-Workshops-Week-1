.open dreamhome.sqlite
.mode column


select * from viewing
join propertyforrent
on propertyforrent.propertyno = viewing.propertyno;

