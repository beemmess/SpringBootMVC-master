<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <!-- eplica-no-index -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- <title>Norðurljósaspá fyrir Ísland | Norðurljósaspá | Veðurspár | Veður | Veðurstofa Íslands</title>
    <meta property="og:title" content="Norðurljósaspá fyrir Ísland" />
    <meta property="og:site_name" content="Veðurstofa Íslands" />  !-->




    <link rel="stylesheet" href="http://en.vedur.is/skin/basic/design/main-print.css?v20d" media="print" />
    <link rel="stylesheet" href="http://en.vedur.is/skin/basic/design/main-stream.css?v20d" media="speech, braille, embossed, tty" />

    <link rel="stylesheet" href="http://en.vedur.is/skin/basic/design/vkort/vkort-print.css" media="print" />

    <meta name="X-UserstyleURL" content="/codecentre/userstyles/2/?hlogo=100&siteid=foo.is" />


    <link rel="stylesheet" href="http://en.vedur.is/skin/basic/design/main.css?v20d" media="screen" />

    <link rel="stylesheet" href="http://en.vedur.is/skin/basic/design/vkort/vkort.css?v20d" media="screen" />

    <script async src="//www.google-analytics.com/analytics.js"></script>
    <script async src="http://potency-cnt.teljari.is/potency/js/potency.js"></script>
    <script src='http://en.vedur.is/skin/basic/js/noflicker.js'></script>
    <script src='http://en.vedur.is/skin/basic/js/jQuery-1.6.js'></script>  <!-- útlit á norðurljósamynd

    <link href="http://en.vedur.is/vedur/spar/nordurljos/rss.xml" rel="alternate" type="application/rss+xml" title="Norðurljósaspá" />

    <link rel="shortcut icon" href="http://en.vedur.is/skin/basic/design/i/fav.ico" />
    <!-- /eplica-no-index -->

</head>


<!--[if lt IE 9 ]
<body class="msie  threecol">
<![endif]--><!--[if (gte IE 9)|!(IE)]><!-->
<body class=" threecol"><!--<![endif]-->
<div class="pgwrap  threecol">

   <div class="pghead" id="pghead">
        <div class="wrap">
            <!-- eplica-no-index
            <div class="brand" role="banner">
                <a href="/" title="Veðurstofa íslands - forsíða">
                    <img class="logo" src="http://en.vedur.is/skin/basic/design/i/sitelogo.gif" alt="Veðurstofa íslands" />
                </a>
            </div>
           <!-- <div class="stream">
                <p>
                    <a href='#pgnav' title='Beint í valmyndina'>Valmynd</a>
                    "."
                </p>
                <hr />
            </div> -->
            <!-- /eplica-no-index

            <div class="warning">
                <ul class="level1">
                    <li class="home current homecurrent">
                        <h3 class="boxhead">Viðvörun</h3>
                        <div class="boxbody">Búist er við stormi (meira en 20 m/s) á austanverðu landinu fram eftir kvöldi.
                            <span class="detailinfo">Gildir til 26.11.2015 00:00</span>
                            <a href="http://en.vedur.is/vedur/spar/textaspar" class="more">Meira</a>
                        </div>
                    </li>
                </ul>
            </div><!-- wrote: 346 chars -->

        </div>
    </div>

    <div class="pgmain">
        <div class="wrap">

            <script type="text/javascript" src="http://en.vedur.is/js/vi-aurora.js?v=169"></script>
            <script>
                var VI;
                if (VI == undefined) VI = {};
                if (VI.data == undefined) VI.data = {};
                if (VI.data.aurora == undefined) VI.data.aurora = {};


                VI.data.aurora.text = {};

            </script>

            <div class="article">
                <div class="boxbody">


                    <h1 id="au_forec_title">Aurora forecast for Iceland</h1>

                    <div class="textforec auroratext">
                        <p id="au_forec_txt">
                        <span class="detailinfo"></span>
                        </p>
                    </div>
                </div>
            </div>
            <HR class=stream>

            <!-- wrote: 466 chars -->

            <link rel="stylesheet" type="text/css" media="screen, print" href="http://en.vedur.is/css/jquery-ui.css?v=169" />

            <script type="text/javascript" src="http://en.vedur.is/js/vi-base.js?v=169"></script>
            <script type="text/javascript" src="http://en.vedur.is/js/vi-res_en.js?v=169"></script>
            <script type="text/javascript" src="http://en.vedur.is/jslib/history.js?v=169"></script>
            <script type="text/javascript" src="http://en.vedur.is/jslib/jquery-ui.js?v=169"></script>


            <script>

                var VI;
                if (VI == undefined) VI = new Object();

                VI.conf = {
                    'currMap':0,
                    'now': new Date(2015,11-1,25,13,46),
                    'title': '%DDD %hh:%mm',
                    'sliderLen': 500,
                    'sliderMargin' : 10.0,
                    'sliderHandleLen' : 10,
                    'sliderCommonTags' : true,
                    'sliderEntries' : 50,
                    'startImg': -1,
                    'sliderType': 'f',
                    'sliderDays' : 6
                };

                VI.imgConf = new Array();

                VI.imgConf[0] = {'title':'Total cloud cover','url':'total','0' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_3.png','tag0'  : new Date(2015,11-1,25,3,0),'1' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_6.png','tag1'  : new Date(2015,11-1,25,6,0),'2' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_9.png','tag2'  : new Date(2015,11-1,25,9,0),'3' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_12.png','tag3'  : new Date(2015,11-1,25,12,0),'4' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_15.png','tag4'  : new Date(2015,11-1,25,15,0),'5' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_18.png','tag5'  : new Date(2015,11-1,25,18,0),'6' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_21.png','tag6'  : new Date(2015,11-1,25,21,0),'7' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_24.png','tag7'  : new Date(2015,11-1,26,0,0),'8' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_27.png','tag8'  : new Date(2015,11-1,26,3,0),'9' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_30.png','tag9'  : new Date(2015,11-1,26,6,0),'10' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_33.png','tag10'  : new Date(2015,11-1,26,9,0),'11' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_36.png','tag11'  : new Date(2015,11-1,26,12,0),'12' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_39.png','tag12'  : new Date(2015,11-1,26,15,0),'13' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_42.png','tag13'  : new Date(2015,11-1,26,18,0),'14' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_45.png','tag14'  : new Date(2015,11-1,26,21,0),'15' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_48.png','tag15'  : new Date(2015,11-1,27,0,0),'16' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_51.png','tag16'  : new Date(2015,11-1,27,3,0),'17' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_54.png','tag17'  : new Date(2015,11-1,27,6,0),'18' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_57.png','tag18'  : new Date(2015,11-1,27,9,0),'19' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_60.png','tag19'  : new Date(2015,11-1,27,12,0),'20' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_66.png','tag20'  : new Date(2015,11-1,27,18,0),'21' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_72.png','tag21'  : new Date(2015,11-1,28,0,0),'22' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_78.png','tag22'  : new Date(2015,11-1,28,6,0),'23' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_84.png','tag23'  : new Date(2015,11-1,28,12,0),'24' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_90.png','tag24'  : new Date(2015,11-1,28,18,0),'25' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_96.png','tag25'  : new Date(2015,11-1,29,0,0),'26' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_102.png','tag26'  : new Date(2015,11-1,29,6,0),'27' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_108.png','tag27'  : new Date(2015,11-1,29,12,0),'28' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_114.png','tag28'  : new Date(2015,11-1,29,18,0),'29' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_120.png','tag29'  : new Date(2015,11-1,30,0,0),'30' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_126.png','tag30'  : new Date(2015,11-1,30,6,0),'31' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_132.png','tag31'  : new Date(2015,11-1,30,12,0),'32' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_138.png','tag32'  : new Date(2015,11-1,30,18,0),'33' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_144.png','tag33'  : new Date(2015,12-1,1,0,0),'34' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_150.png','tag34'  : new Date(2015,12-1,1,6,0),'35' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_156.png','tag35'  : new Date(2015,12-1,1,12,0),'36' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_162.png','tag36'  : new Date(2015,12-1,1,18,0),'37' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_168.png','tag37'  : new Date(2015,12-1,2,0,0),'38' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_174.png','tag38'  : new Date(2015,12-1,2,6,0),'39' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_180.png','tag39'  : new Date(2015,12-1,2,12,0),'40' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_186.png','tag40'  : new Date(2015,12-1,2,18,0),'41' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_192.png','tag41'  : new Date(2015,12-1,3,0,0),'42' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_198.png','tag42'  : new Date(2015,12-1,3,6,0),'43' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_204.png','tag43'  : new Date(2015,12-1,3,12,0),'44' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_210.png','tag44'  : new Date(2015,12-1,3,18,0),'45' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_216.png','tag45'  : new Date(2015,12-1,4,0,0),'46' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_222.png','tag46'  : new Date(2015,12-1,4,6,0),'47' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_228.png','tag47'  : new Date(2015,12-1,4,12,0),'48' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_234.png','tag48'  : new Date(2015,12-1,4,18,0),'49' : 'http://en.vedur.is/photos/ecm0125_island_tcc/151125_0000_240.png','tag49'  : new Date(2015,12-1,5,0,0),'mapCtrl':null };VI.imgConf[1] = {'title':'Lower clouds','url':'lower','0' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_3.png','tag0'  : new Date(2015,11-1,25,3,0),'1' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_6.png','tag1'  : new Date(2015,11-1,25,6,0),'2' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_9.png','tag2'  : new Date(2015,11-1,25,9,0),'3' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_12.png','tag3'  : new Date(2015,11-1,25,12,0),'4' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_15.png','tag4'  : new Date(2015,11-1,25,15,0),'5' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_18.png','tag5'  : new Date(2015,11-1,25,18,0),'6' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_21.png','tag6'  : new Date(2015,11-1,25,21,0),'7' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_24.png','tag7'  : new Date(2015,11-1,26,0,0),'8' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_27.png','tag8'  : new Date(2015,11-1,26,3,0),'9' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_30.png','tag9'  : new Date(2015,11-1,26,6,0),'10' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_33.png','tag10'  : new Date(2015,11-1,26,9,0),'11' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_36.png','tag11'  : new Date(2015,11-1,26,12,0),'12' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_39.png','tag12'  : new Date(2015,11-1,26,15,0),'13' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_42.png','tag13'  : new Date(2015,11-1,26,18,0),'14' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_45.png','tag14'  : new Date(2015,11-1,26,21,0),'15' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_48.png','tag15'  : new Date(2015,11-1,27,0,0),'16' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_51.png','tag16'  : new Date(2015,11-1,27,3,0),'17' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_54.png','tag17'  : new Date(2015,11-1,27,6,0),'18' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_57.png','tag18'  : new Date(2015,11-1,27,9,0),'19' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_60.png','tag19'  : new Date(2015,11-1,27,12,0),'20' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_66.png','tag20'  : new Date(2015,11-1,27,18,0),'21' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_72.png','tag21'  : new Date(2015,11-1,28,0,0),'22' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_78.png','tag22'  : new Date(2015,11-1,28,6,0),'23' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_84.png','tag23'  : new Date(2015,11-1,28,12,0),'24' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_90.png','tag24'  : new Date(2015,11-1,28,18,0),'25' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_96.png','tag25'  : new Date(2015,11-1,29,0,0),'26' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_102.png','tag26'  : new Date(2015,11-1,29,6,0),'27' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_108.png','tag27'  : new Date(2015,11-1,29,12,0),'28' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_114.png','tag28'  : new Date(2015,11-1,29,18,0),'29' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_120.png','tag29'  : new Date(2015,11-1,30,0,0),'30' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_126.png','tag30'  : new Date(2015,11-1,30,6,0),'31' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_132.png','tag31'  : new Date(2015,11-1,30,12,0),'32' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_138.png','tag32'  : new Date(2015,11-1,30,18,0),'33' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_144.png','tag33'  : new Date(2015,12-1,1,0,0),'34' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_150.png','tag34'  : new Date(2015,12-1,1,6,0),'35' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_156.png','tag35'  : new Date(2015,12-1,1,12,0),'36' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_162.png','tag36'  : new Date(2015,12-1,1,18,0),'37' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_168.png','tag37'  : new Date(2015,12-1,2,0,0),'38' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_174.png','tag38'  : new Date(2015,12-1,2,6,0),'39' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_180.png','tag39'  : new Date(2015,12-1,2,12,0),'40' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_186.png','tag40'  : new Date(2015,12-1,2,18,0),'41' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_192.png','tag41'  : new Date(2015,12-1,3,0,0),'42' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_198.png','tag42'  : new Date(2015,12-1,3,6,0),'43' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_204.png','tag43'  : new Date(2015,12-1,3,12,0),'44' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_210.png','tag44'  : new Date(2015,12-1,3,18,0),'45' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_216.png','tag45'  : new Date(2015,12-1,4,0,0),'46' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_222.png','tag46'  : new Date(2015,12-1,4,6,0),'47' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_228.png','tag47'  : new Date(2015,12-1,4,12,0),'48' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_234.png','tag48'  : new Date(2015,12-1,4,18,0),'49' : 'http://en.vedur.is/photos/ecm0125_island_lcc/151125_0000_240.png','tag49'  : new Date(2015,12-1,5,0,0),'mapCtrl':null };VI.imgConf[2] = {'title':'Middle clouds','url':'middle','0' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_3.png','tag0'  : new Date(2015,11-1,25,3,0),'1' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_6.png','tag1'  : new Date(2015,11-1,25,6,0),'2' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_9.png','tag2'  : new Date(2015,11-1,25,9,0),'3' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_12.png','tag3'  : new Date(2015,11-1,25,12,0),'4' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_15.png','tag4'  : new Date(2015,11-1,25,15,0),'5' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_18.png','tag5'  : new Date(2015,11-1,25,18,0),'6' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_21.png','tag6'  : new Date(2015,11-1,25,21,0),'7' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_24.png','tag7'  : new Date(2015,11-1,26,0,0),'8' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_27.png','tag8'  : new Date(2015,11-1,26,3,0),'9' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_30.png','tag9'  : new Date(2015,11-1,26,6,0),'10' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_33.png','tag10'  : new Date(2015,11-1,26,9,0),'11' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_36.png','tag11'  : new Date(2015,11-1,26,12,0),'12' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_39.png','tag12'  : new Date(2015,11-1,26,15,0),'13' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_42.png','tag13'  : new Date(2015,11-1,26,18,0),'14' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_45.png','tag14'  : new Date(2015,11-1,26,21,0),'15' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_48.png','tag15'  : new Date(2015,11-1,27,0,0),'16' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_51.png','tag16'  : new Date(2015,11-1,27,3,0),'17' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_54.png','tag17'  : new Date(2015,11-1,27,6,0),'18' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_57.png','tag18'  : new Date(2015,11-1,27,9,0),'19' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_60.png','tag19'  : new Date(2015,11-1,27,12,0),'20' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_66.png','tag20'  : new Date(2015,11-1,27,18,0),'21' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_72.png','tag21'  : new Date(2015,11-1,28,0,0),'22' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_78.png','tag22'  : new Date(2015,11-1,28,6,0),'23' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_84.png','tag23'  : new Date(2015,11-1,28,12,0),'24' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_90.png','tag24'  : new Date(2015,11-1,28,18,0),'25' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_96.png','tag25'  : new Date(2015,11-1,29,0,0),'26' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_102.png','tag26'  : new Date(2015,11-1,29,6,0),'27' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_108.png','tag27'  : new Date(2015,11-1,29,12,0),'28' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_114.png','tag28'  : new Date(2015,11-1,29,18,0),'29' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_120.png','tag29'  : new Date(2015,11-1,30,0,0),'30' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_126.png','tag30'  : new Date(2015,11-1,30,6,0),'31' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_132.png','tag31'  : new Date(2015,11-1,30,12,0),'32' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_138.png','tag32'  : new Date(2015,11-1,30,18,0),'33' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_144.png','tag33'  : new Date(2015,12-1,1,0,0),'34' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_150.png','tag34'  : new Date(2015,12-1,1,6,0),'35' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_156.png','tag35'  : new Date(2015,12-1,1,12,0),'36' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_162.png','tag36'  : new Date(2015,12-1,1,18,0),'37' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_168.png','tag37'  : new Date(2015,12-1,2,0,0),'38' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_174.png','tag38'  : new Date(2015,12-1,2,6,0),'39' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_180.png','tag39'  : new Date(2015,12-1,2,12,0),'40' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_186.png','tag40'  : new Date(2015,12-1,2,18,0),'41' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_192.png','tag41'  : new Date(2015,12-1,3,0,0),'42' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_198.png','tag42'  : new Date(2015,12-1,3,6,0),'43' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_204.png','tag43'  : new Date(2015,12-1,3,12,0),'44' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_210.png','tag44'  : new Date(2015,12-1,3,18,0),'45' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_216.png','tag45'  : new Date(2015,12-1,4,0,0),'46' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_222.png','tag46'  : new Date(2015,12-1,4,6,0),'47' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_228.png','tag47'  : new Date(2015,12-1,4,12,0),'48' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_234.png','tag48'  : new Date(2015,12-1,4,18,0),'49' : 'http://en.vedur.is/photos/ecm0125_island_mcc/151125_0000_240.png','tag49'  : new Date(2015,12-1,5,0,0),'mapCtrl':null };VI.imgConf[3] = {'title':'High clouds','url':'high','0' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_3.png','tag0'  : new Date(2015,11-1,25,3,0),'1' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_6.png','tag1'  : new Date(2015,11-1,25,6,0),'2' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_9.png','tag2'  : new Date(2015,11-1,25,9,0),'3' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_12.png','tag3'  : new Date(2015,11-1,25,12,0),'4' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_15.png','tag4'  : new Date(2015,11-1,25,15,0),'5' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_18.png','tag5'  : new Date(2015,11-1,25,18,0),'6' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_21.png','tag6'  : new Date(2015,11-1,25,21,0),'7' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_24.png','tag7'  : new Date(2015,11-1,26,0,0),'8' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_27.png','tag8'  : new Date(2015,11-1,26,3,0),'9' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_30.png','tag9'  : new Date(2015,11-1,26,6,0),'10' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_33.png','tag10'  : new Date(2015,11-1,26,9,0),'11' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_36.png','tag11'  : new Date(2015,11-1,26,12,0),'12' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_39.png','tag12'  : new Date(2015,11-1,26,15,0),'13' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_42.png','tag13'  : new Date(2015,11-1,26,18,0),'14' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_45.png','tag14'  : new Date(2015,11-1,26,21,0),'15' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_48.png','tag15'  : new Date(2015,11-1,27,0,0),'16' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_51.png','tag16'  : new Date(2015,11-1,27,3,0),'17' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_54.png','tag17'  : new Date(2015,11-1,27,6,0),'18' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_57.png','tag18'  : new Date(2015,11-1,27,9,0),'19' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_60.png','tag19'  : new Date(2015,11-1,27,12,0),'20' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_66.png','tag20'  : new Date(2015,11-1,27,18,0),'21' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_72.png','tag21'  : new Date(2015,11-1,28,0,0),'22' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_78.png','tag22'  : new Date(2015,11-1,28,6,0),'23' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_84.png','tag23'  : new Date(2015,11-1,28,12,0),'24' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_90.png','tag24'  : new Date(2015,11-1,28,18,0),'25' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_96.png','tag25'  : new Date(2015,11-1,29,0,0),'26' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_102.png','tag26'  : new Date(2015,11-1,29,6,0),'27' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_108.png','tag27'  : new Date(2015,11-1,29,12,0),'28' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_114.png','tag28'  : new Date(2015,11-1,29,18,0),'29' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_120.png','tag29'  : new Date(2015,11-1,30,0,0),'30' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_126.png','tag30'  : new Date(2015,11-1,30,6,0),'31' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_132.png','tag31'  : new Date(2015,11-1,30,12,0),'32' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_138.png','tag32'  : new Date(2015,11-1,30,18,0),'33' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_144.png','tag33'  : new Date(2015,12-1,1,0,0),'34' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_150.png','tag34'  : new Date(2015,12-1,1,6,0),'35' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_156.png','tag35'  : new Date(2015,12-1,1,12,0),'36' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_162.png','tag36'  : new Date(2015,12-1,1,18,0),'37' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_168.png','tag37'  : new Date(2015,12-1,2,0,0),'38' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_174.png','tag38'  : new Date(2015,12-1,2,6,0),'39' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_180.png','tag39'  : new Date(2015,12-1,2,12,0),'40' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_186.png','tag40'  : new Date(2015,12-1,2,18,0),'41' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_192.png','tag41'  : new Date(2015,12-1,3,0,0),'42' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_198.png','tag42'  : new Date(2015,12-1,3,6,0),'43' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_204.png','tag43'  : new Date(2015,12-1,3,12,0),'44' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_210.png','tag44'  : new Date(2015,12-1,3,18,0),'45' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_216.png','tag45'  : new Date(2015,12-1,4,0,0),'46' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_222.png','tag46'  : new Date(2015,12-1,4,6,0),'47' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_228.png','tag47'  : new Date(2015,12-1,4,12,0),'48' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_234.png','tag48'  : new Date(2015,12-1,4,18,0),'49' : 'http://en.vedur.is/photos/ecm0125_island_hcc/151125_0000_240.png','tag49'  : new Date(2015,12-1,5,0,0),'mapCtrl':null };VI.imgConf[4] = {'title':'Composite','url':'composite','0' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_3.png','tag0'  : new Date(2015,11-1,25,3,0),'1' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_6.png','tag1'  : new Date(2015,11-1,25,6,0),'2' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_9.png','tag2'  : new Date(2015,11-1,25,9,0),'3' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_12.png','tag3'  : new Date(2015,11-1,25,12,0),'4' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_15.png','tag4'  : new Date(2015,11-1,25,15,0),'5' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_18.png','tag5'  : new Date(2015,11-1,25,18,0),'6' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_21.png','tag6'  : new Date(2015,11-1,25,21,0),'7' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_24.png','tag7'  : new Date(2015,11-1,26,0,0),'8' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_27.png','tag8'  : new Date(2015,11-1,26,3,0),'9' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_30.png','tag9'  : new Date(2015,11-1,26,6,0),'10' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_33.png','tag10'  : new Date(2015,11-1,26,9,0),'11' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_36.png','tag11'  : new Date(2015,11-1,26,12,0),'12' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_39.png','tag12'  : new Date(2015,11-1,26,15,0),'13' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_42.png','tag13'  : new Date(2015,11-1,26,18,0),'14' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_45.png','tag14'  : new Date(2015,11-1,26,21,0),'15' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_48.png','tag15'  : new Date(2015,11-1,27,0,0),'16' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_51.png','tag16'  : new Date(2015,11-1,27,3,0),'17' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_54.png','tag17'  : new Date(2015,11-1,27,6,0),'18' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_57.png','tag18'  : new Date(2015,11-1,27,9,0),'19' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_60.png','tag19'  : new Date(2015,11-1,27,12,0),'20' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_66.png','tag20'  : new Date(2015,11-1,27,18,0),'21' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_72.png','tag21'  : new Date(2015,11-1,28,0,0),'22' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_78.png','tag22'  : new Date(2015,11-1,28,6,0),'23' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_84.png','tag23'  : new Date(2015,11-1,28,12,0),'24' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_90.png','tag24'  : new Date(2015,11-1,28,18,0),'25' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_96.png','tag25'  : new Date(2015,11-1,29,0,0),'26' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_102.png','tag26'  : new Date(2015,11-1,29,6,0),'27' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_108.png','tag27'  : new Date(2015,11-1,29,12,0),'28' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_114.png','tag28'  : new Date(2015,11-1,29,18,0),'29' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_120.png','tag29'  : new Date(2015,11-1,30,0,0),'30' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_126.png','tag30'  : new Date(2015,11-1,30,6,0),'31' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_132.png','tag31'  : new Date(2015,11-1,30,12,0),'32' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_138.png','tag32'  : new Date(2015,11-1,30,18,0),'33' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_144.png','tag33'  : new Date(2015,12-1,1,0,0),'34' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_150.png','tag34'  : new Date(2015,12-1,1,6,0),'35' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_156.png','tag35'  : new Date(2015,12-1,1,12,0),'36' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_162.png','tag36'  : new Date(2015,12-1,1,18,0),'37' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_168.png','tag37'  : new Date(2015,12-1,2,0,0),'38' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_174.png','tag38'  : new Date(2015,12-1,2,6,0),'39' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_180.png','tag39'  : new Date(2015,12-1,2,12,0),'40' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_186.png','tag40'  : new Date(2015,12-1,2,18,0),'41' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_192.png','tag41'  : new Date(2015,12-1,3,0,0),'42' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_198.png','tag42'  : new Date(2015,12-1,3,6,0),'43' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_204.png','tag43'  : new Date(2015,12-1,3,12,0),'44' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_210.png','tag44'  : new Date(2015,12-1,3,18,0),'45' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_216.png','tag45'  : new Date(2015,12-1,4,0,0),'46' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_222.png','tag46'  : new Date(2015,12-1,4,6,0),'47' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_228.png','tag47'  : new Date(2015,12-1,4,12,0),'48' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_234.png','tag48'  : new Date(2015,12-1,4,18,0),'49' : 'http://en.vedur.is/photos/ecm0125_island_tcc_lcc_mcc_hcc/151125_0000_240.png','tag49'  : new Date(2015,12-1,5,0,0),'mapCtrl':null };

            </script>


            <!-- content starts -->
            <div class="vedurkort">

                <h2 id="img1_title" class="boxhead">Total cloud cover</h2>
                <div class="boxbody">

                    <div class="knav">
                        <ul class="level1">

                            <li class="cat1 current" id="maptab0">
                                <a class="cat1" href="/"  id="maplink0">Total cloud cover</a>
                            </li>

                            <li class="cat1" id="maptab1">
                                <a class="cat1" href="/"  id="maplink1">Lower clouds</a>
                            </li>

                            <li class="cat1" id="maptab2">
                                <a class="cat1" href="/"  id="maplink2">Middle clouds</a>
                            </li>

                            <li class="cat1" id="maptab3">
                                <a class="cat1" href="/"  id="maplink3">High clouds</a>
                            </li>

                            <li class="cat1" id="maptab4">
                                <a class="cat1" href="/"  id="maplink4">Composite</a>
                            </li>

                        </ul>
                    </div>



                    <div class="cwrapper roundbox-active">
                        <span class="c_ c_tr"></span>
                        <span class="c_ c_tl"></span>

                        <div class="kort">

                            <noscript>
                                <img src="-1" alt=""/>
                            </noscript>

                            <img id="img1" src="http://en.vedur.is/photos/ecm0125_island_tcc/151124_0000_18.png" alt=""/>

                            <div id="img1_info" class="loadinfo hidden">
                                <p id="img1_txt">Retrieving first image</p>
                                <p class="s" id="img1_small"></p>
                            </div>

                        </div>


                        <div id="wmapslider" class="slider" style="margin-left:5px">
                            <div class="track ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slidertrack" style="width:500px">
                                <a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 3%"></a>
                            </div>
                            <div class="btnrew">
                                <a id="slid1Prev" href="/" >&lt;</a>
                            </div>
                            <ul class="level1">

                                <li class="cat1">
                                    <a class id="slid1Day0" href="/">day - 1</a>
                                    <ul class="level2">
                                        <li>
                                            <a class="disabled" id="slid1Pos0" href="/" > 00 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos1" href="/" > 06 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos2" href="/" > 12 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos3" href="/" > 18 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="cat1">
                                    <a class id="slid1Day1" href="/">day - 2</a>
                                    <ul class="level2">
                                        <li>
                                            <a class id="slid1Pos4" href="/" > 00 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos5" href="/" > 06 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos6" href="/" > 12 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos7" href="/" > 18 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="cat1">
                                    <a class id="slid1Day2" href="/">day - 3</a>
                                    <ul class="level2">
                                        <li>
                                            <a class id="slid1Pos8" href="/" > 00 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos9" href="/" > 06 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos10" href="/" > 12 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos11" href="/" > 18 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="cat1">
                                    <a class id="slid1Day3" href="/">day - 4</a>
                                    <ul class="level2">
                                        <li>
                                            <a class id="slid1Pos12" href="/" > 00 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos13" href="/" > 06 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos14" href="/" > 12 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos15" href="/" > 18 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="cat1">
                                    <a class id="slid1Day4" href="/">day - 5</a>
                                    <ul class="level2">
                                        <li>
                                            <a class id="slid1Pos16" href="/" > 00 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos17" href="/" > 06 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos18" href="/" > 12 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos19" href="/" > 18 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="cat1">
                                    <a class id="slid1Day5" href="/">day - 6</a>
                                    <ul class="level2">
                                        <li>
                                            <a class id="slid1Pos20" href="/" > 00 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos21" href="/" > 06 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos22" href="/" > 12 </a>
                                        </li>
                                        <li>
                                            <a class id="slid1Pos23" href="/" > 18 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="cat1">
                                    <ul class="level2">
                                        <li>
                                            <a class id="slid1Pos24" href="/" > 00 </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>


                            <div class="btnfwd">
                                <a id="slid1Next" href="/" > &gt; </a>
                            </div>
                        </div>

                        <div class="clear"> &nbsp; </div>

                        <div class="smallnote" >
                            <a href="/"  id="img1_getall">Load all</a>
                        </div>
                        <div class="clear"> &nbsp; </div>
                        <span class="c_ c_bl"></span>
                        <span class="c_ c_br"></span>


                    </div>

                </div>
            </div>


            <script>
                VI.bitmap.initFirstMap();
            </script>

            <!-- content ends -->
            <div class="pgextra1">
                <div class="wrap">
                    <script>
                        var VI;
                        if (VI == undefined) VI = {};
                        if (VI.data == undefined) VI.data = {};
                        if (VI.data.aurora == undefined) VI.data.aurora = {};

                        VI.data.aurora.idx = {151125: {act: 4,
                            sun: ['s0','16:01','10:30','17:08','09:23'],
                            moon: ['14','t4','16:44','10:23']},
                            151126: {act: 3,
                            sun: ['s0','15:59','10:33','17:06','09:26'],
                            moon: ['15','t2','17:19','']},
                            151127: {act: 2,
                            sun: ['s0','15:57','10:36','17:04','09:28'],
                            moon: ['16','t2','18:08','']},
                            151128: {act: 2,
                            sun: ['s0','15:54','10:39','17:03','09:30'],
                            moon: ['17','t2','19:10','']},
                            151129: {act: 2,
                            sun: ['s0','15:52','10:42','17:01','09:32'],
                            moon: ['18','t2','20:22','']},
                            151130: {act: 2,
                            sun: ['s0','15:50','10:45','17:00','09:35'],
                            moon: ['19','t2','21:39','']},
                            151201: {act: 2,
                            sun: ['s0','15:48','10:48','16:58','09:37'],
                            moon: ['20','t2','22:57','']},
                            151202: {act: 2,
                            sun: ['s0','15:46','10:50','16:57','09:39'],
                            moon: ['21','t2','00:14','']},
                            151203: {act: 2,
                            sun: ['s0','15:44','10:53','16:56','09:41'],
                            moon: ['22','t2','01:31','']},
                            151204: {act: 2,
                            sun: ['s0','15:42','10:56','16:55','09:43'],
                            moon: ['23','t2','02:46','']}}

                        if (VI.conf == undefined) VI.conf = {};
                        if (VI.conf.webPath == undefined) VI.conf.webPath = '/';

                    </script>

                    <div class="publist aurorabox rbox roundbox-active">
                        <span class="c_ c_tr"></span>
                        <span class="c_ c_tl"></span>
                        <h2 class="boxhead">
                            <span class="hidden">Aurora activity, sun and moon - </span>
                            <span id="au_idx_tit"></span>
                        </h2>
                        <div class="boxbody">
                            <h3>Aurora forecast:</h3>
                            <div class="idx" id="au_idx"><ul>
                                <li>0</li>
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>6</li>
                                <li>7</li>
                                <li>8</li>
                                <li>9</li>
                            </ul>
                            </div>
                            <div class="odds odds4" id="au_odds">Information unavailable</div>

                            <h3>Sun:</h3>
                            <p id="au_sundown">Information unavailable</p>
                            <p id="au_dark"></p>
                            <p id="au_sunup"></p>

                            <h3>Moon:</h3>
                            <div class="moon">
                                <!-- <img id="au_moon_img" src="http://en.vedur.is/icon/moon14.gif" alt=""/> !-->
                                <p id="au_moon">Information unavailable</p>
                            </div>
                        </div>
                        <span class="c_ c_bl"></span>
                        <span class="c_ c_br"></span>
                    </div>
                    <HR class=stream>

    <style type="text/css">
        body{
            background: #FFF;
        }

        .pgmain{
            margin: 0 0 0 0;
        }

        .pgextra1{
            margin-left: 600px;
            margin-top: -506px;
        }

    </style>

    </div>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
