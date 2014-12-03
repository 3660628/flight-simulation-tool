%conn = database('','CY','zzzzzz');
javaaddpath('C:\Program Files\Microsoft JDBC Driver 4.0 for SQL Server\enu\sqljdbc.jar')
%conn = database('ACRP', 'CY','zzzzzz', ...
 %   'com.microsoft.sqlserver.jdbc.SQLServerDriver', ...
  %  'jdbc:sqlserver://128.46.105.235:3306;database=ACRP');
%curs = exec(conn, 'select * from ');
conn = database('ACRP', 'CY', 'zzzzzz', 'Vendor', 'MySQL', 'Server', '128.46.105.235');
curs = fetch(conn,'select * from AC_CLASS');
curs
%close(curs)
close(conn)