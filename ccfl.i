=ccfl
*m: SNAP:Symbolic Nuclear Analysis Package,  Version 2.1.3, June 12, 2012
*m: PLUGIN:RELAP Version 4.1.0
*m: CODE:RELAP5 Version 3.3
*m: DATE:5/7/13
******************************
*        Model Options       *
******************************
*            type         state
100           new       transnt
*          iunits        ounits
102            si            si
*     tend minstep maxstep copt pfreq  majed  rsrtf
201 1000.0  1.0e-8    0.01    3    10 100000 100000
20500000          9999
*******************************
*       Control Blocks        *
*******************************
*
*             name type scale ival iflag limit
20500010 "unnamed"  div   1.0  0.0     0     0
*                input         param         input         param
20500011      cntrlvar             2          rhof       2100000
*
*             name type scale ival iflag limit
20500020 "unnamed"  sum  7.35  0.0     1     0
*                   a0         scale     name         param
20500021           0.0           1.0     rhof       2100000
20500022                        -1.0     rhog       2100000
*
*             name   type scale ival iflag limit
20500030 "unnamed" powerr   1.0  0.0     1     0
*                input         param         power
20500031      cntrlvar             1           0.7
*
*             name type scale ival iflag limit
20500040 "unnamed" mult   1.0  0.0     0     0
*           input param    input param  input   param
20500041 cntrlvar     3 cntrlvar     8 voidfj 2100000
*
*             name   type scale ival iflag limit
20500050 "unnamed" powerr   1.0  0.0     1     0
*                input         param         power
20500051      cntrlvar             4           0.5
*
*             name   type scale ival iflag limit
20500070 "unnamed" powerr   1.0  0.0     0     0
*                input         param         power
20500071         velfj       2100000           2.0
*
*             name   type scale ival iflag limit
20500080 "unnamed" powerr   1.0  0.0     0     0
*                input         param         power
20500081      cntrlvar             7           0.5
*
*             name type scale ival iflag limit
20500110 "unnamed"  div   1.0  0.0     0     0
*                input         param         input         param
20500111      cntrlvar             2          rhog       2100000
*
*             name   type scale ival iflag limit
20500130 "unnamed" powerr   1.0  0.0     1     0
*                input         param         power
20500131      cntrlvar            11           0.5
*
*             name type scale ival iflag limit
20500140 "unnamed" mult   1.0  0.0     0     0
*           input param    input param  input   param
20500141 cntrlvar    13 cntrlvar    18 voidgj 2100000
*
*             name   type scale ival iflag limit
20500150 "unnamed" powerr   1.0  0.0     1     0
*                input         param         power
20500151      cntrlvar            14           0.5
*
*             name   type scale ival iflag limit
20500170 "unnamed" powerr   1.0  0.0     0     0
*                input         param         power
20500171         velgj       2100000           2.0
*
*             name   type scale ival iflag limit
20500180 "unnamed" powerr   1.0  0.0     0     0
*                input         param         power
20500181      cntrlvar            17           0.5
*
*             name type scale ival iflag limit
20500190 "unnamed"  sum   1.0  0.0     0     0
*                   a0         scale     name         param
20500191           0.0           1.0  mflowgj       2100000
*
*             name type scale ival iflag limit
20500200 "unnamed"  sum   1.0  0.0     0     0
*                   a0         scale     name         param
20500201           0.0           1.0  mflowfj       2010000
*
20600000      expanded
*************************************
*       Hydraulic Components        *
*************************************
*
*                name          type
0010000     "unnamed"          pipe
*              ncells
0010001             5
*              x-area         volid
0010101           5.0             5
*            x-length         volid
0010301          0.75             5
*              volume         volid
0010401           0.0             5
*          azim-angle         volid
0010501           0.0             5
*          vert-angle         volid
0010601          90.0             5
*              x-wall           xhd         volid
0010801           0.0           0.0             5
*             x-flags         volid
0011001             0             5
*       ebt press   water-ie  steam-ie void none id
0011201 000 1.5e6 8.428258e5 2.59339e6  0.0  0.0  1
0011202 000 1.5e6 8.428258e5 2.59339e6 0.55  0.0  2
0011203 000 1.5e6 8.428258e5 2.59339e6  1.0  0.0  5
*            jefvcahs       jun num
0011101      00000000             4
*                  vl            vv        unused         junid
0011301           0.0           0.0           0.0             4
*
*                name          type
0020000     "unnamed"          pipe
*              ncells
0020001            12
*              x-area         volid
0020101    0.44178647            12
*            x-length         volid
0020301        0.7086            10
0020302         0.593            12
*              volume         volid
0020401           0.0            12
*          azim-angle         volid
0020501           0.0            12
*          vert-angle         volid
0020601           0.0            10
0020602          50.0            12
*              x-elev         volid
0020701           0.0            10
0020702    0.28284272            12
*              x-wall           xhd         volid
0020801        2.0e-5           0.0            12
*             x-flags         volid
0021001             0            12
*       ebt press   water-ie  steam-ie void none id
0021201 000 1.5e6 8.428258e5 2.59339e6  1.0  0.0 12
*            jefvcahs       jun num
0021101      00100000            11
*                  vl            vv        unused         junid
0021301           0.0           0.0           0.0            11
*
*                name          type
0030000     "unnamed"          pipe
*              ncells
0030001             9
*              x-area         volid
0030101           5.0             9
*            x-length         volid
0030301          0.75             9
*              volume         volid
0030401           0.0             9
*          azim-angle         volid
0030501           0.0             9
*          vert-angle         volid
0030601          90.0             9
*              x-wall           xhd         volid
0030801           0.0           0.0             9
*             x-flags         volid
0031001             0             9
*       ebt press   water-ie  steam-ie  void none id
0031201 000 1.5e6 8.428258e5 2.59339e6   0.0  0.0  4
0031202 000 1.5e6 8.428258e5 2.59339e6 0.999  0.0  5
0031203 000 1.5e6 8.428258e5 2.59339e6   1.0  0.0  9
*            jefvcahs       jun num
0031101      00000000             8
*                  vl            vv        unused         junid
0031301           0.0           0.0           0.0             8
*
*                name          type
0040000     "unnamed"       tmdpvol
*                area        length           vol
0040101          10.0          0.01           0.0
*            az-angle     inc-angle            dz
0040102           0.0          90.0          0.01
*             x-rough          x-hd         flags
0040103           0.0           0.0             0
*               cword
0040200             0
*                srch         press          liqe          vape         vapvf
0040201           0.0         1.5e6    8.428258e5     2.59339e6           0.0
*
*                name          type
0050000     "unnamed"       tmdpjun
*                from            to          area       jefvcahs
0050101       4010002       3010001           0.5             0
*             control
0050200             1
*                srch           mfl           mfv        unused
0050201           0.0           0.0           0.0           0.0
0050202           1.0           0.0           0.0           0.0
0050203          30.0           6.0           0.0           0.0
*
*                name          type
0060000     "unnamed"       tmdpvol
*                area        length           vol
0060101          10.0          0.01           0.0
*            az-angle     inc-angle            dz
0060102           0.0          90.0          0.01
*             x-rough          x-hd         flags
0060103           0.0           0.0             0
*               cword
0060200             0
*                srch         press          liqe          vape         vapvf
0060201           0.0         1.5e6    8.428258e5     2.59339e6           1.0
*
*                name          type
0070000     "unnamed"       sngljun
*                from            to          area
0070101       6010002       3090002           0.0
*           fwd. loss     rev. loss       efvcahs
0070102           0.0           0.0             0
*           discharge       thermal       
0070103           1.0          0.14
*                flow            vl            vv        unused
0070201             0           0.0           0.0           0.0
*
*                name          type
0080000     "unnamed"       sngljun
*                from            to          area
0080101       2120002       3050003           0.0
*           fwd. loss     rev. loss       efvcahs
0080102           0.0           0.0             0
*           discharge       thermal       
0080103           1.0          0.14
*                flow            vl            vv        unused
0080201             0           0.0           0.0           0.0
*
*                name          type
0090000     "unnamed"       sngljun
*                from            to          area
0090101       1030005       2010001           0.0
*           fwd. loss     rev. loss       efvcahs
0090102           1.0           0.0             0
*           discharge       thermal       
0090103           1.0          0.14
*                flow            vl            vv        unused
0090201             0           0.0           0.0           0.0
*
*                name          type
0110000     "unnamed"       tmdpvol
*                area        length           vol
0110101          10.0           0.0           0.1
*            az-angle     inc-angle            dz
0110102           0.0          90.0          0.01
*             x-rough          x-hd         flags
0110103           0.0           0.0             0
*               cword
0110200             2
*                srch         press         squal
0110201           0.0         1.5e6           0.0
*
*                name          type
0120000     "unnamed"       tmdpjun
*                from            to          area       jefvcahs
0120101      13010001       1050002    0.44178647             0
*             control          trip
0120200             1             0
*                srch           mfl           mfv        unused
0120201           0.0           0.0           0.0           0.0
0120202         200.0           0.0          20.0           0.0
0120203        1000.0           0.0          49.0           0.0
*
*                name          type
0130000     "unnamed"       tmdpvol
*                area        length           vol
0130101          10.0          0.01           0.0
*            az-angle     inc-angle            dz
0130102           0.0          90.0          0.01
*             x-rough          x-hd         flags
0130103           0.0           0.0             0
*               cword
0130200             0
*                srch         press          liqe          vape         vapvf
0130201           0.0         1.5e6    8.428258e5     2.59339e6           1.0
*
*                name          type
0150000     "unnamed"       tmdpjun
*                from            to          area       jefvcahs
0150101       1010001      11010002           0.5             0
*             control          trip         alpha           num
0150200             1             0      cntrlvar            20
*                srch           mfl           mfv        unused
0150201       -1000.0        1000.0           0.0           0.0
0150202           0.0           0.0           0.0           0.0
0150203        1000.0       -1000.0           0.0           0.0
*
.
