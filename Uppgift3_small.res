: _objname   _obj     :=
1   z        90250
;

:       _varname        _var     _var.rc    _var.down  _var.current    _var.up     :=
1    "x['BYXA',1]"    196.667     0        -1e+20            60          85
2    "x['BYXA',2]"    103.333     0            50            75       1e+20
3    "x['TROJA',1]"   300         0            30.5          50       1e+20
4    "x['TROJA',2]"   330         0        -1e+20            40          59.5
5    "x['KAVAJ',1]"   200         0            45.9091      100       1e+20
6    "x['KAVAJ',2]"   300         0            22.2727       75         129.091
7    "l['BYXA',0]"      0         0        -1e+20             0       1e+20
8    "l['BYXA',1]"     96.6667    0        -1e+20             0          25
9    "l['BYXA',2]"      0        35           -35             0       1e+20
10   "l['TROJA',0]"     0         0        -1e+20             0       1e+20
11   "l['TROJA',1]"   100         0           -19.5           0       1e+20
12   "l['TROJA',2]"    30         0           -93.1818        0          35
13   "l['KAVAJ',0]"     0         0        -1e+20             0       1e+20
14   "l['KAVAJ',1]"     0        54.0909      -54.0909        0       1e+20
15   "l['KAVAJ',2]"     0        52.7273      -52.7273        0       1e+20
;

:            _conname         _con.slack   _con.dual   _con.down _con.current    _con.up      :=
1    "tgång['TYG1',1]"           310          0        1590           1900      1e+20
2    "tgång['TYG1',2]"           230          0        1570           1800      1e+20
3    "tgång['SYTID',1]"          110          0        2290           2400      1e+20
4    "tgång['SYTID',2]"            0        -17.7273   2390           2500       2610
5    "Lagerbalans['BYXA',1]"       0         60         -96.6667       100        136.667
6    "Lagerbalans['BYXA',2]"       0        128.182     163.333        200        236.667
7    "Lagerbalans['TROJA',1]"      0         50        -100            200        236.667
8    "Lagerbalans['TROJA',2]"      0         93.1818    363.333        400        436.667
9    "Lagerbalans['KAVAJ',1]"      0        100           0            200        227.5
10   "Lagerbalans['KAVAJ',2]"      0        145.909     272.5          300        327.5
11   "Initlager['BYXA']"           0        -60           0              0        196.667
12   "Initlager['TROJA']"          0        -50           0              0        300
13   "Initlager['KAVAJ']"          0       -100           0              0        200
14   GarantiLager                  0         93.1818      0             30         66.6667
15   'LagerBalans[1]'              0        -45.4545    186.833        240        295
16   'LagerBalans[2]'            211.5        0          28.5          240      1e+20
;

