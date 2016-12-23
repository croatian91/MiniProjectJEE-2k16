-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2016 at 06:10 AM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MiniProjectJEE_2k16`
--

-- --------------------------------------------------------

--
-- Table structure for table `County`
--

CREATE TABLE `County` (
  `id` int(11) NOT NULL,
  `geom_x_y` point NOT NULL,
  `geom` polygon NOT NULL,
  `id_geofla` int(2) DEFAULT NULL,
  `code_dept` int(2) DEFAULT NULL,
  `nom_dept` varchar(17) DEFAULT NULL,
  `code_chf` int(3) DEFAULT NULL,
  `nom_chf` varchar(24) DEFAULT NULL,
  `x_chf_lieu` int(4) DEFAULT NULL,
  `y_chf_lieu` int(5) DEFAULT NULL,
  `x_centroid` int(4) DEFAULT NULL,
  `y_centroid` int(5) DEFAULT NULL,
  `code_reg` int(2) DEFAULT NULL,
  `nom_region` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `County`
--

INSERT INTO `County` (`id`, `geom_x_y`, `geom`, `id_geofla`, `code_dept`, `nom_dept`, `code_chf`, `nom_chf`, `x_chf_lieu`, `y_chf_lieu`, `x_centroid`, `y_centroid`, `code_reg`, `nom_region`) VALUES
(1, '\0\0\0\0\0\0\0åF)ÒÀ@	ÆÍcH@', '\0\0\0\0\0\0\0\0\0\0[\0\0\0q+Ê{»’@äzü5”XH@p½¨Xd@þéæú1XH@Cwæÿ¾Z@)ÞfYH@u\\ ¥?@Kü“’YH@ÈX¨	7@œäOº4ZH@öaîÆ“<@lU<dZH@h"Y™\'@cTÏô7[H@µ÷Œ¤@Ä4gòQ]H@fÜ¾¨—@R	n	^H@ÎM6Zà@Ÿú¢kR]H@m—Þ]Í@3Ô&ô!]H@taLÿ¨È@©~Ô!]H@¹²Î¼³@À½@\r]H@)ßñJ™@þÇxÅU\\H@}A?÷›@@çå+[H@›Ø&ñŠ@·D|?\\H@ÉuôvZ…@‘úÙúÚ\\H@Ç#{@Ë-¯\\H@¤¼ÑšgP@éÐÏfá[H@tý‘ÁI@wîÓ%ï\\H@û;ì¹@sç ,\\H@rL\\5÷@¨R¹.\\H@:<Ý§ö@ŠÊ¬*]H@3ëFklô@¨­‡P_H@ÜJCÍâÔ@viŒ^H@Yªâ9¹@s`FÙ^H@¯)n‚`¥@€@3ÑÁ_H@~UÖI>—@Ý»iŠ`H@ºþ£›Ô@w,‹>×_H@%ï†‘£z@+ÃŒ–`H@æÍzwç†@êIüŽ%bH@ïð¹­/@ÑÔŒÐ¦bH@Í‚UC›@¦-´¨dH@LÂ¾£°Œ@¥I\nÝdH@1èËl—@RñD™fH@íéKÎi@7—À¬gH@C8\Zæë¡@@ $*hH@^ÎÁÞ¿§@Lçà“hH@9j—SÀ@þëºjhH@•\r¬Ò@ó„åO»hH@ªdšRÐÙ@ƒc^qhH@{å+^åé@°Õ¶hH@†VÝžÜ@I¢Ün°iH@þOó9@\'w­«$jH@NÝn!\\@ÊBŒ{iH@¯\0Øfp@v6>ÃciH@„º¾W~@E—ÃhH@ÿö‡¢°@ZxV©¿hH@ÔW‡5Þ¹@Ë:ªÃiH@–Éépë¼@]½’>gkH@.Ò‹q3•@]Õ8½"lH@3ŠçÆk@RÅªÁ¸kH@¸G$`b@Î±²\\ÞkH@{UUŸ\rU@(°×jH@/Õ¾Ô)O@„ð2G*kH@ªA\rêS@ zQ^lH@þíê©T@íeùÖ³lH@Üã~HZ@tÞMé¶lH@ƒn"ïn@þ»Ü¸§lH@ZÑ^{@Ò;I(mH@hß:òª“@8ýî®òlH@LkÁ{e¢@êâE~mH@µ^Š.Ú@Ò4­BnH@í5kœø@µììznH@¬<êkÿ@aHV×†mH@Éžc@]–mÏ¹mH@ÿé=ÿ@¾&OÒlH@z½¶t @ëÀ¼úlH@;L@lõ"[ÅkH@.‚K@Éx=lTkH@b7Ó  Œ@ÄRŽl†iH@#O°üHŒ@)\\®j½hH@Õû®„@nŒŠ’UhH@†“þiö¼@™a^ZgH@R\0î Å@äÕ0Â-gH@ô²¢Žz»@p6|9fH@ºî(nÊ@`9cjŒeH@û#½Èz²@Û²¨²&cH@Ûn_nº@âUÈdÛbH@(JØPÚ@Ýx, übH@\nH %ë@|ÁóhlaH@j}` ÅÇ@b‹UZaH@+2oáË@Öö=m`H@Röcä¹³@m‹Êæ=_H@«¦Ø(çÁ@`•IÊ«]H@ý4ÊÃ«¤@M…§ÐŠ\\H@u\Zák„‹@R/É©¿ZH@—Ž!$éŒ@{JeE†ZH@\n©CB˜@ôô×`ºYH@w\rnþŸ@›ÙUyYH@q+Ê{»’@äzü5”XH@', 95, 94, 'VAL-DE-MARNE', 28, 'CRETEIL', 6598, 68532, 6609, 68531, 11, 'ILE-DE-FRANCE'),
(2, '\0\0\0\0\0\0\0•p>ÖÒ@ÛÆñquH@', '\0\0\0\0\0\0\0\0\0\0[\0\0\0†“þiö¼@™a^ZgH@Õû®„@nŒŠ’UhH@#O°üHŒ@)\\®j½hH@b7Ó  Œ@ÄRŽl†iH@.‚K@Éx=lTkH@;L@lõ"[ÅkH@z½¶t @ëÀ¼úlH@ÿé=ÿ@¾&OÒlH@Éžc@]–mÏ¹mH@¬<êkÿ@aHV×†mH@í5kœø@µììznH@µ^Š.Ú@Ò4­BnH@LkÁ{e¢@êâE~mH@hß:òª“@8ýî®òlH@ZÑ^{@Ò;I(mH@ƒn"ïn@þ»Ü¸§lH@Üã~HZ@tÞMé¶lH@þíê©T@íeùÖ³lH@\\xÚ’R@]©éxvmH@fÖ7\']N@ÞäZÂoH@Y\09*\ZI@»£yßqpH@Ò‡Bå3@ºZ2¥qH@>#àh0@›c¤PØqH@÷Gð,@€Ês¶rH@TÆxù”@´^ YsH@Þ&0½Xö@ŠŠKSisH@¦…=í@»Ïœ÷gsH@êçÑŠ¢Ð@Oö8esH@‹ BÎ£@*M¥QYsH@ýö>•@³Nu<BsH@lÃ°“‚@±Âk¨þtH@êýŽ@¿=)a=uH@¡O“@©¥ë—uH@w(/ª @óŽ*vH@ !²ë°@,ðÚ=wH@§¦ôYå­@	¡”u„xH@×%þM~@¿×ücVyH@ÄèóéS@×/›G¹yH@ä#c.–V@…¾dÇyH@À‘~…ÄN@Ï:Âï¿zH@_úf‘c@‹ˆLw±{H@á8MÎb@É¾*{H@–×åœ@í¸è¬zH@Ñj @)§}4ÖzH@ëàúŸª@K]ç÷IzH@ŠzÒ©è¿@=*k’Í{H@J!%´äÓ@PŠÊ­™{H@‰JCãí@ØïŠ³|H@Ç’³ê@OÕBk|H@”–$@@Ïi×PS|H@÷‘iRB@•zS€bzH@Å¢¾ÆY@T[œ—zH@i¥ju…”@ãEË°WzH@Í®—¤ê¥@€¼‡æVzH@´uß	­@0ˆ°@?zH@Yƒ6ƒ»@Ä÷\\ R{H@5}Ôí@x\ra/“|H@B,“ÓÓ÷@T\0=.‚|H@%Ç¸‹@Ò_K0Ö|H@ä©¸Ú@ÅÚ\\¿@}H@U¤ß«@óºP‘}H@Ú¨ë2C@\nG0‘€H@÷]çÿ­a@GsÃŽ€H@ÊÓ2«l@¨+ó¯AH@¸ê\n·†@aO–H@Ø¼×-}’@÷?)2€H@Ã½î S›@¿#ki	€H@+fâÆ£@Ï®GpS~H@¼ÍPæQ›@Ch„}H@ámØ†@~ìñE}H@Æ\Z?¤Ú‡@\nBð%Õ|H@ÁÌóØ8¼@_ÖQ6„yH@W©OyÄ@mºl‡$xH@€¶‡¸Ñ@¹¸wH@Zø\\ Ò@Ø¡;(õvH@dð<¨½@C±‚,gvH@¿;_¶@~Ÿê\ZztH@¯…¥Ž+½@I4Ò /tH@z«9&9»@¯î‹tH@Ëç¥r¯@)µÓÕmsH@q»¸‰!°@$ÐL·”rH@ßé-²(ˆ@°¹=žóqH@—uÏªy@Š,ßÁRqH@"ãHñ^@”7Æ¦wpH@	†$€Š@j©\r&ÕnH@>›îÚ²@•G|¸nH@áB"f©@- 9˜mH@›& „7—@ï#qª;mH@¯`’´°@œe›ÍÈjH@=Ä­+0Ä@m:ÝÜ9hH@†“þiö¼@™a^ZgH@', 94, 93, 'SEINE-SAINT-DENIS', 8, 'BOBIGNY', 6588, 68679, 6617, 68687, 11, 'ILE-DE-FRANCE'),
(3, '\0\0\0\0\0\0\0ÚsÙ÷R÷@”Z£tlH@', '\0\0\0\0\0\0\0\0\0\0M\0\0\0ºþ£›Ô@w,‹>×_H@Òÿ«K\0‚@3!}¥]H@¡/{BBn@êOü_]H@¸ñ}±³j@³ÛP¾¤^H@‰B	€D@Õ ò÷]H@&ÒV/:@¨¾d^H@‰^¼.62@ç–eüÏ^H@ðIŸØÿD@`	]Á_H@qŒ5@tõÎFÚ`H@é	Ê€\'@ÜšÂ¦\\aH@·=ñ\0@£´ooaH@úû=2åÜ@Ì¡åbH@|:X«Ô@yÆ@Ü!cH@\nÜ%VþÏ@Y¶OWcH@æë0"Ð@hË„dH@õLˆô#Ë@Xí2idH@,sðŠ\'®@Ã$Œ°½dH@Ý›ÐïU¬@sÖ(à’eH@f$]ÿž@Lß€2fH@¸9ª.©v@¦•§ˆfH@¬ ”vÄ|@«5É`fH@s,Böi@QsÿŽ1hH@˜JÑuJJ@ÛÑ`2	hH@Ÿ¬y…¹4@Þ\rÐhH@‘36@`~}ë#iH@sÍ²%0@¡^jH@â6¿*@H	–kH@×z“$D3@\n"o_lH@¼‡&©hG@ÒÏ ‚lH@ú‰ó4@¤Ñu[ãmH@[;N³è:@-Zpß¤nH@fï>2þ3@Í0ò‘xoH@rÛ:P:D@/,dÌ·pH@+•ÓZ@Hø5ªrH@¾R*¥êd@#"7ŸsH@#y…uÏš@!7²šOtH@ª!GÇ`Ã@"^ÛÎÖuH@~Š"ƒaÙ@I½ÀvH@­\ZFû@B©úæwH@*¢5S$@mÏš`yH@ÄèóéS@×/›G¹yH@×%þM~@¿×ücVyH@§¦ôYå­@	¡”u„xH@ !²ë°@,ðÚ=wH@w(/ª @óŽ*vH@¡O“@©¥ë—uH@êýŽ@¿=)a=uH@lÃ°“‚@±Âk¨þtH@ýö>•@³Nu<BsH@ÑZ²"n@Û–’srH@èÄ’F@¬L™\\qH@D¼_›T=@ ©BupH@å‰‘ðm@<Õa%ªpH@b·×Ó\n@Úþ¥ÑêoH@Ó;Î¬0÷@aºß/pH@†‰ë•˜Ú@ê$3«=oH@€hæ¡(Î@—?nH@nœ`@6Ë@Ón˜@mH@Ÿ+Âü@´:Ä9TlH@¬ÇO²J@à²%kH@Ï\'ðÔ.\Z@ø‹1-¾jH@FÛ²v$@ «BÇjH@ZmûÃè,@Ÿ{éjH@~y2?@&1ijH@Aå?Œ°P@‚Š\\njH@,â\Zi@ÿ‹ÞiH@%Î©?`ƒ@9LÑ@iH@^ÎÁÞ¿§@Lçà“hH@C8\Zæë¡@@ $*hH@íéKÎi@7—À¬gH@1èËl—@RñD™fH@LÂ¾£°Œ@¥I\nÝdH@Í‚UC›@¦-´¨dH@ïð¹­/@ÑÔŒÐ¦bH@æÍzwç†@êIüŽ%bH@%ï†‘£z@+ÃŒ–`H@ºþ£›Ô@w,‹>×_H@', 93, 92, 'HAUTS-DE-SEINE', 50, 'NANTERRE', 6416, 68659, 6458, 68556, 11, 'ILE-DE-FRANCE'),
(4, '\0\0\0\0\0\0\0 =Wx½@úçKj¦mH@', '\0\0\0\0\0\0\0\0\0\03\0\0\0þíê©T@íeùÖ³lH@ªA\rêS@ zQ^lH@/Õ¾Ô)O@„ð2G*kH@{UUŸ\rU@(°×jH@¸G$`b@Î±²\\ÞkH@3ŠçÆk@RÅªÁ¸kH@.Ò‹q3•@]Õ8½"lH@–Éépë¼@]½’>gkH@ÔW‡5Þ¹@Ë:ªÃiH@ÿö‡¢°@ZxV©¿hH@„º¾W~@E—ÃhH@¯\0Øfp@v6>ÃciH@NÝn!\\@ÊBŒ{iH@þOó9@\'w­«$jH@†VÝžÜ@I¢Ün°iH@{å+^åé@°Õ¶hH@ªdšRÐÙ@ƒc^qhH@•\r¬Ò@ó„åO»hH@9j—SÀ@þëºjhH@^ÎÁÞ¿§@Lçà“hH@%Î©?`ƒ@9LÑ@iH@,â\Zi@ÿ‹ÞiH@Aå?Œ°P@‚Š\\njH@~y2?@&1ijH@ZmûÃè,@Ÿ{éjH@FÛ²v$@ «BÇjH@Ï\'ðÔ.\Z@ø‹1-¾jH@¬ÇO²J@à²%kH@Ÿ+Âü@´:Ä9TlH@nœ`@6Ë@Ón˜@mH@€hæ¡(Î@—?nH@†‰ë•˜Ú@ê$3«=oH@Ó;Î¬0÷@aºß/pH@b·×Ó\n@Úþ¥ÑêoH@å‰‘ðm@<Õa%ªpH@D¼_›T=@ ©BupH@èÄ’F@¬L™\\qH@ÑZ²"n@Û–’srH@ýö>•@³Nu<BsH@‹ BÎ£@*M¥QYsH@êçÑŠ¢Ð@Oö8esH@¦…=í@»Ïœ÷gsH@Þ&0½Xö@ŠŠKSisH@TÆxù”@´^ YsH@÷Gð,@€Ês¶rH@>#àh0@›c¤PØqH@Ò‡Bå3@ºZ2¥qH@Y\09*\ZI@»£yßqpH@fÖ7\']N@ÞäZÂoH@\\xÚ’R@]©éxvmH@þíê©T@íeùÖ³lH@', 76, 75, 'PARIS', 101, 'PARIS-1ER-ARRONDISSEMENT', 6516, 68624, 6517, 68620, 11, 'ILE-DE-FRANCE'),
(5, '\0\0\0\0\0\0\0Óþ·aò@ÜÀp9ÝBH@', '\0\0\0\0\0\0\0\0\0\0Þ\0\0\0ÖÈ¨8@Ñ³ÒU\r)H@^ð<1@å\r¦XZ(H@iõ\Zð¥õ@R]{š‚\'H@ÀLÚä\rñ@ÛT¶×\'H@h€?nà@“uŽD‡\'H@>—¼ø®Ø@(µ\ZA¼\'H@8ã;¹’¦@¬gæoÈ)H@…>YWm¢@ÕFš*H@*N„Í–‰@B^Êp*H@¼$ _Ø@ØpANA*H@—6KÓf@žöÄÖ\'H@æ¾À†lU@™HJ“\'H@Út9‡\'\'@!õäƒS(H@Ú\n³)ï	@W’à”&H@9–¶ÿö@–AjÜ1&H@’óVÊYü@:«¼_(H@!½È\Z…ç@ç+ì~(H@QÕ´Šqø@I?g`<*H@Z"¨JÅÚ@’[§É5*H@ð`p¯·@	7­+H@\n­í¨@cøM!\',H@$¡šÉ^v@¨¾¿Ót)H@ çóø­s@<Ê¥P*(H@Ó $ËÞ]@°4:S(H@}@¤C)Z@gèÛr(H@²4›žß<@òH…B(H@úõ$$;@vÚRÕy\'H@	ªg’K@ô-ŒZ¼&H@åüZïJ@Ðf.3&H@èaâ#‚â\0@W’Yl&H@á=½aäè\0@}6ÜåS\'H@ßYdŒÔ\0@y[3>F\'H@ÉæfnI³\0@×yÓ^²%H@\rû\\òk\0@PÍÒ%H@c¤V$hi\0@„äÝ’%%H@kÑVŒX\0@ÃR¡$H@k¯»ø`;\0@çðÿåñ$H@üDèvÿ\0@ªÓQX…$H@lK˜`Åçÿ?f¡–Ø®$H@ðE$ªÿ?4à@qä$H@‰=ªöcÿ?Í?›«Ã&H@ä¦°¨þXÿ?ÓœÕ#ƒ\'H@_I	÷íŸÿ?)…?x:(H@z†³Þœÿ?-Ä—¥f)H@"Á9Ù®·ÿ?K(K*H@Ô&-Î¨‡ÿ?l6ë„+H@¦§/&œÿ?\Z´pF®-H@§n\ZÅ5Ìÿ?ª\\‘.H@°„+·ä¡ÿ?Û2D‰0H@tòîÀ±wÿ?¦ö­±0H@ÅæºÊ¢ÿ?Ö$Ù3H@tY¾Feÿ?ïîÀ3H@;¢¶|-ÿ?.?Ç“4H@x \'hãþ?:8â¸´3H@Ö€HFàþ?€ôÔ°4H@\'\\FŠuÐþ?EVæÔ4H@D‰A5ÿ?j×ªR	6H@ý\ns\0/ÿþ?`yÌ¼7H@<Hµºÿ?6ÚÏ¡r8H@D¯Œ;òþ?ør&Ž©8H@Úø.Úãþ?¥¶±p:H@¤DàEÁþ?‘¤k¥’:H@¡…®B%ªþ?¤Ë‹§M;H@QZ%}Q«þ?*[ô¡<H@%‚¯Åþ?Jš€+T=H@ÿ4îþ?iYVOŸ=H@k/<Îòþ?œ¾Þ“u?H@GŸÕ?ÿ?$ŒW¯CH@¾o6lÿ?ŽN“CH@ÐÖ¡œ’{ÿ?‡úÉ´[CH@/¡ç0Ô¢ÿ?Mj£’CH@Læä)žÿ?ýÁc·lDH@ÓlGÑdÿ?<w¶zDH@ò•˜@-òþ?4?:FH@Þ„[çÿ?2ôièGH@ÂÜ\0(gÿ?R«{	¾GH@uí²y´¬ÿ?\rš.ôFH@žª–óSºÿ?ßæÛ3FGH@ÛàqÞý#\0@Ë¨çY_GH@[{ä,\0@€ßÔí\0JH@ˆ–;º2I\0@êaâ+`KH@¤êÙ®C\0@8þÊº‘LH@¾íá´G\0@ogÌkMH@¥,¸ÚBp\0@‰ˆ:°ÑMH@k\n‚Läu\0@š	¥OH@aì~JW\0@O‰¨×,PH@*¨òÿ6U\0@Þ¸x÷=PH@c(SúhI\0@žàê7áPH@±QÑ³/G\0@5˜Û\ZRH@*Z\0‡)\0@€Ì(\n0RH@”Yä\rà\0@I3{¨SH@HElÉ,\0@¥ŠÅïlTH@ÓÄlr7\0@–s-TH@#\'Óþ0;\0@GÎð}õTH@qŽãD\0@†O”ÞVH@K‚0–M\0@« ˆsWH@ü `L%W\0@ßÔéå WH@Ù8T…ß]\0@¼mèWH@§)n5ýq\0@&°K¡èWH@]n?97ˆ\0@¦ÍtPìWH@»YúßŽ\0@4îyà.XH@µG»î¨\0@S¯§ü¼WH@óî›bó¶\0@ÙãßeYYH@ìõ­òfÈ\0@szÿÕXH@ÓÍ=Ç\0@]Ã4¤ªYH@ìÇZöá\0@Y%[×p[H@„gˆLŽÜ\0@Õ&×Ý[H@8+hÙ\0@ jÕf\\H@2}63Câ\0@Œi+ºÉ\\H@€ßÆ0Ï\0@÷ƒþË]H@‚.ûUÖ\0@A,6v^H@Ø÷l%ñ\0@u†¼å^H@Ò(Wp@³Ÿm”Z^H@’L€Õs@öLuŸ_H@â.–@‰ƒ˜_H@ï!ö§ô5@!LÏ!V`H@±+nÀLK@ºw	-Q`H@3éf@‚+ÒZö`H@¤Aà»!„@Kûþ`ˆ`H@éâö.Š@bæË¾aH@!Û5tB€@	ƒËábH@y¸—Oz†@þÐ™g4cH@ãySp$›@R•(·&cH@QúNæY©@¼‡¸²˜bH@cïf |È@.ðò­bH@8Õj%KÑ@·rvƒébH@\nÜ%VþÏ@Y¶OWcH@|:X«Ô@yÆ@Ü!cH@úû=2åÜ@Ì¡åbH@·=ñ\0@£´ooaH@é	Ê€\'@ÜšÂ¦\\aH@qŒ5@tõÎFÚ`H@ðIŸØÿD@`	]Á_H@‰^¼.62@ç–eüÏ^H@&ÒV/:@¨¾d^H@‰B	€D@Õ ò÷]H@¸ñ}±³j@³ÛP¾¤^H@¡/{BBn@êOü_]H@Òÿ«K\0‚@3!}¥]H@ºþ£›Ô@w,‹>×_H@~UÖI>—@Ý»iŠ`H@¯)n‚`¥@€@3ÑÁ_H@Yªâ9¹@s`FÙ^H@ÜJCÍâÔ@viŒ^H@3ëFklô@¨­‡P_H@:<Ý§ö@ŠÊ¬*]H@rL\\5÷@¨R¹.\\H@û;ì¹@sç ,\\H@tý‘ÁI@wîÓ%ï\\H@¤¼ÑšgP@éÐÏfá[H@Ç#{@Ë-¯\\H@ÉuôvZ…@‘úÙúÚ\\H@›Ø&ñŠ@·D|?\\H@}A?÷›@@çå+[H@)ßñJ™@þÇxÅU\\H@¹²Î¼³@À½@\r]H@taLÿ¨È@©~Ô!]H@m—Þ]Í@3Ô&ô!]H@ÎM6Zà@Ÿú¢kR]H@fÜ¾¨—@R	n	^H@µ÷Œ¤@Ä4gòQ]H@h"Y™\'@cTÏô7[H@öaîÆ“<@lU<dZH@ÈX¨	7@œäOº4ZH@u\\ ¥?@Kü“’YH@Cwæÿ¾Z@)ÞfYH@p½¨Xd@þéæú1XH@q+Ê{»’@äzü5”XH@)Âì\rœ¤@àî@XH@žþÈý.¬@¡ú¬VH@/«€EÏ˜@IÂÙ‘VH@Åg1=Ò…@ÍþËµ§UH@e–e5u@Â¥4X!VH@Ôú°°la@çmƒÉüUH@”KmØD@x™Ìº#TH@âþ´¸;b@Gô<(SH@`ñuïV@\Z3froRH@½1[HS@6w¹ù QH@%jŸ!Ú+@m2száPH@’ÍÔ#@˜ªÎÁPH@¢xiV«5@ô¼«¼¹NH@¤VÓW@]¥µ3íMH@i7êãT@´2¶ÎfLH@óh:mn%@Aò0¨JH@\\çÙ –,@XC~f_IH@å¯†µ@@ûß‹¦mIH@y‘Ò®X(@VÔ_ÄHH@Ñž”¿$@é£èÊðGH@ª5{™þ@g"G=~EH@v^[@î‘·tEH@_,[/û@¢-5BH@ñé(@aO©BH@ö“@†=¥k;AH@„UÑO@í×‡:8AH@W¼I¹@Ù†zi?H@Ü¢afÁ@9ÒHƒ>H@élÎ{@Zà£7ö=H@—çaV)@ù2IE;H@ÖïýCÿ@ä,OÂ:H@°£VÈû@–o´‡:H@î`dÝD@³ªë§:H@þ˜Íº	@Ä4V9H@bmmÍL\n@Ÿz)Ø7H@\'sµs#@{hYd¾6H@‰·õç``@­Àíßa3H@äpýœ,@O y§·3H@Ô¼˜.E\r@O,oŒ2H@v¦fã@Eì„TË2H@~p—jhÊ@Cø1H@€<ÛS\rÜ@}Á€Mô0H@ŒÁE™@Ø%B¦Õ/H@\'Ÿêçš@Í¥G%ÿ.H@@),1‡@ùZ-%/H@Ø‹!áKp@3~ˆV.H@·«wv‡@€YˆÍ¸-H@öUÊFVq@ÑÄ"{,H@rƒ‘_zx@ÖKñ0Ò*H@SXÊ%\\@ÎØÚ\'+H@í¹’Û5@(#n *H@ ‹®“#@—·ßý*H@+¥´Á)@Ò^@h²)H@ÖÈ¨8@Ñ³ÒU\r)H@', 92, 91, 'ESSONNE', 228, 'EVRY', 6579, 68361, 6441, 68249, 11, 'ILE-DE-FRANCE'),
(6, '\0\0\0\0\0\0\0ˆLƒÈ*@Œ>Ýÿ’ŠH@', '\0\0\0\0\0\0\0\0\0\0Ö\0\0\0#y…uÏš@!7²šOtH@½jþŒñ—@õ#–· uH@Ä‰×£@F0è<vH@æ¬<öf—@ÜÍÃU¶wH@ÛþîÚ¦@?Ï6‡gxH@A˜™¥@Ë¿É\Z‘yH@‡åa˜b@¥ûSŸzH@þðrfÂl@“~»ÙzH@S+ß¬Ül@ãFÑST{H@°AÂ¯rf@CúoX“|H@-CÆM±T@ìâ¡}H@Â1‘8@R«øŸ8~H@&\rîô@¶íA™~H@g¸Y¸ûø\0@Z}•ÛXH@åÃQZ´@|ƒYH@pµ	TNø\0@«}òû]‚H@\'J7\0Ý\0@“¥1)H@Ùu¿ßç­\0@Z>üýàH@>š1kÔ’\0@á£Àþ7€H@†E¶Ióƒ\0@¾øëõH@aaB<_\0@’m¸<€H@‘\0Æ(6\0@ñÑŸ€H@àh;e\\0\0@±û×8»H@Ôç¥Î \0@\Z€Ñì\rH@)Ð!ü	\0@	í¨,JH@Øµ0¿Þÿ?r€íy°‚H@¯Ýf$D´ÿ?ò®w‚H@Î?Jlyÿ?QCKCø‚H@»UY4Pÿ?MöcÊ‚H@GÙU[wGÿ?gI˜ó#ƒH@@T‹5!ÿ?Ü•ºË;ƒH@TOÞ×<ÿ?FÌ‘É‚H@Í®~™þ?Ó3‹S…H@ˆÄ• þ?ìà‹ëÝ…H@Ôƒ\ZäN‰þ?Õy¥%†H@6Ñþ©"þ?Ù+Ýý,„H@{"VdAþ? ÖíZ€‚H@Ë³‚åý?]Ï‚ÃO‚H@×íGS“Éý?E\r3£ÎH@²f9U‚¿ý?Q	^¿ÉH@^-çŽÌý?’Y)Å•‚H@–ìÖÀµ¿ý?÷Ì¤ÐƒH@oöCšŸý?3f>E„H@‹ Ž¾õØý?pGe;[‡H@äNŒvý?â›FñJˆH@îH•Esý?‚z„àˆH@ùdÑXx-ý?s=ÚgÐ‰H@àŒ·Úý?g\rúÞÇ‰H@ÕÅÝ½§¾ü?lÔ—ç>‰H@@ò÷Ü`Êü?Š\rª{ˆH@{ƒ‘“sµü?5‹s‡H@*<S„N¡ü?o½h‡H@Íºï/ìTü?»~[e‡H@9+Ú—&ü?‹]·ˆH@ŠCKLšü?†œ¥™‡H@jYoÒü?ªÐJ,†H@V]@6,Åû?³äK;†H@:8¸ŸŠ¶û?B®t†H@É8$ÑG“û?³qÜÊÁ…H@âá>ÚCû?Æ‰GA‡H@Âd³Õ\'û?[÷É_ˆH@Ù¢¬Ù`\0û?d\r"I2‰H@*iÝ¡»ú?Âëò¾ŠH@²wXú?ì7W´hŠH@KJD¹&ìù?ÿÓZv‰H@E<}Ù,Ôù?bô¥U‰H@ŸÔò ½ù?_ÿ„oø‰H@Øs[ ùù?YòÃ‹H@î¡8éù?±½0]B‹H@TE´ìù?EãiŒH@ßtGú?$û“ÈtH@¢5s8­^ú?$®	H@yÐØÕá~ú?Ë¨î—°H@Yˆ$âsú?à\r.,’H@©–÷Xšú?U‹<…“H@ôò«#ý ú?¥|¬´“H@üÚõ¥I•ú?#5P7”H@9H•ù€µú?|.Ÿ©•H@Ð«žN©ú?j„(~–H@fã5Ë¿ú?Hã¬€\'—H@¯žÿ„ºú?\nÆÚN˜H@mþÍÅªÐú?àžÝ‡ˆ™H@éC½:fÅú?ÚÉÑóQšH@^\ZÔÒú?³¯ø(›H@¥Vå±f1û?1ñƒfñœH@ âüfEû?03«É¸H@`ÒQ`û?…ÝC\\žH@¡ù‡gåØû?^Ì5°™œH@Cœ\'ìÅû?Uz2ºjœH@é{›\'*»û?—E)S&›H@«-¨tDsû?A_jª^šH@|ÔA¼àrû?aê;¼ð™H@0%ÊË—û?³Õ¦d«™H@ê‚¥è#û?þÊàõß˜H@®F[£æÓû?qs†ëŸ˜H@WžÂâû?€—½»—H@^ïÈ¡ü?å8Çlb–H@%¶ˆålü?ƒ[&±—H@ÅÑøGnü?VTÍtµ—H@Ææ/ƒ²ü?m–·P—H@_ƒ/—Àü?%uæµ—H@]9"Õšý?Fˆ¨„–H@hj\rKý?ŽtV«–H@á4—EMbý?<³¢ù•H@q~ÖÝXXý?Ãæˆª"•H@˜â2Î•ý?äl%”Ò•H@"FQÛùý?}bÈíH–H@Ð»É:þ?j0V†p–H@ä\Z\0þ?i­Ì”H@Ž}Õ|óþ?hyàk7–H@×éõó@õþ?’ÏÞÏ•H@)ÊïªÀ0ÿ?RÝýóÞ•H@ [ø…5gÿ?YLÚvY–H@jûÒ]Ì•ÿ?ôâèv—H@	˜†düÿ?Ò¾“Äs–H@¾<+O,\0@³é!‹&˜H@0Ìw?\0@*Òù#˜H@¥\'©_GN\0@fìšã—˜H@Û<ŠÙ“N\0@‡Ä ˜H@0§…9¢¥\0@ÌÕBðšH@ÎÆé!j¥\0@S¹¤…šH@$aõ\0Ð¸\0@RX1LšH@7Â³ÜYÄ\0@‡‚ÑT˜H@«Yð\0@¬Ê\Z˜H@SóÖH@š¯<´e˜H@Ì_V·@°Y1O—H@—ÌÉ¢8@1ô¢y‡—H@€¹LyÖN@übþ€À–H@œKW"C@éb‰æ–H@ÿúfŠºO@ÓCÇB•H@){Ž†³X@‡èÑß•H@mµ!4p@ôR}DÍ•H@ÈA-"¦h@­ðmmˆ–H@ö›Ë½@ø¶¶],–H@p‚YÈL¨@±™a–H@Ì\nÖ• Ã@Úoð–H@Uo“-Þ@4Fpš=•H@j»@8~ø¨Â“H@\'Æ†ÖÂî@Ï•ºf“H@ñ—„@Ák«“H@Ã)ƒ@Xi!.C”H@×‘‡\rÚ!@N§Tá”H@æ-³‹J@£»XFx”H@ïè;]aO@e9®ú¸•H@òbce@æxë¬–H@ÿjñÚh@£w9œ‰—H@…«ø|@Âì\rª—H@pMIÊÿ’@©²$››—H@zÀ\ZlÖß@g\'ŸHÜ’H@À=:ü@ÿØ›\ne”H@¼ e(@"ºKò+“H@Cìi{H@È)w“H@žç£ó÷†@<+ó­©’H@çPÅá‚@qaŒ’H@Õ×¤w²{@rÊ%‘H@à¨&²¦@ápÔ\'ï‘H@Š\0``F°@u´á‘H@Y†[Ñ»°@ˆ¦6c|‘H@K´Y”!Ò@K¬»æÆH@öÍ …çÐ@È|waH@K¡R‰jþ@§èÉˆ¦H@g™BÓô@¢¶^oãŽH@€Üå`ë@%]:>H@·•Î?@¿Rc’¿ŒH@4—©fE@ÅkÞø>H@Ù=ƒ[W@…œ¦ÓŸH@ÀTà‚CV@\\Ó2I6H@”deÉi@F×H5qH@qg¤°o@¹ôXç\'H@‘.ÉÈy@øÏÞ¼~ŒH@y`ìœ@­{¸HÕ‹H@–äÑÏü©@q	âÞRŠH@qóËd¹@‚×H!2ŠH@óÔ3ÈW”@èñRå•‡H@:–¬{Á@5<ô’†H@G/Ô£@*Nß¿ó…H@ßïäŽ@G³Þr…H@}3ºG÷€@®¶ :ˆƒH@¦ÀL¤[@•2éÕä‚H@}¨™éµG@ì¾iFƒH@XÎø®gN@²YŒÚH@ÉoSŒÆg@k•SH@ÊÓ2«l@¨+ó¯AH@÷]çÿ­a@GsÃŽ€H@Ú¨ë2C@\nG0‘€H@U¤ß«@óºP‘}H@ä©¸Ú@ÅÚ\\¿@}H@%Ç¸‹@Ò_K0Ö|H@B,“ÓÓ÷@T\0=.‚|H@5}Ôí@x\ra/“|H@Yƒ6ƒ»@Ä÷\\ R{H@´uß	­@0ˆ°@?zH@Í®—¤ê¥@€¼‡æVzH@i¥ju…”@ãEË°WzH@Å¢¾ÆY@T[œ—zH@÷‘iRB@•zS€bzH@”–$@@Ïi×PS|H@Ç’³ê@OÕBk|H@‰JCãí@ØïŠ³|H@J!%´äÓ@PŠÊ­™{H@ŠzÒ©è¿@=*k’Í{H@ëàúŸª@K]ç÷IzH@Ñj @)§}4ÖzH@–×åœ@í¸è¬zH@á8MÎb@É¾*{H@_úf‘c@‹ˆLw±{H@À‘~…ÄN@Ï:Âï¿zH@ä#c.–V@…¾dÇyH@ÄèóéS@×/›G¹yH@*¢5S$@mÏš`yH@­\ZFû@B©úæwH@~Š"ƒaÙ@I½ÀvH@ª!GÇ`Ã@"^ÛÎÖuH@#y…uÏš@!7²šOtH@', 96, 95, 'VAL-D\'OISE', 500, 'PONTOISE', 6342, 68838, 6365, 68873, 11, 'ILE-DE-FRANCE'),
(7, '\0\0\0\0\0\0\0Ñ÷¶bvý?=T][hH@', '\0\0\0\0\0\0\0\0\0\0\0\0¤DàEÁþ?‘¤k¥’:H@\\ŠÚ·þ?™t59V9H@æ% Z$þ?;¹‰9H@lÜxþ?KÈÄ‹Z8H@R5_ŒM%þ?@çú@R8H@„‹€D1þ?Až*Ïg8H@M¦Û¸èý?äŒÁMb8H@†VáöÇý?µüàä8H@È­lË7Žý?Û÷_©,9H@Ð<·mý?–n+Ë :H@ÂYLbZý?;fEgÎ;H@†‡ÁØ÷ü?2ûü©;H@ƒÉ‚û†Õü?†Ü[rê;H@EF´Ž„Ïü?;Tqµ<H@8$ú-³ü?…CH=H@ö0Ë½ü?”\0ú=H@[‚Ÿ–ü?â‰è>H@4öÐâ¡ü?ª~–¼?H@q<OSòmü?.$œØ¥AH@ä¾.ºkü?¾žnCH@¨ç‚DŽ˜ü?^8\ZáFH@„v!±jsü?%p t¼FH@ø\0y–=ü?%\\Û;÷GH@Š¨x…è.ü?Ar-IH@ñ60}øû?;7°IH@®X#DÒû?˜52CXIH@HHlsYû?‹¾§³üIH@K¥E]û?»ì0gJH@*þßX;û?Ðr<áJH@.ÐK¹p}û?•ži¸MH@V,L1:qû?}°öš{NH@Îƒ³’<û?éÜ«ù¤NH@ðCˆ£û?{úùFNH@‹ù÷çŠîú?iò»NH@×qÌwŽ\rû?Ò:ÄäOH@ÌÈ¹òüéú?:áæÃ6OH@$K¢Uc©ú?ë–ÏýNH@¯õuÔ„ú?y ;MOH@h³²‚ú?Ÿ\'+lePH@.·u’dú? ±‘mîPH@ÁŸiÙlú?ÜÆ3®QH@´§ÃÆß@ú?‚g·‹RH@B¤N{Jú?IŠ˜]SH@-ÕYâÆöù?kÁ½=SH@cb5—¸ù?ÿ9½^nTH@`Ä–¯¤ù?2ds[àTH@LÅëô²ù?A¨ü…íVH@çÜ[QÝÇù?Ž‘dXH@Ji¥Pù?!zºuYH@‡Ÿª±æQù?þc˜&ZH@¢šÿž„ù?Vb{ÞÊZH@ ú”‹.hù?aÛ…ùZH@ŒÜŠ¯pù?ÕW‘|?[H@=¯–4×ù?ó–…^H@“–ð„ìù?‘›Rl5^H@J\nO`™öù? lZ[½^H@L¢Öÿù?bi~Aà_H@Ýµùç¯ù?(Ó½äZaH@o(½Ç[ù?5Î¾³aH@¥ÞõØ«Sù?ÃlzG?bH@ÃxÀrÉfù?\0Sæ±cH@V²t;ù?–N©ƒdH@]5!]Eù?¬sŠgH@záÄ©qù?%Z\Zx<hH@5%þ°rù?«-˜kžhH@êºœOù?ÚÑ³7jH@©h\nuƒù?’B¤øjH@KBAB¡„ù?þYÖÏhkH@4”&Íbù?œ\0šîkH@.þ“ü}<ù?åxlH@/õ½ÐSù?bú¤{ÂmH@:†6·4\'ù?f;\Z•nH@\0¾ÍÜæóø?e_]?oH@%ÙÓ\0ñø?`?;ÒŸnH@éî]½ø?¬oH@¹7^4ù?ókþ#\0rH@A	ÍÈø?ç,c@tH@ ¾ZŸµø?áÒçç”tH@?™R»™ªø?MLÒg7uH@Ncëžû¥ø?yÞªØuH@¶Ú¸g«œø?õËÈ	úuH@™%Ü˜^ø?ÕµbvH@¶\\}P	9ø?_+ÊýuH@ë<‹!ø?NmŒ±vH@XŠ-U/ø?0 W~wH@Õ7C×=ø?ÏqtxH@\0ñðó	-ø? eºzH@*üÄÈ€ø?Œz[ãùyH@€5"?qì÷?¬~J‚{H@¦ ¥QKø?;vò;}H@U-óC7ø?ËW¦?}H@{·_ ø?±²ÿIì}H@G00)éæ÷?£hq[}H@Ø°aô¦÷?‚cEîW}H@ð’*WÃˆ÷?XÑÊÎÆ|H@XøÕ"c÷?2Ãí “~H@¯jØE&‰÷? ÕÍÜÜ~H@ˆc78¹¯÷?(ÃÃ?¶€H@¸{“±•÷?–%‡=H@H5æ.¢÷?\0§EåH@ÝÁ_ªŒ÷?Ú\',mb‚H@ùÕø“þR÷?Öä±Ì]ƒH@,7ã#®L÷?}T6&¥„H@oÐ<¾¡+÷?½h(ä¿…H@”zh¼g8÷?Îú7“†H@BÒ(÷?ŠÅ\Z‹Ù†H@ÿO6fb÷?ë´CÖ\ZˆH@Æ›ï”Ÿ÷?k»”äß†H@àhÖK×È÷?/ƒgŸ†H@d!}Gw\rø?Þ†ïŽ‡H@/Çìµ„4ø?#§÷‰H@+i C*ø?ëøÚÉŠH@¼ÛâXÜCø?ï\0Ü¹;ŠH@ì¿\\pWø?5ýË¿¿ˆH@ë&Ñ„…¾ø? ÅîÎC‰H@å•ÍÕøø?Ô^w…‰H@Kð]ü\'ù?õÞ‡âÔ‰H@%uú{p‚ù?ïÁ+¦—ŠH@IÉÉkªù?Î@y#¹ŠH@ŸÔò ½ù?_ÿ„oø‰H@E<}Ù,Ôù?bô¥U‰H@KJD¹&ìù?ÿÓZv‰H@²wXú?ì7W´hŠH@*iÝ¡»ú?Âëò¾ŠH@Ù¢¬Ù`\0û?d\r"I2‰H@Âd³Õ\'û?[÷É_ˆH@âá>ÚCû?Æ‰GA‡H@É8$ÑG“û?³qÜÊÁ…H@:8¸ŸŠ¶û?B®t†H@V]@6,Åû?³äK;†H@jYoÒü?ªÐJ,†H@ŠCKLšü?†œ¥™‡H@9+Ú—&ü?‹]·ˆH@Íºï/ìTü?»~[e‡H@*<S„N¡ü?o½h‡H@{ƒ‘“sµü?5‹s‡H@@ò÷Ü`Êü?Š\rª{ˆH@ÕÅÝ½§¾ü?lÔ—ç>‰H@àŒ·Úý?g\rúÞÇ‰H@ùdÑXx-ý?s=ÚgÐ‰H@îH•Esý?‚z„àˆH@äNŒvý?â›FñJˆH@‹ Ž¾õØý?pGe;[‡H@oöCšŸý?3f>E„H@–ìÖÀµ¿ý?÷Ì¤ÐƒH@^-çŽÌý?’Y)Å•‚H@²f9U‚¿ý?Q	^¿ÉH@×íGS“Éý?E\r3£ÎH@Ë³‚åý?]Ï‚ÃO‚H@{"VdAþ? ÖíZ€‚H@6Ñþ©"þ?Ù+Ýý,„H@Ôƒ\ZäN‰þ?Õy¥%†H@ˆÄ• þ?ìà‹ëÝ…H@Í®~™þ?Ó3‹S…H@TOÞ×<ÿ?FÌ‘É‚H@@T‹5!ÿ?Ü•ºË;ƒH@GÙU[wGÿ?gI˜ó#ƒH@»UY4Pÿ?MöcÊ‚H@Î?Jlyÿ?QCKCø‚H@¯Ýf$D´ÿ?ò®w‚H@Øµ0¿Þÿ?r€íy°‚H@)Ð!ü	\0@	í¨,JH@Ôç¥Î \0@\Z€Ñì\rH@àh;e\\0\0@±û×8»H@‘\0Æ(6\0@ñÑŸ€H@aaB<_\0@’m¸<€H@†E¶Ióƒ\0@¾øëõH@>š1kÔ’\0@á£Àþ7€H@Ùu¿ßç­\0@Z>üýàH@\'J7\0Ý\0@“¥1)H@pµ	TNø\0@«}òû]‚H@åÃQZ´@|ƒYH@g¸Y¸ûø\0@Z}•ÛXH@&\rîô@¶íA™~H@Â1‘8@R«øŸ8~H@-CÆM±T@ìâ¡}H@°AÂ¯rf@CúoX“|H@S+ß¬Ül@ãFÑST{H@þðrfÂl@“~»ÙzH@‡åa˜b@¥ûSŸzH@A˜™¥@Ë¿É\Z‘yH@ÛþîÚ¦@?Ï6‡gxH@æ¬<öf—@ÜÍÃU¶wH@Ä‰×£@F0è<vH@½jþŒñ—@õ#–· uH@#y…uÏš@!7²šOtH@¾R*¥êd@#"7ŸsH@+•ÓZ@Hø5ªrH@rÛ:P:D@/,dÌ·pH@fï>2þ3@Í0ò‘xoH@[;N³è:@-Zpß¤nH@ú‰ó4@¤Ñu[ãmH@¼‡&©hG@ÒÏ ‚lH@×z“$D3@\n"o_lH@â6¿*@H	–kH@sÍ²%0@¡^jH@‘36@`~}ë#iH@Ÿ¬y…¹4@Þ\rÐhH@˜JÑuJJ@ÛÑ`2	hH@s,Böi@QsÿŽ1hH@¬ ”vÄ|@«5É`fH@¸9ª.©v@¦•§ˆfH@f$]ÿž@Lß€2fH@Ý›ÐïU¬@sÖ(à’eH@,sðŠ\'®@Ã$Œ°½dH@õLˆô#Ë@Xí2idH@æë0"Ð@hË„dH@\nÜ%VþÏ@Y¶OWcH@8Õj%KÑ@·rvƒébH@cïf |È@.ðò­bH@QúNæY©@¼‡¸²˜bH@ãySp$›@R•(·&cH@y¸—Oz†@þÐ™g4cH@!Û5tB€@	ƒËábH@éâö.Š@bæË¾aH@¤Aà»!„@Kûþ`ˆ`H@3éf@‚+ÒZö`H@±+nÀLK@ºw	-Q`H@ï!ö§ô5@!LÏ!V`H@â.–@‰ƒ˜_H@’L€Õs@öLuŸ_H@Ò(Wp@³Ÿm”Z^H@Ø÷l%ñ\0@u†¼å^H@‚.ûUÖ\0@A,6v^H@€ßÆ0Ï\0@÷ƒþË]H@2}63Câ\0@Œi+ºÉ\\H@8+hÙ\0@ jÕf\\H@„gˆLŽÜ\0@Õ&×Ý[H@ìÇZöá\0@Y%[×p[H@ÓÍ=Ç\0@]Ã4¤ªYH@ìõ­òfÈ\0@szÿÕXH@óî›bó¶\0@ÙãßeYYH@µG»î¨\0@S¯§ü¼WH@»YúßŽ\0@4îyà.XH@]n?97ˆ\0@¦ÍtPìWH@§)n5ýq\0@&°K¡èWH@Ù8T…ß]\0@¼mèWH@ü `L%W\0@ßÔéå WH@K‚0–M\0@« ˆsWH@qŽãD\0@†O”ÞVH@#\'Óþ0;\0@GÎð}õTH@ÓÄlr7\0@–s-TH@HElÉ,\0@¥ŠÅïlTH@”Yä\rà\0@I3{¨SH@*Z\0‡)\0@€Ì(\n0RH@±QÑ³/G\0@5˜Û\ZRH@c(SúhI\0@žàê7áPH@*¨òÿ6U\0@Þ¸x÷=PH@aì~JW\0@O‰¨×,PH@k\n‚Läu\0@š	¥OH@¥,¸ÚBp\0@‰ˆ:°ÑMH@¾íá´G\0@ogÌkMH@¤êÙ®C\0@8þÊº‘LH@ˆ–;º2I\0@êaâ+`KH@[{ä,\0@€ßÔí\0JH@ÛàqÞý#\0@Ë¨çY_GH@žª–óSºÿ?ßæÛ3FGH@uí²y´¬ÿ?\rš.ôFH@ÂÜ\0(gÿ?R«{	¾GH@Þ„[çÿ?2ôièGH@ò•˜@-òþ?4?:FH@ÓlGÑdÿ?<w¶zDH@Læä)žÿ?ýÁc·lDH@/¡ç0Ô¢ÿ?Mj£’CH@ÐÖ¡œ’{ÿ?‡úÉ´[CH@¾o6lÿ?ŽN“CH@GŸÕ?ÿ?$ŒW¯CH@k/<Îòþ?œ¾Þ“u?H@ÿ4îþ?iYVOŸ=H@%‚¯Åþ?Jš€+T=H@QZ%}Q«þ?*[ô¡<H@¡…®B%ªþ?¤Ë‹§M;H@¤DàEÁþ?‘¤k¥’:H@', 79, 78, 'YVELINES', 646, 'VERSAILLES', 6364, 68564, 6149, 68578, 11, 'ILE-DE-FRANCE'),
(8, '\0\0\0\0\0\0\0”ÏM)½x@Ñ³8çPPH@', '\0\0\0\0\0\0\0\0\0\0™\0\0â(i’}@ÆJêH@ipL3@­ ½XhH@Æc‰MÊ÷@ÝsMH@\Zh&Aï@.ÖÿøH@™{V2¤Ö@¸h\'¨‚H@·v½…)‘@4ÅxØ˜H@uR+"Lk@bt\0¼ÓH@My©Ne@¹Â-–H@:Ä©u¨g@4¥Í§H@f£Þƒ{@Wò¸”›H@8û³|@Ô¸ðH@/Ÿ‡ÿh@sò/H@«úpÈ<d@èôƒŽH@õ ¨³¶R@ô)¸Ö+H@ ˜q?@1co%lH@ëé£/@n)&ÁèH@öà@¥“@lJ©H@¨ÿØz–	@jÎEp¨H@’krÔ(ä@¶¢|œIH@m¨Õ¶@ö°VqH@°:Ãh¥\n@RUïÅ¤H@¾ô.Ù™Ç@\\¸«–H@jIh&§@qR¹úH@bx°idg@3AQH@r\'Xµ.W@Ýv\0rH@Gu³ugQ@fÂçmH@1NP>	@•/ ÉH@å/iŽŸÕ@†°lßH@FB=5yŸ@ C0ÞH@C:š%ƒ@FŸ¢?H@!³§ÏL@n-üH@{rq},@©]»öoH@…]7|-@y›‹H@AÔÚÒ@…Àl†H@˜€?é«@\0¾ìH@b{aj™¥@^Ì7ËH@€‹òY¢Š@Ñç÷H@ïtÈ	Ö@g`0\0ÔH@­(mÝS°@z¾¶Â°H@uW¸ÛÆ@u§]¶H@Î—-WYÆ@{ifÒÉH@0Õ¸´«Ý@äðîH@\'æN/õ@Õ­~%H@˜4>t@i	E\ZH@yê×Î@Só\0\'H@˜Ù…÷Œ@1G‚1´H@‰bÿß)@ªª)UÒH@E9r».@u`OH@ŸØŒ˜¤#@O\0ºpH@žYŠFê@|»àpH@•)·o@nlÿ\rH@Ã³Œé\n@Š{±_OH@‘òBB®@xœ¼VˆH@x¶÷˜ß@Ýía§–H@…“71$Ò@ÑÂ÷Ô?H@–™ÓnÐ@rý} H@ƒ¿L²À@vÊ­ H@IíCI@ èí\r H@”³ZŽ@Öi÷’ H@B¼³j…@C¢i H@Ãî^îr@ì½¾¼ H@<®Êã¬_@{j¼Æ!H@ÜKãZ\\@;jY#"H@ ùõa¸]@éhßM&H@ÖÈ¨8@Ñ³ÒU\r)H@+¥´Á)@Ò^@h²)H@ ‹®“#@—·ßý*H@í¹’Û5@(#n *H@SXÊ%\\@ÎØÚ\'+H@rƒ‘_zx@ÖKñ0Ò*H@öUÊFVq@ÑÄ"{,H@·«wv‡@€YˆÍ¸-H@Ø‹!áKp@3~ˆV.H@@),1‡@ùZ-%/H@\'Ÿêçš@Í¥G%ÿ.H@ŒÁE™@Ø%B¦Õ/H@€<ÛS\rÜ@}Á€Mô0H@~p—jhÊ@Cø1H@v¦fã@Eì„TË2H@Ô¼˜.E\r@O,oŒ2H@äpýœ,@O y§·3H@‰·õç``@­Àíßa3H@\'sµs#@{hYd¾6H@bmmÍL\n@Ÿz)Ø7H@þ˜Íº	@Ä4V9H@î`dÝD@³ªë§:H@°£VÈû@–o´‡:H@ÖïýCÿ@ä,OÂ:H@—çaV)@ù2IE;H@élÎ{@Zà£7ö=H@Ü¢afÁ@9ÒHƒ>H@W¼I¹@Ù†zi?H@„UÑO@í×‡:8AH@ö“@†=¥k;AH@ñé(@aO©BH@_,[/û@¢-5BH@v^[@î‘·tEH@ª5{™þ@g"G=~EH@Ñž”¿$@é£èÊðGH@y‘Ò®X(@VÔ_ÄHH@å¯†µ@@ûß‹¦mIH@\\çÙ –,@XC~f_IH@óh:mn%@Aò0¨JH@i7êãT@´2¶ÎfLH@¤VÓW@]¥µ3íMH@¢xiV«5@ô¼«¼¹NH@’ÍÔ#@˜ªÎÁPH@%jŸ!Ú+@m2száPH@½1[HS@6w¹ù QH@`ñuïV@\Z3froRH@âþ´¸;b@Gô<(SH@”KmØD@x™Ìº#TH@Ôú°°la@çmƒÉüUH@e–e5u@Â¥4X!VH@Åg1=Ò…@ÍþËµ§UH@/«€EÏ˜@IÂÙ‘VH@žþÈý.¬@¡ú¬VH@)Âì\rœ¤@àî@XH@q+Ê{»’@äzü5”XH@w\rnþŸ@›ÙUyYH@\n©CB˜@ôô×`ºYH@—Ž!$éŒ@{JeE†ZH@u\Zák„‹@R/É©¿ZH@ý4ÊÃ«¤@M…§ÐŠ\\H@«¦Ø(çÁ@`•IÊ«]H@Röcä¹³@m‹Êæ=_H@+2oáË@Öö=m`H@j}` ÅÇ@b‹UZaH@\nH %ë@|ÁóhlaH@(JØPÚ@Ýx, übH@Ûn_nº@âUÈdÛbH@û#½Èz²@Û²¨²&cH@ºî(nÊ@`9cjŒeH@ô²¢Žz»@p6|9fH@R\0î Å@äÕ0Â-gH@†“þiö¼@™a^ZgH@=Ä­+0Ä@m:ÝÜ9hH@¯`’´°@œe›ÍÈjH@›& „7—@ï#qª;mH@áB"f©@- 9˜mH@>›îÚ²@•G|¸nH@	†$€Š@j©\r&ÕnH@"ãHñ^@”7Æ¦wpH@—uÏªy@Š,ßÁRqH@ßé-²(ˆ@°¹=žóqH@q»¸‰!°@$ÐL·”rH@Ëç¥r¯@)µÓÕmsH@z«9&9»@¯î‹tH@¯…¥Ž+½@I4Ò /tH@¿;_¶@~Ÿê\ZztH@dð<¨½@C±‚,gvH@Zø\\ Ò@Ø¡;(õvH@€¶‡¸Ñ@¹¸wH@W©OyÄ@mºl‡$xH@ÁÌóØ8¼@_ÖQ6„yH@Æ\Z?¤Ú‡@\nBð%Õ|H@ámØ†@~ìñE}H@¼ÍPæQ›@Ch„}H@+fâÆ£@Ï®GpS~H@Ã½î S›@¿#ki	€H@Ø¼×-}’@÷?)2€H@¸ê\n·†@aO–H@ÊÓ2«l@¨+ó¯AH@ÉoSŒÆg@k•SH@XÎø®gN@²YŒÚH@}¨™éµG@ì¾iFƒH@¦ÀL¤[@•2éÕä‚H@}3ºG÷€@®¶ :ˆƒH@ßïäŽ@G³Þr…H@G/Ô£@*Nß¿ó…H@:–¬{Á@5<ô’†H@óÔ3ÈW”@èñRå•‡H@qóËd¹@‚×H!2ŠH@.Š!Ú@õÿU‹H@¶©6ùá@ç5ƒ\'ŒH@aWÙ•uô@—nF‹ŒH@°k˜jñ@žEßH@0Åm-õ@ëHq8ÇŒH@~-¯Ð4@|mZïÖŒH@U€ëé°l@‹[jR‹H@7h8Q‰@9ãdÏ‰H@‡¤|‡@7·\'\n‰H@!ˆñè*…@…þgâ¥ˆH@ŸQ¼èŸ@ÍümEIˆH@3X*Ë{Ë@^Y®yLŠH@vVDNNá@/=P½‡H@ù(Ñ/@iVÕ€ˆH@ÈW™>H@AvÎ¨‰H@ù(†ë%@3ƒ3¨ŠH@KÍ§NCN@£#©›ŠH@Y*¼}›E@ž*uX‹H@Ï´Ä¿vU@_x3Ð‰‹H@³ç:Zy@ýT|ŒH@5°«¼ùš@å…)LæŠH@Ú–tz€®@W¤»ŸŠH@öTiLsÂ@ú|¨pÝŠH@H]¹1>Ù@Sç\'ßöˆH@¨œ]¿ù@ó`µ ‰H@Pô6Äï@H>)—\rŠH@X•ƒ£Ý(@•ÔiÝ‰H@‘aÃI6@“c`‰íŠH@·”~´¦d@9ÂxèŠH@7"®†Œx@ù\r1=ŠH@®­ò•Ë€@÷ÂÚû‰H@àäýCaŠ@âÄ7 ŠH@t‘@ñžÒAF‹H@{)Š£@²ñ˜\0‹H@Ò\Z½@ÿLàzš‹H@•x¥|Å@šöTkc‹H@ý­qÌ@—}ÜI”‰H@	™"³ç@`¦ï C‰H@a±æ)ð@.3ß^ÇŠH@²{£F\Z@ÊÇ<Þ[‹H@·›¸ƒE\Z@ÔV$QŸ‹H@hmk“>@¤>q±‹H@Å\n¡\0|F@	\n†•W‹H@”ÚñS‡@E_èŠH@áb©H3t@\\YBŒH@p®sAXs@Ýæ“¦H@é˜8“@<©BH@ûÒx¶o¢@òGÍòmŽH@ô.ø†ê@HÑ#=·H@Ã9ryø@LQ$-ðH@…`OQý@…è\nÁ°H@VPÄÅâ	@ÀÖ› H@áQCÍ3	@Î2¢ÛŒH@Gh5KdR	@2[h§ÁŒH@„†+h?	@Ó5Ã¼ñŠH@‚š2•úD	@ÆfáÚJŠH@ÿ¤DÒW	@W9¸Õ×‰H@\\vQ{#t	@áŒ›(õ‡H@C..àbr	@Õä¶Ë/‡H@È%ìR|†	@mýxe†H@S$XŠ`†	@Ã(Ñú…H@Üiõ‡Õr	@æÍPV¬…H@Ö1@hëi	@h±®„H@Ÿ›¼fÜN	@3`Á[ƒH@yÎ"×M	@lK¾†‚H@’I=²__	@Ùsv™H@¨ö€a‰—	@·¬½½€H@`­se;©	@8M|ïH@ ¸Å¯¬	@ÍÌe4H@õN#ÆOÉ	@²ö"Ç~H@¼_yÌ	@Úí\0Ì`~H@­=ž³ZÕ	@®Ùy„~H@àPR„‡Ù	@Ä,¢-}H@Ådiÿ	@Ì€¦³|H@N­\n\n@Lvú”${H@O	\ZB‘\Z\n@×¨òyyH@ß	vßÑ\n@©»ÚïxH@ù.½\n@…\\L3xH@“OÇO+E\n@ûDæWaxH@ð!¦„ p\n@Ö\rgqyH@Mqòl\n@=šiÇ»wH@[¹‚ì-\n@¦møjêuH@•7€}?¤\n@ñ\Z)8tH@³;ò\ZÂä\n@Lÿ¢!´uH@{ÕN}ð\n@¯!5ãvH@8ºULR\0@~E6îRtH@¡JÜÕfö\n@ÃnÐ˜rH@7š¢\\/@i›æášqH@ÕÌF\0þ@ße\'ÓoH@yÄžÀ;@~£3b•oH@›a© *?@‘±×ðpH@·2§pñ0@›5ïÎænH@×hµ"£D@”^qínH@Ÿ&Hžnb@›)HvoH@ƒÍ¹œm@™õ[dKnH@ü¿ç,ž@î¤Ê@›mH@á?øS@7Ž0ïkH@ômŽ¶²@Mº SkH@O0<÷Â@\'Š¼ÞlH@Wô©á@BiVmH@ÚRìpî@ÔÍ–ËåjH@’Á™:Æá@§ÑƒªiH@–plÊå@:EbXhH@r¤TîØ@#á(éõgH@ŸiÖ‘uÌ@BDKáhH@$|%\0Ã@~®6\riH@Û—!UKŽ@•G%égH@}*´Up@žz#êhH@ÖÏÇ8U@…Ã¤®hH@ly¦Ê?@çïéµgH@ÇÑûzœB@ºçÚåIgH@Ù\03s^@1…—µfH@£|Ï†@à;ø–fH@X0ÑâsŠ@™å²ádH@þÕ#ˆ‰@Ý«í.vdH@d—¦¥m@`´ÇôôcH@å§ù[@‡Œg]dH@ÝU½±¥G@µá úPdH@?h“FR-@Î¿jquaH@îåme_1@Ìÿù£`H@õ¹ð7E@W•¸6^`H@Ù&Åm@vºê£ê`H@!•V%~@yÚ]Eh`H@}mœy–~@›ïe!_H@•½ùŽ¸Š@Æpp^H@£\nMÜ9½@yJkk‹^H@ÖÞ?à»@®·Ü{H]H@"Ýõî½¼@6û4†\\H@wìÜ©s¼@>¹^MZH@|TÛãvÒ@ Ô˜UYH@3½ÌÇ@¢‚¤.EYH@ÌUú|SÄ@LUYøWH@º¯´§@¤W^®gWH@CNÔ*žŠ@GSU®VH@³\r‚Ç‘@_šì\\UH@q«ë‡]Š@ï?Í¨	UH@­èe$¤«@@ˆ^&]SH@PØaeÕ›@zy•=<QH@êÏËÀ\\Ð@âjÄ‡šQH@>Ä³åï@Ï\ZŸpÏRH@‰ÍÃ§$@ë~jiRH@åRzD@yÜ›ÍÀRH@‚šæm&@õ~+÷~QH@Ú2êE‰+@¡>m’QH@³\\WJT@×»†¨PH@åŸåq@<\0}eOH@ý”r@Ÿr¹jøNH@SFo@•IAQMH@Ë¤S@ñBt (MH@ìÒ=e+@%%ƒ¥KH@V%öñï@&ãh¹^KH@Š2Ïæá@ØéÞ¡LJH@hwNøŽÀ@€ØJÒYIH@-Ô8‰`¹@éÇº¬IH@ØiO±áÛ@+´—(`FH@’\ZJÚ@cŠeNEH@pÈ@.à7! EH@: \rd›@ÅÕéa«CH@lj ó}@ãrß„§CH@hPðo_P@$lœ·HDH@k±`A>@€ŠÒ2–CH@`Gof@Eƒ“k•AH@0ž¶`±z@e½è˜?H@€P*#z@\'b:‘À>H@ÊâÉK.]@ò^ùÐ>H@ä…Üß:@‹¶¯ß4>H@vbÒ§Ÿ@ô\'‚0=H@|ñû!-@~¹W<H@q÷\'@u\Zïa;H@I€òæ>@O\0d:H@aF•ˆ;@×u½èI8H@š‚{#-@&\r\0ª§7H@oâ‡‹%@%Ãp6H@nç=oK@È?¤àí5H@*\n(´G=@´º‚Û-5H@+$n]@‘Òˆ-5H@Êäçöñ]@F|ºZ4H@]¶µ<~Q@7‰wô1H@®x¤!n3@Ð0¡2H@”-lß@&£W3H@ƒÛ½Î\0@oôH3H@ºš]î\n@0.Ê2H@60Óyê\n@ç[ˆ0H@u"ÈÎqÚ\n@°Ôá†—/H@49‰†;Ú\n@ìZBq0H@m@Ð\n@£­l˜v0H@ŒrÇ¨@Å\n@e6Ù…Æ/H@êuk¤:±\n@@	iÄ/H@Ðä%\r¤\n@¹Ò©¶¡/H@#˜/Çž‚\n@bºL@0H@epz\n@Ã ZÏ0H@bÇj]µ|\n@Ñ¾ë[½/H@+:9C\n@Ì|o×0H@‘Ü\0P@\n@eúojm0H@3+Yƒm-\n@KÎ×ƒ0H@òÜ\n@qûo¡».H@·LåÎ	@/3}Õ^/H@18{QŸ¶	@]9–x	/H@L-zÒ¶¢	@®0%"ž.H@8Ù¾ïèŒ	@ORÙ.K/H@êÑ¯lÂz	@þ©\rÖ/H@=5®®¥r	@>Š‡ñ/H@©n£Ü_	@\Z9k¯W0H@>|;òV	@îqx6›/H@m(þ›g9	@F…y/H@\ZŸz=î(	@ÒÂÔ/H@…lƒs	@½ìP±/H@"f_n	@Ë|q†/H@ÎÌxÐú@Ì±êX//H@a‹Ùð\0ë@\rvÜ£.H@ø÷Ç×ÌÓ@ô}á¼,H@¥Û˜=üË@_¢fb-H@#jy…KÊ@ó<XÃÊ-H@Lô„	òµ@“.lÑ¿-H@î¼i¥@ï©r¾/.H@ƒ•!âšˆ@ŒÐiºÉ-H@TL…ºFe@•îz.H@yµªyÍN@çc!,H@Ã•åõ³R@ÿ×v*H@Þø	{ @,j)V\'H@»çÀöú7@øbH~&H@Â/G¶:)@¼öàò%H@Çl;ö<@`ÎÍŸ–$H@Ï_‘3@;6jT#H@_ØKÝŸY@›EbÎ"H@	i„$la@C(P\ZöH@óMÜÙB@ézÓ»ÛH@Ù•9\Z@ËýÕmH@l*¹D@’ÕglÎ\ZH@2B¾·ú@+!_—i\ZH@qé¤dé@è¥Æ$Á\ZH@NŽ\0Æ@ý‹eã\ZH@¼\'Ý¦…Ä@ tE$ÛH@Ôì©¤@Ýw¹o¤H@>©ÿy]z@»®é¨ãH@â(i’}@ÆJêH@', 78, 77, 'SEINE-ET-MARNE', 288, 'MELUN', 6748, 68266, 6950, 68362, 11, 'ILE-DE-FRANCE');

-- --------------------------------------------------------

--
-- Table structure for table `District`
--

CREATE TABLE `District` (
  `id` int(11) NOT NULL,
  `N_SQ_AR` int(9) DEFAULT NULL,
  `C_AR` int(2) DEFAULT NULL,
  `C_ARINSEE` varchar(5) DEFAULT NULL,
  `L_AR` varchar(10) DEFAULT NULL,
  `L_AROFF` varchar(19) DEFAULT NULL,
  `N_SQ_CO` int(9) DEFAULT NULL,
  `SURFACE` decimal(24,8) DEFAULT NULL,
  `PERIMETRE` decimal(25,8) DEFAULT NULL,
  `Geometry_X_Y` point NOT NULL,
  `Geometry` polygon NOT NULL,
  `OBJECTID` int(2) DEFAULT NULL,
  `LONGUEUR` decimal(13,8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `District`
--

INSERT INTO `District` (`id`, `N_SQ_AR`, `C_AR`, `C_ARINSEE`, `L_AR`, `L_AROFF`, `N_SQ_CO`, `SURFACE`, `PERIMETRE`, `Geometry_X_Y`, `Geometry`, `OBJECTID`, `LONGUEUR`) VALUES
(1, 750000001, 1, '75101', '1er Ardt', 'Louvre', 750001537, '1824612.86048666', '6054.93686218', '\0\0\0\0\0\0\04°§7	±@~}athnH@', '\0\0\0\0\0\0\0\0\0\0`\0\0\0´xNÂŸ@\n•=tYoH@¶¶¡ÿÄ£@¬[èx+oH@Ùeœãw¤@ÌB²K&oH@r|”[/¥@–Jßë oH@­^JÄ_§@¦ƒp%oH@«cÚ÷_§@ÅÙ·$oH@ª»ƒ÷]«@~Õ´Ä\noH@	RWÜ¯@ÎKÖ¾ùnH@Þ¯ÜrÜ¯@[³‘½ùnH@­×-ð²@Ñ[[înH@‚ÕŠº@ñßžÑnH@ƒÈ„¬»º@~ LâÐnH@œ€5nÉº@ØQ^°ÐnH@ŽÂ|ùêº@«ó:/ÐnH@à‹»Mìº@*ÐnH@$¨ÄÂ@=B[²nH@Òp©ÇýÅ@¶X­¥nH@A4xþÅ@3.¬¥nH@QÎ‹g¾Î@ØJá„nH@ºIÞ¢½Î@rüÝÿƒnH@ÀV=Í@ý†!YnH@b¼^œÍ@çè2ºUnH@õøV…®Ë@€´},nH@’$L€Ë@A&öW\'nH@‹tð{\'É@…£·ÝãmH@Üõ¥(!É@öè\\)ãmH@y±ÐÇ@ÇÓ—ž½mH@žÖëÛ·Ç@ªÕg¼mH@‚\ZÎ°·Ç@¦€¤f¼mH@7dh¾DÇ@›Ç\n:¹mH@þ†¥Ç@jïŒ·mH@ée`5Ç@óVlˆ·mH@ÿ_Š‹ÃÆ@%Ä´mH@PÄ½ Æ@3#Öz²mH@C¿°v@Æ@t‰Jš¨mH@·…­`ÒÄ@Á#ÞƒmH@8éêŽÄ@HÒR~mH@Èòµ£ŽÄ@ÔzcL~mH@s8÷gÄ@{ÔïzmH@^4¬>WÄ@UðÅ¹ymH@Z<Þ-ºÁ@ÏðQmH@¨MBÎ¹Á@®f2|QmH@1„,¾@"Y£#lmH@<BmS¾@ùQÖ@mmH@\095PÐ½@¼LpmH@LvõI¼@Ú8ü#…mH@¶¿8dº@eÓsÚ£mH@² ŸiL¹@.ÁµªmH@ñ!F\Z¹@Ì˜øp¬mH@mÇœ¹@#Î“»¬mH@–FÑ·K³@æ‘­ßmH@-9-`±@û†æmH@WïSÅÌ©@3$û*ÿmH@³‚4R§£@ÇP©ÊnH@ºäÏ÷¤£@D”µØnH@]Y˜‹£@IHhnH@¸H@:v£@¶K¿ánH@ÃÔÔLÝ¢@l”CnH@ÅdUÿi @8Vsp,nH@ÿ-ûËa @éEm¢,nH@Db‰£Õ@ÙÁ÷:nH@¯€„Û›@\0æÀéDnH@—ÿ_B,š@û·ãÁLnH@’­4öš@…8)MnH@Ðr™š@ “í9MnH@µ\nÐù™@¥TÙDRnH@:ž´I‘@¥¦“FxnH@QÁíƒ5‘@¤¢!ªxnH@t@i\0’@‹@ÚëˆnH@â`2…’@,¹WˆŠnH@2·ú<’@ßP×²nH@©ºN?’@{önH@-ñ•’@Êç/Õ”nH@“wEe”@‚µûºnH@‰eô”@$Ã¬½nH@™ ‘<,–@(‘ÂßÞnH@¨.jj–@+xÀããnH@…ˆqY¬–@tŒ>énH@Zê«­–@Y‹Ž\\énH@ð!™–@Éõ’ËénH@µ\Z9À˜@$ÙloH@ÔlcÚÀ˜@XûïzoH@1Òä¨î˜@jäpyoH@+§“ð©™@5ÕƒË-oH@Îï¨\'Aš@ÅÊ¦Ç;oH@•í™@)ôµJoH@MhJ\nš@““§gJoH@\\“U‹š@	tD JoH@£e²:Žš@°9ÇKoH@èw”Z£š@È%†ÿKoH@T¶Ñ›@EBûLoH@=wÆ	P›@òófÐMoH@ƒ³î¬R›@·”×MoH@Æ¥#¸¹Ÿ@Ø]ÕYoH@X’ÚÂŸ@SëÌvYoH@´xNÂŸ@\n•=tYoH@', 1, '6054.68086176'),
(2, 750000009, 9, '75109', '9Ã¨me Ardt', 'OpÃ©ra', 750001537, '2178303.27487137', '6471.58829010', '\0\0\0\0\0\0\0áGÈð³@æäFpH@', '\0\0\0\0\0\0\0\0\0\0m\0\0\0…í£ÃÜ·@Ó8pVæpH@[?uyñ·@JŒ&æpH@ÍaZæ‹»@è!kñpH@±ï`10¼@éV÷lópH@lWÛ—d¼@ª’ÚôpH@}¼PÀ@×É1U\0qH@Ïª¨hÁ@ƒ¸~ÞqH@p¶EmÁ@ÿ®ïqH@úvóÁ@¨ÓÌ^qH@Ìå¥ìåÅ@"R\\áqH@8û¥óÅ@ú?(qH@0\'öÅ@ÆùqH@”÷,2Æ@KêÎqH@üŒÁìÆ@˜EíqH@\n:‹Z¨Æ@Ç·qH@¿Š)\\îÆ@Î¾Q¥qH@|”Å\'&Ç@ÂiÎqH@S|Z8`Ê@ŠNB8qH@³÷¥%qË@ÄSAqH@\raÉË@™ÝéqH@ÁPSèõË@¶÷wqH@Šò‘4Ì@Û<¬ìpH@‘š\ngsÌ@fÝŒ‰ÇpH@Ÿ	Ú‚Ì@y(^¸pH@tñ«rÓË@oÓ_†™pH@Æz¦ÎË@Žñ£™pH@\ZkŸzYË@SQ÷¨„pH@\'å¯—\'Ë@à¶7tpH@NÏü5üÊ@Þ2QpH@´’žíÊ@á±|aOpH@%¸ïÊ@Û&‹5pH@èË½–\\É@5íj!pH@¸ív5É@¿MW\ZpH@ã¥†È@†xøàoH@Š€È@ÒÀêoH@‚!uuÈ@y+É;soH@÷÷åìš¾@_î‰òŒoH@ˆì9i¸@NVoH@!»±}¸@F…Ô>œoH@‘ŒÕFÇ·@1c¶T›oH@&uU’_²@wy¹zŒoH@5úó1²@gunô‹oH@{¦ W¬@E“ò{oH@&rÊ\Z¨@^¾\\]poH@í@Uƒ£@…ÎÂcoH@´xNÂŸ@\n•=tYoH@X’ÚÂŸ@SëÌvYoH@Æ¥#¸¹Ÿ@Ø]ÕYoH@ƒ³î¬R›@·”×MoH@=wÆ	P›@òófÐMoH@\nA·FÖ›@8²yºnoH@÷¢!4œ@å|±¢…oH@†¸©œ@Ï£n"¢oH@Ÿ"×"1@‰Ùí\rÃoH@õ0­¹c@Â+®—ÇoH@Ðí»5 @&ôl ÐoH@Ù.,µ@TH¡ÓoH@0PÎ@q•—ÖoH@5jç—¿@\'_¿ÚoH@§Í‡L¹@J]šÛoH@@a×¹‘@ú1Ú)åoH@unÍ»Óœ@º½^pH@Áò”åa@¾¢tpH@%\\ßÄ•@P=\rB]pH@¯dù\r—@WøÛ-_pH@*o8³˜@€öÈ—apH@ËÁL½@ÃGØt—pH@€‚½@‡IÁ*˜pH@<IwÊÒ@Yþz¤¾pH@ó}ñ@+ÑépH@\nS56ž@;öéqH@µš$ëLž@¨f¾…qH@wÓI>“ž@nB>qH@ä5~/×ž@’Úg%qH@ÝŠ«m3Ÿ@«4=_qH@Þ5ŠØhŸ@Ãoø\ZqH@^" @¹n¼YqH@Aiw @“’iß!qH@>8å·Î @bÐg%qH@:`&¢@èÞÉf2qH@†O™5¢@¡:þõ3qH@üu S¢@u’Ä-5qH@¿•\\í²¢@&:9qH@/ÝZô=£@}ù97qH@_íÎ¤@¬é"1qH@vÐ®øù¤@VÚ~0qH@I\ZÓÅ/¨@#}3p$qH@\0`0D×¨@sn=û!qH@"DMcç¨@†\\Ï¨!qH@ivÁïõ¨@3âj^!qH@[³\r‚*©@ƒ\Z\ZL qH@QÃRaW©@°ÍbqH@5~)Ëª©@½[ÓqH@áœˆ¢Ù­@¸+CÕ	qH@È„÷ü®@³øyüqH@`ÎÿÛ²@zž‰›õpH@ÈBI"G²@dó8«ôpH@{rn{²@ÓRmÀópH@Œ4p•²@B­KópH@"|)ïË²@nó\0WòpH@¦YdÌ²@mòTòpH@Ïý‡Ý³@ÐD6vïpH@ÿ$ ²þ³@Ÿ£)ïpH@Ó$MS´@¹iîpH@A;9oK·@z¦c§çpH@=n;y·@o~?çpH@4ei·@`|¨1çpH@è†Z\'©·@\0\ZÏæpH@…í£ÃÜ·@Ó8pVæpH@', 9, '6471.38914439'),
(3, 750000013, 13, '75113', '13Ã¨me Ardt', 'Gobelins', 750001537, '7149311.09107136', '11546.54652640', '\0\0\0\0\0\0\0 ÄÞïå@PFxžjH@', '\0\0\0\0\0\0\0\0\0\0ù\0\0\0¸ïõ•Òÿ@÷tžàCkH@ˆël@Ð°ùLkH@ÖZTŸ@@ˆ%wvkH@õ•cX@$ÊYÝjH@üS\n@Q8Ÿ·ÐjH@sîVÆE@¼ñ¾¼œjH@‹[Ÿ|@Ê—\ZùljH@ÍéN	@”Êˆ`jH@d›­K@áÞ:jH@9$a‹Í@0+&1jH@Ö½í@÷!q4jH@E~3W@I1-\0jH@îºÅ§d@\Z~µvÿiH@º„}@.èÇ%þiH@ž¾®M´@JUf>ûiH@}LøÇ@Y{°:îiH@À©ºÁÌ@ÌÖ§ÌiH@Žâ3Ò>@GŽ-z±iH@ü#*°?@}Pp±iH@^‘§@hì°iH@Gîã\n@$ÐÃÿ¯iH@‚¨âÚÝ@ñnjÅ®iH@h¯Ñ#A@ÄÏªiH@iÀÊv—@]õjÔ¤iH@{f–ïó@ô&é]ŸiH@¾K&¶@ÔÐMiH@Ì‚ßM@þÝ³Ñ™iH@Fè¸2p\Z@Î6w3iH@~õf¢@X±Á<iH@T!C{@˜Ÿõ®xiH@bùÆ`@Ëy;xiH@nŒû1@Ïè\rwiH@\Zô¯Ø+@ÚßÿêviH@Å¡Ê¶ù@”B°ÍuiH@¬{°Ñæ@Xo(buiH@Å‡Þ4@ÛácmqiH@N:íä@	-n¦oiH@ÚkÙâ´@+×•niH@Ã1ÝÛ±@W„ÉƒniH@ [¦@tkqmiH@½€6O@îUUêYiH@ÏW@ÉhVùViH@Ùâ;,=@ô<‡\'UiH@c Þ;\\\r@j…êÄDiH@PÒÏ@pm|-iH@ç¼õ1Í@;|îT-iH@ñº_ïñ\n@M`Ó(iH@¶Ön}Ì@‰™•ˆiH@ŠS‚@·Í\\iH@Íß#Ø]@îœnBiH@kÄ+GS@nrÕ\niH@¡:6A@v×Ç«\ZiH@¼vºÇº@¯yèiH@Flj‘@7\'ÕiH@ŸÐ]ò@­°7iH@Ú¬@¿?/\riH@xàB!@z¼à³ÿhH@=ý’é4@KßúhH@é¸	¸@I…QøhH@ÓvZ¦§@O€¼û÷hH@½Œòœ@«h\\Á÷hH@U’è¹Çþ@×FÅîèhH@n\nkÕ)þ@b0´åhH@ÒIc²üý@ÈÃÇähH@TáDÓgý@_†N¼áhH@µqr+ý@f‹+€àhH@Ú‡¿ý@sDs8àhH@&¡½ü@h>ÞhH@¨¯ú$Gü@¨ÓÍÔÛhH@‹eq)Èû@¨=ë;ÙhH@Ö=m4€û@HšÁ×hH@~²hª÷@‰3…—ÃhH@e¤EK~÷@{£“¯ÂhH@#Ì\'/÷@†§rÁhH@fw°²¶ö@¯Ò–¾hH@Á3‚¶Æõ@‡·5¨¹hH@ú/T¼ó@×ñì®hH@¦5­ ó@±õ[®hH@«¡ó=ó@µ·i«hH@Ü=Vñ@dB¡hH@VÕ¿Jð@w¡¸ZhH@*ˆ!IFð@Þä!DhH@\\B*‰ï@KS\Z†™hH@%ÛA1ì@˜~Y•ˆhH@±¡>ë@ÙÉƒhH@˜°yûé@¤ºÝc}hH@ÊÙ§¼èé@â%ð}hH@;:Úé@·5m»|hH@qW£>è@s*–thH@NÜ¦*|ã@ÅëÈ·shH@€\'"	ðâ@å.žshH@7}’–ƒâ@š¢]ŠshH@\'¸­Bâ@–\n~shH@\ZŒ;Æá@ÃóÃgshH@p¦Qœ\ná@]“vEshH@W|ýBÌÞ@:`hÜrhH@ìo¬ífÝ@#”\0›rhH@A«nÈÜ@…ú}rhH@]ÿŒhÁÚ@H²århH@ŠÕ2¾RÚ@îŸž\nrhH@€DëpôÙ@š3SùqhH@Žª‡´ðÙ@W ¤øqhH@5ƒù;Ù@ËóÄæqhH@uvôzÙ@$™\rãqhH@FØÈ\nÙ@T	\\ÎqhH@S¸q8ëØ@ÂÓ±ÈqhH@DE¥çéØ@°eØqhH@h‰°†Ô@Ú<¥hH@’¥Åû"Ô@ªÝäŠ©hH@D =¸Ô@Æb”ß©hH@áäÄ¼íÓ@ëä¯÷«hH@˜â\0ÎÓ@yé3c­hH@X\\þ®ºÒ@\'ú—ó¹hH@×	Þš¤Ò@M÷þôºhH@:®U™Ò@¹™ex»hH@àìÅ·Ñ@Û<!¾ÅhH@³Sæ×¶Ñ@3Æá¶ÅhH@5´[J¶Ñ@eC’²ÅhH@¤fàQÐ@Û\0ÙºhH@áœ5€GÐ@o#ˆºhH@É-Ï/îÏ@’BÐ·hH@,GÍœ”Ï@µhH@Æb‹Î@Y6©hH@<Ö†¶àÍ@(ÛÝÐ§hH@ïÀBÌÍ@³Ëw1§hH@ç‰„Ì@H~7hH@ÎføôË@Ü5ñ‘hH@9¿²¢=Ê@¼H7x‹hH@Ýßº¼5Ê@æ_ª:‹hH@†P†ñÊ@Ö1êô‰hH@Ê­æÉ@líÍˆhH@Rf~Æ@/Ü\nAnhH@¥µlÆ@Vð÷nhH@»· PéÅ@ÒOO(ohH@å\ZpGÃ@(Ø?shH@$ºSÂ@‚X¬»thH@q®¤FîÁ@/YXuhH@ß§§ufÁ@1t+vhH@€xwÔ‡Á@RÔõÐdhH@&2<‡Á@bnCÕdhH@z¯Æ7wÁ@[ùE1ehH@´ÌX+]Á@Ú=MÈehH@>;Á@·yXŽfhH@a—„UÁ@\'ç7@ghH@éZâÁ@éÉ¬AghH@U·uÀ@kMAkhH@"P¨À@“`OwhH@Õ‹å©À@Ë›¢whH@¦Ìðø„À@j!{hH@.²‰Ò’À@bT¿‰hH@ŒÏš”À@mI ‹hH@åÿaô—À@0wX*hH@ën¡›À@W‡¯“hH@‡€y—À@]•hH@~Ý¢À@ZR»Î™hH@{E¼4¥À@;“ñ$hH@Ö—¡ú¨À@Î¥‘"¡hH@àÆ¥¬À@Èb€3£hH@1íˆ±À@Y[\\M¥hH@‘à*Þ¸À@äG˜=¨hH@©g’™ÉÀ@FÂÞ]¬hH@«/I…ÍÀ@«·zm­hH@)ð!lñÀ@Œ0çxµhH@Pü­¶Á@zTíŠáhH@d;xœÍÁ@<; ÀæhH@¸QÅÅDÀ@c•ŽiH@‘ºö¥Î½@ÆÎáiH@™úg½@sjÉ&iH@R`ÍHÚ¼@W­k2iH@‡ƒŠÓ¼@„§\\<:iH@VmfHÛ»@2Ö	NiH@·R«C»@oÌÿmiH@0š)Q»@y+YxiH@Õ m»@•|ÃaiH@7‹ý;É»@˜§œ—»iH@Ë6µ¿»@=Ý_ŠÃiH@÷Õ³S¼»@¬—\\ÆiH@œ\\¸»@{\\ˆÞÉiH@º¹ZŽ´»@ß8âÈËiH@ˆ	¹¹¢»@Ÿ—ÛiH@&“Õ¨»@oÝaü÷iH@‘¹µ »@öŸ,ÀÿiH@Ô"Oà‰»@sàU\rjH@M¹GŠf»@R8WujH@ï2Í`»@âvdÛ)jH@û¢låº@˜$I†FjH@EqågÍº@ì+÷jjH@VO¬º@¦ xjH@²\02àªº@*KR„jH@¬ßá¨º@#ûbŠjH@ÿÝ­¨º@¶\n?jH@©êº@·`Ðš£jH@µ+	‘»@S›¿.ÛjH@[OÍ2¼@ãï+kH@»<Õ2¼@ÂÏ—kH@+àÝÖ¼@|,„OkH@6¦Ç:xÁ@ßÏEú>kH@ïS¾a©Æ@F€èW-kH@nù\\ªÏÆ@¬û,kH@{¼OÇ@uVf,kH@¸ò%ý¸Ê@îYÙ©%kH@xãX{4Ð@‚h€›kH@ËvghÐ@\ZÍîtkH@ö5rjÐ@l vkH@J×€:xÐ@ºfÌkH@ÿî-†Ð@Þ9œ²kH@¤·¿“Ð@ðû¿äkH@Q¢öÔ Ð@zlÇ#kH@”AwV_Ò@:Ø	Þ$kH@ÄÇtAÂ×@çq`m@kH@àû…ÍØ@åGòÄEkH@æ>³*\nÛ@lèü/QkH@úÌEÄÜ@xhóøYkH@å~ÂŠß@gjhkH@#1r¯)ä@ó¸˜kH@:o¸“ä@Šžû²kH@¦ÄBÍÿä@9óêÙƒkH@äãC™å@{Ô¨´kH@ŒŒ¼ê@ß\r_QúkH@Ìªÿ2Ÿê@„c¸÷ükH@šÂÄê@^/f!\0lH@…[ð¿æê@ÛæþlH@\Zlõë@t‰. lH@Ôr_ë@X„°\0lH@}-ë@7ÜÕ»	lH@v ¡\Z4ë@¥†yã\nlH@,Ã}à6ë@ªÀzUlH@$hw<ë@“ê*;lH@9¹ÙoHë@þ§8Â\rlH@È%D£Në@O1:zlH@¢jF Zë@–f_¦lH@çÊ›hë@;ñËÈlH@Œ{m>më@:B\ZlH@OG–ë@È¹ŠlH@¡ol’œë@ªawÞlH@öÉƒd·ë@™ñè&lH@ºy*Ôë@6Žn\\lH@Pšqµ í@¥»ô¬&lH@-ú²œò@[ðA~êkH@"›ô@Ìí\n·ØkH@u/Xðö@àŒÄ1·kH@ƒ[\nJ\Zú@¥³»	’kH@ux3´ú@Ý%ºŠkH@‹ùú@]ht‡kH@:~ÉKü@{«9tzkH@Sv.!ý@#Á<kkH@Ýå4Ýšÿ@©{hGkH@W€Ní¥ÿ@má	tFkH@¸ïõ•Òÿ@÷tžàCkH@', 13, '11545.68698553'),
(4, 750000014, 14, '75114', '14Ã¨me Ardt', 'Observatoire', 750001537, '5614877.30907921', '10317.48330990', '\0\0\0\0\0\0\0(ÝDÂœ@‡\r¯$jH@', '\0\0\0\0\0\0\0\0\0\0´\0\0\0q=¾¢«@Íà9™kH@Nïöž±@xÊÄykH@ìçzà¯·@[yð_kH@=É·@±s_kH@+àÝÖ¼@|,„OkH@»<Õ2¼@ÂÏ—kH@[OÍ2¼@ãï+kH@µ+	‘»@S›¿.ÛjH@©êº@·`Ðš£jH@ÿÝ­¨º@¶\n?jH@¬ßá¨º@#ûbŠjH@²\02àªº@*KR„jH@VO¬º@¦ xjH@EqågÍº@ì+÷jjH@û¢låº@˜$I†FjH@ï2Í`»@âvdÛ)jH@M¹GŠf»@R8WujH@Ô"Oà‰»@sàU\rjH@‘¹µ »@öŸ,ÀÿiH@&“Õ¨»@oÝaü÷iH@ˆ	¹¹¢»@Ÿ—ÛiH@º¹ZŽ´»@ß8âÈËiH@œ\\¸»@{\\ˆÞÉiH@÷Õ³S¼»@¬—\\ÆiH@Ë6µ¿»@=Ý_ŠÃiH@7‹ý;É»@˜§œ—»iH@Õ m»@•|ÃaiH@0š)Q»@y+YxiH@·R«C»@oÌÿmiH@VmfHÛ»@2Ö	NiH@‡ƒŠÓ¼@„§\\<:iH@R`ÍHÚ¼@W­k2iH@™úg½@sjÉ&iH@‘ºö¥Î½@ÆÎáiH@¸QÅÅDÀ@c•ŽiH@d;xœÍÁ@<; ÀæhH@Pü­¶Á@zTíŠáhH@)ð!lñÀ@Œ0çxµhH@«/I…ÍÀ@«·zm­hH@©g’™ÉÀ@FÂÞ]¬hH@‘à*Þ¸À@äG˜=¨hH@1íˆ±À@Y[\\M¥hH@àÆ¥¬À@Èb€3£hH@Ö—¡ú¨À@Î¥‘"¡hH@{E¼4¥À@;“ñ$hH@~Ý¢À@ZR»Î™hH@‡€y—À@]•hH@ën¡›À@W‡¯“hH@åÿaô—À@0wX*hH@ŒÏš”À@mI ‹hH@.²‰Ò’À@bT¿‰hH@¦Ìðø„À@j!{hH@Õ‹å©À@Ë›¢whH@"P¨À@“`OwhH@U·uÀ@kMAkhH@¿9=£¾@…¤Í–uhH@åx‹eÓ»@7âÞÖ}hH@¼YÃ»@ªtä}hH@“£¶Ìº@×¹±µ~hH@èif‘8´@[ÊE„hH@‚ÝÕ]²@Y´<×…hH@tƒŒ{«@TÍë¨‹hH@Ã&òßy«@eUª‹hH@^Ý«_n§@J/¿”hH@u¶Ö•w§@ÅÖ#×•hH@\'à¶ƒ§@DÂG—hH@\Z7’B‡§@y½¡³—hH@ö™¼\Z‰§@sˆ¹ë—hH@ÆÆ‚‰§@Þøø—hH@v,w¾§@fBB6žhH@mž5¡°¨@È¸T»hH@íBw²¨@ó ;»hH@Ì¡·“³¨@¼/è\\»hH@m8’“ƒ§@³b7u¿hH@«É{§@o~¿hH@vl’Ó\Z§@»blÞÀhH@¤µãA¤@»ö±ÊhH@¥ØNœ¢@2ËOœÐhH@\Z\\«V¢@ýTã•ÑhH@îŠ](0¢@xFX ÒhH@qòMšÖ¡@=&LbÓhH@xÅÑ²¡@‡êðâÓhH@-–ìÒ@ìMÉÑáhH@»6ÁåÈ@D©¹ôáhH@àÉµ€@òM5øâhH@Ô \0!J@óHj¼ãhH@äf¯n@£GdähH@×¢\\tW›@ã¯ï¼êhH@•ãïåš@ŒòüTìhH@ÉU9-Ùš@pÜØ‚ìhH@q}ìÅ]š@ÜÚg>îhH@NCIãY—@Ã&ÿøhH@ÿCBy“@V@!iH@ÑÏÒód‘@já<iH@H_‚Â&@Jåk«iH@­^wÅ@ƒ˜iH@&*¿Œy@Ê³îiH@	bF¥F@É…ÆiH@#³Þ7@»\'ðúiH@úr£ê.@aWµ\ZiH@ÄoÑÅŽ@« iH@Ôî{Ž@ä­•iH@kúW¿i‹@æ„®z#iH@yi‚Š@vírJ(iH@\\#ÀuT†@êÓŽ‚5iH@xU³,z„@Q­G\Z<iH@à/ü35„@?·³=iH@e‹R „@AyZ=iH@<†d„@è=iH@¬f­¨jƒ@*mà?iH@Ö):¦Bƒ@H÷Çn@iH@4‹Ž]8ƒ@™	a“@iH@“þ[«ä|@Á´@WiH@nõB·h{@ym)Q\\iH@¯êé¯ßy@ÂºaiH@ZÞy@š‚¾aiH@ÃÉú(!y@µ¥rYdiH@mêxÙx@‡!VeiH@6›0Á£w@Þ›Y™iiH@GËwþw@²ÅæiiH@èr52w@JÁ)kiH@\nzøíÈt@Ã&P¨siH@åiíOt@`t°UuiH@Ïž€^.s@LhÌNyiH@æ‡o@ÝÛ7‘†iH@ÜùS•n@w3MŠiH@Àl²hk@t“Œ•iH@[ÞÖ%k@aÏ“À–iH@ÄÀ½ýj@\nU—iH@kÔÛ#zj@\'FHì˜iH@j«wkj@Áp”!™iH@òårcÿi@]|ªšiH@”v7^Ìi@#4gc›iH@ŸyÊi@2>ØiH@”wãR	i@á¡Ÿ\nžiH@ßûNËçh@7\'ažiH@½+)TÜh@µÿM§žiH@´~Êýh@¸µ] iH@@>>ßÿh@î¾?x iH@!à*i@Ž>Áª¢iH@ÑãwZei@W{³§¥iH@\nrÅ§i@Øî©iH@"×ŽÆçi@2}µQ¬iH@´€êi@¾i+o¬iH@Ä7KºKk@áù´¾iH@ÿŠè¸Ïm@PŸøeßiH@9‰÷än@û)qˆíiH@"3uu«o@ˆ¿„­÷iH@@‡?q@rPú€	jH@,%û©q@œKç»jH@ªï\\ªs@øô#jH@ÐXÎUu@#£´<jH@*~O‹v@4iJjH@Þ»Ðw@¶Gâ±`jH@%°äŠ\nz@w5ûXjH@3_Eiz@áªYy†jH@©åù=~|@Šk¡g jH@‘ûSÙƒ|@Ü‡Ö² jH@­fÓ€@_ljzÙjH@#žÒ9Ó€@ÂáŽ|ÙjH@ë¤"˜ˆ@\0±d?kH@kú¡„™ˆ@baq?kH@íÜ(ƒœ‰@•WƒµLkH@Ïtaö‰@ÓîOQkH@âÛÕR6@¡–†%–kH@E,úG<@ÂY—ô•kH@jg2Ø@"›a¾ˆkH@n%Ç/®‘@ø•ÐßkH@¸$7è,’@.|ýÎ}kH@-,{“@µ‚6žŠkH@«-í»i’@u¼1¦kH@ÃSU¤’@€¥±=©kH@ñ$ŽšŸ”@Ä›}ÃkH@\rc"Œ™@ˆtÄ•ûkH@Šüqmœ@Ó…aiékH@™åí@»èõákH@Á†èÒz£@T„î<ÄkH@ý:ºWÃ¤@÷€‡s½kH@K±Ü¦@_\\©¶kH@q=¾¢«@Íà9™kH@', 14, '10316.72025836'),
(5, 750000017, 17, '75117', '17Ã¨me Ardt', 'Batignolles-Monceau', 750001537, '5668834.50445393', '10775.57951600', '\0\0\0\0\0\0\0¿N­~Gt@…n\\ê“qH@', '\0\0\0\0\0\0\0\0\0\0\'\0\0âšbx€\\@#©ÚÃÝoH@˜©ô¸=\\@ðF¼ú×oH@?4\\@ÓÍ®ÙoH@’³i¦;[@¨MûÝoH@YZ_A(Z@íô‰âoH@PÝ;¾X@û‹<íoH@?å×$ëR@•Ž7WpH@i˜…ÛQ@”²¸pH@v0BGP@ó•­¹pH@¦ôÃ2ÓM@\rk‚V!pH@(«èÓ,L@ÿÔÑ)pH@\\bŒ8F@ùëÛGpH@6Ð±,ÈE@I¸=JpH@¿Ç2ŒE@Eù\Z>KpH@,¶T?}E@Iû‰KpH@\Z%ÜEYE@\'ñ??LpH@×³XW8E@ƒøåLpH@G¤¼/E@z‹MpH@\'ÁêfD@§¼è!QpH@]¸¼ÆMD@Ã$¤QpH@P„/"@@J\0“}gpH@sÀSX=@¯©Ú»wpH@ýVÁ½]=@ˆ8ÙSypH@ê§?pk=@35}pH@6Ãê(m=@,A@‡}pH@ÿy5m=@X¿ƒŠ}pH@™HŠ¿w=@K/¿i€pH@‹}Cù¬=@ ÖêŽpH@·/%ä¯=@Æ——µpH@Î¥©s¿=@à:Úò“pH@ãž\ZÁ=@£Ác”pH@ ¶½Ô=@mc©¿™pH@+Ý¤ï=@|´º pH@bŠˆ3ù=@\0+3o£pH@(Ç­/>@Î–"»±pH@ÎÐZÓ:>@‚€Þ´pH@£WÕ^>>@ DGÞµpH@¹¬tH>@ét`·¸pH@Ä,·2z>@ÊWÃÆpH@ež<È†>@Y³PÊpH@oÝ2’>@ä¦¸‰ÍpH@T®_ü¸>@9?}ØpH@«ˆ\0Ê>@<xÐsÝpH@»®˜ÓÝ>@šä”äâpH@-f°žà>@´±®ãpH@2æ\r55?@ˆ?ŒûpH@Û”ºB?@p×íaÿpH@)œs¦L?@=]/qH@,ÔCz?@ckýeqH@`zHk—?@5ÑXÐqH@•%¸?@¬êgqH@7ŽHÎö@@š¸ßqH@ÁÓ€!>A@‰I7V\ZqH@‘ÐürA@¾œ$çqH@\'à“¸¬A@óê­´qH@±¦…B@vìú™$qH@JRM:ëE@)ÄÕsTqH@íÞSUF@yècšYqH@Ð}¤°’F@õèó”\\qH@h•nø“F@"hß¤\\qH@©0Æ"õF@±_\\aqH@¬Ž2hWH@Ö_êŽrqH@½*òïÌH@/rCxqH@¹80	I@­N)0{qH@ñq`b7N@ËYMÔ£qH@Óen?O@/ƒßªqH@Éã\rIO@Çê7¬qH@"^ˆ\\OO@F¢h¬qH@ó%¦uO@wE­qH@(¨DôO@°B<v±qH@Î;×ªôO@‡»_y±qH@\n­ŠÿU@ë¿ŸÙqH@è½¯ËÀU@:®çÚqH@[lòOÚV@Ì#ØúÜqH@wc§¦^W@Uç†ôÝqH@¦cóòW@URßqH@óCØY@¦ñß<áqH@m{5rY@Á£aßáqH@@ÂÅ—\nZ@ÖŠÝþâqH@J\n›Z@2ñ[äqH@¿Àu±¤Z@ze“!äqH@÷±»ÍZ@{NþnäqH@îæß›#[@-\\ÿåqH@ë§¬K[@PI”\\åqH@\r¸³Î\\@z»²»æqH@ßÝG5=\\@Ž•4$çqH@ú£&A\\@I¥+çqH@Û@øùG\\@P‚„8çqH@ù€µBH\\@„Ó\n9çqH@©ÇÞÁ%]@µ…v|îqH@S³´ñ]@Æ…,õqH@;¢^@9ƒŒöqH@j"R16^@p/uk÷qH@Ì=sÏù^@P@‘ÕýqH@Â‹†i¥`@Š1ûÚrH@N^lš a@•ÎårH@ƒZ;_a@\ZñrH@™ç]b@kPE\ZrH@Å÷k]b@hMmH\ZrH@Êè6Ë]b@t"ŒK\ZrH@Ž!	C|b@ûwLKrH@ªj4t³b@*\\“\ZrH@Qá Ób@ÿÈ›(rH@$>4çb@«ÏïÌrH@Yèøc@¡PùßrH@tå>c@-Á‰’ rH@—!×@c@%W½!rH@ü ã]c@uècª"rH@c ¤¯yc@Þë}š#rH@©Qé8™c@E\\ˆ$rH@Û?—¹c@ÂÂõw%rH@ïÎ?¿Éc@í·õ%rH@MW¤5e@_¹§0rH@ºÊ@Áe@ëcMÇ4rH@íp/nf@Ø±7Þ9rH@åãº¡g@WÏ\0?rH@¢û+¤g@o§­ýBrH@vh`\0ìh@pÕ~£LrH@ ¬ûêi@ûóNrH@³Üµ`k@(mŠ\\rH@º›)k@6%Ÿ\\rH@Ý«òuOk@X¤\0¢^rH@‡Â2rl@Ò8V/grH@!W¾m@v.JlrH@&5bÛm@2^íqrH@…^Í\'n@D	.3trH@ï€="p@RÖïAƒrH@äEár@DÅ£‘rH@g&(ÁPr@!+ëÜ“rH@ék/ }r@Œ¹m2•rH@\rIÓs@vÄæÃrH@¯?Ÿç\0u@ŒfWR¨rH@Rît[u@MÚÝ«rH@Y:ïKÃu@´ÍÈ®rH@ñŸ\rÕu@¤ä„®rH@³r½Þßu@FŠ\'Æ®rH@âñ–ƒ\0x@=/Å›»rH@Ä,Èñtx@F Z¾rH@Ðøôýòy@²WÃZÇrH@3ÇD&õy@›ÅgÇrH@üTÃ\n9z@.2QÉrH@ZÜZƒ9z@Lä&ÉrH@‚\0(š”z@’¢ž)ËrH@¶×DkÉz@i9hÌrH@­ˆ+ÆÉz@Ë¯ZjÌrH@ÀId:œ|@®y	h×rH@\'¹€á}@Í	ßrH@Äe$-‚~@ñ14ÛârH@¦°¦~@rõq·ãrH@äSTÓ~@P?±ÄärH@¤½‰@_;éérH@h¹„Ã1@ÎèÎñrH@îÙ½ÌÐ@¥Â $ôrH@E«â6á@®ÎòsôrH@Úo¦P³‚@ïŽqørH@Ìx%Í‚@3§ÜðørH@úÇ?0\\ƒ@½*¯¦ûrH@d™}Nÿ„@\Z\rœsH@å¹ì…@qlwÆsH@Mÿ¥g‡@•BQsH@´àæºÁ‡@×V>sH@ü/\0¼Hˆ@$lŸ—sH@)n‹\0X‰@©|¾sH@¿/5¤‰@ƒ±;0\ZsH@ÜP€£ü‰@G7èÞsH@“„Õ\ZQŠ@ysH@ðM†»éŠ@=§•_ sH@¨ðŒ\\‹@Þ È"sH@‹W+RRŒ@pI›8\'sH@ù²Œ@\0iôÿ(sH@zm‡4»Œ@§²(+sH@tX¶ÛÌŒ@ËÜ^Ò+sH@WVæ‹ÜŒ@Á·\'i,sH@úéàÜŒ@}¨Xl,sH@UÆ¹Š@yó=ó2sH@Ì.o÷üŽ@äy¯Ù@sH@Ýtgà!@­àj<BsH@|¨°-@Àúö­BsH@ˆ°5|Õ@NÇŸúHsH@§ï5@ÂFgKsH@¦ö4H\'@“ÓÂLsH@|’ˆ‘@µvXÐLsH@•Ì`Ã’@€Úð~MsH@F5V<“@dpEÂMsH@Ý@‰®ð•@*dÉAOsH@ÏrXó–@o(ZKOsH@ÀwÎÖ\n–@HHPOsH@Óêq˜–@y­ZOsH@§éi{–@q¿¥ŽOsH@§@Bë—@ô§íÛOsH@\\\'K—@KêPsH@ÒM¤>C˜@~1$‹PsH@h~)O˜@¤@½‘PsH@Fw¬Jb›@¬žERsH@öÎDœ@e“D RsH@|Å·œ@§|¥ RsH@T)ùrœ@4’ÜRsH@Ñ8&Úœ@p&ÒûRsH@Y‡‰ëœ@WEþ\0SsH@ wM;µž@áÄÙ‹SsH@C¿_Û£@‚äôÞTsH@CµÊŒ£@ÊG—áTsH@:sö £@¯ëžâTsH@M	o$¤@æç1UsH@*~T¬%¤@@‰1UsH@Ÿ1,¤@Êg!‹OsH@UA¨›Ç£@_¸ÉÄCsH@åÄùÂµ£@äÇtv@sH@Z‰¤P¤£@í¥Ú:=sH@œ<à#¼¢@Rþe8sH@spv\0û¡@ó% ’ïrH@ªïXéç¡@NÓö%ìrH@5ÓßÞÏ¡@ÁEÎÕçrH@\0û­ÀÂ¡@ËøT{årH@5€´­¾¡@Ì&í¸ärH@ÊG’W @’L°¡rH@â‹¥šž@0 £ OrH@ÝÅaGž@Ê\ZÓ@rH@¡B»Ÿo@v69ÈrH@piåèœ@;˜~žþqH@R|9œ@Ì÷™ÞqH@Ú’Véx›@Ñåýr»qH@\n·bü$›@c„ì¯ªqH@¼Í§µýš@XÁ×¢qH@  ÔÜš@zöšFœqH@LºÏš@û§*„™qH@\nÛèJaœ@]ð]êbqH@lIn»@@Z†ZÕDqH@1d\\e~ž@}…\r\ZqH@wÓI>“ž@nB>qH@µš$ëLž@¨f¾…qH@\nS56ž@;öéqH@Ø\r ØÓ@•øxqH@Q.XŠ@P.qH@~ª:¹@Æh&ÉqH@U²ƒ„@Á@¸qH@¸vEØœ@Í¼ãqH@½¡ëÃœ@E¾MžqH@±š@Ï@\nqH@i³GÃˆš@}"¤K\nqH@ò‚evš@^;\nqH@XŠ—vš@þ\nqH@¨á=Iš@y–{	qH@ÌÒ@:˜@uu¶qH@T~d:˜@Ò‡¨µqH@Wñh˜@’³qH@Íx9vþ—@\'é0òqH@ìÓƒrî—@±X½qH@¢Æ„ñè—@Ç€E«qH@ÎXU³—@ºPû\0qH@Æ+«³—@¢P›ú\0qH@°,c,ž—@ºCëµ\0qH@]¾€‚‰—@4r\0qH@N+k^–@NŠšüpH@²¼yI–@FÁÓUüpH@ãoÐ»8–@‘ýÚüpH@§k{Q7–@%`5\ZüpH@a¾o–@+W#¾ûpH@î 	–@áIM†ûpH@L×Ú–@ÁA‡…ûpH@{³3Šx@ÓÇ_répH@‡VÃnn@<<SépH@/¸×€I@‰6oáèpH@i“–$@ÅÐîèpH@Ï%§Ù@Ž$^tçpH@Pb¤Ç™Ž@x#¤_ãpH@.7©Ò @L ÞpH@?¼\\·ùŒ@Õ<ëÞpH@*‹‰ÝŒ@å´ÝpH@ð\\ÃÌŒ@ó~ÝpH@ðEAN‹@o¯®×pH@Ÿ:NÎãˆ@“ó¸ÐpH@>¤@”Ýˆ@¤Ä¤ÐpH@äá!¥‚ˆ@ÌbÍ{ÏpH@-w’Ð0ˆ@Â™÷ÎpH@N µz#€@Ô€¿pH@p`°9~@ÔýM»pH@bë;y@•ÅÝp±pH@Ñ’€x@Øcß¹¯pH@Q.	x@>mQk®pH@6	©Ó±q@:«äÎ˜pH@çÛ˜t»l@To¡¯‡pH@ÇUÌWbh@%´“³xpH@>E\nåÐc@š²ÂÿhpH@Á©.·Íc@³ÙôhpH@—€¢ºÌc@!ŠqñhpH@çù>ûƒc@%u`÷gpH@E[ÒZAc@¿UgpH@\r Ÿb@çº™ädpH@9ñóUb@|2@~^pH@½C¼Ab@ï\r¤ª\\pH@¥ºC<^@ª]™pH@K‹ÝÇ\\@øý£êãoH@nƒú^¸\\@áÑZ–âoH@âšbx€\\@#©ÚÃÝoH@', 17, '10775.34891467'),
(6, 750000003, 3, '75103', '3Ã¨me Ardt', 'Temple', 750001537, '1170882.82818778', '4519.26364836', '\0\0\0\0\0\0\0þ¾g2Há@`\\&šrnH@', '\0\0\0\0\0\0\0\0\0\0W\0\0\0S¦o´é@ÈI›b\noH@¹ZÒÈ>é@jÞø0	oH@ÕC¥ìAé@Î¯Â	oH@núß Gé@×)žÜoH@èNmdé@GL‡ÍoH@.ƒ“é@Æ5\noH@PR¾=Àé@Í_oH@ã}ä«ßé@224oH@	x÷ñé@¦ùö…oH@VRûé@óÒÞ,oH@˜ÛUdê@luþpoH@%½Nê@‚fâpþnH@¹Ð*s?ê@p†ÒûnH@”I0V^ê@oóä÷nH@3¹Tµfê@Vfh÷nH@Z*Š|yê@;ðõnH@u3†~ê@¼"àŒônH@Çï.·~ê@µ)ÚˆônH@Åû‡ê@&¢`’ónH@‹&U–ê@n)bònH@JÒyÚê@:\'·ÿênH@ëäßtúê@6øƒ¬çnH@ä1¾°ë@(-bÑænH@ÌãìYì@XÚÊ!ÃnH@QRFw(í@ö¾F”­nH@\ZÒ¯(;í@í ¡«nH@ýƒc;í@û\n›«nH@Q\\ï@ìZ|nH@a–Ž·	ï@kŸX{nH@ZÌÚï@”§znH@Z·ójï@iÄ¤ÁxnH@ë¶è°"ï@ˆ7hwnH@±×iï@YÌýdnH@vløÓÒï@É_ÓÏInH@P	ƒ¹(ð@¢+L•3nH@OO)Ú‘ð@r³’ÀnH@‰é˜âð@žEµnH@5ÈFïÍñ@µefÅmH@Â6Ö)!ò@÷‚×¯¯mH@"ÍKb!ò@ò¦¡¯mH@ó|¥ò@Zþ,Ý‹mH@s:¶ò@‰5\'²ˆmH@ƒÍâdê@A« ÏžmH@l¨qê@&ÎçR mH@óÉ*/ç@Â+á¯mH@!™äßÝä@ŠÈÀiºmH@xZ)´â@\'¾ÖÈmH@_[m\\þß@C‹ÝmH@Å:QÝáß@@c5ŸÞmH@©ª\r´ÖÞ@Îå¿émH@*ZþéÝ@É‹mômH@÷D&"ðÚ@Xë£nH@‡x¡ÚÚ@‘II\ZnH@ñÊR’éÓ@­þa<nH@†j÷U¤Ó@Ü±/>nH@f[ð,/Ð@CqŽJnH@b¼^œÍ@çè2ºUnH@ÀV=Í@ý†!YnH@ºIÞ¢½Î@rüÝÿƒnH@QÎ‹g¾Î@ØJá„nH@\rr:ìèÏ@MN9¥nH@¹öhô×Ð@cu,ÀnH@¬ŽžxûÑ@<#Ê´ànH@2}‡ËäÒ@ŠVèúnH@é59’†Õ@õ¥5FoH@+ÞxŠÈØ@h?Y>:oH@®™VÙ@.Â48oH@˜éëÑÛÙ@éÉ/6oH@ý×³Û@Í_	ó1oH@ï!õ·Aß@øÍ‹)oH@úi–à@W0gy&oH@Bž^Øæ@²¯DÁoH@…>£žŸæ@„\'w‘oH@#®”wç@Ÿ>óoH@Tñ”Rç@‹R¼õoH@ë£½uŸç@°#DoH@ß •±Ðç@ÝÌÒoH@±Áål÷ç@©yoH@ù±š\\è@XÜâoH@{˜‰Iè@•†ªVoH@C-e- è@`ŸÊoH@ådUÙè@h­÷oH@çòÄ8õè@öïíoH@•ªF×õè@ÒèoH@Þ6|ûè@Ùßq²oH@’b\n þè@ñ´;”oH@S¦o´é@ÈI›b\noH@', 3, '4519.07198175'),
(7, 750000005, 5, '75105', '5Ã¨me Ardt', 'PanthÃ©on', 750001537, '2539374.62284532', '6239.19539614', '\0\0\0\0\0\0\0\nvCÎ@F]‘¶lH@', '\0\0\0\0\0\0\0\0\0\0y\0\0\0Ûï~ê[ê@\n"QNlH@80ŠZ/ë@wV›DlH@Pšqµ í@¥»ô¬&lH@ºy*Ôë@6Žn\\lH@öÉƒd·ë@™ñè&lH@¡ol’œë@ªawÞlH@OG–ë@È¹ŠlH@Œ{m>më@:B\ZlH@çÊ›hë@;ñËÈlH@¢jF Zë@–f_¦lH@È%D£Në@O1:zlH@9¹ÙoHë@þ§8Â\rlH@$hw<ë@“ê*;lH@,Ã}à6ë@ªÀzUlH@v ¡\Z4ë@¥†yã\nlH@}-ë@7ÜÕ»	lH@Ôr_ë@X„°\0lH@\Zlõë@t‰. lH@…[ð¿æê@ÛæþlH@šÂÄê@^/f!\0lH@Ìªÿ2Ÿê@„c¸÷ükH@ŒŒ¼ê@ß\r_QúkH@äãC™å@{Ô¨´kH@¦ÄBÍÿä@9óêÙƒkH@:o¸“ä@Šžû²kH@#1r¯)ä@ó¸˜kH@å~ÂŠß@gjhkH@úÌEÄÜ@xhóøYkH@æ>³*\nÛ@lèü/QkH@àû…ÍØ@åGòÄEkH@ÄÇtAÂ×@çq`m@kH@”AwV_Ò@:Ø	Þ$kH@Q¢öÔ Ð@zlÇ#kH@¤·¿“Ð@ðû¿äkH@ÿî-†Ð@Þ9œ²kH@J×€:xÐ@ºfÌkH@ö5rjÐ@l vkH@ËvghÐ@\ZÍîtkH@xãX{4Ð@‚h€›kH@¸ò%ý¸Ê@îYÙ©%kH@{¼OÇ@uVf,kH@nù\\ªÏÆ@¬û,kH@ïS¾a©Æ@F€èW-kH@6¦Ç:xÁ@ßÏEú>kH@+àÝÖ¼@|,„OkH@=É·@±s_kH@ìçzà¯·@[yð_kH@Nïöž±@xÊÄykH@¤én­±@b_¢f‰kH@ôk­´±@ÕŒH«kH@Ÿt&º±@À]P9—kH@\rA\n®¾±@EÁš%œkH@T¼ð™Ú±@¬ÈíœkH@¢/³yù±@ä®IœkH@üÏ“M²@‰a÷7œkH@HnÝŽ²@5ÐOœkH@*†pÙ4²@j€¼œkH@ËÚ}ŽP²@ëüRkH@†·°ãi²@IžkH@û¬C²@NJðÛžkH@<ý©C’²@?{õ¬ŸkH@J—\'n¨²@Q’”Ñ kH@œax£º²@Ú{’þ¡kH@‰\'/Ì²@5Ø3v£kH@-ù(¾³@¥ñ)X¾kH@½ï7D¾³@ëü_¾kH@F¶‹µ•´@s;×kH@!$÷7¶@s#ÄlH@(ðå¸×¸@*ÍãRlH@ž[®ð×¸@/ikéRlH@>˜\nW¹@#1SalH@\0uÒ	º@ðS£ÇulH@‡õ¡M	º@Ç¶ÍulH@tö9¿6º@è¥YzlH@5ôÒU»@7Ü«]—lH@üC*À½@‰NÂÚÖlH@`¥8åÍ½@RF…ØlH@v:)\'Ï¾@/:ÍLúlH@4*®(À@<Ð…‰\'mH@?\Z¾Á@ßªGmH@¨MBÎ¹Á@®f2|QmH@xfÚRóÁ@*8¡JPmH@ ¾!0Â@Œ,˜pOmH@`l2øHÆ@Nˆ:mH@_SùdÆ@?ww9mH@–ËHé‹Æ@Þ-ê¹8mH@lc¾¾ªÉ@S¡Sf"mH@|dFIË@6Ç`êmH@x½ó¬ˆË@ìVP>mH@”ºÝ¦Ì@ÂhèmH@DÌ‹ŠÌ@çø-1mH@­\07Ø›Ì@Ýž€ÎmH@oŽÂÌ@JmH@æÜDãÌ@Õ¢IXmH@ã1´ÌAÍ@­‹fœmH@¸r/Ð@~ßQmH@yg¯óÑ@‰±bYúlH@•0ãRÓ@,ze÷lH@µ5óÉcÔ@x#zÎôlH@˜¼«„À×@ ý±ßälH@1örØ@!:ãHãlH@C1‘tDØ@z†”\\âlH@å+$?^Ø@uFÂ×álH@-\r<Ð-Ý@N!MÉlH@Äwˆ¾LÝ@r’\0iÈlH@	VÒ|Ý@ý°ˆÇlH@j9’-²Ý@\rôó]ÆlH@Z†K\nÜÝ@Àç\n†ÅlH@\0FXæLÞ@ê+@ÃlH@‚…MÉøÞ@\rjC¿lH@f¯µ—ß@’¦â¼»lH@¹DTóß@žkA¹lH@ùý°eà@ý€¶lH@‡ž\Z·¦à@¢I¸´lH@TÕwçà@?œžû±lH@m\'Âêâ@FY¹þŸlH@l‹m êâ@2zyùŸlH@®˜þÝaä@e¶ûÛ’lH@nï\nz\'å@s7l‹lH@sgÄýbæ@ñÒ!ä~lH@Ûï~ê[ê@\n"QNlH@', 5, '6238.82340770'),
(8, 750000007, 7, '75107', '7Ã¨me Ardt', 'Palais-Bourbon', 750001537, '4090057.18546976', '8099.42488348', '\0\0\0\0\0\0\0tö¨B\\@\n¯©—mH@', '\0\0\0\0\0\0\0\0\0\0µ\0\0\0QÁíƒ5‘@¤¢!ªxnH@:ž´I‘@¥¦“FxnH@µ\nÐù™@¥TÙDRnH@Ðr™š@ “í9MnH@’­4öš@…8)MnH@—ÿ_B,š@û·ãÁLnH@¯€„Û›@\0æÀéDnH@Db‰£Õ@ÙÁ÷:nH@ÿ-ûËa @éEm¢,nH@ÅdUÿi @8Vsp,nH@ÃÔÔLÝ¢@l”CnH@¸H@:v£@¶K¿ánH@]Y˜‹£@IHhnH@ºäÏ÷¤£@D”µØnH@³‚4R§£@ÇP©ÊnH@WïSÅÌ©@3$û*ÿmH@‡t£WÙ¨@µZT›ãmH@«›Ò[‡ª@öœÛmH@17~ª@b±9éÚmH@¹bÜJ{ª@C›Á¯ÚmH@}|Üx©@EJ×ÆmH@ð&Ÿ\ZD§@ÁçŠ´›mH@VKµ/¦@îŠ‹…mH@ßÔz\n¥@J¹\'wmH@!…SF¥@(fÜsomH@9‰Ç¤@Ÿô^mH@1=ùä¹¤@Êåñ‰]mH@üµl*‘¢@\r…o&mH@¥)½<m¢@ÒYZt"mH@8®é™ @¼¦I˜mH@Fàož@\rmH@¯#_Çk@¯dRóúlH@*~ÉÄôœ@(F#ölH@š8>)š@VÌÒ ãlH@YÖ—@á÷eXÔlH@Qœ7@–@u†=ÇlH@qXÜ™K•@…ÒÖÀlH@¥©Ó»º“@qê7´lH@•L§áw@KP™lH@—)®J¹@_žÇ×’lH@Õ¯£ˆ@{¦ž*‘lH@òÞ\nŽ@ãr´/†lH@·„1Ry@_\\€‚lH@Xvš6Z‹@-ô\\“ulH@Gpõ¦Vˆ@D¯¿dlH@U–‚!^‡@ñ]t_lH@×Î„‚@–1¼ŠGlH@Á#\\V‚@—ÞfIlH@CÉ”)@Ã‡\'òilH@ïO–€~@%¢»plH@ÍÁA±5~@hÏýµslH@lñ³ì}@øP(•vlH@zö2Rv}@Ó†={lH@À¶Ë?}@pS?{}lH@dÈõ{@‘ŽmÛŠlH@Fõ¼—§{@·²‰lH@hv!ý;w@]f¿xlH@‡ã³Þv@h]pYwlH@+ƒw…nu@¼>\'olH@QHÑhþr@ÏDü‡lH@„žphn@œ‘<mºlH@bæ)`h@r`ÙõlH@ö}AÓ5h@6çVólH@fle@%ñ7\rmH@†<c¬%b@¤¸€Z1mH@s¿m\ra@¥‰»—<mH@Q‘¬L^@èõÛF[mH@\Zð]@*½‘\\mH@ebí¯]@“:$_mH@/ñ å9X@õ­·—mH@ŠžgyîW@ÈžšmH@1Aæü„S@IÊý#ÇmH@©¬¶[S@­JÉÈmH@„\r­;1S@à4\0{ÊmH@*ÐA",S@Çe¯ÊmH@Ç,ÿ&S@Ž(zãÊmH@þÜÛ!S@>ÙéËmH@ò§©¸S@³¬ULËmH@¶[v•S@r\\Å€ËmH@™eCrS@]3µËmH@ÐZO\rS@ÔÝ éËmH@B¿‹iS@WûüËmH@:,S@}ƒÌmH@ª|’	S@ -„RÌmH@ð—»æýR@<À÷†ÌmH@7¶ÃøR@`i»ÌmH@\0Ò<¡óR@*ûÜïÌmH@×f~îR@‚žN$ÍmH@+$¾[éR@ÚEÀXÍmH@§Dç8äR@Hè1ÍmH@yßR@g§ÁÍmH@l8óÙR@êö\ZöÍmH@ºÐÔR@kœŒ*ÎmH@Ð‡¸­ÏR@\0=þ^ÎmH@æ@áŠÊR@$Ýo“ÎmH@ÃL8hÅR@¤oãÇÎmH@ÿ=…ÃR@¨Ž*ÛÎmH@8HaEÀR@w SüÎmH@å¿·"»R@p È0ÏmH@_%àÿµR@»>:eÏmH@wÝ°R@‘Ü«™ÏmH@n_º«R@ÀlÎÏmH@ÅD‡—¦R@©	‘ÐmH@ž+Þt¡R@‘ª7ÐmH@\nà&)žR@€}«XÐmH@Ü¾RœR@ì4vkÐmH@=•Ï.—R@÷µéŸÐmH@ˆD|!—Q@y«ÖÚmH@à=Î£{T@ÆFÿmH@W!ÿ¹U@ûðÕ´nH@ec8U@iKn»nH@´8ÀU@«‘ŸQ\rnH@Â"7ìU@´YƒnH@›<EiW@ær§Í"nH@–²uËQY@Þÿ›39nH@U8AñY@F^ÿ@nH@Ç…ÝNƒZ@\nSFnH@~öqàÄZ@\nsY’HnH@ÎËrw[@ ®64NnH@5X\\@TÁÇTnH@æRö]@ép‹YnH@E¾àM]@×“½Ž[nH@Fèçù]@aåAQ`nH@×øõè<^@P®þbnH@ƒ­§…^@È»BØcnH@~êýª^@&Ò?ÎdnH@<Yxõ^@´’fnH@1®_0þ^@aÓÅfnH@÷Ì;„F_@Lô^hnH@†A@f`_@ªrìähnH@öc{˜|_@‰öUinH@.Äih½_@ë`ÌÉjnH@è—€øÏ_@ÒÇ7(knH@¨¥Tï_@{v¨ÐknH@Z^`@Ÿ¦]nnH@ìŸé¹À`@´_ýonH@«Š?#a@s÷ÚâqnH@qhÇç%a@00dîqnH@ÊÄT^a@Íü-ñrnH@9P—$b@Lú?vnH@k¤Á®zc@_’N%{nH@/y ­c@U“ëå{nH@ÍB!˜?d@")ã}nH@yÍ´Ñd@m2V˜nH@¨}R¤Ód@–ÅÃžnH@³ÜÆÖd@\\êT¤nH@4Ð¸*ôe@Ú:š9‚nH@ì<ôsöe@tàâ>‚nH@W¿3¨÷e@º@‚nH@v»‚f@ŸÅgEƒnH@©‰ë;ag@Và¶l„nH@Ý((j—h@a,œ}…nH@Z†„°h@¢ÑÑ“…nH@ÞB\\¨i@áñæS†nH@<û/Aði@\n›ƒg†nH@BG¢ÿi@Ìâ‰k†nH@.1?4Uj@ 2ê‚†nH@ÙËØbj@,š††nH@uûÝŽj@û‚\Z’†nH@ˆÈ¤jq@~O$mˆnH@%\'Lkq@KmˆnH@ñü· æq@š¾‹ˆnH@™uÈk{@þA‹nH@Ó^”}{@¡QhF‹nH@{¸Ï«{@\\fS‹nH@TYý.¶…@Ä¶ŽnH@N*Ï·¶…@ƒ©ÛŽnH@Ñòÿ‡@*¬‡¹ŽnH@!Qo;Œ@ŠY¯AnH@\0³é<^Œ@²·¨2nH@Ð\'¯Œ@ÿCñ\0nH@úì¡¥Œ@ªŸ?žnH@C¢nÈŒ@×Î¦"nH@æ—÷Ù/Ž@óxíþ‡nH@àÆs^Ž@0‡nH@Tøï¾æŽ@2(°^„nH@aÉëh@6)ypƒnH@‰\0Ô@4ˆ‡¾~nH@~¼#@8Šï¼~nH@D¤Ú>5‘@çº~«xnH@QÁíƒ5‘@¤¢!ªxnH@', 7, '8099.03315106'),
(9, 750000012, 12, '75112', '12Ã¨me Ardt', 'Reuilly', 750001537, '16314782.63726740', '24089.66629780', '\0\0\0\0\0\0\0p¹î–ß^@)ÅÆpàjH@', '\0\0\0\0\0\0\0\0\0\0.\0\0¥ÐÖ O@„>x²jH@0ú¯&ãO@€_q²jH@ÒÆß.&P@=ã‰v²jH@Ú2iP@ÉMPˆ²jH@nZ=+¬P@Jo¦²jH@ŸçÿïP@f\\èÐ²jH@!²Cê1Q@¨d³³jH@ü=¥tQ@ËÎJ³jH@ó¢B·Q@4š³jH@ÁpwºùQ@a>Ýõ³jH@¢gÞ§rR@Á‰[³´jH@š¤vù¿R@D:?µjH@[×‹\rS@5PÙµjH@£ÒÛYS@‹)—¶jH@\Zæ`¦S@ò-ÿ7·jH@¨ãÂ•òS@«4|ü·jH@hAbt>T@ždüÎ¸jH@]óK÷‰T@«ïm¯¹jH@]¸JÕT@é²ÆºjH@QŠÑU@-1ë™»jH@D†2jU@`Ï£¼jH@}zžõ³U@ÌÇW»½jH@7`&UýU@­•rà¾jH@l\\95FV@\0\n\nÀjH@‘ŽV@žÏ\0SÁjH@ïÅ&cÖV@‘E ÂjH@VŸ:VØY@qMã‡ÑjH@E\rÕëÄ`@ÇFªØ÷jH@ò‘–`@~PþkH@šñ\Z`@_Ž8—kH@Ý?‰u¸_@¡ kH@ÃÎ§Ç£_@ŠæpkH@yŒ~^™_@K¾ÁkH@\\ŽŠ„_@|’t\ZkH@eƒÿ9†_@YvîhkH@ Ÿ)€}_@=È¿kH@§¤ßVu_@UžÂkH@æµÊ¿m_@\nÛèokH@~ä!f_@›•šç kH@MûB`_@aÆi&"kH@Î^ìZ_@†…>f#kH@˜òçV_@ó{§$kH@ûÖ‡ÏL_@blF\'kH@\ZãÅL_@m÷=I\'kH@¿Ž”SJ_@ƒ&¤(kH@[áøäC_@‡ægæ)kH@1µ:øÎ^@¨¬GøKkH@45IUí]@2VáÈxkH@•žm!]@šÂ²z•kH@N_ÔE¡\\@{u^æœkH@ðÕwe#\\@ýÙ;!¤kH@î‰‘Ý[@c<$¨kH@Í6¯G[@m4î\\·kH@+îhúZ@§Ð	ƒÖkH@õË‰œ/[@©I¹ÜkH@s£¤\01[@,âüÜÜkH@Pi5g2[@ p2ÿÜkH@RñDÜ3[@Æ–#!ÝkH@›u_5[@ØNÐBÝkH@¶%ñ6[@ÊÂ4dÝkH@\n›8[@àK…ÝkH@9ã2>:[@ÅF¦ÝkH@ÛKù;[@hhÆÝkH@±üUÂ=[@!ˆ·æÝkH@£øâ˜?[@’ó…ÞkH@_Ä©|A[@k\0&ÞkH@êa	nC[@\'<EÞkH@VçFlE[@	jàcÞkH@¾TbwG[@©ôC‚ÞkH@O[\\I[@<ÿE ÞkH@´K[@±—ä½ÞkH@y^ÕäM[@ñçÛÞkH@¤:&"P[@¢åç÷ÞkH@¶ýlkR[@z—LßkH@ã&ÙÀT[@J$D0ßkH@çõÞ!W[@d¤ÊKßkH@Œ;­ŽY[@^àfßkH@Ê´ˆ\\[@·z„ßkH@;¡‰^[@Ùú±›ßkH@÷\rF<`[@7}­ßkH@Ÿ£i[@jàkH@ýoqho[@­Õ¾OàkH@X!!u[@‡ÔlàkH@\Zb z[@8#ÒàkH@ÍÍ¨€[@³+ÜákH@çFih…[@¦´•XákH@ãv¡Š[@=HákH@~½[@/eïâákH@ù»”[@Óõ)âkH@9Ôß”[@¯+âkH@R1’f [@^~cÛâkH@Ç#Š§[@6öjFãkH@Ã÷“­[@·©²ãkH@$*9ä³[@iñ äkH@8º[@È¬ŽäkH@¿«3û¿[@ŽHZþäkH@á;B¿Å[@=¼ oåkH@˜ ÄSË[@\0ôïàåkH@øõÏ·Ð[@Û\0ÄSækH@Û(\nëÕ[@9E‘ÇækH@|IÎíÚ[@Ï^c<çkH@5ðä*ß[@µi\n®çkH@Â›®žâ[@è\0èkH@ñøéå[@åŠšrèkH@ëKc	é[@ÑTÊÕèkH@eJÅÿë[@§¶‡9ékH@Ð[ÐËî[@ÞÌékH@&ã\'mñ[@hø“êkH@P‡ó[@)o—YêkH@ÊÕõ[@}4¡êkH@Nb–ö[@Á—éêkH@I³)ð÷[@Ö?1ëkH@¬”¹+ù[@0x¤yëkH@ÕµHú[@­«@ÂëkH@p‘Fû[@¬ìkH@îÚ%ü[@(„TìkH@V"×åü[@À &ìkH@—C‡ý[@SgæìkH@òyžšþ[@J·P”íkH@Fœøÿ[@¥ÀÉîkH@{\\ÿ[@ñ,V{îkH@SßVtÿ[@{èîîkH@¥q\0[ÿ[@+Ã|bïkH@™g×ÿ[@FvÖïkH@÷uÝ•þ[@Nì~IðkH@bÒäéý[@zVÝ¼ðkH@b„M\rý[@:70ñkH@s0û[@Do¯ïñkH@’Ô×ù[@–ý`òkH@äéNø[@A 7ÐòkH@D¶–ö[@¨@ókH@–@r¯ô[@9xŒ¯ókH@†ß4™ò[@”A°ôkH@5QÛSð[@{jôkH@Pµòßí[@õµûôkH@}=ë[@ÆvˆiõkH@&Õ¸öa\\@Ër~üøkH@˜¦ª5Î_@2`8]lH@z¾k<@`@‰¤ïËlH@bMBy`@ YƒlH@$ñ<¿à`@I75lH@Ô;ó`@!gŠlH@_…gý`@­´Õ#lH@O…¢a@óÈ²»lH@Àþ#°a@Å`¯QlH@ëwÿa@×ålH@q~¸C%a@¢Z1xlH@¯ðÇ.a@ÀÆlH@~î‹8a@xÜœ—lH@B“ý@Aa@]7Á$lH@œ+4Ja@Ý8°lH@3öRa@sR:lH@l!j…[a@[NÂlH@|·âca@fÿHlH@È\nla@&J&ÎlH@ìèÿsa@ÞUÖQlH@â~Ï¾{a@ÁiÔ\rlH@3qyHƒa@ZñäT\rlH@TüR¨a@eË\0lH@S<«¼a@¹Úš§	lH@dÃ\npÐa@\'¸JlH@>×ó ãa@@B>êlH@Gó—;öa@Ú\nH†lH@Â6?b@\0kòlH@>3&ªb@HLX´lH@¸Œz*b@iq˜FlH@,©°:b@|\0ÊÕÿkH@Mo¿HJb@f‡bþkH@8]bVb@.¡1GýkH@\0ôcnb@¥¯ûkH@™-Ñ¤Šb@Ôv®_økH@þÊn¹b@†‡WôkH@Ó¦—ºb@Æ½:òókH@ºÒ–ÿ­c@Q) uÞkH@‡ŠxÌ¼c@G¿×\'ÝkH@#“Ì4Be@î‹8 ÇkH@|æïWge@ÜÝôìÅkH@žµPwe@Ì Í1ÅkH@îÚ…!~e@ÌÍåáÄkH@*«Éˆüe@	Œ&gÃkH@°gÞe@£ÊÞ?¿kH@—r4‚€f@=ú†¦½kH@F¨u¢k@§òC˜¶kH@¹T‚À¤k@\'•¶kH@sUŸªk@•È	¶kH@XWu´k@ƒq„¶kH@¾>Ë(r@ã` ­kH@ªðVî¨u@ø×ÕÎ¨kH@\nRÆßw@KH\rÃ¥kH@ú_\nx@\rw¥kH@°Wš+x@;5É=¬kH@2d‚q´{@¤©Â_§kH@\'¿2&^@OÜST¢kH@ó’Te@«NÃˆ¤kH@ã^“€@ÈDlH@xeæÐ€@|¼ß\'lH@št¢Öä€@hËÕF\ZlH@šåj£æ€@²6PÔ\ZlH@L€4é€@¢ðéÐ\ZlH@3úq‹„@ÒÓ^lH@âÈR+†@¦¬1lH@½LÑ´+†@¬³äµlH@:‘Õ-†@/bnflH@6©KB†@n		lH@67°T^†@ÄÞ› $lH@\\­Mòa†@ÆL%lH@Å•¼¦Æ†@ô…Ã$lH@\n	ÀÉè†@säÕ¤/lH@ê,ÔPé†@î…äÏ/lH@y›¿‹†@Ø×¸É/lH@Ü’yŽ†@aè1lH@Õ„AÎ°†@	eäFlH@˜/­ñ°†@ÌÃúFlH@ðþ0F‰@¾BµÈElH@6‚}ñŠ@ŠeRElH@Ö©”@WWËClH@LPT0b’@!™à’AlH@@m	}’@¹t†AlH@zÚ¥—Š’@pR¿Ø@lH@ñ“‹Š’@æluÔ@lH@\'ª²w†’@Hç(f?lH@VOsj…’@k¤?lH@\'‡¾x’@TÊ×:lH@$¨J’@³³h*lH@Ñã/@’@×èß²&lH@"€x@’@›ôD²&lH@)† K€’@‹ÓM&lH@×µMèˆ’@.ûC@&lH@M–ö¿“@‹³V$lH@bn(ž/•@ö¹"lH@ŽU\n=•@ìÃâþ!lH@ÉQ”JT˜@ð¸U!lH@,d˜í$›@Å(µŒlH@wº\n}N›@Ú©Š+lH@\rwÖãœ@ÕrãwlH@ååK3éœ@ŒÏYklH@«úHò(ž@õ&´‡lH@ØÂ×ÅöŸ@`ÉR[lH@òýÑçÅ @+Zx®	lH@Þ“ðÒ–§@~JH‘ûkH@Ø—Jz ª@=BÓOökH@c£5H¯@Ç‰ækH@Ì[=%X¯@WŸíYækH@°”è1»¯@ËÝB\råkH@\\#°@Ðb¾ãkH@¼ëƒv°@Q»±]âkH@áÇÎJÓ°@V4ìàkH@ôœòq/±@»A}ißkH@^óñŠ±@"^îÕÝkH@\\¨Ãå±@@Ì’1ÜkH@¿êß?²@òˆ|ÚkH@ìh¿?™²@Ñòö¶ØkH@âª/Üñ²@ IùàÖkH@Ì5øù²@€´ÖkH@ã%!"³@ c·ÕÕkH@òo@®I³@¸ö¹úÔkH@\'¯ ³@–2]ÓkH@••Øö³@5$	þÐkH@L#H°o´@…û2ÎkH@ÅïÈår´@jûäÎkH@jz!7²´@[1…’ÌkH@Ã	uô´@ˆ´ÜåÊkH@b(5µ@ü"-ÉkH@€©l‡uµ@¨ÜuhÇkH@_RÆ$µµ@¼˜ÅkH@ŒÐØúóµ@6tã»ÃkH@ìÂ92¶@E&BÔÁkH@©®ò>o¶@½yDá¿kH@×\r£«¶@t¶ã½kH@þNï,ç¶@=öÒÙ»kH@ ºØ!·@Î©Å¹kH@Ù½*·@½7s¹kH@Å2£Ó>·@\nñï ¸kH@E˜¥Ýž·@QcèÖ´kH@A¿Êiú·@	Â¶±kH@ÚÒZT¸@§:Ì?­kH@h…M©¬¸@Ê¾q[©kH@°Á«N¹@»Úùf¥kH@¡É“DX¹@9Š­b¡kH@´ò„«¹@°NáNkH@›7]ý¹@\nåã+™kH@X†ÅLº@jß	ú”kH@1»šº@;É§¹kH@†y5áæº@‚^kŒkH@×TµÙ+»@ÄAâ^ˆkH@!@=.»@Óûÿ:ˆkH@‘ì11»@ü—ˆkH@pÝoFE»@3üÎ†kH@©¤rS»@v.òâ…kH@Œ¬¯:a»@.FRô„kH@l™éœn»@N‰3„kH@9Ã˜{»@ïr£ƒkH@³–-ˆ»@v\n»‚kH@C|¼¨‘»@	þ[XkH@r³X”»@:w!kH@¶–×¼@øZ^hkH@g`Ä×¼@7½ÌZhkH@›zŸè¼@äËÌ\ZgkH@&þ»ê¼@ÿˆ ðfkH@4‰Þ !½@æßýckH@i(E	*¿@ÌR¸"CkH@ñ³ûb¿@è‘g—?kH@ÀrI\'Á@ s~&kH@!«ðÕ3Á@ó1·%kH@~¥•l8Á@Ëâ{n%kH@­ÍµÉCÁ@â¿±$kH@(VXÖNÁ@æúòò#kH@ô¡î‘YÁ@ä9%2#kH@lôºûcÁ@ì)eo"kH@£cÑnÁ@Q¾ª!kH@´ÒæÕwÁ@|ÖEä kH@çdùDÁ@íP kH@þ¾í^ŠÁ@ÌRkH@06#“Á@ct{†kH@ØPƒ›Á@4ûJ¹kH@qÐ5§£Á@ï•êkH@Ñ´+\Z¥Á@o£ÃkH@QÒe«Á@]­k\ZkH@hVÌ²Á@þ„ßHkH@(Ñ!OÓÁ@h§\\GkH@)ÆZ°âÁ@ìúÊkH@ƒÓ&¤òÁ@Pæl@kH@_!ÃõÁ@ìÛðkH@öäAøÁ@m»­­kH@Œpd£úÁ@ëñ	jkH@È$ÍèüÁ@!ßû%kH@©˜ÿÁ@»€ákH@²ŠiÂ@Îs¦œkH@Ž›\nÂ@ lWkH@e½ÛÂ@íÆÙkH@Ð›xŽÂ@(¯õËkH@2Kô#Â@¡6Â…kH@.*Ü›	Â@”G?kH@·§Ñõ\nÂ@(ŠøkH@Ž%Ô1Â@Š4±kH@óâ³O\rÂ@F	\\jkH@ÛŸoOÂ@j`ø"kH@C:51Â@ˆjÛkH@¥ÕHôÂ@$Ñ´“kH@»p™Â@³ÜKkH@jðªµÂ@Ví<kH@’éžÂ@º<çkH@’‡Â@î]Ü»kH@e%ŽÂ@ùÃ~µkH@òÈÑÂ@‰ÁÃskH@•müÂ@¥RŸ+kH@ø?ˆÂ@ÙÊvãkH@£ðxöÂ@˜L›kH@œHÌÂ@«°‘™kH@ñöÄ,Â@òÝ_PkH@ý\0[ÂôÁ@y¯SˆójH@cë‹\r™Á@[HaßjH@!¢wÏŠÁ@OôÿÜjH@iîÁ@Y	qlÛjH@Új¶vÁ@gBÆÚÙjH@Û0üªkÁ@ôKØjH@l.÷_Á@½0€½ÖjH@X¶›SÁ@Tý2ÕjH@z²J™FÁ@*©ÓjH@}lZ9Á@54.ÒjH@•÷\\ñ8Á@6É‚"ÒjH@¯AÒ¤*Á@pÑƒžÐjH@Óú´Á@K6ÏjH@)Ù!Á@ÑD·žÍjH@×OîûÀ@s¿%#ÌjH@v\ZëÀ@J£¢ªÊjH@•nò§ÙÀ@˜0E5ÉjH@Yc˜ÇÀ@	].ÃÇjH@ƒe‘í£À@™ÀöæÄjH@ŸP™ðÀ@ÍfÔxÃjH@Jª¦Y}À@5{<ÂjH@û)iÀ@Õ×Q§ÀjH@	àgcTÀ@£¸-D¿jH@½¾6À@r¯£X½jH@ Â<ê$À@üùvR¼jH@Î-‚cÀ@Á\Z{O»jH@ÌàÒoÀ@¿xÃOºjH@­Ðï¿@ûoeS¹jH@ÀGÜ¿@zgtZ¸jH@jÄÉ¿@Ûe·jH@\nG¤H¦¿@òËÃµjH@>’Òª“¿@ac¢î´jH@_Œ ´€¿@>Û³´jH@ÖÙ¤em¿@ÌJP³jH@)¶0ÁY¿@s¸x†²jH@ÆQ«ÇE¿@cOÀ±jH@®¢{1¿@œžÙý°jH@kC\r¿@+ßh­¯jH@ûÜÒì¾@´-œ®jH@nõ¤+Ì¾@‘RÆw­jH@…†«¾@\0f¬jH@ÓÞ€‰¾@]‰^Z«jH@´£™ZX¾@Z´…>ªjH@¬\nÝ8=¾@ÉÆ¨˜©jH@9ú]"¾@RkÎí¨jH@ˆG}Ì¾@™2>¨jH@džg†í½@Øa‰§jH@ÕKèÓ½@d÷êÏ¦jH@Ý|êbÛ»@!™¤–jH@¦K÷z»@j¯ «’jH@¦àÑQ»@¨}íjH@Ê-ðŸ4»@ö\\Ž£jH@²œCû»@	HTŽjH@þ.µåûº@9ÃÊÿŒjH@˜ADaàº@ŽZ*¦‹jH@å6LpÅº@©h†GŠjH@‰Àdº@½y×(ˆjH@©Œ7V~º@!jr†jH@!·5`º@\nÿS¶„jH@Î¼kBº@g¸ô‚jH@÷la“%º@ù2·-jH@@[Èº@A¾ŸØ~jH@ üjã¹@’v¼Þ|jH@°4¥›Æ¹@N\0vßzjH@-6¦ª¹@÷ÚxjH@e©Œ¹@Ó±`ÑvjH@x7nNt¹@[àº«tjH@¸¯-j_¹@Á¥8ñrjH@3×÷AK¹@l²î2qjH@\Zï=×7¹@aüpojH@‹rÊ6¹@9.zWojH@Ápž+%¹@õT‰«mjH@£¨\'¹@RéUÝljH@s XB¹@WmÚâkjH@L/û¸@]iÙ6ijH@À6Ìú¸@ù11-ijH@vÇ‹¯è¸@#gjH@9i,×¸@Š[ÝdjH@Dx6–Æ¸@ø¼a«bjH@*É3î¶¸@F¹¹v`jH@;È¡5¨¸@"÷B?^jH@\nð¿mš¸@ÒÖ-\\jH@$¶q—¸@Ñ	¡ÈYjH@"Ç³¸@ÕÉÐ‰WjH@m\'±Õv¸@«†LUjH@7CÄv¸@ñÎãHUjH@¿Fƒ`¸@&dïÜPjH@\rPe)ž·@ˆ6>*jH@ª3âƒ”·@t=ÆS(jH@d¡é4Š·@si$jH@ÛõOY·@„š¹ÔjH@ÌÀ_T·@·ˆtÓjH@d7V·@wÈf\rjH@êûŸDb·@p?\nÿiH@sÂ^›f·@ ž[ìùiH@»¨ï€„·@5Ã~éïiH@<+Ï$…·@ê@š²ïiH@„øñÆ·@Ü\'ÔïîiH@,êÍ5Ç·@¦ßçíîiH@YyjÖ·@Y¢ÀîiH@¤ ´Xí·@&ª\\|îiH@E(î·@Š]zîiH@“/¿Î¸@DëïíiH@ûôt#¸@g‰ÜíiH@¯t*T.¸@èãºíiH@d\r”9¸@ñf™íiH@¿_Û%X¸@Æ\nb>íiH@VrJõ~¸@ŽÓÊìiH@RÇfÊ¸@µÜñiH@yo¡5¹@{ÈíiH@Ÿrü©ºº@t\ný\0æiH@í=$ºº@ûæëåiH@F[´B)º@N~ÏiH@´—!%º@:Lõ\\ÎiH@œa“áº@o¢zˆÍiH@æíýº@àH2rÉiH@ìàà¹@|_’ÃiH@4ø“à¹@ÅÀ\ZƒÃiH@!ƒòçÝ¹@Ý8ûÂiH@Þûš9Á¹@á·±J½iH@)Ž³%²¹@9DÚLºiH@L;=¹@PŽó™iH@Õ%ë\r¹@8	¶¶™iH@Îã³Ã¹@í–n¯™iH@o7éDó¸@¤óÚ›™iH@$¥Û¸@þ:ƒ™iH@ŠœJ¾¸@í¨f™iH@¦c8Ÿ¸@ptG™iH@êƒ ¸@À¿â˜iH@yÿÔ¸@´§/‰iH@<f_âÓ¸@ÝiX\'‰iH@\n¡©"¾·@F»Ê(aiH@DÇ2ý¢·@jíaiH@ëvªØ·@»èpÅOiH@ßÅñÆ8µ@«A›iH@_Í­´@q}UrühH@À”™ãÏ³@:åXñhH@[Í*«³@L\0Î½éhH@>ÂÚ˜{³@ÏBü9àhH@xmì…?³@]`ÁÝhH@c±ÕA³@6Y¥¨ÝhH@ª\0Çi³@*ýÛhH@3÷èÕ³@"ìw×hH@ðaþÒ³@žš±ïÕhH@h¯Ð³@ð‹ÝØÕhH@®!Á}l²@s[{þÊhH@ôùË°@ß	ÝG¾hH@*€2;H°@¼-kBºhH@^ÕßÇ™­@óZPN¥hH@ôÉ&Ën¬@if²fžhH@†<ªŠ¬@éüf{›hH@BF»Œ«@—l=}•hH@\r:%ñF«@n³™×“hH@¤w~Üöª@ýñÜ“hH@;‰ÀV=¨@ÐÇƒ”hH@iV	é¢@¸¤ò—hH@àƒ‰M @šø{j›hH@ˆ›G, @(¤¸–›hH@ÓI^@¡ÿ#¦hH@·\ZHâJ›@NR.ó­hH@ó“¥¬š@DJ¼8¯hH@ûn|L™@Ïq9\r²hH@ ![Ú˜@\\pø²hH@Â8è»”@šb/ µhH@ ;s-”Š@z1Î²hH@Î=úÁ€‰@Xå7‡³hH@ð½?ªxˆ@ÞÞ-›µhH@á¥‹5M…@ÁB`Q¿hH@¥Ce“=…@Àµ]}¿hH@“IB5…@?aò’¿hH@Øž„,…@9¿ò¦¿hH@=Ü¨ð#…@5Ó^¹¿hH@.KU…@¹®6Ê¿hH@¨ZA³…@ñ‚vÙ¿hH@ìøè\n\n…@ÚVç¿hH@U,]…@œM,ó¿hH@?FÙæ„@°ô”ÀhH@…¤"Ö„@¸kÉ ÀhH@i’GÅ„@¹£ã,ÀhH@pUE¸„@ÑÔÙ3ÀhH@zFSv´„@‹å5ÀhH@ž€¡„@VêÙ9ÀhH@‘ÃOhŠ„@Š9ÀhH@ã]òÉw„@F\\ò4ÀhH@Â#/.e„@¯£W-ÀhH@\rÝld„@.¶ä,ÀhH@É3–R„@9RP"ÀhH@†MÂ@„@uŽÜÀhH@¯ÿ)5„@ýd	ÀhH@0\Zx-„@\'øÀhH@¥$:„@º²üì¿hH@:¼ô\Z„@+¬ì¿hH@J‹ÂO±@oa‰k»hH@aW§EÄ@PôËÇhH@|â¢¼×@\Z!ÏhH@FÕø_ð@+ žiØhH@ˆ~póÐ@‰i$ØÙhH@Û×RtÄ@«ÎbÚhH@b±³½@Ø±…±ÚhH@{4jrµ@%bÛþÚhH@ª¶wÀ­@Ü^ÇJÛhH@ºÚÆî¥@ÄÜE•ÛhH@2åý@QÞÛhH@U:`î•@n|ß%ÜhH@;¯óÀ@³ñkÜhH@-v…@Õ"~°ÜhH@Io÷}@.ÿ€óÜhH@>‚‹t@ÿÛó4ÝhH@Ó™·oj@Êÿ»ÝhH@þc`Z@g‡öÝhH@gxAKG@:Ñ\\~ÞhH@	_XA@~÷´¨ÞhH@añ(@hE=VßhH@2çùh@0å!ÿßhH@B7´úþ~@½£«aàhH@Àþ›ñ~@G›c³àhH@lÿ’ä~@_£áhH@»‰„~Ö~@GcOáhH@ïé”Ó~@{2\Z_áhH@Pî[¾È~@«›™áhH@®2ßº~@ƒÊHááhH@ÆW§Ìµ~@*\'cúáhH@ÒQNÖ~@¬ç0¶âhH@„Áàyd~@BjžƒãhH@¾nEw*~@D°ö‘ähH@cG¢~@Žá³1åhH@u®´ð}@<ë`–åhH@zjRïÛ}@÷æÏëåhH@\\¤w>È}@ÒW2;æhH@a¦›l´}@phí†æhH@€g’{ }@ù;ÏæhH@YmŒ}@¡[bçhH@ÿzAx}@ÞÑTçhH@z\\&]}@_WØ¢çhH@Ëù+EM}@ÃÌçhH@ŸçL=}@mYÇóçhH@ú2:P-}@¬rÀèhH@ÑDe?}@òZÒ8èhH@Y„/!\r}@¾DêVèhH@R…àöü|@·HrèhH@DbÁì|@‡x,ŠèhH@›„¸‚Ü|@µ/QŸèhH@†îÌ;Ì|@[nx±èhH@çþ,B{@nåo;êhH@}I@{@r«Ÿ<êhH@{?{@©ãó<êhH@ùÆ7>{@S®I=êhH@Ö‰27<{@"Åœ=êhH@{DdK;{@U‰–=êhH@Ñ]=R:{@.(“=êhH@jìWm8{@ÛÅ.=êhH@j6ˆ6{@jiu<êhH@b\\5{@Mç;êhH@±(¤4{@C`_;êhH@cWyÀ2{@Ã|ò9êhH@6‘ÄÊ1{@=ˆ	9êhH@‡.HÝ0{@†ì(8êhH@síàú.{@Rp\n6êhH@Å`s-{@q@‘3êhH@êÈ\\9+{@eR¿0êhH@é?Z){@Ÿ”-êhH@ÐâÖ|\'{@Ÿ4*êhH@È¯Ž&{@b	$(êhH@?€Ä %{@Òè8&êhH@Ë–Æ#{@Ë/\0"êhH@-Jî!{@‡D|êhH@àðæ!{@|êhH@Á—² {@jÌ›êhH@ï±[C{@­’dêhH@é›gZ{@î†ŸêhH@lEq{@<‰Ø\rêhH@¯Ï¡\Z{@FÅõêhH@èçG»{@‡ÚêhH@Æ5ÃÔ{@9<¾êhH@ÂþW\n{@¦ø/ûéhH@¹B{@gÞNôéhH@wI~{@\nñ\ZíéhH@äz(›{@ÀMééhH@Xa›¼{@4”åéhH@nK©þ{@AÀ¸ÝéhH@‡’!{@Ñ£ ÙéhH@øù±C{@·gŒÕéhH@¦=”úòz@nŽÔPéhH@M1¯Oàz@÷ßðèhH@ž˜u¡Ôz@éa¿èhH@|xwPÎz@|­¢èhH@ÖI\ZÈz@ GÕ„èhH@/ØÔÁz@­ÒeèhH@ ‡]ª»z@+‚«EèhH@ô@æµz@âªc$èhH@*3ã¯z@U5ûèhH@ôÑ€©z@ÄÞyÞçhH@àø}£z@ƒØÛ¹çhH@Ùä3°z@Nã(”çhH@º„à—z@Ó_mçhH@¼q ’z@Ä(ˆEçhH@·AâqŒz@e@ çhH@\0w\rÕ†z@‡&¯òæhH@$nPJz@¯Ð¶ÇæhH@#ŸxÛy@fJ8áhH@‰1p©~y@ç… £áhH@”Ç<3y@ê‹1ÞhH@Ò³4ty@ä(¨ÜúhH@‡ôþÈv@ušìliH@éÍ©³µu@K‚„P$iH@ù›øv@rõ®$-iH@3ý„v@¯zR4iH@|øaõu@– Î*iH@ÇØ”fq@lEŽ2TiH@âC™ÔÀq@\'•dZiH@\0Z¹r@.˜t½_iH@Ý¨Pq@³-!\'diH@2“Þ,æp@€h·†fiH@È|Ídšp@áõø#hiH@ê1ððMp@Wa,³iiH@{pS×\0p@añ:4kiH@Éf¨³o@÷N§liH@è,Êdo@¶\ndniH@Úª×ð½n@£N+ÍpiH@i™Ùìgn@Ò@riH@#òî]n@ÿv_siH@ô^±Jºm@kTþtiH@»à¹¹bm@HÜ°uiH@ ‰³¼êl@£›#wiH@q,Ÿ¸yl@ð ŒixiH@ñøß.l@V¹—šyiH@Í~ü(–k@‰r§¶ziH@k™¯#k@©¦½{iH@­PÊ°j@¨ä~¯|iH@$?¼›ði@¥\0á~iH@YõHqi@:õûä~iH@`s£ñh@B“œiH@žIµqh@ÂÔ•<€iH@ÎÈ¶ˆñg@!ÿÄ€iH@Tƒà¡g@«6ü€iH@¥<­8g@œ–åDiH@ÍÞ7¸¸f@ÿay€iH@TÛ®8f@N	u¤iH@Ðø7›¸e@ ªÏ°iH@Z¸\\‡8e@Õø‹¥iH@:Ÿ‡}¸d@]¿ª‚iH@›3;‡8d@á§.HiH@\'ÉeÔôc@=Š¸iH@a(µ®¸c@Vk\Zö€iH@\'”Ôý8c@‡vŒ€iH@†téa@’ÔŒiH@Ê‰©…Âa@½½oiH@P¸ÔYa@ùxÒiH@$Éev`@ÝÚr~iH@n7Eú^@\r•eQ}iH@mÅ´ý]@éH}iH@L—ÆQÂ]@~T|ü|iH@»Í]@¥jò|iH@PêP²W]@8-ò|iH@œÿXc"]@¨gÂû|iH@¬\Zí\\@Yk.}iH@u‚PÜ·\\@ÞÇk,}iH@u&¬‚\\@(ÛxS}iH@CÓŽM\\@„8P„}iH@©	1\\@;¦Ú£}iH@õ;Ì‚\\@èUý¾}iH@½‚/$ß[@Z™™~iH@{oD¸[@€ü!e~iH@É‚…‘[@ú¹Ó´~iH@÷æóèj[@·g¥iH@‰À1sD[@îf“iiH@…Ôf&[@ÂB”ÎiH@½[\r|Z@ù"\Z©iH@…ä®)Z@9ƒE´‚iH@swßÇY@Ú1g„iH@\rÇO—Y@/ÏÿÍ„iH@¦¯fY@mx‹”…iH@ÿ¿Ø•6Y@VÖ\0d†iH@‹\\Í`™X@3.ãúˆiH@>ÎUçEX@s•:AŠiH@P¶Ä\nÔW@¼Ýå‹iH@õvàaW@’’˜iH@‹\'—%W@;™\nOŽiH@uµ„ØìV@¯diH@·+K·V@Ö\n°¨iH@æ“ÇÎ³V@´ßA³iH@‹îÉ}zV@‡“UiH@\rHXÔ*V@@O{%‘iH@•PÅÌàU@ŠÜ­×‘iH@ø¡¬|–U@-—2|’iH@ñ¢ceU@ÙÍß’iH@r¦Ñ¹7U@”—å1“iH@&<_Q\nU@[¡{“iH@~ WËÜT@Åü¼“iH@Xd+¯T@˜dðõ“iH@Ä§k!ZT@	¢bK”iH@Ç›üW	T@Ç|%”iH@e…)v¸S@e†ÿ¿”iH@uzÌgS@Ž3ñã”iH@»NS@¢mïø”iH@UËhR@±ô”iH@_·•z}Q@@ÆŽÌ”iH@˜œ³ÿHQ@Ì¾+®”iH@|mQ@®`‰”iH@ÓyžëéP@‡°Î[”iH@¤ó‹ºP@·Ð}%”iH@6íC,‹P@ÚBpæ“iH@ç=#¿5P@ü¼y“iH@C”P@Û4D“iH@2,ç\0ÿO@-B“iH@0I¸TÍO@þ$P“iH@c\0k™O@3=ö’iH@ÐM®öN@Y…«Â’iH@q±ÄN@e» ¾’iH@À’•§‹N@Þyö¹’iH@Zã÷“9N@)e¾Ä’iH@`TÒûM@;äGÚ’iH@(, §¼M@BWû’iH@Y%A~M@B^î\'“iH@\0xlÍÔL@Î¿[Ï“iH@Ç•¨ïvL@ä%D”iH@Ù/"-[L@æÕ}l”iH@òÝGL@c\'Ë”iH@§!÷ŸK@@æl—•iH@duÏK@µXæÑ•iH@©ëRK@iú=,–iH@ô¢¨sJK@˜ôl<–iH@Œ{îK@áˆLÏ–iH@,JÆ¸J@ˆG‘€—iH@3\0Î·J@$˜—iH@pHi.J@mþÁÖ˜iH@\\n-EÏI@êãÚ™iH@­°&’pI@ DËîšiH@Æõ u7I@Føù£›iH@] …zI@š$\r&œiH@xfH¸ëH@÷_¯œiH@‚1ÆH@/?iH@H¬Nè H@ÉOÿÕiH@RÍà{H@ºU¾sžiH@±\n¶WH@žéLŸiH@ùw=¡2H@™Ö™ÃŸiH@šºoþG@¹–†Ì iH@Y:)*ÓG@µ²³¡iH@–ö±G¨G@Ç‡„¡¢iH@ŠÞÐË}G@áÛ—£iH@LD¥¹SG@ Cû•¤iH@P\n«*G@TþÕ›¥iH@ÓÓß\0G@ MT©¦iH@.¬šØF@5K_¾§iH@™v¶\nrF@¿”ªiH@¬q¡\'F@y‹æ¼¬iH@íþÆ$ÞE@üVó®iH@gkš•E@é€<7±iH@v‡©2*E@gŽÒµ´iH@ÐR[âD@ó‚*\'·iH@ºÊ4›D@…m¨¥¹iH@øsÔÓUD@2Š\Z1¼iH@Úˆ.D@oOÉ¾iH@âR!H$C@\0é1ÈiH@7>šù¥B@ózwÍiH@Ça®×;B@ \Z[$ÒiH@™Š·UùA@c¼ü4ÕiH@Z"¸A@L$ÁQØiH@ïàÃ‡A@WB"¶ÚiH@D¡²AxA@	ÜlzÛiH@¦Ò;É@@p©äiH@«Þ«¥Ä@@•g&FäiH@)#±ëP@@ôï´éiH@­š ÕV?@é–Â1õiH@ÕÇ®^>@gKw»\0jH@kÏ»–>@í«>jH@ÞŸßÇ=@1ŠâljH@PwÓÒ}=@´½\njH@“n=v2=@~x \rjH@¤QÂÏå<@ºZ\\¥jH@™ÄFå—<@qœjH@Ä\r½H<@Mø&„jH@Í&bÛ<@P—ÛjH@+o¾¬Ú;@l90\ZjH@S[jï°;@Rï½}jH@G)ä¦†;@R]ÃjH@à¼p\n;@MÍ+íjH@¯	¿Õ[;@¾ªnjH@`u4€0;@¡"k7jH@ˆ>á0ž:@¦ÿ?-#jH@Læ‘Â\n:@SÙÏ\'jH@­ó}9@K%_>*jH@¼‰-9@³Ë\'¨,jH@^@4Ý(9@HÛÆÄ,jH@ÑÍf­8@ô¢¬/jH@îmÜ6K8@C‹«à1jH@`õkï-8@4Dò[1jH@úúW	Z7@ÕÅd›-jH@¹\\.½š6@l\r88*jH@q¨B6@Caî¨(jH@Ó¥”ÓÞ5@Ò5aä&jH@™®÷Ð5@‰Þ%U#jH@nD†ÜE1@9ªµjH@osdçp*@þÓóiH@³0çÅB(@¶»ôŒíiH@š-(@­\r:WíiH@Ðió\Z¢\'@Ð¯âõëiH@—#Ï	&@)÷ÏàiH@³4²·Ô%@[.¦aßiH@0xûs…%@ÅOl8ÝiH@£âD1Ù#@òzH‹ÑiH@ïOµ%h"@\\c{ÇiH@±Ûp×7"@Èc7*ÆiH@¤pZ{Ò!@=§¶fÃiH@`ZÝË!@ì…8ÃiH@ÑýràŒ!@¾à€ÁiH@Ø™]!@÷Cá6ÀiH@ù&m!@5&¾iH@ü#*°?@}Pp±iH@Žâ3Ò>@GŽ-z±iH@À©ºÁÌ@ÌÖ§ÌiH@}LøÇ@Y{°:îiH@ž¾®M´@JUf>ûiH@º„}@.èÇ%þiH@îºÅ§d@\Z~µvÿiH@E~3W@I1-\0jH@Ö½í@÷!q4jH@9$a‹Í@0+&1jH@d›­K@áÞ:jH@ÍéN	@”Êˆ`jH@‹[Ÿ|@Ê—\ZùljH@sîVÆE@¼ñ¾¼œjH@üS\n@Q8Ÿ·ÐjH@õ•cX@$ÊYÝjH@ÖZTŸ@@ˆ%wvkH@ˆël@Ð°ùLkH@¸ïõ•Òÿ@÷tžàCkH@W€Ní¥ÿ@má	tFkH@Ýå4Ýšÿ@©{hGkH@Sv.!ý@#Á<kkH@:~ÉKü@{«9tzkH@‹ùú@]ht‡kH@ux3´ú@Ý%ºŠkH@ƒ[\nJ\Zú@¥³»	’kH@u/Xðö@àŒÄ1·kH@"›ô@Ìí\n·ØkH@-ú²œò@[ðA~êkH@Pšqµ í@¥»ô¬&lH@80ŠZ/ë@wV›DlH@Ûï~ê[ê@\n"QNlH@QPYEì@â´\\„`lH@ýfµKì@ø:§À`lH@V[1–‚ì@„·îËblH@tª/©ƒì@5µ»ÕblH@”èŠ¤ì@HrdlH@ÈêÝw«ì@Í±LPdlH@HÉÕÂì@§Â.elH@ž¬Æ Úì@Á6\rflH@ŽsÖêì@¨9¬flH@˜A˜–ìì@èÞ¼flH@BÈ­ñì@~5˜ëflH@ núürí@D}Â»klH@¿\\«¤€í@Röc=llH@ôÍz¬Îí@M˜%$olH@7`V~Ùí@“Ø‹olH@Ð$¬©Ýí@‡4Ô²olH@¹Àé˜î@et3©vlH@h¹\rî¡î@X?õëwlH@ŽßKå?ð@íyMÌ±lH@²0ÌAð@:þø±lH@©IÜw¥ñ@ò`ýâlH@ZŒS2ºñ@\0àX×ålH@ë¨ Gtò@ëpÿlH@çW¯ù„ò@úö\r­mH@>½Mˆ…ò@œQ0ÀmH@·z&×ò@=Ì°mH@âãò@“®SomH@›‹‘òäò@lk&”mH@üR	ëò@õ‚¸fmH@ð^™sëò@÷ãåsmH@LoÛ÷ò@ÔšÐmH@¡¨Vµ	ó@;\Z\Z…mH@…N‹6-ó@Ðs1mH@°©ýhNó@±ž²¬mH@šîRó@FxÂ<mH@à­ŸSsó@î9´!mH@~,Ó$ßó@¤.€50mH@29Ñßó@çµ¢L0mH@:`ïëó@Mú í1mH@\\]{úó@i@+â3mH@Aq5Ÿþó@ìS£p4mH@ô"gô@&Bêú4mH@)Ú¨Uö@²°‰7mH@,~Ñ±^ö@oÎßˆ7mH@ÏáÞªcö@+Zk„7mH@›Ä’ehö@\'Bã~7mH@‚i©hö@";9~7mH@¨ù«zö@®JñP7mH@@ÃPs†ö@Ší97mH@«Ä>ˆö@\'7mH@\n:ÊŠö@ûÕ7mH@I©ÔBö@XIdè6mH@£Œ«–ö@×\Z(³6mH@Q[¦ž¡÷@UÚË,mH@1v_kø@€¼$mH@‰áÕŠø@“ý›#mH@€è6ì¢ø@i®:ô"mH@™Æ¤°·ø@<Ã¥I"mH@`D&Ûø@¨y;!mH@<\nRZRù@>*mH@r^\\2|ù@àImH@S§"Žù@nßh mH@åëd³Ÿù@Îr17mH@c%ûµÊù@*ÃšMmH@ù˜˜Ëý@9½mH@Ã¡&„ý@´A4ë	mH@¬’×a±ÿ@½!_mH@Û0DÃ­@±¥xÏélH@78fg0@PGòãlH@Ó ÔÕÑ@o¡\ZpálH@§16	@¾%:ÚÞlH@Éþ´|\n@H8Ì‘ÛlH@›|)$w\r@›;\'mÙlH@þxÙú@RóÜÄÓlH@úFý”"@(µôÑlH@#ƒqJ®@ßù¥·lH@1	ª9ë@Ýµú±´lH@¦Æ÷Iž%@ô„µA¤lH@ Ù¦\'@S\'DŸlH@¶ŠÌW¡)@öº«šlH@ozèUÖ*@4åþÝ—lH@V,@Ë—&"–lH@ÛÁ}©õ,@|`?Ó”lH@çnZGÊ-@z®~¢“lH@óÆ… S.@vóRÞ’lH@Z—Ä³.@ªËS’lH@¢hêx0@à/ÊlH@m—F:ß0@$dƒ7lH@£*žd1@«ÁGxŽlH@)±1@T\rŽlH@"ºrYü1@,ƒ£lH@’#Êˆ2@ù%•lH@Ûóo\ZE:@\\æ‚lH@PpwŽ;@±b	€lH@¥XÍl@@f¿®ylH@a0™›!@@eÑüxlH@åóe\'@@|²‹ôxlH@»fC@Áz=ulH@—e5˜C@£ØÌtlH@V\'è×ŽF@#Ü¬plH@G4êÇF@?žÂTplH@r¢þ×H@yœ#ÅmlH@ŸvU«ûH@a\n*mlH@¼¯V²I@Ã;Ã#llH@µwtÂíI@h¼êÍklH@óåÃJ@·¸Å¢klH@ú€9ÃJJ@+ÎLklH@ñÒçJ@v›YtjlH@\'M¯„,K@–j_jlH@ÅuRK†N@eçºxelH@ZÞûöO@ÄV´dlH@r½˜“ O@®Øã£dlH@Ô†L•ÀO@w*ÁclH@\'Í¬*P@CJØ*clH@Ýv fàP@´W)blH@sË—ˆQ@÷þáñalH@¥!3ü‚R@§*Ø_lH@«V>éR@l5BG_lH@»(_ŒôS@YlÌ]lH@ç³¼fÍS@m<Ÿ¢QlH@mC¶BÍS@-¥`—QlH@Rþ3x¶S@¥jƒ‚JlH@_JÙ×«S@òâD5GlH@gÍQnS@»Lg4lH@)ÂtdS@¦Ê1lH@¶¿ÂªUS@šñfn,lH@ƒ¸I©R@2ƒ	lH@|ev@lR@äë%ýkH@›"\Z=3R@¬¹.™ñkH@pâ®ü.R@ü©¼ðkH@âá‘¯R@¨y\Z£íkH@ä÷<«Q@O^õÖkH@Ìæ¯ ŠQ@ìàÆVÏkH@ÔŠ‘òyQ@£šœÌkH@\\>LIQ@û’z4ÂkH@¿e‰!Q@62ÙºkH@DášëP@„viÃ¯kH@o­Å€êP@/¶\Z¯kH@O¦\'*vP@¶^²–kH@ù8aÀþN@a¨}FkH@SÅßN@Õ\nº?kH@ÎÐQ|N@ð/kH@!â´[N@––Û€)kH@¤Ê	N@yfZ¯kH@×;AïM@áÆÁXkH@™ÑCØ¬M@Äˆ„*kH@›!1+‰M@uÜ(kH@÷pšèL@ž¿	ëjH@#ÇøÉÙL@&¿¡èjH@P~ê×ÉL@·,yòåjH@„7ç¡®L@·¡]ájH@õz”¼L@ù…d…ÞjH@×_è½cL@8`¢ÁÔjH@í°\\VL@Õ¥Ô€ÒjH@*—¾L@!ÆIPÏjH@a´Ò¹æK@f•ÓóÍjH@#L>žK@‡pcÿÊjH@«×ß\\”K@¯OI˜ÊjH@­{eVÚJ@„0åÃjH@ëŒZtJ@’”Ú¾jH@æ#àmJ@QG\n“¾jH@€-V^J@ÖVÉô½jH@5+Ÿ,J@éÅè»jH@Ö9–dJ@1™0°ºjH@Þ¨—éJ@IYÖ­¹jH@§¸(4CK@:Cö»¸jH@Ím|K@Þ-±,¸jH@…&Û3K@¥Ú·jH@ ÷K@ªñ	·jH@¹Ä/?RL@ëÇîI¶jH@ûß¸<­L@K«šµjH@0ÌCM@¹G2ü´jH@úîÂdM@LŽ’n´jH@·¤ÎÀ¿M@i3×ñ³jH@\'Ÿ®N@K	†³jH@‘¿ÅwN@\0æ1+³jH@\Zz<=×N@?òÖ²jH@~‚þ$\ZO@Êµ÷ª²jH@a(r]O@{ÕU‹²jH@¥ÐÖ O@„>x²jH@', 12, '24088.03892205'),
(10, 750000015, 15, '75115', '15Ã¨me Ardt', 'Vaugirard', 750001537, '8494994.08101075', '13678.79831490', '\0\0\0\0\0\0\0â¾•µW@P«çê‡kH@', '\0\0\0\0\0\0\0\0\0\0"\0\0fle@%ñ7\rmH@ö}AÓ5h@6çVólH@bæ)`h@r`ÙõlH@„žphn@œ‘<mºlH@QHÑhþr@ÏDü‡lH@+ƒw…nu@¼>\'olH@‡ã³Þv@h]pYwlH@hv!ý;w@]f¿xlH@Fõ¼—§{@·²‰lH@dÈõ{@‘ŽmÛŠlH@À¶Ë?}@pS?{}lH@zö2Rv}@Ó†={lH@lñ³ì}@øP(•vlH@ÍÁA±5~@hÏýµslH@ïO–€~@%¢»plH@CÉ”)@Ã‡\'òilH@Á#\\V‚@—ÞfIlH@×Î„‚@–1¼ŠGlH@U–‚!^‡@ñ]t_lH@Gpõ¦Vˆ@D¯¿dlH@\Z@4\Z @Ý«+Ž9lH@‘V¸ËÆ@¥Ti­,lH@v²’@÷I lH@"ÝlÛÄ•@â@	ÌlH@œ?T—@Za•‘lH@\rc"Œ™@ˆtÄ•ûkH@ñ$ŽšŸ”@Ä›}ÃkH@ÃSU¤’@€¥±=©kH@«-í»i’@u¼1¦kH@-,{“@µ‚6žŠkH@¸$7è,’@.|ýÎ}kH@n%Ç/®‘@ø•ÐßkH@jg2Ø@"›a¾ˆkH@E,úG<@ÂY—ô•kH@âÛÕR6@¡–†%–kH@Ïtaö‰@ÓîOQkH@íÜ(ƒœ‰@•WƒµLkH@kú¡„™ˆ@baq?kH@ë¤"˜ˆ@\0±d?kH@#žÒ9Ó€@ÂáŽ|ÙjH@­fÓ€@_ljzÙjH@‘ûSÙƒ|@Ü‡Ö² jH@©åù=~|@Šk¡g jH@3_Eiz@áªYy†jH@%°äŠ\nz@w5ûXjH@Þ»Ðw@¶Gâ±`jH@*~O‹v@4iJjH@ÐXÎUu@#£´<jH@ªï\\ªs@øô#jH@,%û©q@œKç»jH@@‡?q@rPú€	jH@"3uu«o@ˆ¿„­÷iH@9‰÷än@û)qˆíiH@ÿŠè¸Ïm@PŸøeßiH@Ä7KºKk@áù´¾iH@´€êi@¾i+o¬iH@"×ŽÆçi@2}µQ¬iH@\nrÅ§i@Øî©iH@ÑãwZei@W{³§¥iH@!à*i@Ž>Áª¢iH@@>>ßÿh@î¾?x iH@´~Êýh@¸µ] iH@½+)TÜh@µÿM§žiH@Ðª@Ššh@\\WhŒŸiH@gE¦›*h@I-¡iH@!nò¥>g@ÚG¤iH@h8»Ág@àGÃÒ¤iH@NdÃÛf@¥/ ¥iH@â¹¼%c@D¬$Œ²iH@=‘a@e¡Aö¹iH@¯ÔƒÔ§`@+å9»iH@Z-Hg`@ÜÚ¼iH@ö\nK`@"Fö~¼iH@ùøÈë`@‚"êC½iH@#òàV›\\@²^î¬ÉiH@k.òY@¼æ½0ÓiH@ 5½–¼Y@UC¿ïÓiH@‰ÔAˆY@æÓªÔiH@÷‡ ÅwY@ªÄåÔiH@Kï×æX@bùÜëÖiH@\'¬9¯W@$äßEÛiH@¥òÔu’W@±qµ¬ÛiH@D|Í}hW@Î¯ºBÜiH@&»ææ)W@p0x"ÝiH@Ýs¾OÙV@+“BÞiH@}PÈyV@Ð›€šßiH@2sV@øJ×âiH@%~åþU@ÜØ¤ÖâiH@)1x£rU@ØeM€æiH@FÕ½’T@\\ˆ©bìiH@\\f”ØÔS@V2`ñiH@ægbI˜S@h£ž÷òiH@tP8y¥P@à$—ÍjH@o¤PP@‘“É	jH@MèeeO@ÔÓ8jH@éôÈ~N@Û¹#FjH@	GŽÂvN@;t|jH@«À¼AeN@ÿÝñjH@‡‰\\RñL@6ºÔ·jH@O•f8)K@#L÷³+jH@Ú"Œ:¤I@ 2¢ì5jH@èDa½G@ö”u·BjH@;EYŒG@d‰CDjH@úÚ…‹1G@HdFjH@FÁìòÐF@»ÊíHjH@‡w¾0;D@L@äPZjH@]«§MqC@6|\\ô^jH@Î™¥HGC@/¥‚ë_jH@%YÖ92A@ö	Ê*ljH@—[îÃ>@eÜÆvzjH@¬ùGr>@°QU|jH@Æ€\'åV>@dø|jH@={}4>@&fÂ}jH@ðÂ-ì=@;©«kjH@MO‡É;@Eö‘ú‹jH@ù\nzª©;@2¼ñµŒjH@oššs;@ä™;÷jH@Ž* ¡6@0º0OjH@H‰Ã»\n5@{}ƒ:jH@qüq=4@¸i}0jH@\\µn¯,4@}Ìn/jH@ÇYU¯3@oLS·*jH@¹=qnÒ2@zïwg"jH@Ìbf˜0@‡š ±jH@E1sñ£/@P{ÁjH@ÛÙ×d/@;ŸajH@‰Ò"lb/@±ÛLJjH@m""J/@xñQ`\0jH@›„rö.@U¿!:ýiH@?„Ý”.@p±ŽùiH@þ‘-Ï“.@Þ=ÅùiH@YgŽ·,-@:&ùiH@¶«„$@ûËŸ¥öiH@¸¼Y®{$@FmüöiH@É©ÛÏ$@3\rx}úiH@Sl€ö$@nÐR™úiH@ª±Ÿ>é#@Q¦™™jH@ùh÷z#@©+)mjH@Æ¯;y#@*±\ZnjH@¯Vêx#@ï¥TnjH@×êa¦€#@GÍMojH@ÒžŠƒ#@eeàªojH@Ç¥úªƒ#@J<\0¯ojH@õïü~š#@ç…Ó¬pjH@Z§6$@W0½ujH@é»Æ“&@P\'ì/ˆjH@½”£Õ&@Õ\'22ˆjH@øQ²\'\'@5câv‘jH@×bFS\'@	û’jH@ö6£Ñ\'@ùÉšV—jH@‹4VÕ(@`z¸™jH@vs«@(@ÔEó#›jH@‡é»æ(@2kÕžjH@óñ•)@šÑI§ŸjH@d~¨f)@¯Ég©ŸjH@à8Ÿõ\n)@``v®ŸjH@1åù)@ zÜŸjH@y8W]Ý(@œ˜”¸¡jH@?Þˆ¦(@r,¤jH@u0úËÓ\'@éÅ›™­jH@e›0õ%@¥Õ÷ÃjH@†¯¸û$@ô¯³ðÒjH@cÙ$@4+óÒjH@ô¶u†$@b¿ÓjH@¾q(8t$@½öW=ÓjH@fÔy®#@ýÌFLÕjH@vAß¤#@+êlžÕjH@¡nŒ*n#@( ÷ÕjH@äÄý×"@¥Õ×QÔjH@#*Hsù @“ÏjH@ƒ:vî @C•SýÎjH@ÃÌÇâ	@+…´ÉjH@Ðñ]N@z‹ñžÉjH@†ƒ{èþ@OPs•ÉjH@xŽü5I@W›1šÇjH@Šš†È@!>ÇjH@Ì7|Æ@æÿ\n,ÆjH@ÖD?tÁ@1Ô-ÆjH@bMCîh@Ì(ÅjH@’J$¬Œ\Z@+½jH@\rZ˜Š\Z@ã$½jH@R7áH@`>ÖjH@°Ø%@pPkH@JŸÚv$@X6w”TkH@ÈáRä|%@wäÆmkH@FE“(¸%@‚kèÇqkH@ó×Kd\'@NÄª‘ŽkH@9Vî˜#(@~7Dq›kH@°2Óã€(@nxè·¡kH@ÒÌ¯é*@â‚$ÉkH@¨ªXß+,@`Ç©ÞkH@…½x;-@Q½ôkH@?ŒÏZH/@Æd\' lH@àÙ/@3œ4ÆlH@ƒ‚Fdæ/@½n›\ZlH@]"§0@i÷NlH@àãhtt1@KôÛ84lH@š2­jœ3@æ¿ÍWlH@‡uË¨ÿ3@êÍÙ2^lH@üÿÚ©4@µÁ+ilH@E3¼$F7@	ÏØŒlH@²²õ^Q9@X7ÚÊ¦lH@Ÿèm§¶;@ì>3ÅlH@µ¬£…<@sÄ…®ÎlH@VÏìÌ<@\rŸyòÑlH@Ãˆzy=@/-"ÕlH@A­QŽ[=@\r{ØlH@¥PL¦=@CƒÃÛlH@\rµµ!??@‡¬¸ílH@ÎPUB@Ñ@ŠmmH@†O^ñB@J‰rLmH@®YyC@åE3«mH@á…œöC@b-mH@¸é+(C@R†H»mH@`ãqÂAC@÷FÜ\ZmH@É–Ü“C@Fw/omH@ì@µ»E@x¶¹t.mH@Ö„œÄ]F@ü7*²=mH@ÑëëMG@¾Ú¯HmH@¶Vi:I@È[ú§^mH@`ºÔíŒI@ìÔ[bmH@{q*VI@^qA`bmH@xÚ#µI@böÏ)dmH@TëL@0Ò…mH@_VÞ«L@·ŽMŸ…mH@ÖvfÑL@ós\0G‡mH@¿œ>ÒL@¹\Z‡P‡mH@Z÷xtàL@é&ñ‡mH@.¯òðL@ÔÜ­ˆmH@jAxþL@vêE‰mH@øÑF·M@³7	šŠmH@:‡Î¥¥M@ŸSû¢mH@°nì¿ÆM@Š;u1’mH@¤Ëö‹\nN@ß_ša•mH@{®îß‚N@¾¤VÕ¢mH@—iýÍN@ÏrXªmH@`ÜUþO@ç,°mH@¸žPO@áðˆ·mH@\r”z’O@EG9½mH@pÙ™O@PZ~Ñ½mH@(úU°O@F‰!×¿mH@?õî¿O@B•ý2ÁmH@iÎ“0ãO@[S5àÃmH@ÿÿeýO@ê/¤ÅmH@ÞyV#P@w{ðÇmH@ˆD|!—Q@y«ÖÚmH@=•Ï.—R@÷µéŸÐmH@Ü¾RœR@ì4vkÐmH@\nà&)žR@€}«XÐmH@ž+Þt¡R@‘ª7ÐmH@ÅD‡—¦R@©	‘ÐmH@n_º«R@ÀlÎÏmH@wÝ°R@‘Ü«™ÏmH@_%àÿµR@»>:eÏmH@å¿·"»R@p È0ÏmH@8HaEÀR@w SüÎmH@ÿ=…ÃR@¨Ž*ÛÎmH@ÃL8hÅR@¤oãÇÎmH@æ@áŠÊR@$Ýo“ÎmH@Ð‡¸­ÏR@\0=þ^ÎmH@ºÐÔR@kœŒ*ÎmH@l8óÙR@êö\ZöÍmH@yßR@g§ÁÍmH@§Dç8äR@Hè1ÍmH@+$¾[éR@ÚEÀXÍmH@×f~îR@‚žN$ÍmH@\0Ò<¡óR@*ûÜïÌmH@7¶ÃøR@`i»ÌmH@ð—»æýR@<À÷†ÌmH@ª|’	S@ -„RÌmH@:,S@}ƒÌmH@B¿‹iS@WûüËmH@ÐZO\rS@ÔÝ éËmH@™eCrS@]3µËmH@¶[v•S@r\\Å€ËmH@ò§©¸S@³¬ULËmH@þÜÛ!S@>ÙéËmH@Ç,ÿ&S@Ž(zãÊmH@*ÐA",S@Çe¯ÊmH@„\r­;1S@à4\0{ÊmH@©¬¶[S@­JÉÈmH@1Aæü„S@IÊý#ÇmH@ŠžgyîW@ÈžšmH@/ñ å9X@õ­·—mH@ebí¯]@“:$_mH@\Zð]@*½‘\\mH@Q‘¬L^@èõÛF[mH@s¿m\ra@¥‰»—<mH@†<c¬%b@¤¸€Z1mH@fle@%ñ7\rmH@', 15, '13677.92366106'),
(11, 750000019, 19, '75119', '19Ã¨me Ardt', 'Buttes-Chaumont', 750001537, '6792651.12902648', '11253.18247860', '\0\0\0\0\0\0\0ÌFõ@W;Í´‹qH@', '\0\0\0\0\0\0\0\0\0\0q\0\0¨ÐÊŒ@œ0„[sH@nL¼ÿ@ì8š»VsH@¢ê¿ˆ, @ŠÎ-SsH@îKç, @xèx*SsH@Éþ“Ç­ @P`O NsH@Ö6„ $@ËnÄ‡/sH@HcÄè%@±usH@fÒÔo&@W[0ÇsH@\'ý“m"&@&msH@¿+Ÿ*@ÀšxTúrH@öš`r\r*@.äý¢ùrH@má\rq*@âò„ïrH@š©:à*@ùº:ärH@²yq~ð*@Dc%“ârH@)ã4ñ,@“’¢~®rH@8;óì¢.@leio‚rH@¾hhù1/@&[\'`rH@ÓÁ“`0@~ rH@ÿ²!íÁ0@\n\0×KöqH@Ý\r1@/L\Z’ÜqH@c’zö1@áÕ­“ÛqH@Gk±]1@¢=7öÀqH@ˆ›3~^1@·m\r°ÀqH@…°1¶r1@ýù¸Ã¹qH@«ÕÝ„z1@®W]·qH@<S‹ÖŠ1@"ÒÝ€±qH@9|íH1@Öf\r/ŸqH@Î”®1@c<\Z9œqH@ÕŒ¥1@pHz†qH@ C J’1@Bè±µyqH@Žø“1@bHÕsqH@˜ÜS“1@Ê\rìîqqH@+¯`Š“1@8C•UpqH@_ü\r”1@2FlqH@lùÞ®”1@L¯MÈgqH@1s\n•1@œž”eqH@vo2•1@„?ðîcqH@}0Ö–1@Á@¨WqH@,\0&—1@âWèQUqH@Æ\r«˜1@±¬F7UqH@GÊ8ª1@®Š.SqH@®¹	2@5Ò÷NFqH@ s\0¦(2@¶<ŸEqH@²j…$-2@"¶£€DqH@,%ÒH2@f	GzAqH@ŠèœÂ¼2@ŠEf4qH@h-§\\Ú2@ë‡’1qH@™¿ÉC3@óÑ&+qH@yÂ÷3@5ZK+qH@¬Ük3@Æf(Ä qH@C¿Îl3@;¾Á qH@ôÇ‹5l3@DåQ¿ qH@Â	Ç¨4@ÿ>¿¥qH@æ•B5@±Á]qH@B„üßT5@²ƒèYqH@SC\rÈ5@»--!\0qH@ëmÇœ#6@—Äÿ.ûpH@¸`ã@6@yß)šùpH@ 9bA6@Ù(|˜ùpH@„êç[A6@ùuÎ–ùpH@‡Õ¿…6@K¼¸±÷pH@Pþn*8@¡ô¹	ìpH@4}é!R8@Å5!ðêpH@M}Cu‰8@ú¾®gépH@xã¡L¯8@£qB[èpH@ÎøÒ_\':@~÷‘ïÝpH@ƒP[þB:@!¨+ÝpH@i¸ˆY:@xÚÂ‹ÜpH@ÄIóÓ:@æ°b\'ÙpH@Å²|X­<@9#8	ÌpH@(ÄSýP?@khÃpH@fâêQ?@í9ûdÃpH@Ï/¢l@@¦\'ïÀpH@DzkAê@@ì´½-¾pH@j?ÂnA@%ÉÕ~¼pH@$¯áA@äåÕ»pH@€§Ë]hB@Í¬5L¹pH@È‡•qÖB@…í<ä·pH@jIÆD@a´pH@Ük¼ID@ð¯&³pH@¤/¯	›D@>T\'²pH@eä]VF@_M{q¬pH@Òs6¥tF@«Ï\0"ªpH@•_™?”G@²qX”pH@²KWI@³ósvpH@Ü6èÚCI@Ø|ÌrpH@s;Æ£eI@u~“2ppH@2²‘áeI@‚Û-ppH@î‰‡]^I@Ñº\nppH@5î(ƒNG@A<Z•fpH@+^š®G@þÕÝbepH@";qÁ†F@ÛÀDcpH@Ð\ZH˜iF@‡’†{bpH@I‘GêUF@W§F!bpH@ØP¦³F@¯%$apH@EãÊ_\rF@%˜Ô`pH@€öÑ@sE@sµò^pH@±¼¼™D@wH2,ZpH@±Á¾àD@}ùþYpH@¨Êòc„D@K„JÊYpH@qAFfD@À-@YpH@ÐìAXD@”ËÇþXpH@8Í5ú¾C@æå@VpH@}zSXòA@>Œ‚íKpH@}±\ZÑvA@V(IpH@˜ðûrhA@Ì\\(ÖHpH@«¬à@@"©½SGpH@Wi‘´o@@~\0>FpH@ëm€#n?@=Ø³×ApH@±OKu8@xöLþ pH@›„3Ùb8@Å°ÁÕ pH@|lx=Ò1@Î³iŸpH@­Ù£11@ÜbópH@FºÂv1@>v9½pH@ŸêÞú.@¡ðàpH@ãKÂû«-@L@pH@’ýVÌ¢)@\ná­OpH@ý¹2êó%@_<¶qpH@-Â\'Tø$@+"Ö:pH@IíHVÀ"@¥Ìÿ¾pH@••7K¾"@™žRÁpH@Èn!ûW"@\'î5pH@ª4…³W"@l*?6pH@äŠ­žˆ@¢›pH@	¹BC@Laû\npH@¬Î5½¶@ß•9øpH@P²~²Ÿ@Ã±UçþoH@ã¿@cCùoH@HÕÃI@‘ôÊ§öoH@™ëØ¡z@KF†7õoH@F\\\rv“@á˜”QôoH@Íç©8n@þÚpôoH@Â_PA@†ùK‡óoH@1°½ì@(9iÉòoH@I`x—$@I^¸ìoH@‡-‚Êæ@[ù)¨âoH@±sÐÈê@}ëxžÚoH@©Ë$4ž@ã×â°ØoH@‘{Jf@ªH‚×oH@Ýs^3R@ÄS×oH@_ôRŽX@ˆìíÓoH@#7µ—@¶†YOÎoH@ÂÛ÷7€@§qËoH@ÜâªÑ@ãN›ÉoH@)Ô`¶@]ƒÉxÇoH@Lšï’r@±òÔÁ¾oH@äp|ž¨\n@Ä­@ý»oH@üÇ?ð	@npË=¹oH@ß`µÓO	@Ñ\nkÐ¶oH@|»@%|g´oH@L²5#@×ýÓÕ±oH@ÊN³«@.Æ»ŸoH@†ýûãì@$Dà¡oH@EìW¹e\0@(—¼ÕoH@NH†>\0@¤*ËP×oH@b-<	\0@fo!ÚoH@ÚWóŒÿ@qÞ$²àoH@W9jÿ@’ªœâoH@%¢AÚÃþ@£µ¼ëoH@§Y½vþ@gÈøïoH@ì¦­keþ@®lAìðoH@‰`Nbý@d1ã&ÿoH@¸~Dý@ÒBæpH@²¹¡¾ú@SA$pH@ÛF¶§ú@3ÎGƒ%pH@àäú@íâu-pH@>ì´µö@›:ˆ³\\pH@Dnµ‹Sö@©`qbpH@éi4ÍQö@·S»!npH@kQö@,>ÈppH@Š<~Qö@c×Š.spH@n;C¾Pö@“PiÀtpH@luBIö@ÌP‘¢pH@ËÂk­Hö@®™¤pH@S@û#Hö@¾æ§pH@~ö£Hö@½ªË\n¨pH@¨\'_Dö@Aàåº»pH@TÑÆ\r@ö@.°CÓpH@l¹šÓ?ö@âô™ÔpH@ÍM•?ö@ô"Œ¼ÕpH@²Ô?ö@˜›äý×pH@QÔ.{9ö@äêJ7ðpH@Ö´ÀÚ8ö@!äñòpH@¡ýèž8ö@QþíöópH@P±b8ö@jûüôpH@kÞ\\8ö@FnaõpH@}] 7ö@‡ìu¨úpH@B!Í7ö@h æ®úpH@ã—³6ö@v×××úpH@y‰Óu6ö@árõúpH@wÙ"6ö@¶þÃ"ûpH@n­Å6ö@HÉy,ûpH@ä\\Ø×4ö@JSƒmûpH@çÎ¹3ö@ïÖš«ûpH@-Mt©3ö@ü«ü®ûpH@\Z¶442ö@êàAåûpH@³ct0ö@ÿZ&üpH@HE<0ö@ñ~.üpH@Žyÿé-ö@ß	ÿküpH@$Ÿñ¾+ö@”wq¥üpH@A˜+ö@-M{©üpH@‡æ?s&ö@ì\ZZýpH@k7*ö@qôŸýpH@òŒ`ö@Ô»Ã÷ýpH@Æ›»ö@±]XþpH@f.×9ö@ór(¯þpH@@ºˆ&ýõ@v€íþpH@t@ŽØõ@_#\0qH@VjBâÏõ@gs‘l\0qH@¥³$iÈõ@©óã«\0qH@+[€f³õ@ê+vPqH@[cýfõ@®‘ýlqH@£‹‰õ@Û	+÷qH@K:õ@(ùqH@¢?4ŠØô@œ¸öóqH@PÆv,¢ô@!C›qH@»(¡nô@A¡a\nqH@q!ì3Iô@Sb™ÃqH@9-ÍIô@ÚÅqH@ûÙ|0ô@$oçqH@µ~¦ç*ô@ƒN)\rqH@JÝ¯‘ô@Êt:qH@LòêBô@Šh‘YqH@”?TÓô@`šž¢qH@ÔHÔýó@½Tz²qH@tƒÂÜøó@‚>QóqH@C—£õó@]ø.qH@•f,áó@KyÜ†qH@^[¤Ëó@ò¢¹8qH@ðšŠ¬·ó@?n&øqH@#Ò¦ó@å½áÂqH@ÃR›ó@–u;qH@lnËŠó@{c‘z\ZqH@÷Å2u‰ó@HûõŽ\ZqH@Ðü‹ú†ó@ÃŸ¡á\ZqH@Ð\nÐFvó@åé1“qH@5“·ló@CéŠwqH@l 9Yó@¸‡±Š!qH@2§&Vó@cðsÞ!qH@—~xˆOó@LQ]€"qH@ãïåýMó@Íkö¥"qH@–&Y¶Fó@—$(#qH@4i½°Eó@Èh:#qH@!‘ÎDó@û7J#qH@µYÄ@ó@ä¡\Z—#qH@¾Hþ¡=ó@§e”Â#qH@[ïÁ5ó@;¤«9$qH@ÃêI1ó@‚E>}$qH@Ú n.ó@\'`¢$qH@¬›U€%ó@lAX%qH@0¹- ó@/TXW%qH@“ÔÚó@‰Ò¥%qH@yšÿ\ró@„‘g&qH@(w³ÿò@Tc‰&qH@¤öéŒûò@”&<­&qH@KUCñò@ª‰¯û&qH@Å\'àò@ƒ´"~\'qH@Èè›¬Ûò@ {I \'qH@Ùš¡Ïò@‡¡(ð\'qH@‘ùwÀò@	m²W(qH@­ÙÂ-½ò@j(qH@ãèpºò@Ôt¶|(qH@ilŠ4¢ò@X+	)qH@èd…	tò@ËŽ\'í)qH@š3Ä¬mò@ïä¨*qH@²øüfkò@ÿÿÆ*qH@’Odêeò@RÂ%*qH@eEúKOò@-l€*qH@µ(ÅÄ)ò@ÂŠ\nú*qH@Š‡åò@ÄÚy3+qH@</çñ@1,\'Ÿ+qH@ÐÝ-îåñ@bÐ¡+qH@\nW“©Îñ@y…É+qH@-=šÀ·ñ@užð+qH@ÚÔšd·ñ@ÝØ:ñ+qH@OãŽþžñ@Ì2,qH@!h ‰ñ@oVô!,qH@§3mˆñ@ëÚ9#,qH@[Â×ÐZñ@½‡5,qH@_(ÀXÌð@ýÊ,qH@O\0ä‰™ð@Ç>I\0-qH@›uÍécï@ùE.qH@orþ*ï@<ùÈ€.qH@]€–2ï@f9Ž.qH@²‡¥ˆî@;Àÿ*/qH@ý»9ë@Ê;¤2qH@¥xoàê@„;3qH@£¦#r*í@ê0ôƒYqH@=šf÷í@c\nüfqH@”­«5»î@ä›uqH@Î>"/1ï@€Rw}qH@\\˜\'£Ìï@Y£Q4–qH@zfµÍð@‘™¿qH@’xÂëñ@›ƒuÊáqH@W<ÃLò@p%æîqH@\Z5pŸÇô@ÛE"KrH@·ôÎõ@LoA‹orH@±›kþ ö@0ð»rH@7„ºÒö@‡rŠƒrH@šfÚ„lù@ûl$ÏœrH@©×Llù@ÈáõÑœrH@°6\\Nù@³È\ZSžrH@`œËŒ¢ø@½gpò¦rH@’PDÊlø@iõ´©rH@hk_bø@ëk‹w«rH@çeã®Vø@¡àr­rH@_˜	×Rø@Îš”¤­rH@ž›ãÔ;ø@úŽÒ®rH@0¥Rt7÷@c-,¼rH@[½y­ö@‚öü>ÃrH@}äq”ö@¬ƒ‡ÄrH@’kè6Žö@Ð¶IÙÄrH@uÚÒrö@?7ðçrH@¨Ÿx]ö@	^3SürH@ª~KÔDö@Ê !.sH@ò˜I\\7ö@‘˜õ?sH@^émN0ö@µ±‰±OsH@Ž\'k,\Zö@¾36bsH@ÙOîö@Ã:£	esH@Ì>­§ö@J„ÊfsH@ätœ£ö@qY¯BhsH@Ô`ùJ\'ö@°ýisH@2Ö2ö@€¹iksH@¡ÜóÜ<ö@!^VâlsH@"ÓKö@rÖrnsH@›.Ñi\\ö@©©""psH@²¦c/Üö@«XôMpsH@¡SnV÷@•ôâwpsH@78ÀlÙù@Nó\\TqsH@LS¬”ú@j†dqsH@Å¼zP.ú@«wqqsH@v\\3_û@r¶ÂqsH@¬\Z\Z¼û@{öÈåqsH@Ø}J²¸û@ øqsH@71ë‰\0@Xš2ŸssH@¯É1è@á$OytsH@Öáf³ó@*T$ÑusH@!"y–Ø@ß°âvvsH@îòF{7	@ÄÐP—vsH@¬YTh	@ä¨vsH@ßPOˆ	@Æñ²vsH@˜?¸7¨	@ÇÖ½vsH@ ð}ÙÂ	@,ÜðÆvsH@¼Â\\…Û	@‡ë_ÏvsH@³”âê	@j’ÔvsH@è(tÎ\n@U|_"wsH@Å¾—ó\n@Jø/wsH@Zœ…T@Õ*PwsH@*ÓÊàY@*3p©wsH@&‡“\r@¾|µâwsH@›éÕ@°˜BxsH@†‡I~r@pÅfysH@H+°x@àeãhysH@ÐEºR@$æ•\nzsH@²Évý@ÆXWxsH@­œÓuy@rkvsH@9Qòc@—dºbsH@tß$)=@^3Ì\ZbsH@ù0q@Fút}asH@€¡×GÇ@Ây`sH@+²roD@üÕ–þ^sH@u]ka@Pí¦^sH@Øfp€@ú>I^sH@¼¡7™³@´Sb®]sH@‰`r7Æ@ùBv]sH@€"¡á@^Ö,#]sH@ã7ô@æê\\sH@s,´ˆ@á)[sH@¨ÐÊŒ@œ0„[sH@', 19, '11252.94322851'),
(12, 750000004, 4, '75104', '4Ã¨me Ardt', 'HÃ´tel-de-Ville', 750001537, '1600585.63150251', '5420.90843368', '\0\0\0\0\0\0\0¦×\ZëlÜ@ËÉR[mH@', '\0\0\0\0\0\0\0\0\0\0}\0\0\0s:¶ò@‰5\'²ˆmH@,Ê]¸ó@‰ãÿdGmH@Ó”À}ìó@TœªN9mH@ì5Æíó@Õ¶Hõ8mH@ÙÃ+Nîó@-0Ð8mH@ÏÓE\Zòó@þ.Í7mH@Gè{úó@ˆè5mH@ÿ2¨üüó@¨Aà4mH@Aq5Ÿþó@ìS£p4mH@\\]{úó@i@+â3mH@:`ïëó@Mú í1mH@29Ñßó@çµ¢L0mH@~,Ó$ßó@¤.€50mH@à­ŸSsó@î9´!mH@šîRó@FxÂ<mH@°©ýhNó@±ž²¬mH@…N‹6-ó@Ðs1mH@¡¨Vµ	ó@;\Z\Z…mH@LoÛ÷ò@ÔšÐmH@ð^™sëò@÷ãåsmH@üR	ëò@õ‚¸fmH@›‹‘òäò@lk&”mH@âãò@“®SomH@·z&×ò@=Ì°mH@>½Mˆ…ò@œQ0ÀmH@çW¯ù„ò@úö\r­mH@ë¨ Gtò@ëpÿlH@ZŒS2ºñ@\0àX×ålH@©IÜw¥ñ@ò`ýâlH@²0ÌAð@:þø±lH@ŽßKå?ð@íyMÌ±lH@h¹\rî¡î@X?õëwlH@¹Àé˜î@et3©vlH@Ð$¬©Ýí@‡4Ô²olH@7`V~Ùí@“Ø‹olH@ôÍz¬Îí@M˜%$olH@¿\\«¤€í@Röc=llH@ núürí@D}Â»klH@BÈ­ñì@~5˜ëflH@˜A˜–ìì@èÞ¼flH@ŽsÖêì@¨9¬flH@ž¬Æ Úì@Á6\rflH@HÉÕÂì@§Â.elH@ÈêÝw«ì@Í±LPdlH@”èŠ¤ì@HrdlH@tª/©ƒì@5µ»ÕblH@V[1–‚ì@„·îËblH@ýfµKì@ø:§À`lH@QPYEì@â´\\„`lH@Ûï~ê[ê@\n"QNlH@sgÄýbæ@ñÒ!ä~lH@nï\nz\'å@s7l‹lH@®˜þÝaä@e¶ûÛ’lH@l‹m êâ@2zyùŸlH@m\'Âêâ@FY¹þŸlH@TÕwçà@?œžû±lH@‡ž\Z·¦à@¢I¸´lH@ùý°eà@ý€¶lH@¹DTóß@žkA¹lH@f¯µ—ß@’¦â¼»lH@‚…MÉøÞ@\rjC¿lH@\0FXæLÞ@ê+@ÃlH@Z†K\nÜÝ@Àç\n†ÅlH@j9’-²Ý@\rôó]ÆlH@	VÒ|Ý@ý°ˆÇlH@Äwˆ¾LÝ@r’\0iÈlH@-\r<Ð-Ý@N!MÉlH@å+$?^Ø@uFÂ×álH@C1‘tDØ@z†”\\âlH@1örØ@!:ãHãlH@˜¼«„À×@ ý±ßälH@µ5óÉcÔ@x#zÎôlH@•0ãRÓ@,ze÷lH@yg¯óÑ@‰±bYúlH@¸r/Ð@~ßQmH@ã1´ÌAÍ@­‹fœmH@æÜDãÌ@Õ¢IXmH@oŽÂÌ@JmH@­\07Ø›Ì@Ýž€ÎmH@DÌ‹ŠÌ@çø-1mH@”ºÝ¦Ì@ÂhèmH@x½ó¬ˆË@ìVP>mH@|dFIË@6Ç`êmH@lc¾¾ªÉ@S¡Sf"mH@–ËHé‹Æ@Þ-ê¹8mH@_SùdÆ@?ww9mH@`l2øHÆ@Nˆ:mH@ ¾!0Â@Œ,˜pOmH@xfÚRóÁ@*8¡JPmH@¨MBÎ¹Á@®f2|QmH@Z<Þ-ºÁ@ÏðQmH@^4¬>WÄ@UðÅ¹ymH@s8÷gÄ@{ÔïzmH@Èòµ£ŽÄ@ÔzcL~mH@8éêŽÄ@HÒR~mH@·…­`ÒÄ@Á#ÞƒmH@C¿°v@Æ@t‰Jš¨mH@PÄ½ Æ@3#Öz²mH@ÿ_Š‹ÃÆ@%Ä´mH@ée`5Ç@óVlˆ·mH@þ†¥Ç@jïŒ·mH@7dh¾DÇ@›Ç\n:¹mH@‚\ZÎ°·Ç@¦€¤f¼mH@žÖëÛ·Ç@ªÕg¼mH@y±ÐÇ@ÇÓ—ž½mH@Üõ¥(!É@öè\\)ãmH@‹tð{\'É@…£·ÝãmH@’$L€Ë@A&öW\'nH@õøV…®Ë@€´},nH@b¼^œÍ@çè2ºUnH@f[ð,/Ð@CqŽJnH@†j÷U¤Ó@Ü±/>nH@ñÊR’éÓ@­þa<nH@‡x¡ÚÚ@‘II\ZnH@÷D&"ðÚ@Xë£nH@*ZþéÝ@É‹mômH@©ª\r´ÖÞ@Îå¿émH@Å:QÝáß@@c5ŸÞmH@_[m\\þß@C‹ÝmH@xZ)´â@\'¾ÖÈmH@!™äßÝä@ŠÈÀiºmH@óÉ*/ç@Â+á¯mH@l¨qê@&ÎçR mH@ƒÍâdê@A« ÏžmH@s:¶ò@‰5\'²ˆmH@', 4, '5420.63677909'),
(13, 750000008, 8, '75108', '8Ã¨me Ardt', 'Ã‰lysÃ©e', 750001537, '3880036.39704363', '7880.53326819', '\0\0\0\0\0\0\0¯‡ÃR€@Û•ÿPµoH@', '\0\0\0\0\0\0\0\0\0\0\0\0=wÆ	P›@òófÐMoH@T¶Ñ›@EBûLoH@èw”Z£š@È%†ÿKoH@£e²:Žš@°9ÇKoH@\\“U‹š@	tD JoH@MhJ\nš@““§gJoH@•í™@)ôµJoH@Îï¨\'Aš@ÅÊ¦Ç;oH@+§“ð©™@5ÕƒË-oH@1Òä¨î˜@jäpyoH@ÔlcÚÀ˜@XûïzoH@µ\Z9À˜@$ÙloH@ð!™–@Éõ’ËénH@Zê«­–@Y‹Ž\\énH@…ˆqY¬–@tŒ>énH@¨.jj–@+xÀããnH@™ ‘<,–@(‘ÂßÞnH@‰eô”@$Ã¬½nH@“wEe”@‚µûºnH@-ñ•’@Êç/Õ”nH@©ºN?’@{önH@2·ú<’@ßP×²nH@â`2…’@,¹WˆŠnH@t@i\0’@‹@ÚëˆnH@QÁíƒ5‘@¤¢!ªxnH@D¤Ú>5‘@çº~«xnH@~¼#@8Šï¼~nH@‰\0Ô@4ˆ‡¾~nH@aÉëh@6)ypƒnH@Tøï¾æŽ@2(°^„nH@àÆs^Ž@0‡nH@æ—÷Ù/Ž@óxíþ‡nH@C¢nÈŒ@×Î¦"nH@úì¡¥Œ@ªŸ?žnH@Ð\'¯Œ@ÿCñ\0nH@\0³é<^Œ@²·¨2nH@!Qo;Œ@ŠY¯AnH@Ñòÿ‡@*¬‡¹ŽnH@N*Ï·¶…@ƒ©ÛŽnH@TYý.¶…@Ä¶ŽnH@{¸Ï«{@\\fS‹nH@Ó^”}{@¡QhF‹nH@™uÈk{@þA‹nH@ñü· æq@š¾‹ˆnH@%\'Lkq@KmˆnH@ˆÈ¤jq@~O$mˆnH@uûÝŽj@û‚\Z’†nH@ÙËØbj@,š††nH@.1?4Uj@ 2ê‚†nH@BG¢ÿi@Ìâ‰k†nH@<û/Aði@\n›ƒg†nH@ÞB\\¨i@áñæS†nH@ŸÝÆµi@¹Rr¿¨nH@¤¾ëšÎf@!þù?ºnH@Å®râRf@ÈÝ%ÁnH@‰˜èÔ7f@ÙZó¦ÂnH@¸8Z1f@qkÃnH@Ã%4F\re@i;üuþnH@Ù±@{Ûd@Qfa¿oH@³¯ƒ,d@¸Ùä,oH@LÈféb@¬”qrOoH@¼µèÍb@§êÜaRoH@S¨J2Ua@è_7{zoH@ 6¥Ea@ûTÈ{oH@"ÔüDa@=00Ù{oH@%¢æh^@í[­oH@ÿG>zÝ\\@¬L>xÌoH@71´9Ì\\@ŠÏí³ÍoH@•q—Ë\\@·Zˆ¿ÍoH@‰²ò•n\\@(ÉâgÔoH@£ûžf\\@±pyúÔoH@¨|îUf\\@¸ÿÔoH@¡±n\rf\\@çÚóÕoH@í7‘Äe\\@i/\nÕoH@V‡ÿd\\@äåZÕoH@ZÝ÷Zd\\@`öl$ÕoH@ó›`d\\@K°)ÕoH@‹YÉËc\\@90ó.ÕoH@÷‚2„c\\@Ç^44ÕoH@¸&=<c\\@?ay9ÕoH@O¦ôb\\@Çº>ÕoH@IÊß¬b\\@©–ÿCÕoH@\\òHeb\\@5Å@IÕoH@,°±b\\@\ZâƒNÕoH@>•ëÕa\\@úÆSÕoH@ÔRTŽa\\@ƒ\nYÕoH@ ÌFa\\@dO^ÕoH@õöþ`\\@íLcÕoH@Ú0·`\\@geÓhÕoH@¿jo`\\@ç}nÕoH@¿è(`\\@š[sÕoH@8<à_\\@¸·œxÕoH@ì_¥˜_\\@<æÝ}ÕoH@À†Q_\\@ÀƒÕoH@o*G	_\\@`øgˆÕoH@ÿå¯Á^\\@D«ÕoH@î]»y^\\@ó:ì’ÕoH@Ô†R2^\\@¤J1˜ÕoH@_ÕŒê]\\@¼trÕoH@¤¹Æ¢]\\@7µ¢ÕoH@•	/[]\\@}˜ú§ÕoH@i0˜]\\@úÆ;­ÕoH@-ë\0Ì\\\\@ßã~²ÕoH@C÷„\\\\@ì÷Á·ÕoH@¥Gt<\\\\@-½ÕoH@I–®ô[\\@F-HÂÕoH@‹å­[\\@†8ÇÕoH@¾Ÿe[\\@jUÐÌÕoH@¼Zè[\\@KrÒÕoH@Ý="ÖZ\\@ÄŠV×ÕoH@‹\\ŽZ\\@×´—ÜÕoH@öm–FZ\\@IÍÚáÕoH@F”-ÿY\\@óÜçÕoH@±N–·Y\\@ÓùbìÕoH@ÿoY\\@°¦ñÕoH@ê8(Y\\@%/éöÕoH@çÌràX\\@˜G,üÕoH@´]\n™X\\@ÝhoÖoH@%ÓQX\\@‚Ž°ÖoH@ü‹~	X\\@`«óÖoH@žEçÁW\\@9È6ÖoH@s» zW\\@Ï{ÖoH@Øt‰2W\\@éë¾ÖoH@I˜òêV\\@d\Z\0!ÖoH@fæZ£V\\@Ÿ%E&ÖoH@\0ðe[V\\@£9ˆ+ÖoH@ÏV\\@\ZhÉ0ÖoH@5ôÌU\\@Œ€6ÖoH@¬q„U\\@eO;ÖoH@•ùÙ<U\\@¨”@ÖoH@=CõT\\@×ÕEÖoH@Ö‘|­T\\@äÝ\ZKÖoH@JåeT\\@·ú]PÖoH@ )T\\@&¡UÖoH@ñ	YÖS\\@’+äZÖoH@,ÂŽS\\@Z%`ÖoH@Öã*GS\\@ÞvheÖoH@¥š“ÿR\\@±“«jÖoH@rÍ·R\\@}šðoÖoH@ìÆ5pR\\@U·3uÖoH@©¥o(R\\@¼ÏvzÖoH@öÇØàQ\\@/þ·ÖoH@j;™Q\\@ùý„ÖoH@oòzQQ\\@Î!@ŠÖoH@«<µ	Q\\@ÏKÖoH@’òÂP\\@¥hÄ”ÖoH@^¨†zP\\@u…šÖoH@&À2P\\@<ŒLŸÖoH@ÝúùêO\\@¦¤¤ÖoH@P°b£O\\@tÁÒ©ÖoH@šÑË[O\\@äï¯ÖoH@àÙO\\@åZ´ÖoH@úmÌN\\@}œ¹ÖoH@¯Ö„N\\@I0ß¾ÖoH@%ø=N\\@KZ ÄÖoH@ÖJõM\\@´rcÉÖoH@ÆÝƒ­M\\@ÖgªÎÖoH@aýìeM\\@C–ëÓÖoH@Ž‰„M\\@~·.ÙÖoH@Ò¾ÖL\\@záoÞÖoH@<\'L\\@ªì´ãÖoH@|ø`GL\\@\røèÖoH@]­ÉÿK\\@Õ!;îÖoH@JÌ2¸K\\@?P|óÖoH@tÑ=pK\\@;d¿øÖoH@ñ\Z¦(K\\@eoþÖoH@xÎáJ\\@-ŒG×oH@	«H™J\\@¤Š×oH@1áQJ\\@ÿèÉ\r×oH@^§\nJ\\@Ì×oH@ÃíSÂI\\@~öS×oH@­½zI\\@â$•×oH@Êçö2I\\@C=Ø"×oH@\ZŽëH\\@×L(×oH@ýâÇ£H\\@0e`-×oH@t1\\H\\@˜“¡2×oH@ÝjH\\@ò«ä7×oH@IÓÌG\\@¹È\'=×oH@á’Þ„G\\@¨ÜjB×oH@áÙF=G\\@Ñç¯G×oH@·Œ¯õF\\@•óL×oH@œ©®F\\@û24R×oH@lRfF\\@³9yW×oH@ìËºF\\@tV¼\\×oH@¬¥ôÖE\\@Ñnÿa×oH@ôW]E\\@’‹Bg×oH@˜©ô¸=\\@ðF¼ú×oH@âšbx€\\@#©ÚÃÝoH@nƒú^¸\\@áÑZ–âoH@K‹ÝÇ\\@øý£êãoH@¥ºC<^@ª]™pH@½C¼Ab@ï\r¤ª\\pH@9ñóUb@|2@~^pH@\r Ÿb@çº™ädpH@E[ÒZAc@¿UgpH@çù>ûƒc@%u`÷gpH@—€¢ºÌc@!ŠqñhpH@Á©.·Íc@³ÙôhpH@>E\nåÐc@š²ÂÿhpH@ÇUÌWbh@%´“³xpH@çÛ˜t»l@To¡¯‡pH@6	©Ó±q@:«äÎ˜pH@Q.	x@>mQk®pH@Ñ’€x@Øcß¹¯pH@bë;y@•ÅÝp±pH@p`°9~@ÔýM»pH@N µz#€@Ô€¿pH@-w’Ð0ˆ@Â™÷ÎpH@äá!¥‚ˆ@ÌbÍ{ÏpH@>¤@”Ýˆ@¤Ä¤ÐpH@Ÿ:NÎãˆ@“ó¸ÐpH@ðEAN‹@o¯®×pH@ð\\ÃÌŒ@ó~ÝpH@*‹‰ÝŒ@å´ÝpH@?¼\\·ùŒ@Õ<ëÞpH@.7©Ò @L ÞpH@Pb¤Ç™Ž@x#¤_ãpH@Ï%§Ù@Ž$^tçpH@i“–$@ÅÐîèpH@/¸×€I@‰6oáèpH@‡VÃnn@<<SépH@{³3Šx@ÓÇ_répH@L×Ú–@ÁA‡…ûpH@î 	–@áIM†ûpH@a¾o–@+W#¾ûpH@§k{Q7–@%`5\ZüpH@ãoÐ»8–@‘ýÚüpH@²¼yI–@FÁÓUüpH@N+k^–@NŠšüpH@]¾€‚‰—@4r\0qH@°,c,ž—@ºCëµ\0qH@Æ+«³—@¢P›ú\0qH@ÎXU³—@ºPû\0qH@¢Æ„ñè—@Ç€E«qH@ìÓƒrî—@±X½qH@Íx9vþ—@\'é0òqH@Wñh˜@’³qH@T~d:˜@Ò‡¨µqH@ÌÒ@:˜@uu¶qH@¨á=Iš@y–{	qH@XŠ—vš@þ\nqH@ò‚evš@^;\nqH@i³GÃˆš@}"¤K\nqH@±š@Ï@\nqH@½¡ëÃœ@E¾MžqH@¸vEØœ@Í¼ãqH@U²ƒ„@Á@¸qH@~ª:¹@Æh&ÉqH@Q.XŠ@P.qH@Ø\r ØÓ@•øxqH@\nS56ž@;öéqH@ó}ñ@+ÑépH@<IwÊÒ@Yþz¤¾pH@€‚½@‡IÁ*˜pH@ËÁL½@ÃGØt—pH@*o8³˜@€öÈ—apH@¯dù\r—@WøÛ-_pH@%\\ßÄ•@P=\rB]pH@Áò”åa@¾¢tpH@unÍ»Óœ@º½^pH@@a×¹‘@ú1Ú)åoH@§Í‡L¹@J]šÛoH@5jç—¿@\'_¿ÚoH@0PÎ@q•—ÖoH@Ù.,µ@TH¡ÓoH@Ðí»5 @&ôl ÐoH@õ0­¹c@Â+®—ÇoH@Ÿ"×"1@‰Ùí\rÃoH@†¸©œ@Ï£n"¢oH@÷¢!4œ@å|±¢…oH@\nA·FÖ›@8²yºnoH@=wÆ	P›@òófÐMoH@', 8, '7880.26066073');
INSERT INTO `District` (`id`, `N_SQ_AR`, `C_AR`, `C_ARINSEE`, `L_AR`, `L_AROFF`, `N_SQ_CO`, `SURFACE`, `PERIMETRE`, `Geometry_X_Y`, `Geometry`, `OBJECTID`, `LONGUEUR`) VALUES
(14, 750000010, 10, '75110', '10Ã¨me Ardt', 'EntrepÃ´t', 750001537, '2891739.44162064', '6739.37505466', '\0\0\0\0\0\0\0ižÅâ@Èçn%pH@', '\0\0\0\0\0\0\0\0\0\0ä\0\0\0¥xoàê@„;3qH@ý»9ë@Ê;¤2qH@²‡¥ˆî@;Àÿ*/qH@]€–2ï@f9Ž.qH@orþ*ï@<ùÈ€.qH@›uÍécï@ùE.qH@O\0ä‰™ð@Ç>I\0-qH@_(ÀXÌð@ýÊ,qH@[Â×ÐZñ@½‡5,qH@§3mˆñ@ëÚ9#,qH@!h ‰ñ@oVô!,qH@OãŽþžñ@Ì2,qH@ÚÔšd·ñ@ÝØ:ñ+qH@-=šÀ·ñ@užð+qH@\nW“©Îñ@y…É+qH@ÐÝ-îåñ@bÐ¡+qH@</çñ@1,\'Ÿ+qH@Š‡åò@ÄÚy3+qH@µ(ÅÄ)ò@ÂŠ\nú*qH@eEúKOò@-l€*qH@’Odêeò@RÂ%*qH@²øüfkò@ÿÿÆ*qH@š3Ä¬mò@ïä¨*qH@èd…	tò@ËŽ\'í)qH@ilŠ4¢ò@X+	)qH@ãèpºò@Ôt¶|(qH@­ÙÂ-½ò@j(qH@‘ùwÀò@	m²W(qH@Ùš¡Ïò@‡¡(ð\'qH@Èè›¬Ûò@ {I \'qH@Å\'àò@ƒ´"~\'qH@KUCñò@ª‰¯û&qH@¤öéŒûò@”&<­&qH@(w³ÿò@Tc‰&qH@yšÿ\ró@„‘g&qH@“ÔÚó@‰Ò¥%qH@0¹- ó@/TXW%qH@¬›U€%ó@lAX%qH@Ú n.ó@\'`¢$qH@ÃêI1ó@‚E>}$qH@[ïÁ5ó@;¤«9$qH@¾Hþ¡=ó@§e”Â#qH@µYÄ@ó@ä¡\Z—#qH@!‘ÎDó@û7J#qH@4i½°Eó@Èh:#qH@–&Y¶Fó@—$(#qH@ãïåýMó@Íkö¥"qH@—~xˆOó@LQ]€"qH@2§&Vó@cðsÞ!qH@l 9Yó@¸‡±Š!qH@5“·ló@CéŠwqH@Ð\nÐFvó@åé1“qH@Ðü‹ú†ó@ÃŸ¡á\ZqH@÷Å2u‰ó@HûõŽ\ZqH@lnËŠó@{c‘z\ZqH@ÃR›ó@–u;qH@#Ò¦ó@å½áÂqH@ðšŠ¬·ó@?n&øqH@^[¤Ëó@ò¢¹8qH@•f,áó@KyÜ†qH@C—£õó@]ø.qH@tƒÂÜøó@‚>QóqH@ÔHÔýó@½Tz²qH@”?TÓô@`šž¢qH@LòêBô@Šh‘YqH@JÝ¯‘ô@Êt:qH@µ~¦ç*ô@ƒN)\rqH@ûÙ|0ô@$oçqH@9-ÍIô@ÚÅqH@q!ì3Iô@Sb™ÃqH@»(¡nô@A¡a\nqH@PÆv,¢ô@!C›qH@¢?4ŠØô@œ¸öóqH@K:õ@(ùqH@£‹‰õ@Û	+÷qH@[cýfõ@®‘ýlqH@+[€f³õ@ê+vPqH@¥³$iÈõ@©óã«\0qH@VjBâÏõ@gs‘l\0qH@t@ŽØõ@_#\0qH@@ºˆ&ýõ@v€íþpH@f.×9ö@ór(¯þpH@Æ›»ö@±]XþpH@òŒ`ö@Ô»Ã÷ýpH@k7*ö@qôŸýpH@‡æ?s&ö@ì\ZZýpH@A˜+ö@-M{©üpH@$Ÿñ¾+ö@”wq¥üpH@Žyÿé-ö@ß	ÿküpH@HE<0ö@ñ~.üpH@³ct0ö@ÿZ&üpH@\Z¶442ö@êàAåûpH@-Mt©3ö@ü«ü®ûpH@çÎ¹3ö@ïÖš«ûpH@ä\\Ø×4ö@JSƒmûpH@n­Å6ö@HÉy,ûpH@wÙ"6ö@¶þÃ"ûpH@y‰Óu6ö@árõúpH@ã—³6ö@v×××úpH@B!Í7ö@h æ®úpH@}] 7ö@‡ìu¨úpH@kÞ\\8ö@FnaõpH@P±b8ö@jûüôpH@¡ýèž8ö@QþíöópH@Ö´ÀÚ8ö@!äñòpH@QÔ.{9ö@äêJ7ðpH@²Ô?ö@˜›äý×pH@ÍM•?ö@ô"Œ¼ÕpH@l¹šÓ?ö@âô™ÔpH@TÑÆ\r@ö@.°CÓpH@¨\'_Dö@Aàåº»pH@~ö£Hö@½ªË\n¨pH@S@û#Hö@¾æ§pH@ËÂk­Hö@®™¤pH@luBIö@ÌP‘¢pH@n;C¾Pö@“PiÀtpH@Š<~Qö@c×Š.spH@kQö@,>ÈppH@éi4ÍQö@·S»!npH@Dnµ‹Sö@©`qbpH@>ì´µö@›:ˆ³\\pH@àäú@íâu-pH@ÛF¶§ú@3ÎGƒ%pH@²¹¡¾ú@SA$pH@¸~Dý@ÒBæpH@‰`Nbý@d1ã&ÿoH@ì¦­keþ@®lAìðoH@§Y½vþ@gÈøïoH@%¢AÚÃþ@£µ¼ëoH@W9jÿ@’ªœâoH@ÚWóŒÿ@qÞ$²àoH@b-<	\0@fo!ÚoH@NH†>\0@¤*ËP×oH@EìW¹e\0@(—¼ÕoH@†ýûãì@$Dà¡oH@ÊN³«@.Æ»ŸoH@ÓK·ï@a_\'ŸoH@Õ÷Ã‡sþ@pU~¼oH@ð»³ùý@–)R|oH@˜V8#ý@âm•ºvoH@‹…Æ²ü@š…±poH@\Zt­û@\0Y«noH@\r„Œõ@sþqüMoH@Ÿø‚édô@ˆ÷4JoH@ÚÂûUPò@‘Õ=oH@kºQ´gñ@ ;œÞ8oH@{÷üßð@Ê”]ù5oH@š˜µ‰kð@\\àš3oH@oSpµFî@Æ„¾â)oH@GÌ,—ì@Gw;!oH@Ÿ‡}iMé@û–oH@S¦o´é@ÈI›b\noH@’b\n þè@ñ´;”oH@Þ6|ûè@Ùßq²oH@•ªF×õè@ÒèoH@çòÄ8õè@öïíoH@ådUÙè@h­÷oH@C-e- è@`ŸÊoH@{˜‰Iè@•†ªVoH@ù±š\\è@XÜâoH@±Áål÷ç@©yoH@ß •±Ðç@ÝÌÒoH@ë£½uŸç@°#DoH@Tñ”Rç@‹R¼õoH@#®”wç@Ÿ>óoH@…>£žŸæ@„\'w‘oH@Bž^Øæ@²¯DÁoH@úi–à@W0gy&oH@ï!õ·Aß@øÍ‹)oH@ý×³Û@Í_	ó1oH@˜éëÑÛÙ@éÉ/6oH@®™VÙ@.Â48oH@+ÞxŠÈØ@h?Y>:oH@é59’†Õ@õ¥5FoH@ÕÙÀ50Ò@Óí:&RoH@Ÿ=ÒyÄÎ@a˜\ZÈ]oH@‚!uuÈ@y+É;soH@Š€È@ÒÀêoH@ã¥†È@†xøàoH@¸ív5É@¿MW\ZpH@èË½–\\É@5íj!pH@%¸ïÊ@Û&‹5pH@´’žíÊ@á±|aOpH@NÏü5üÊ@Þ2QpH@\'å¯—\'Ë@à¶7tpH@\ZkŸzYË@SQ÷¨„pH@Æz¦ÎË@Žñ£™pH@tñ«rÓË@oÓ_†™pH@Ÿ	Ú‚Ì@y(^¸pH@‘š\ngsÌ@fÝŒ‰ÇpH@Šò‘4Ì@Û<¬ìpH@ÁPSèõË@¶÷wqH@\raÉË@™ÝéqH@™Í‚†Ì@1êØOqH@l´6oÌ@.¬š°qH@(h\ZÍ@m[U~qH@% BhÍ@ïäzÜqH@ëšÍ@Ž*¦ qH@Îªe€)Î@a½zÇ qH@a¦\n¬^Î@l<·!qH@#]¤ÉÎ@–øˆ!qH@àf¥‰?Ï@—X"qH@®Á—8…Ï@yÎi"qH@ö{B=Õ@‘C)qH@zÐ½×@P¢Ãâ+qH@§<] Ø@1ù+,qH@\r2ÕcØ@åÚ,qH@pÖ÷,xØ@u|¨¨,qH@Ä°@óØ@§.»8-qH@¯ „"Ú@cF¯›.qH@ÿ—¹>¼Û@Y7{0qH@ë’)ˆß@ºn4qH@õÊëbsß@n?Š·4qH@Ç©åuß@Õ¦¹4qH@Çï2Øß@Ý\rß4qH@¾ôïlíß@ÒÄ¤Ü4qH@À×~öß@¥œÛ4qH@~xLà@ØÑ4qH@<šsPbà@p×iÏ4qH@Û\rgÉà@ñÐ¼Ã4qH@‘rûÊ,ä@}¼a4qH@>vÐTmä@£À«Y4qH@»"u!™æ@´@\Z4qH@þr9¿è@\ZÂ‘î3qH@\rÂ ælé@–»™Ç3qH@ôf[-ê@ÞµK‘3qH@ÄzÌR–ê@£<Ú<3qH@¥xoàê@„;3qH@', 10, '6739.16835945'),
(15, 750000011, 11, '75111', '11Ã¨me Ardt', 'Popincourt', 750001537, '3665441.55248808', '8282.01188584', '\0\0\0\0\0\0\03V¢\\\n@Æg§õmH@', '\0\0\0\0\0\0\0\0\0\0Î\0\0\0zÖ~+@0~ðTmH@yc\Z­5-@.™EÍ1mH@lËðK-@ªÜ«0mH@§TXëh-@©=¦´-mH@€~løy.@0ààmH@Óæ;ôÝ/@®VókûlH@ì1Gsý/@ÞýbçølH@ždÖ¤þ/@"j­ølH@OÛ„\'\00@>—dølH@æÛí=0@õû@Î÷lH@èwË0@9]õlH@å«0@;¡ÝlH@:àí¾—0@„¦[§ÛlH@¹<¤š0@™DÂ7ÛlH@X¿ºŸ0@dßå#ÚlH@»õÓô¥0@çdûØlH@<1»V¨0@ýò‰ØlH@6>²Ù²0@´²[•ÖlH@Ùœ¢E1@3Þ­“ÅlH@•aÙ<£1@¡u©lH@¨/±1@x3Ó¦lH@l}´†1@wJ–—lH@	ÄXÁq1@en¦’lH@£*žd1@«ÁGxŽlH@m—F:ß0@$dƒ7lH@¢hêx0@à/ÊlH@Z—Ä³.@ªËS’lH@óÆ… S.@vóRÞ’lH@çnZGÊ-@z®~¢“lH@ÛÁ}©õ,@|`?Ó”lH@V,@Ë—&"–lH@ozèUÖ*@4åþÝ—lH@¶ŠÌW¡)@öº«šlH@ Ù¦\'@S\'DŸlH@¦Æ÷Iž%@ô„µA¤lH@1	ª9ë@Ýµú±´lH@#ƒqJ®@ßù¥·lH@úFý”"@(µôÑlH@þxÙú@RóÜÄÓlH@›|)$w\r@›;\'mÙlH@Éþ´|\n@H8Ì‘ÛlH@§16	@¾%:ÚÞlH@Ó ÔÕÑ@o¡\ZpálH@78fg0@PGòãlH@Û0DÃ­@±¥xÏélH@¬’×a±ÿ@½!_mH@Ã¡&„ý@´A4ë	mH@ù˜˜Ëý@9½mH@c%ûµÊù@*ÃšMmH@åëd³Ÿù@Îr17mH@S§"Žù@nßh mH@r^\\2|ù@àImH@<\nRZRù@>*mH@`D&Ûø@¨y;!mH@™Æ¤°·ø@<Ã¥I"mH@€è6ì¢ø@i®:ô"mH@‰áÕŠø@“ý›#mH@1v_kø@€¼$mH@Q[¦ž¡÷@UÚË,mH@£Œ«–ö@×\Z(³6mH@I©ÔBö@XIdè6mH@\n:ÊŠö@ûÕ7mH@«Ä>ˆö@\'7mH@@ÃPs†ö@Ší97mH@¨ù«zö@®JñP7mH@‚i©hö@";9~7mH@›Ä’ehö@\'Bã~7mH@ÏáÞªcö@+Zk„7mH@,~Ñ±^ö@oÎßˆ7mH@)Ú¨Uö@²°‰7mH@ô"gô@&Bêú4mH@Aq5Ÿþó@ìS£p4mH@ÿ2¨üüó@¨Aà4mH@Gè{úó@ˆè5mH@ÏÓE\Zòó@þ.Í7mH@ÙÃ+Nîó@-0Ð8mH@ì5Æíó@Õ¶Hõ8mH@Ó”À}ìó@TœªN9mH@,Ê]¸ó@‰ãÿdGmH@s:¶ò@‰5\'²ˆmH@ó|¥ò@Zþ,Ý‹mH@"ÍKb!ò@ò¦¡¯mH@Â6Ö)!ò@÷‚×¯¯mH@5ÈFïÍñ@µefÅmH@‰é˜âð@žEµnH@OO)Ú‘ð@r³’ÀnH@P	ƒ¹(ð@¢+L•3nH@vløÓÒï@É_ÓÏInH@±×iï@YÌýdnH@ë¶è°"ï@ˆ7hwnH@Z·ójï@iÄ¤ÁxnH@ZÌÚï@”§znH@a–Ž·	ï@kŸX{nH@Q\\ï@ìZ|nH@ýƒc;í@û\n›«nH@\ZÒ¯(;í@í ¡«nH@QRFw(í@ö¾F”­nH@ÌãìYì@XÚÊ!ÃnH@ä1¾°ë@(-bÑænH@ëäßtúê@6øƒ¬çnH@JÒyÚê@:\'·ÿênH@‹&U–ê@n)bònH@Åû‡ê@&¢`’ónH@Çï.·~ê@µ)ÚˆônH@u3†~ê@¼"àŒônH@Z*Š|yê@;ðõnH@3¹Tµfê@Vfh÷nH@”I0V^ê@oóä÷nH@¹Ð*s?ê@p†ÒûnH@%½Nê@‚fâpþnH@˜ÛUdê@luþpoH@VRûé@óÒÞ,oH@	x÷ñé@¦ùö…oH@ã}ä«ßé@224oH@PR¾=Àé@Í_oH@.ƒ“é@Æ5\noH@èNmdé@GL‡ÍoH@núß Gé@×)žÜoH@ÕC¥ìAé@Î¯Â	oH@¹ZÒÈ>é@jÞø0	oH@S¦o´é@ÈI›b\noH@Ÿ‡}iMé@û–oH@GÌ,—ì@Gw;!oH@oSpµFî@Æ„¾â)oH@š˜µ‰kð@\\àš3oH@{÷üßð@Ê”]ù5oH@kºQ´gñ@ ;œÞ8oH@ÚÂûUPò@‘Õ=oH@Ÿø‚édô@ˆ÷4JoH@\r„Œõ@sþqüMoH@\Zt­û@\0Y«noH@‹…Æ²ü@š…±poH@˜V8#ý@âm•ºvoH@ð»³ùý@–)R|oH@Õ÷Ã‡sþ@pU~¼oH@ÓK·ï@a_\'ŸoH@ÊN³«@.Æ»ŸoH@`I½X!@1Ò(ÖžoH@ºœ7@0cÆyoH@NÐj@-²¨XšoH@…½n@RâÙ€oH@“É)·@Ç¿,xoH@+.46á@ë~±voH@¿¸QËö@ÉµuoH@¸S•@˜x¹º`oH@ÚÔ¡vÚ@"šT]oH@·ÀP…b@¨Ø–=oH@<­‡Òˆ@ÆXC¶;oH@u³\n£û@(ÝŒoH@èå¦X@›3E5oH@\0×àŒ@ú—ÅÿnH@}U™”@2çØþnH@Ñ0Z ©@Bk”TünH@JÂ%ÔÀ@•óc}ùnH@˜qn¦ö@‹…æònH@À³>=\n@Jƒ€ðnH@‡½¿R@ëÔëµçnH@f¤yK†@›uÙänH@âÌ4Ð@+5KÍànH@Ÿ3—4œ@ßoc¡ÕnH@øÇåe÷@L—ñÂnH@þ\ZÂ@@™œ¾nH@¹’ë"B@	UÕˆ¾nH@â–¤b@ûGÂ¼nH@Ô³OŠ‰@Çèj¢ºnH@™âÈñ@wcßð´nH@˜%Ëì¯@å,Ï’œnH@îó¤t@âMÙznH@E^ê¡/@ûšËynH@\'ó?@¦¾EVxnH@{íA_@ ­<ÁunH@£%}½w@¥†oÈsnH@æaÈ[z@•–­€snH@QÅ8p@0ï|õrnH@§ç¶ƒ@wXR€rnH@À­`µŽ@½\\SqnH@b:À£@^ÄànnH@Hx;Õ@rÒ´zhnH@ñI`@œªõb5nH@=Û¬L@g¹6nH@§ç 0^@q­OnH@G¤xæ”@ÎkŠ-\rnH@¯.RWÒ@ÔÅ*nH@è ½@i`÷ŽæmH@ÎûÂ@Æ@.:ÐåmH@â²²Ç@C—?·åmH@éoÓÐ@”ñÕåmH@œx­ÔÜ@ÑóŒlämH@\nc(|ø@ïÓæ5ãmH@ç/Þ@NÀ5­âmH@…‚(@ŒQâmH@šsÈ‚(@ù¾\\ÊámH@eñÇ+@þ·ámH@¡[Œ9N@\nÎíàmH@öD‡¬@~»þ*ßmH@€ƒ¤ª"#@pU¸ÖÉmH@Æ`È	a#@±5†¬ÈmH@äÓÐ¦Ç#@uÎ^ÅmH@¤­Î\'@¶Fæ&¤mH@ž(Û\'@Sžù¢mH@Ú»lvÁ(@*áëÈmH@¦XÇ)@ÔmÀ…mH@³æòä+@WY²]mH@±DÄ4.+@1]R[mH@ú†ká?+@Â”¾èYmH@zÖ~+@0~ðTmH@', 11, '8281.63528771'),
(16, 750000020, 20, '75120', '20Ã¨me Ardt', 'MÃ©nilmontant', 750001537, '5983446.03718297', '10704.94048630', '\0\0\0\0\0\0\0}h6¢5@`áQà…nH@', '\0\0\0\0\0\0\0\0\0\0&\0\0Qº1¾WM@‰¨4ŒpH@²ÆËÆ|M@‚jµpH@»vùÏƒM@•J8pH@ä–çM)N@È,0ãoH@¹0I1N@Ü$uáoH@ÑÆG±¶N@9)ÐAÅoH@‘¶>¸N@r2ÓíÄoH@²ø»¾N@4ÆQ³ÃoH@EªRq¾N@ÎÑÃoH@É©ñÝ¾N@S¥Ý†ÃoH@Ö›ÆÅN@	²ÂoH@Š¨%BO@P=„Ð°oH@8´BO@ûBóu¯oH@Vé:$O@üym¬oH@žõ6g3O@<8ÃG£oH@ø°=tIO@¡ký•oH@…Þ‚5^O@+ez‰oH@g²Ö\rxO@]wÊåyoH@:OˆX}O@2µvoH@Cžˆ…O@ÖÅqoH@Ÿà¿O@Ó‘µÑloH@«€á¢ÅO@‹ªø KoH@PÅ ƒÜO@ð•V=oH@ç:šåO@¾¼&8oH@ŽšzÕÐO@1ÍÀRoH@”ð`ûÏO@o%¥›\roH@õ#¼¬ÌO@(CNóoH@T\r‚ÊO@e)Æ•oH@èI ÖÆO@m4S2ûnH@Z·üÅO@ýÜ|ùnH@÷ÊÃO@TåW‘ónH@Ø›åÀO@8<=ïnH@§yq3¹O@Êœ3¿ßnH@m‚Ï´O@*Ç©èÖnH@Å#	y¨O@rU¾nH@Wî]ç§O@)ßÎì¼nH@Ê3%ŸO@G8JJ«nH@ôÁ"«–O@\ZH9šnH@Çr\0Q±O@ÿmÇŽnH@óá!Ú²O@öÓŒnH@ƒåÞËO@†*QnH@fÄÁYÎO@ê&ñÁnH@Y3£ÎO@[ËïžnH@Õ…\0ßO@Ä›ËwnH@®V3·P@ƒ@6`nH@…Ò¸O(P@nQWnH@Øª^å*Q@q‚‰ÒõmH@¥"Õ8Q@xÃ¨ñmH@>cU=Q@¸ƒ(ïmH@ÝÏ*aQ@;¯û4âmH@ñ\Z$æhQ@Š4”ißmH@¾ÄéAiQ@µMTHßmH@°G’,uQ@ù9¸ùÚmH@—øOvbR@U4…mH@àZ1O…R@cê‚·xmH@TWŠR@ëjcévmH@Ìf"‹R@»ÇŽ vmH@1Md³‹R@g%ölvmH@¨,}Õ[S@©£dÕ+mH@\'\\3ê[S@"iÎ+mH@ƒˆ‰–S@2øñmH@R%!vœS@”]"¶mH@Ó[MK¢S@Û¬§¨mH@hùÑ£S@›»&mH@K‡£F¦S@ÃIåAmH@‹$þùS@ÓS¸ôlH@Ð!T@nˆò’ðlH@®‰yT@¯\0?tðlH@‘¯ŸT@ÄZ™êlH@â˜•ŸT@Á‚¹lH@çÚ­T@f@–´lH@zö«¯T@&U×³lH@¸ßÃˆ°T@1ÿˆ‰³lH@2‹ÇÙT@ÿ…Î¥lH@$OõÜTT@z¶:¹{lH@mz¾:T@Ì8Å›slH@º2¯†4T@o¼>­qlH@€™BÏT@µÐ¨ilH@F>T@.À]glH@„&\'ÙT@•Ðá=blH@»(_ŒôS@YlÌ]lH@«V>éR@l5BG_lH@¥!3ü‚R@§*Ø_lH@sË—ˆQ@÷þáñalH@Ýv fàP@´W)blH@\'Í¬*P@CJØ*clH@Ô†L•ÀO@w*ÁclH@r½˜“ O@®Øã£dlH@ZÞûöO@ÄV´dlH@ÅuRK†N@eçºxelH@\'M¯„,K@–j_jlH@ñÒçJ@v›YtjlH@ú€9ÃJJ@+ÎLklH@óåÃJ@·¸Å¢klH@µwtÂíI@h¼êÍklH@¼¯V²I@Ã;Ã#llH@ŸvU«ûH@a\n*mlH@r¢þ×H@yœ#ÅmlH@G4êÇF@?žÂTplH@V\'è×ŽF@#Ü¬plH@—e5˜C@£ØÌtlH@»fC@Áz=ulH@åóe\'@@|²‹ôxlH@a0™›!@@eÑüxlH@¥XÍl@@f¿®ylH@PpwŽ;@±b	€lH@Ûóo\ZE:@\\æ‚lH@’#Êˆ2@ù%•lH@"ºrYü1@,ƒ£lH@)±1@T\rŽlH@£*žd1@«ÁGxŽlH@	ÄXÁq1@en¦’lH@l}´†1@wJ–—lH@¨/±1@x3Ó¦lH@•aÙ<£1@¡u©lH@Ùœ¢E1@3Þ­“ÅlH@6>²Ù²0@´²[•ÖlH@<1»V¨0@ýò‰ØlH@»õÓô¥0@çdûØlH@X¿ºŸ0@dßå#ÚlH@¹<¤š0@™DÂ7ÛlH@:àí¾—0@„¦[§ÛlH@å«0@;¡ÝlH@èwË0@9]õlH@æÛí=0@õû@Î÷lH@OÛ„\'\00@>—dølH@ždÖ¤þ/@"j­ølH@ì1Gsý/@ÞýbçølH@Óæ;ôÝ/@®VókûlH@€~løy.@0ààmH@§TXëh-@©=¦´-mH@lËðK-@ªÜ«0mH@yc\Z­5-@.™EÍ1mH@zÖ~+@0~ðTmH@ú†ká?+@Â”¾èYmH@±DÄ4.+@1]R[mH@³æòä+@WY²]mH@¦XÇ)@ÔmÀ…mH@Ú»lvÁ(@*áëÈmH@ž(Û\'@Sžù¢mH@¤­Î\'@¶Fæ&¤mH@äÓÐ¦Ç#@uÎ^ÅmH@Æ`È	a#@±5†¬ÈmH@€ƒ¤ª"#@pU¸ÖÉmH@öD‡¬@~»þ*ßmH@¡[Œ9N@\nÎíàmH@eñÇ+@þ·ámH@šsÈ‚(@ù¾\\ÊámH@…‚(@ŒQâmH@ç/Þ@NÀ5­âmH@\nc(|ø@ïÓæ5ãmH@œx­ÔÜ@ÑóŒlämH@éoÓÐ@”ñÕåmH@â²²Ç@C—?·åmH@ÎûÂ@Æ@.:ÐåmH@è ½@i`÷ŽæmH@¯.RWÒ@ÔÅ*nH@G¤xæ”@ÎkŠ-\rnH@§ç 0^@q­OnH@=Û¬L@g¹6nH@ñI`@œªõb5nH@Hx;Õ@rÒ´zhnH@b:À£@^ÄànnH@À­`µŽ@½\\SqnH@§ç¶ƒ@wXR€rnH@QÅ8p@0ï|õrnH@æaÈ[z@•–­€snH@£%}½w@¥†oÈsnH@{íA_@ ­<ÁunH@\'ó?@¦¾EVxnH@E^ê¡/@ûšËynH@îó¤t@âMÙznH@˜%Ëì¯@å,Ï’œnH@™âÈñ@wcßð´nH@Ô³OŠ‰@Çèj¢ºnH@â–¤b@ûGÂ¼nH@¹’ë"B@	UÕˆ¾nH@þ\ZÂ@@™œ¾nH@øÇåe÷@L—ñÂnH@Ÿ3—4œ@ßoc¡ÕnH@âÌ4Ð@+5KÍànH@f¤yK†@›uÙänH@‡½¿R@ëÔëµçnH@À³>=\n@Jƒ€ðnH@˜qn¦ö@‹…æònH@JÂ%ÔÀ@•óc}ùnH@Ñ0Z ©@Bk”TünH@}U™”@2çØþnH@\0×àŒ@ú—ÅÿnH@èå¦X@›3E5oH@u³\n£û@(ÝŒoH@<­‡Òˆ@ÆXC¶;oH@·ÀP…b@¨Ø–=oH@ÚÔ¡vÚ@"šT]oH@¸S•@˜x¹º`oH@¿¸QËö@ÉµuoH@+.46á@ë~±voH@“É)·@Ç¿,xoH@…½n@RâÙ€oH@NÐj@-²¨XšoH@ºœ7@0cÆyoH@`I½X!@1Ò(ÖžoH@ÊN³«@.Æ»ŸoH@L²5#@×ýÓÕ±oH@|»@%|g´oH@ß`µÓO	@Ñ\nkÐ¶oH@üÇ?ð	@npË=¹oH@äp|ž¨\n@Ä­@ý»oH@Lšï’r@±òÔÁ¾oH@)Ô`¶@]ƒÉxÇoH@ÜâªÑ@ãN›ÉoH@ÂÛ÷7€@§qËoH@#7µ—@¶†YOÎoH@_ôRŽX@ˆìíÓoH@Ýs^3R@ÄS×oH@‘{Jf@ªH‚×oH@©Ë$4ž@ã×â°ØoH@±sÐÈê@}ëxžÚoH@‡-‚Êæ@[ù)¨âoH@I`x—$@I^¸ìoH@1°½ì@(9iÉòoH@Â_PA@†ùK‡óoH@Íç©8n@þÚpôoH@F\\\rv“@á˜”QôoH@™ëØ¡z@KF†7õoH@HÕÃI@‘ôÊ§öoH@ã¿@cCùoH@P²~²Ÿ@Ã±UçþoH@¬Î5½¶@ß•9øpH@	¹BC@Laû\npH@äŠ­žˆ@¢›pH@ª4…³W"@l*?6pH@Èn!ûW"@\'î5pH@••7K¾"@™žRÁpH@IíHVÀ"@¥Ìÿ¾pH@-Â\'Tø$@+"Ö:pH@ý¹2êó%@_<¶qpH@’ýVÌ¢)@\ná­OpH@ãKÂû«-@L@pH@ŸêÞú.@¡ðàpH@FºÂv1@>v9½pH@­Ù£11@ÜbópH@|lx=Ò1@Î³iŸpH@›„3Ùb8@Å°ÁÕ pH@±OKu8@xöLþ pH@ëm€#n?@=Ø³×ApH@Wi‘´o@@~\0>FpH@«¬à@@"©½SGpH@˜ðûrhA@Ì\\(ÖHpH@}±\ZÑvA@V(IpH@}zSXòA@>Œ‚íKpH@8Í5ú¾C@æå@VpH@ÐìAXD@”ËÇþXpH@qAFfD@À-@YpH@¨Êòc„D@K„JÊYpH@±Á¾àD@}ùþYpH@±¼¼™D@wH2,ZpH@€öÑ@sE@sµò^pH@EãÊ_\rF@%˜Ô`pH@ØP¦³F@¯%$apH@I‘GêUF@W§F!bpH@Ð\ZH˜iF@‡’†{bpH@";qÁ†F@ÛÀDcpH@+^š®G@þÕÝbepH@5î(ƒNG@A<Z•fpH@î‰‡]^I@Ñº\nppH@2²‘áeI@‚Û-ppH@.R\rqI@»¶ÐQopH@	´\r°I@Šï¸xjpH@;öm`ÒI@„‰½ÔgpH@?Sêé	J@þdÉŽcpH@½)^$J@C³…apH@íLTƒ”J@ïU°äXpH@[RæJ@¡ÇažRpH@á}¸^K@9„KIPpH@¼°­2K@_Ã—PpH@Î­ ®K@¡#~NpH@Gg«æK@Ž²>NpH@h>{7TK@%#r$JpH@ñ*z@gK@´Åy­HpH@ÕÎ¡FL@©m/}7pH@*ZCSL@$®ˆ6pH@;ÝŠXL@žla6pH@þÉ£_žL@”@Ã¼0pH@ÀX×R¢L@Õön0pH@„žûú¦L@[ˆ60pH@(u:²L@•½G8/pH@û¨þµÆL@uƒ\'¢-pH@¸jhCËL@°yH-pH@¨ÿ#AÏL@;¼1p,pH@¸e¸žìL@ÿý8&pH@§Ø_ô5M@¬¡#³pH@mí	ÔJM@[ŠHpH@Qº1¾WM@‰¨4ŒpH@', 20, '10704.48377412'),
(17, 750000002, 2, '75102', '2Ã¨me Ardt', 'Bourse', 750001537, '991153.74474596', '4554.10435957', '\0\0\0\0\0\0\0BÿB¾@‡7Æ#oH@', '\0\0\0\0\0\0\0\0\0\0%\0\0\0\rr:ìèÏ@MN9¥nH@QÎ‹g¾Î@ØJá„nH@A4xþÅ@3.¬¥nH@Òp©ÇýÅ@¶X­¥nH@$¨ÄÂ@=B[²nH@à‹»Mìº@*ÐnH@ŽÂ|ùêº@«ó:/ÐnH@œ€5nÉº@ØQ^°ÐnH@ƒÈ„¬»º@~ LâÐnH@‚ÕŠº@ñßžÑnH@­×-ð²@Ñ[[înH@Þ¯ÜrÜ¯@[³‘½ùnH@	RWÜ¯@ÎKÖ¾ùnH@ª»ƒ÷]«@~Õ´Ä\noH@«cÚ÷_§@ÅÙ·$oH@­^JÄ_§@¦ƒp%oH@r|”[/¥@–Jßë oH@Ùeœãw¤@ÌB²K&oH@¶¶¡ÿÄ£@¬[èx+oH@´xNÂŸ@\n•=tYoH@í@Uƒ£@…ÎÂcoH@&rÊ\Z¨@^¾\\]poH@{¦ W¬@E“ò{oH@5úó1²@gunô‹oH@&uU’_²@wy¹zŒoH@‘ŒÕFÇ·@1c¶T›oH@!»±}¸@F…Ô>œoH@ˆì9i¸@NVoH@÷÷åìš¾@_î‰òŒoH@‚!uuÈ@y+É;soH@Ÿ=ÒyÄÎ@a˜\ZÈ]oH@ÕÙÀ50Ò@Óí:&RoH@é59’†Õ@õ¥5FoH@2}‡ËäÒ@ŠVèúnH@¬ŽžxûÑ@<#Ê´ànH@¹öhô×Ð@cu,ÀnH@\rr:ìèÏ@MN9¥nH@', 2, '4553.93876373'),
(18, 750000006, 6, '75106', '6Ã¨me Ardt', 'Luxembourg', 750001537, '2153095.58639283', '6483.68678565', '\0\0\0\0\0\0\0¶–mÆ©@\'¸M°lH@', '\0\0\0\0\0\0\0\0\0\0W\0\0\0¨MBÎ¹Á@®f2|QmH@?\Z¾Á@ßªGmH@4*®(À@<Ð…‰\'mH@v:)\'Ï¾@/:ÍLúlH@`¥8åÍ½@RF…ØlH@üC*À½@‰NÂÚÖlH@5ôÒU»@7Ü«]—lH@tö9¿6º@è¥YzlH@‡õ¡M	º@Ç¶ÍulH@\0uÒ	º@ðS£ÇulH@>˜\nW¹@#1SalH@ž[®ð×¸@/ikéRlH@(ðå¸×¸@*ÍãRlH@!$÷7¶@s#ÄlH@F¶‹µ•´@s;×kH@½ï7D¾³@ëü_¾kH@-ù(¾³@¥ñ)X¾kH@‰\'/Ì²@5Ø3v£kH@œax£º²@Ú{’þ¡kH@J—\'n¨²@Q’”Ñ kH@<ý©C’²@?{õ¬ŸkH@û¬C²@NJðÛžkH@†·°ãi²@IžkH@ËÚ}ŽP²@ëüRkH@*†pÙ4²@j€¼œkH@HnÝŽ²@5ÐOœkH@üÏ“M²@‰a÷7œkH@¢/³yù±@ä®IœkH@T¼ð™Ú±@¬ÈíœkH@\rA\n®¾±@EÁš%œkH@Ÿt&º±@À]P9—kH@ôk­´±@ÕŒH«kH@¤én­±@b_¢f‰kH@Nïöž±@xÊÄykH@q=¾¢«@Íà9™kH@K±Ü¦@_\\©¶kH@ý:ºWÃ¤@÷€‡s½kH@Á†èÒz£@T„î<ÄkH@™åí@»èõákH@Šüqmœ@Ó…aiékH@\rc"Œ™@ˆtÄ•ûkH@œ?T—@Za•‘lH@"ÝlÛÄ•@â@	ÌlH@v²’@÷I lH@‘V¸ËÆ@¥Ti­,lH@\Z@4\Z @Ý«+Ž9lH@Gpõ¦Vˆ@D¯¿dlH@Xvš6Z‹@-ô\\“ulH@·„1Ry@_\\€‚lH@òÞ\nŽ@ãr´/†lH@Õ¯£ˆ@{¦ž*‘lH@—)®J¹@_žÇ×’lH@•L§áw@KP™lH@¥©Ó»º“@qê7´lH@qXÜ™K•@…ÒÖÀlH@Qœ7@–@u†=ÇlH@YÖ—@á÷eXÔlH@š8>)š@VÌÒ ãlH@*~ÉÄôœ@(F#ölH@¯#_Çk@¯dRóúlH@Fàož@\rmH@8®é™ @¼¦I˜mH@¥)½<m¢@ÒYZt"mH@üµl*‘¢@\r…o&mH@1=ùä¹¤@Êåñ‰]mH@9‰Ç¤@Ÿô^mH@!…SF¥@(fÜsomH@ßÔz\n¥@J¹\'wmH@VKµ/¦@îŠ‹…mH@ð&Ÿ\ZD§@ÁçŠ´›mH@}|Üx©@EJ×ÆmH@¹bÜJ{ª@C›Á¯ÚmH@17~ª@b±9éÚmH@«›Ò[‡ª@öœÛmH@‡t£WÙ¨@µZT›ãmH@WïSÅÌ©@3$û*ÿmH@-9-`±@û†æmH@–FÑ·K³@æ‘­ßmH@mÇœ¹@#Î“»¬mH@ñ!F\Z¹@Ì˜øp¬mH@² ŸiL¹@.ÁµªmH@¶¿8dº@eÓsÚ£mH@LvõI¼@Ú8ü#…mH@\095PÐ½@¼LpmH@<BmS¾@ùQÖ@mmH@1„,¾@"Y£#lmH@¨MBÎ¹Á@®f2|QmH@', 6, '6483.32455954'),
(19, 750000016, 16, '75116', '16Ã¨me Ardt', 'Passy', 750001537, '16372542.12897390', '17416.10965650', '\0\0\0\0\0\0\0º$„@ý6T!nH@', '\0\0\0\0\0\0\0\0\0\0ã\0\0@Â†³1@B¾öFnpH@<KÐúL8@<î apH@FÌl¿8@!ãBcpH@&°/9@9ŸWXepH@î‹õ‚9@4¥,éfpH@`üaX:@t\na©ipH@íjÂ˜:@±^~lpH@¨\0ŠSÃ;@>1\0«qpH@$–_<@GŽ“•tpH@Ê‡™a<@¤V3ŸtpH@þ,ž<Œ<@^JçjupH@^þnwå<@&¢7wpH@œDSáå<@š>0wpH@’%ý<@Ê¶HˆwpH@sÀSX=@¯©Ú»wpH@P„/"@@J\0“}gpH@]¸¼ÆMD@Ã$¤QpH@\'ÁêfD@§¼è!QpH@G¤¼/E@z‹MpH@×³XW8E@ƒøåLpH@\Z%ÜEYE@\'ñ??LpH@,¶T?}E@Iû‰KpH@¿Ç2ŒE@Eù\Z>KpH@6Ð±,ÈE@I¸=JpH@\\bŒ8F@ùëÛGpH@(«èÓ,L@ÿÔÑ)pH@¦ôÃ2ÓM@\rk‚V!pH@v0BGP@ó•­¹pH@i˜…ÛQ@”²¸pH@?å×$ëR@•Ž7WpH@PÝ;¾X@û‹<íoH@YZ_A(Z@íô‰âoH@’³i¦;[@¨MûÝoH@?4\\@ÓÍ®ÙoH@˜©ô¸=\\@ðF¼ú×oH@ôW]E\\@’‹Bg×oH@¬¥ôÖE\\@Ñnÿa×oH@ìËºF\\@tV¼\\×oH@lRfF\\@³9yW×oH@œ©®F\\@û24R×oH@·Œ¯õF\\@•óL×oH@áÙF=G\\@Ñç¯G×oH@á’Þ„G\\@¨ÜjB×oH@IÓÌG\\@¹È\'=×oH@ÝjH\\@ò«ä7×oH@t1\\H\\@˜“¡2×oH@ýâÇ£H\\@0e`-×oH@\ZŽëH\\@×L(×oH@Êçö2I\\@C=Ø"×oH@­½zI\\@â$•×oH@ÃíSÂI\\@~öS×oH@^§\nJ\\@Ì×oH@1áQJ\\@ÿèÉ\r×oH@	«H™J\\@¤Š×oH@xÎáJ\\@-ŒG×oH@ñ\Z¦(K\\@eoþÖoH@tÑ=pK\\@;d¿øÖoH@JÌ2¸K\\@?P|óÖoH@]­ÉÿK\\@Õ!;îÖoH@|ø`GL\\@\røèÖoH@<\'L\\@ªì´ãÖoH@Ò¾ÖL\\@záoÞÖoH@Ž‰„M\\@~·.ÙÖoH@aýìeM\\@C–ëÓÖoH@ÆÝƒ­M\\@ÖgªÎÖoH@ÖJõM\\@´rcÉÖoH@%ø=N\\@KZ ÄÖoH@¯Ö„N\\@I0ß¾ÖoH@úmÌN\\@}œ¹ÖoH@àÙO\\@åZ´ÖoH@šÑË[O\\@äï¯ÖoH@P°b£O\\@tÁÒ©ÖoH@ÝúùêO\\@¦¤¤ÖoH@&À2P\\@<ŒLŸÖoH@^¨†zP\\@u…šÖoH@’òÂP\\@¥hÄ”ÖoH@«<µ	Q\\@ÏKÖoH@oòzQQ\\@Î!@ŠÖoH@j;™Q\\@ùý„ÖoH@öÇØàQ\\@/þ·ÖoH@©¥o(R\\@¼ÏvzÖoH@ìÆ5pR\\@U·3uÖoH@rÍ·R\\@}šðoÖoH@¥š“ÿR\\@±“«jÖoH@Öã*GS\\@ÞvheÖoH@,ÂŽS\\@Z%`ÖoH@ñ	YÖS\\@’+äZÖoH@ )T\\@&¡UÖoH@JåeT\\@·ú]PÖoH@Ö‘|­T\\@äÝ\ZKÖoH@=CõT\\@×ÕEÖoH@•ùÙ<U\\@¨”@ÖoH@¬q„U\\@eO;ÖoH@5ôÌU\\@Œ€6ÖoH@ÏV\\@\ZhÉ0ÖoH@\0ðe[V\\@£9ˆ+ÖoH@fæZ£V\\@Ÿ%E&ÖoH@I˜òêV\\@d\Z\0!ÖoH@Øt‰2W\\@éë¾ÖoH@s» zW\\@Ï{ÖoH@žEçÁW\\@9È6ÖoH@ü‹~	X\\@`«óÖoH@%ÓQX\\@‚Ž°ÖoH@´]\n™X\\@ÝhoÖoH@çÌràX\\@˜G,üÕoH@ê8(Y\\@%/éöÕoH@ÿoY\\@°¦ñÕoH@±N–·Y\\@ÓùbìÕoH@F”-ÿY\\@óÜçÕoH@öm–FZ\\@IÍÚáÕoH@‹\\ŽZ\\@×´—ÜÕoH@Ý="ÖZ\\@ÄŠV×ÕoH@¼Zè[\\@KrÒÕoH@¾Ÿe[\\@jUÐÌÕoH@‹å­[\\@†8ÇÕoH@I–®ô[\\@F-HÂÕoH@¥Gt<\\\\@-½ÕoH@C÷„\\\\@ì÷Á·ÕoH@-ë\0Ì\\\\@ßã~²ÕoH@i0˜]\\@úÆ;­ÕoH@•	/[]\\@}˜ú§ÕoH@¤¹Æ¢]\\@7µ¢ÕoH@_ÕŒê]\\@¼trÕoH@Ô†R2^\\@¤J1˜ÕoH@î]»y^\\@ó:ì’ÕoH@ÿå¯Á^\\@D«ÕoH@o*G	_\\@`øgˆÕoH@À†Q_\\@ÀƒÕoH@ì_¥˜_\\@<æÝ}ÕoH@8<à_\\@¸·œxÕoH@¿è(`\\@š[sÕoH@¿jo`\\@ç}nÕoH@Ú0·`\\@geÓhÕoH@õöþ`\\@íLcÕoH@ ÌFa\\@dO^ÕoH@ÔRTŽa\\@ƒ\nYÕoH@>•ëÕa\\@úÆSÕoH@,°±b\\@\ZâƒNÕoH@\\òHeb\\@5Å@IÕoH@IÊß¬b\\@©–ÿCÕoH@O¦ôb\\@Çº>ÕoH@¸&=<c\\@?ay9ÕoH@÷‚2„c\\@Ç^44ÕoH@‹YÉËc\\@90ó.ÕoH@ó›`d\\@K°)ÕoH@ZÝ÷Zd\\@`öl$ÕoH@V‡ÿd\\@äåZÕoH@í7‘Äe\\@i/\nÕoH@¡±n\rf\\@çÚóÕoH@¨|îUf\\@¸ÿÔoH@£ûžf\\@±pyúÔoH@‰²ò•n\\@(ÉâgÔoH@•q—Ë\\@·Zˆ¿ÍoH@71´9Ì\\@ŠÏí³ÍoH@ÿG>zÝ\\@¬L>xÌoH@%¢æh^@í[­oH@"ÔüDa@=00Ù{oH@ 6¥Ea@ûTÈ{oH@S¨J2Ua@è_7{zoH@¼µèÍb@§êÜaRoH@LÈféb@¬”qrOoH@³¯ƒ,d@¸Ùä,oH@Ù±@{Ûd@Qfa¿oH@Ã%4F\re@i;üuþnH@¸8Z1f@qkÃnH@‰˜èÔ7f@ÙZó¦ÂnH@Å®râRf@ÈÝ%ÁnH@¤¾ëšÎf@!þù?ºnH@ŸÝÆµi@¹Rr¿¨nH@ÞB\\¨i@áñæS†nH@Z†„°h@¢ÑÑ“…nH@Ý((j—h@a,œ}…nH@©‰ë;ag@Và¶l„nH@v»‚f@ŸÅgEƒnH@W¿3¨÷e@º@‚nH@ì<ôsöe@tàâ>‚nH@4Ð¸*ôe@Ú:š9‚nH@³ÜÆÖd@\\êT¤nH@¨}R¤Ód@–ÅÃžnH@yÍ´Ñd@m2V˜nH@ÍB!˜?d@")ã}nH@/y ­c@U“ëå{nH@k¤Á®zc@_’N%{nH@9P—$b@Lú?vnH@ÊÄT^a@Íü-ñrnH@qhÇç%a@00dîqnH@«Š?#a@s÷ÚâqnH@ìŸé¹À`@´_ýonH@Z^`@Ÿ¦]nnH@¨¥Tï_@{v¨ÐknH@è—€øÏ_@ÒÇ7(knH@.Äih½_@ë`ÌÉjnH@öc{˜|_@‰öUinH@†A@f`_@ªrìähnH@÷Ì;„F_@Lô^hnH@1®_0þ^@aÓÅfnH@<Yxõ^@´’fnH@~êýª^@&Ò?ÎdnH@ƒ­§…^@È»BØcnH@×øõè<^@P®þbnH@Fèçù]@aåAQ`nH@E¾àM]@×“½Ž[nH@æRö]@ép‹YnH@5X\\@TÁÇTnH@ÎËrw[@ ®64NnH@~öqàÄZ@\nsY’HnH@Ç…ÝNƒZ@\nSFnH@U8AñY@F^ÿ@nH@–²uËQY@Þÿ›39nH@›<EiW@ær§Í"nH@Â"7ìU@´YƒnH@´8ÀU@«‘ŸQ\rnH@ec8U@iKn»nH@W!ÿ¹U@ûðÕ´nH@à=Î£{T@ÆFÿmH@ˆD|!—Q@y«ÖÚmH@ÞyV#P@w{ðÇmH@ÿÿeýO@ê/¤ÅmH@iÎ“0ãO@[S5àÃmH@?õî¿O@B•ý2ÁmH@(úU°O@F‰!×¿mH@pÙ™O@PZ~Ñ½mH@\r”z’O@EG9½mH@¸žPO@áðˆ·mH@`ÜUþO@ç,°mH@—iýÍN@ÏrXªmH@{®îß‚N@¾¤VÕ¢mH@¤Ëö‹\nN@ß_ša•mH@°nì¿ÆM@Š;u1’mH@:‡Î¥¥M@ŸSû¢mH@øÑF·M@³7	šŠmH@jAxþL@vêE‰mH@.¯òðL@ÔÜ­ˆmH@Z÷xtàL@é&ñ‡mH@¿œ>ÒL@¹\Z‡P‡mH@ÖvfÑL@ós\0G‡mH@_VÞ«L@·ŽMŸ…mH@TëL@0Ò…mH@xÚ#µI@böÏ)dmH@{q*VI@^qA`bmH@`ºÔíŒI@ìÔ[bmH@¶Vi:I@È[ú§^mH@ÑëëMG@¾Ú¯HmH@Ö„œÄ]F@ü7*²=mH@ì@µ»E@x¶¹t.mH@É–Ü“C@Fw/omH@`ãqÂAC@÷FÜ\ZmH@¸é+(C@R†H»mH@á…œöC@b-mH@®YyC@åE3«mH@†O^ñB@J‰rLmH@ÎPUB@Ñ@ŠmmH@\rµµ!??@‡¬¸ílH@¥PL¦=@CƒÃÛlH@A­QŽ[=@\r{ØlH@Ãˆzy=@/-"ÕlH@VÏìÌ<@\rŸyòÑlH@µ¬£…<@sÄ…®ÎlH@Ÿèm§¶;@ì>3ÅlH@²²õ^Q9@X7ÚÊ¦lH@E3¼$F7@	ÏØŒlH@üÿÚ©4@µÁ+ilH@‡uË¨ÿ3@êÍÙ2^lH@š2­jœ3@æ¿ÍWlH@àãhtt1@KôÛ84lH@]"§0@i÷NlH@ƒ‚Fdæ/@½n›\ZlH@àÙ/@3œ4ÆlH@?ŒÏZH/@Æd\' lH@…½x;-@Q½ôkH@¨ªXß+,@`Ç©ÞkH@ÒÌ¯é*@â‚$ÉkH@°2Óã€(@nxè·¡kH@9Vî˜#(@~7Dq›kH@ó×Kd\'@NÄª‘ŽkH@FE“(¸%@‚kèÇqkH@ÈáRä|%@wäÆmkH@JŸÚv$@X6w”TkH@°Ø%@pPkH@R7áH@`>ÖjH@\rZ˜Š\Z@ã$½jH@!þÒˆ\Z@ŽAÎ ½jH@«½"-\Z@ä¸ÊË½jH@Iâ«su@]\\öÜÂjH@”û’¸U@ÔL!ÃjH@Œg°=@ÓeðDÃjH@k‡W§Ý@vþ÷ÃjH@«LZ]L@è‡½ðÓjH@½ÄkK@¨¤€òÓjH@ QåèË\r@4i)àÔjH@\nÿ#4Ö@s2ªÖjH@Õ\ZôvÒ@ÐI±ÖjH@BÃô¿\n@ðX]ëÚjH@Nv—”˜@çÎŽ’ÿjH@b<z…r@ÝÝkH@Y$­]r@*4ÉkH@fêJ™o@´“JkH@9PíR@6_ckH@“2°)@ÒÒx+-kH@@ù>Ä¹@´HkH@ÝkcÛ`@ÞäZ@akH@çéÖP@Ì kkH@AÎÒ—@ƒÐDU×kH@•<ÊÔ@´NäkH@j"\'ˆ@`$nlH@2À{@å xn$lH@P•øê}@ëlµ$lH@Ô­«@¢©•º5lH@ µ1@Äùb–;lH@f	eå3@/y°Ý;lH@o i^4@7ïí;lH@--Á½b@«„~=lH@û˜Ø×Z@Ò[Î=lH@ˆ7+\Z@@mšŠ>lH@æÿ. Þ\0@y€?lH@¨\Z›>¼\0@qX@lH@¸à%ü@†šgæRlH@¼ž½Çwû@•÷±UlH@Û™ãÖ,û@¬fûåVlH@vE¿Ïø@dcâœ`lH@½ã©Jø@ú^oÂblH@•‚d}ô@È\' _rlH@® “ ñ@™†#~lH@s¿éüð@ê3Ã€lH@˜Ã†Ò‘ð@Þ`•{‚lH@áËŠ©ð@æÖå‹‚lH@ûR$}ð@Ñ)_žƒlH@füòƒ0ð@rŒÉÓ‡lH@“çK µï@%®“ŽlH@½iUhï@ÂŒpÒ’lH@!\ZQKï@²ˆ’ÿ–lH@=Þ,Øï@Jd@Z—lH@øzºŠ™î@C©ñžlH@žU\Z»Œî@Í·¼žlH@	·Ë8{î@_Uô­ŸlH@€k•!\\î@‚±“Z¡lH@þho8ì@±åÙ¾lH@xöÊõ ì@“bÖÀlH@ÚTq4\rì@–a¥ÁlH@ßj‘ùë@àwÄÂlH@ÅKµˆêë@Ñ¯ñÇÂlH@®a1näë@ŸT&ÃlH@“´ŸlÏë@ö ®ÄlH@¹M<(Éë@ð™æNÄlH@3gÇë¹ë@F¾“ùÄlH@×9“¬ë@ ÌSˆÅlH@§$´þžë@\ršÆlH@;S/‘ë@cYžÆlH@4‹1&ƒë@WN‰%ÇlH@§ÍÈätë@*SªÇlH@ÙˆJkfë@*”	,ÈlH@üKŒ»Wë@˜uH«ÈlH@fÁ4ë@?[ÔÉlH@9e³ÿë@@È”ƒÊlH@xÃ\'¥ë@*Íµ.ËlH@)­Rñê@Vð²ÕËlH@l‚Úê@­ß|xÌlH@ˆÔâïÂê@¶=ÍlH@9³KL±ê@Ÿï‰ÍlH@(6~¥ê@ã¬ÓÍlH@ŒS\'‘™ê@™p\ZÎlH@ORÏ†ê@<æ^ÎlH@øÃæ_ê@8u¡ÎlH@Ûzûuê@>©ÅáÎlH@s§´¿hê@RÿÏÏlH@*BH\\ê@¸b[ÏlH@õ¶x¸Oê@:&•ÏlH@ æˆCê@bƒ"ÌÏlH@<;»Q6ê@¶¾ê\0ÐlH@\ZÓX})ê@S.V3ÐlH@ú™î“ê@òbcÐlH@’¹é«é@óI$ÒlH@ã•¯îzé@W8*ŸÒlH@tòÉ§ç@ÙÕ†ÙlH@Á=Ò¤ç@:*ÙlH@gìð…ç@8A‹ÙlH@¨Þˆ¾Fç@;DÇjÚlH@¿:kç@ùµŸ<ÛlH@À·|ç@EZ%UÛlH@haåU\0ç@¼§ÓcÛlH@ß§]%¼æ@¢!UÜlH@]Ã°×sæ@œé¾TÝlH@ás	Sæ@>’ÊÈÝlH@„Þ,]Ò@ßok$mH@ÏÑçÿÐ@;à8,mH@c¼tƒ\rÐ@Yò(,mH@Þt	Ð@ó¥+7,mH@Øqê¢ôÏ@­¬€,mH@swŒVîÏ@ãY$–,mH@0Â„!Ï@o±‡c/mH@\0/ØòÍ@:Ö ‡3mH@z«ÁîË@Ü]{€=mH@°g‰ÃË@èÇ¤=mH@eO¤éÊ@BHˆNmH@‚…\nµ\nË@ác,]rmH@C\0Ë¬mË@94à£mH@%D^BÌ@6;9›­mH@Î óÚÂÌ@ýB1ÍmH@Kþ¿ñ¥Í@ 8ÝïmH@\r%×œÎ@\r ¨:nH@Vh<VÎ@œ_ø\nnH@´´Ýó±Ï@]·tû3nH@¬ßzƒ"Ð@E:A¢?nH@£@¯áŒÐ@Kè¤JnH@X°|Ñ@œÀ¥ŠhnH@ê½vtÓ@¨B‚½nH@Åq}GÔ@U\0IÑnH@ ÅõiIÔ@%XkuÑnH@Ì!Æ0Ö@ÕÞØÎônH@=Ã·ÄÉÖ@˜çÿnH@š›­èÖ@ÕBƒ%oH@ï.MØ@`†êV\ZoH@þmÈòüÚ@"šæFoH@íÜ~ãcÛ@Gqø‘MoH@|ôÐ17Ü@§ÍIQoH@”nº0qâ@{Š‡UmoH@¼ðâ@šo‘ooH@ÎJo*ã@ï%–poH@B.H¼+æ@Œî´}}oH@rç.Rè@:Ñ˜©„oH@duw¦Eè@ž’ž…oH@#8ÎJê@ç²ooH@„hx{wê@Þ5ŽoH@öf¢ê@X\rç¶ŽoH@µ¬…Ãê@ŸD™YoH@.‘ý!éê@XÂ>oH@òPuë@{‰Í³oH@Úz}3ë@ºñ3k‘oH@G/<5Xë@K!d)’oH@EÂ¯›|ë@AVPî’oH@òááóë@\nžšµ“oH@Ðëþn±ë@KÞ|0”oH@;å~µÄë@ß"ï®”oH@­ñ_Å×ë@xlë0•oH@…»êë@èd¶•oH@Smì<ýë@	VQ?–oH@Òr"¡ì@7L§Ë–oH@§œuÉ!ì@›SZ[—oH@ ~öSì@}5žÿ˜oH@±‡.³nì@¸,ë™oH@æûÓ\n‰ì@ƒÝœÛšoH@éµû¢ì@ÌØàÐ›oH@¹¼ƒ¼ì@÷±àÊœoH@ƒ*Ô Õì@]ÊŠÉoH@Ûæ8i2í@è1½¡oH@YÀ¦4cí@r£oH@tˆV“í@ÜÐZ§¥oH@\'žØ%Âí@‹ZÇ§oH@ƒ|/Dðí@Ý›ïï©oH@(zëvî@?í ¬oH@¡R¼ï@¿Æ\0ÁoH@«ÊÂúò@1ãŸ‘ÞoH@Wÿcò@4þdßoH@4%[Jbò@CÏÌãoH@×s7\n÷@zÑ1i,pH@ô )šÿ@éìopH@¥¾\nÙ@tÚWûèoH@>œ‹Ý	@–•çáoH@¤m5á	@ÛÅÙáoH@/mŒ[\n@“Z­:äoH@rè [\n@Á5S=äoH@f;Y®\\\n@ð—BäoH@ÁCãª\n@ì_³ÉåoH@\'z£S@”ÞçoH@Iœë"ª\r@Å\rD8pH@­2áU·\r@•¨\'ß9pH@H˜ Y8@qã¶þ¦pH@çÖh9@&T¶§pH@{#s:@T¦&§pH@Ò@\ZN@Ý‡Ož§pH@K„}¸@Có¸o¬pH@ÿìgQ)@Â\r_Û¬pH@D¿.õ1@cÊ8­pH@iž\ZÕ¦@öÒÕ1¢pH@½TNý	%@o…‡pH@Xb,ùÅ)@¨ÆO~pH@—Ñ6ŸÖ)@óRô}pH@´5¹^Ø)@VŸð}pH@_H fþ)@—C¤}pH@íé9ºØ*@Úð„ï{pH@[J¯?ø*@Ûˆm°{pH@lŸæù*@6!$­{pH@@Â†³1@B¾öFnpH@', 16, '17415.32672605'),
(20, 750000018, 18, '75118', '18Ã¨me Ardt', 'Buttes-Montmartre', 750001537, '5996051.30811905', '9916.46417634', '\0\0\0\0\0\0\0&êaÉ@Â¼³µ?rH@', '\0\0\0\0\0\0\0\0\0\0å\0\0\0£¦#r*í@ê0ôƒYqH@¥xoàê@„;3qH@ÄzÌR–ê@£<Ú<3qH@ôf[-ê@ÞµK‘3qH@\rÂ ælé@–»™Ç3qH@þr9¿è@\ZÂ‘î3qH@»"u!™æ@´@\Z4qH@>vÐTmä@£À«Y4qH@‘rûÊ,ä@}¼a4qH@Û\rgÉà@ñÐ¼Ã4qH@<šsPbà@p×iÏ4qH@~xLà@ØÑ4qH@À×~öß@¥œÛ4qH@¾ôïlíß@ÒÄ¤Ü4qH@Çï2Øß@Ý\rß4qH@Ç©åuß@Õ¦¹4qH@õÊëbsß@n?Š·4qH@ë’)ˆß@ºn4qH@ÿ—¹>¼Û@Y7{0qH@¯ „"Ú@cF¯›.qH@Ä°@óØ@§.»8-qH@pÖ÷,xØ@u|¨¨,qH@\r2ÕcØ@åÚ,qH@§<] Ø@1ù+,qH@zÐ½×@P¢Ãâ+qH@ö{B=Õ@‘C)qH@®Á—8…Ï@yÎi"qH@àf¥‰?Ï@—X"qH@#]¤ÉÎ@–øˆ!qH@a¦\n¬^Î@l<·!qH@Îªe€)Î@a½zÇ qH@ëšÍ@Ž*¦ qH@% BhÍ@ïäzÜqH@(h\ZÍ@m[U~qH@l´6oÌ@.¬š°qH@™Í‚†Ì@1êØOqH@\raÉË@™ÝéqH@³÷¥%qË@ÄSAqH@S|Z8`Ê@ŠNB8qH@|”Å\'&Ç@ÂiÎqH@¿Š)\\îÆ@Î¾Q¥qH@\n:‹Z¨Æ@Ç·qH@üŒÁìÆ@˜EíqH@”÷,2Æ@KêÎqH@0\'öÅ@ÆùqH@8û¥óÅ@ú?(qH@Ìå¥ìåÅ@"R\\áqH@úvóÁ@¨ÓÌ^qH@p¶EmÁ@ÿ®ïqH@Ïª¨hÁ@ƒ¸~ÞqH@}¼PÀ@×É1U\0qH@lWÛ—d¼@ª’ÚôpH@±ï`10¼@éV÷lópH@ÍaZæ‹»@è!kñpH@[?uyñ·@JŒ&æpH@…í£ÃÜ·@Ó8pVæpH@è†Z\'©·@\0\ZÏæpH@4ei·@`|¨1çpH@=n;y·@o~?çpH@A;9oK·@z¦c§çpH@Ó$MS´@¹iîpH@ÿ$ ²þ³@Ÿ£)ïpH@Ïý‡Ý³@ÐD6vïpH@¦YdÌ²@mòTòpH@"|)ïË²@nó\0WòpH@Œ4p•²@B­KópH@{rn{²@ÓRmÀópH@ÈBI"G²@dó8«ôpH@`ÎÿÛ²@zž‰›õpH@È„÷ü®@³øyüqH@áœˆ¢Ù­@¸+CÕ	qH@5~)Ëª©@½[ÓqH@QÃRaW©@°ÍbqH@[³\r‚*©@ƒ\Z\ZL qH@ivÁïõ¨@3âj^!qH@"DMcç¨@†\\Ï¨!qH@\0`0D×¨@sn=û!qH@I\ZÓÅ/¨@#}3p$qH@vÐ®øù¤@VÚ~0qH@_íÎ¤@¬é"1qH@/ÝZô=£@}ù97qH@¿•\\í²¢@&:9qH@üu S¢@u’Ä-5qH@†O™5¢@¡:þõ3qH@:`&¢@èÞÉf2qH@>8å·Î @bÐg%qH@Aiw @“’iß!qH@^" @¹n¼YqH@Þ5ŠØhŸ@Ãoø\ZqH@ÝŠ«m3Ÿ@«4=_qH@ä5~/×ž@’Úg%qH@wÓI>“ž@nB>qH@1d\\e~ž@}…\r\ZqH@lIn»@@Z†ZÕDqH@\nÛèJaœ@]ð]êbqH@LºÏš@û§*„™qH@  ÔÜš@zöšFœqH@¼Í§µýš@XÁ×¢qH@\n·bü$›@c„ì¯ªqH@Ú’Véx›@Ñåýr»qH@R|9œ@Ì÷™ÞqH@piåèœ@;˜~žþqH@¡B»Ÿo@v69ÈrH@ÝÅaGž@Ê\ZÓ@rH@â‹¥šž@0 £ OrH@ÊG’W @’L°¡rH@5€´­¾¡@Ì&í¸ärH@\0û­ÀÂ¡@ËøT{årH@5ÓßÞÏ¡@ÁEÎÕçrH@ªïXéç¡@NÓö%ìrH@spv\0û¡@ó% ’ïrH@œ<à#¼¢@Rþe8sH@Z‰¤P¤£@í¥Ú:=sH@åÄùÂµ£@äÇtv@sH@UA¨›Ç£@_¸ÉÄCsH@Ÿ1,¤@Êg!‹OsH@*~T¬%¤@@‰1UsH@Î¸f?z¤@Î6"KUsH@Gvÿòù¤@ÑÄqUsH@²‘©Ó‘¦@–+íUsH@_é²Fí¦@\'}ÔVsH@äJqH­@W\'iXsH@¼7;“p­@·IÿwXsH@lísá­@ìY-¢XsH@8M«e®@Çù0µXsH@p+è…®@ú»“ßXsH@à6"±@¾6—ÔYsH@šàK²@Z¤í6ZsH@ÃôYÞÕ²@ÀßÝbZsH@ÞÇãjâ²@·ÜfZsH@.O–ù²@é­8nZsH@èôFú¨³@î¥ZsH@æ2Ü³@œÚ\'¶ZsH@ù£X±5´@x ÒZsH@ô*~Ž2µ@¼_ï"[sH@Ør% Š·@\rbpá[sH@ï˜>#Ñ·@O‰Ï÷[sH@ïß$ûõ·@Ã~€\\sH@2¡íèg»@kœC]sH@6‰\nô¾@x6²?^sH@¼`š¿@Yh’H^sH@Yøã¿@fËŒ^sH@v`HÀÀ@ç©ÒÓ^sH@Â¯¢.Á@x¶ªé^sH@st ™!Â@Óé}E_sH@V®dã‹Â@s|®g_sH@¬yó Å@ncde`sH@)mÆûÆ@@¥Ù`sH@lÙq·È@‚~}nasH@ÆòeØÈ@ÊxmyasH@åÿ‘(öÈ@‚þƒasH@3}3CIÎ@ í3LcsH@4oÝÏ@FfÓcsH@7R³Ä,Ð@#ÍœêcsH@WÀÎÐ@vËdsH@BýÐ@”WJ\'dsH@f<€·\0Ñ@«žW(dsH@$ÆÇ¡Ñ@øÚ.)dsH@	+ìG\nÑ@D¿+dsH@Œ\ZX¸*Ñ@Aõ“4dsH@Šf^~ZÑ@ñI}BdsH@—pÍ°ÅÕ@•\n´‹esH@æ:SlØ@ŠSùPfsH@‡ù^jGÚ@æ7ÛfsH@{ëÊ×³Ü@Ž“\0®gsH@²´*Ô¶Ü@DH¯gsH@çbÕTæÝ@ó¿#hsH@pöCQþÝ@~ˆJhsH@Äû3hÞ@vxBBhsH@„|²´Þ@ƒA\\hsH@Ž@;†ìÞ@Ó6ohsH@.óÙuß@S¿ÚhsH@¡¤O’³ß@yÒ²hsH@¹ã‡›à@Û>]ÏhsH@*..‘Oâ@û •isH@•–ã¶+ä@õ77jsH@Ôt¯‰Žå@ß¨—¯jsH@¦b=ûå@j÷»ÑjsH@\r<ÔŠè@Ë±ŸksH@rttÍ«è@ùïô©ksH@ì,ö7žé@B\röksH@×÷*3ê@}=Ë$lsH@©ß—Ðì@S£ÌölsH@±¿î–Òì@\nÁm÷lsH@×­¨œí@^ú^msH@šåv[ð@Å•nsH@7 ˜Amð@ªt°nsH@®j×~ó@\nSj&osH@‘ÕÌ£Lô@™\rmosH@¦­—µÊõ@‘þ%ðosH@›.Ñi\\ö@©©""psH@"ÓKö@rÖrnsH@¡ÜóÜ<ö@!^VâlsH@2Ö2ö@€¹iksH@Ô`ùJ\'ö@°ýisH@ätœ£ö@qY¯BhsH@Ì>­§ö@J„ÊfsH@ÙOîö@Ã:£	esH@Ž\'k,\Zö@¾36bsH@^émN0ö@µ±‰±OsH@ò˜I\\7ö@‘˜õ?sH@ª~KÔDö@Ê !.sH@¨Ÿx]ö@	^3SürH@uÚÒrö@?7ðçrH@’kè6Žö@Ð¶IÙÄrH@}äq”ö@¬ƒ‡ÄrH@[½y­ö@‚öü>ÃrH@0¥Rt7÷@c-,¼rH@ž›ãÔ;ø@úŽÒ®rH@_˜	×Rø@Îš”¤­rH@çeã®Vø@¡àr­rH@hk_bø@ëk‹w«rH@’PDÊlø@iõ´©rH@`œËŒ¢ø@½gpò¦rH@°6\\Nù@³È\ZSžrH@©×Llù@ÈáõÑœrH@šfÚ„lù@ûl$ÏœrH@7„ºÒö@‡rŠƒrH@±›kþ ö@0ð»rH@·ôÎõ@LoA‹orH@\Z5pŸÇô@ÛE"KrH@W<ÃLò@p%æîqH@’xÂëñ@›ƒuÊáqH@zfµÍð@‘™¿qH@\\˜\'£Ìï@Y£Q4–qH@Î>"/1ï@€Rw}qH@”­«5»î@ä›uqH@=šf÷í@c\nüfqH@£¦#r*í@ê0ôƒYqH@', 18, '9916.30382695');

-- --------------------------------------------------------

--
-- Table structure for table `Station`
--

CREATE TABLE `Station` (
  `id` int(11) NOT NULL,
  `Number` int(5) DEFAULT NULL,
  `Name` varchar(49) DEFAULT NULL,
  `Address` varchar(97) DEFAULT NULL,
  `Location` point NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Station`
--

INSERT INTO `Station` (`id`, `Number`, `Name`, `Address`, `Location`) VALUES
(1, 31705, '31705 - CHAMPEAUX (BAGNOLET)', 'RUE DES CHAMPEAUX (PRES DE LA GARE ROUTIERE) - 93170 BAGNOLET', '\0\0\0\0\0\0\0ë±QQT@õ»þØ¨nH@'),
(2, 10042, '10042 - POISSONNIÃˆRE - ENGHIEN', '52 RUE D\'ENGHIEN / ANGLE RUE DU FAUBOURG POISSONIERE - 75010 PARIS', '\0\0\0\0\0\0\0µUqƒÉ@þ—ëu«oH@'),
(3, 8020, '08020 - METRO ROME', '74 BOULEVARD DES BATIGNOLLES - 75008 PARIS', '\0\0\0\0\0\0\0‚jÔÉ@OØ³AêpH@'),
(4, 1022, '01022 - RUE DE LA PAIX', '37 RUE CASANOVA - 75001 PARIS', '\0\0\0\0\0\0\0Kÿ7ÈÙ¤@9p6¼!oH@'),
(5, 35014, '35014 - DE GAULLE (PANTIN)', '139 AVENUE JEAN LOLIVE / MAIL CHARLES DE GAULLE - 93500 PANTIN', '\0\0\0\0\0\0\0«—è=M@`µª VrH@'),
(6, 20040, '20040 - PARC DE BELLEVILLE', '57 & 36 RUE JULIEN LACROIX - 75020 PARIS', '\0\0\0\0\0\0\0±‚U;ã@~QioH@'),
(7, 28002, '28002 - SOLJENITSYNE (PUTEAUX)', 'BOULEVARD ALEXANDRE SOLJENITSYNE - 92800 PUTEAUX', '\0\0\0\0\0\0\0ÕYÒöTû@:“6qH@'),
(8, 15111, '15111 - SERRES', '48 RUE OLIVIER DE SERRES - 75015 PARIS', '\0\0\0\0\0\0\0?©àÆ]@t\ZÖjH@'),
(9, 12124, '12124 - PYRAMIDE ARTILLERIE', 'ROUTE DE L\'ARTILLERIE - 75012 PARIS', '\0\0\0\0\0\0\0¨?BqQ€@EÖD³ekH@'),
(10, 9021, '09021 - SAINT GEORGES', '56 RUE SAINT GEORGES - 75009 PARIS', '\0\0\0\0\0\0\0DŽaO³@h¸j^pH@'),
(11, 7007, '07007 - MUSÃ‰E D\'ORSAY', '62 RUE DE LILLE - 75007 PARIS', '\0\0\0\0\0\0\0–ÃA›@kKû\nnH@'),
(12, 20011, '20011 - PYRÃ‰NÃ‰ES-DAGORNO', '103 RUE DES PYRENNEES - 75020 PARIS', '\0\0\0\0\0\0\0‚LþÈ=@qˆ€mH@'),
(13, 33006, '33006 - KARMAN (AUBERVILLIERS)', 'FACE 143 RUE ANDRE KARMAN - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0 ð\'–@µÏz–tH@'),
(14, 5005, '05005 - SAINT JACQUES GAY LUSSAC', '27 RUE GAY LUSSAC - 75005 PARIS', '\0\0\0\0\0\0\0<]ŸB¼@¸ü lH@'),
(15, 11029, '11029 - MENILMONTANT OBERKAMPF', '137 BOULEVARD MENILMONTANT - 75011 PARIS', '\0\0\0\0\0\0\0ÄYi@ÓSínH@'),
(16, 4020, '04020 - BEAUBOURG PLACE MICHELET', 'FACE 27 RUE QUINCAMPOIX - 75004 PARIS', '\0\0\0\0\0\0\0q5’\ZÍ@Q%Ð_nH@'),
(17, 7012, '07012 - CITE VANEAU', '7 CITE VANEAU - 75007 PARIS', '\0\0\0\0\0\0\0”Qnç=Ž@ù`.ªXmH@'),
(18, 19019, '19019 - PETIT HONNEGER', '124 RUE PETIT - 75019 PARIS', '\0\0\0\0\0\0\0¾Ä×l+&@àÁ.7uqH@'),
(19, 14113, '14113 - ARAGO 2', '36 RUE DE LA SANTE - 75014 PARIS', '\0\0\0\0\0\0\0ŒyC”»@§­€åjH@'),
(20, 15028, '15028 - DUPLEIX', '54 BOULEVARD DE GRENELLE - 75015 PARIS', '\0\0\0\0\0\0\0öîrÊU@Ñ’X‘úlH@'),
(21, 22005, '22005 - DE GAULLE 3 (NEUILLY)', '195 AVENUE CHARLES DE GAULLE - 92200 NEUILLY', '\0\0\0\0\0\0\0`Š­Ú‚@¡Åµ0qH@'),
(22, 20027, '20027 - PORTE DE MENILMONTANT', '1 rue Vidal de la Blache / Angle 78 boulevard Mortier - 75020 PARIS', '\0\0\0\0\0\0\0‚ïÇÛJF@s¨9s@oH@'),
(23, 18042, '18042 - PIGALLE GERMAIN PILLON', 'FACE 36 BOULEVARD DE CLICHY - 75018 PARIS', '\0\0\0\0\0\0\0‹kwª°@jì;ýpH@'),
(24, 11008, '11008 - FAIDHERBE CHALIGNY', '223 RUE DU FAUBOURG SAINT ANTOINE - 75011 PARIS', '\0\0\0\0\0\0\0Xf*@$h>ÙlH@'),
(25, 19038, '19038 - JOURDAIN', '9 RUE LASSUS - 75019 PARIS', '\0\0\0\0\0\0\0¼ã\r\nÀ@(½	pH@'),
(26, 13037, '13037 - IVRY BAUDICOURT', '76 AVENUE D\'IVRY - 75013 PARIS', '\0\0\0\0\0\0\0ô7(¤ç@¹l£iH@'),
(27, 13040, '13040 - PORTE DE CHOISY', '111 BOULEVARD MASSENA - 75013 PARIS', '\0\0\0\0\0\0\0îhR®ë@Ë™»ÛóhH@'),
(28, 16027, '16027 - JASMIN', '79 AV MOZART- 75016 PARIS', '\0\0\0\0\0\0\0C±Û¶Ú%@ä¡±Ž*mH@'),
(29, 15118, '15118 - PLACE BIENVENUE', '11 RUE DE L\'ARRIVEE - 75015 PARIS', '\0\0\0\0\0\0\0\0y­û“@‰KoðíkH@'),
(30, 6006, '06006 - NOTRE DAME DES CHAMPS', '41 RUE NOTRE DAME DES CHAMPS - 75006 PARIS', '\0\0\0\0\0\0\0àüVÕ{¢@†b"lH@'),
(31, 20015, '20015 - BAGNOLET-ORTEAUX', '44 BIS RUE DE BAGNOLET - 75020 PARIS', '\0\0\0\0\0\0\0Dù‚0@§êß¶mH@'),
(32, 9005, '09005 - SQUARE D\'ANVERS', '95 RUE DE DUNKERQUE - 75009 PARIS', '\0\0\0\0\0\0\0‹§lÁRÂ@¼N"úpH@'),
(33, 8031, '08031 - ROND POINT DES CHAMPS ELYSEES', '2 RUE JEAN MERMOZ - 75008 PARIS', '\0\0\0\0\0\0\0Ã÷W|@¯™žRoH@'),
(34, 12015, '12015 - NATION PICPUS', 'FACE 67 BOULEVARD DE PICPUS - 75012 PARIS', '\0\0\0\0\0\0\0½²#î2@»x\0TilH@'),
(35, 14120, '14120 - JOURDAN BARBOUX', '7 RUE HENRI BARBOUX - 75014 PARIS', '\0\0\0\0\0\0\0ÉÔ’ëL@W\0ÜÔ5iH@'),
(36, 9007, '09007 - CONDORCET', '34 RUE CONDORCET - 75009 PARIS', '\0\0\0\0\0\0\0.Öà\'_Ã@Œì@OžpH@'),
(37, 9019, '09019 - VICTOR MASSE', '38 RUE VICTOR MASSE - 75009 PARIS', '\0\0\0\0\0\0\0CuÏ…±@tÝÕ}ÉpH@'),
(38, 15040, '15040 - MONCLAR', '33 BIS RUE SAINT AMAND - 75015 PARIS', '\0\0\0\0\0\0\0b^[†x@qÇYÄjH@'),
(39, 14013, '14013 - LIART AMIRAL MOUCHEZ', '1 RUE LIARD - 75014 PARIS', '\0\0\0\0\0\0\0FÍj"¡¼@CòüiH@'),
(40, 42201, '42201 - NECKER (CHARENTON)', 'RUE NECKER/ RUE DU PORT AUX LIONS - 94220 CHARENTON', '\0\0\0\0\0\0\0	b\'_23@ÅÖº wiH@'),
(41, 11038, '11038 - TEMPLE REPUBLIQUE', '44 BD DU TEMPLE - 75011 PARIS', '\0\0\0\0\0\0\0+@C2)ì@Êe¼ÐnH@'),
(42, 18019, '18019 - MONTCALM', '2 RUE MONTCALM - 75018 PARIS', '\0\0\0\0\0\0\0Ò£›ÿ®@]Û)rH@'),
(43, 901, '00901 -PORT SOLFERINO (STATION MOBILE)', 'BERGES DE SEINE, SOUS LA PASSERELLE SENGHOR AU PORT DE SOLFERINO - 75007 PARIS', '\0\0\0\0\0\0\0¸XQƒi˜@Ø¶(³AnH@'),
(44, 15064, '15064 - JAVEL', 'DEV 5 AVENUE EMILE ZOLA - 75015 PARIS', '\0\0\0\0\0\0\0ë»Ê1:@0^RdSlH@'),
(45, 12031, '12031 - LAME', '49 RUE GABRIEL LAME - 75012 PARIS', '\0\0\0\0\0\0\0FÜ¨¾u@§­»ÍåjH@'),
(46, 13021, '13021 - BOUSSINGAULT - TOLBIAC', '55 RUE BOUSSINGAULT - 75013 PARIS', '\0\0\0\0\0\0\0B ¾1Ç¼@œÈ3…»iH@'),
(47, 34002, '34002 - PERI (SAINT OUEN)', '128 AVENUE GABRIEL PERI / AVENUE DU CAPITAINE GLAMER - 93400 SAINT OUEN', '\0\0\0\0\0\0\0žü¾Kä¤@Í¶$ˆsH@'),
(48, 2005, '02005 - MONTORGUEIL RUE MONTMARTRE VERSION 2', '46 RUE DE MONTMARTRE - 75002 PARIS', '\0\0\0\0\0\0\0ƒm\n>³Â@ÎÉ\n¹nH@'),
(49, 22012, '22012 - MICHELIS (NEUILLY)', '32 RUE DE MADELEINE MICHELIS - 92200 NEUILLY', '\0\0\0\0\0\0\0AO:Ö 8@}¿\0óýpH@'),
(50, 5104, '05104 - BUFFON', '47 RUE BUFFON - 75005 PARIS', '\0\0\0\0\0\0\0K£œ\rß@³)ÍèÃkH@'),
(51, 31008, '31008 - VINCENNES (MONTREUIL)', '7 BIS RUE DE VINCENNES - 93100 MONTREUIL', '\0\0\0\0\0\0\0:u$»@0ªû.ÉmH@'),
(52, 15062, '15062 - BOUCICAUT', '87 RUE DE LA CONVENTION - 75015 PARIS', '\0\0\0\0\0\0\0Xj3\\rI@òQ­bËkH@'),
(53, 4012, '04012 - ECOUFFES RIVOLI', '2 RUE TIRON - 75004 PARIS', '\0\0\0\0\0\0\0nÆÎþÜ@Ö„¾ŠmH@'),
(54, 3011, '03011 - TURBIGO', '55 RUE TURBIGO - 75003 PARIS', '\0\0\0\0\0\0\0CÙÆƒ¨Ù@ŸRxvËnH@'),
(55, 20017, '20017 - RUE SAINT BLAISE', '69 RUE SAINT BLAISE - 75020 PARIS', '\0\0\0\0\0\0\0¾;¾1OE@¿vÖZ±mH@'),
(56, 18028, '18028 - VAUVENARGUES', '195 RUE CHAMPIONNET - 75018 PARIS', '\0\0\0\0\0\0\0ìK X¨@»™ÏwprH@'),
(57, 12024, '12024 - GARE DE BERCY', 'GARE DE BERCY - ANGLE RUE CORBINEAU - 75012 PARIS', '\0\0\0\0\0\0\0N]ù,@–>tA}kH@'),
(58, 11113, '11113 - REPUBLIQUE FERRY', 'FACE 140 BOULEVARD RICHARD LENOIR - 75011 PARIS', '\0\0\0\0\0\0\0Ó5î^_ô@%¸ÿénH@'),
(59, 21015, '21015 - NATIONALE (BOULOGNE-BILLANCOURT)', '39 RUE NATIONALE - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0‰îIGï@¶ä‰ÏîiH@'),
(60, 42015, '42015 - JEAN FERRAT (IVRY)', 'PLACE JEAN FERRAT - 94200 IVRY', '\0\0\0\0\0\0\0ÊýEþ@Tã¥›ÄhH@'),
(61, 5002, '05002 - SAINT JACQUES', '20 RUE SOMMERARD - 75005 PARIS', '\0\0\0\0\0\0\0-­‰©—Â@ÙmæøÖlH@'),
(62, 10040, '10040 - BELLEVILLE', '8 BOULEVARD DE LA VILETTE - 75010 PARIS', '\0\0\0\0\0\0\0«@wòÂ@ÐdÓ1·oH@'),
(63, 13018, '13018 - AURIOL CHEVALERET', '1 RUE BRUANT - 75013 PARIS', '\0\0\0\0\0\0\0Î¢Y»Bï@Z9iPÜjH@'),
(64, 13026, '13026 - PLACE HENOCQUE VERSION 2', '21 RUE DU DR LERAY ET LANDOUZY - 75013 PARIS', '\0\0\0\0\0\0\0	à—›®Õ@â lbiH@'),
(65, 19028, '19028 - PLACE DES FETES', '17 RUE DES FETES - 75019 PARIS', '\0\0\0\0\0\0\0R½f#@‘S0pH@'),
(66, 10008, '10008 - CITE RIVERIN', '12 RUE CITE RIVERIN / ANGLE RUE DU CHATEAU D\'EAU - 75010 PARIS', '\0\0\0\0\0\0\0¤òMîªÞ@JÕ:uoH@'),
(67, 6015, '06015 - MAZET SAINT ANDRE DES ARTS', '10 RUE ANDRE MAZET - 75006 PARIS', '\0\0\0\0\0\0\0êÔkA¶@¼·GmH@'),
(68, 43006, '43006 - MINIMES (VINCENNES)', '30 AVENUE DES MINIMES - 94300 VINCENNES', '\0\0\0\0\0\0\0ç™?ÖCr@Zé_×µkH@'),
(69, 15054, '15054 - CHANDON', '293 RUE LECOURBE - 75015 PARIS', '\0\0\0\0\0\0\0ÒHÝó÷L@×ú¶œBkH@'),
(70, 11043, '11043 - CIRQUE D HIVER', 'PLACE PASDELOUP - 75011 PARIS', '\0\0\0\0\0\0\0ëŠ½¹ï@[~5SknH@'),
(71, 5024, '05024 - PLACE MONGE', '4 RUE DOLOMIEU - 75005 PARIS', '\0\0\0\0\0\0\0í´ÝÑ@µjì½ÞkH@'),
(72, 15036, '15036 - LAMBERT', '102 RUE DE LA CROIX NIVERT - 75015 PARIS', '\0\0\0\0\0\0\0ÖÔçs\\@hýRíékH@'),
(73, 42504, '42504 - MALON (GENTILLY)', 'FACE 59 RUE BENOIT MALON - 94250 GENTILLY', '\0\0\0\0\0\0\0t_J@ƒº@-h“?hH@'),
(74, 6107, '06107 - CHERCHE MIDI', '29 RUE DU CHERCHE MIDI - 75006 PARIS', '\0\0\0\0\0\0\0†è¼XÓž@Eœ/³ÔlH@'),
(75, 17029, '17029 - PLACE AIMÃ‰E MAILLART', '29 RUE PIERRE DEMOURS - 75017 PARIS', '\0\0\0\0\0\0\0"AãÎ[@Å7ÒpH@'),
(76, 13050, '13050 - QUAI PANHARD ET LEVASSOR', '23 QUAI PANHARD ET LEVASSOR - 75013 PARIS', '\0\0\0\0\0\0\0QòvU@˜sQjH@'),
(77, 9020, '09020 - TOUDOUZE CLAUZEL', 'FACE 27 RUE CLAUZEL - 75009 PARIS', '\0\0\0\0\0\0\0Àƒ‘²@VBè “pH@'),
(78, 14029, '14029 - GERGOVIE VERCINGETORIX', '112 RUE VERCINGETORIX - 75014 PARIS', '\0\0\0\0\0\0\0&‡ÙzÓ@kÑÉjH@'),
(79, 10029, '10029 - PLACE DE ROUBAIX', '39 RUE DE DUNKERQUE - 75010 PARIS', '\0\0\0\0\0\0\0?€FˆÌÏ@\'\nì¦»pH@'),
(80, 9004, '09004 - ROCHECHOUART GERANDO', '19 RUE GUERANDO - 75009 PARIS', '\0\0\0\0\0\0\0Ðà8CÅ@tl;qH@'),
(81, 10015, '10015 - RECOLLETS', '46 RUE LUCIE SAMPAIX - 75010 PARIS', '\0\0\0\0\0\0\0ÐÉì eæ@9´šîâoH@'),
(82, 6029, '06029 - VAUGIRARD PRINCE', 'FACE 1 RUE DE VAUGIRARD - 75006 PARIS', '\0\0\0\0\0\0\0Å<rsº@ ë©lH@'),
(83, 12151, '12151 - GARE DE LYON', 'GARE DE LYON - 75012 PARIS', '\0\0\0\0\0\0\0†P|×/û@;x¥Ö9lH@'),
(84, 12019, '12019 - GARE DE REUILLY', '58 RUE DE LA GARE DE REUILLY - 75012 PARIS', '\0\0\0\0\0\0\0Ø/g‘-@:‰‘ÙkH@'),
(85, 13116, '13116 - PLACE DU DOCTEUR YERSIN', 'FACE 5 AVENUE DE LA PORTE D\'IVRY - 75013 PARIS', '\0\0\0\0\0\0\0³áßHú@eÍ1ýhH@'),
(86, 19114, '19114 - MANIN SECRETAN', '31 RUE MANIN - 75019 PARIS', '\0\0\0\0\0\0\0bžÑØr@`ÙðŒpH@'),
(87, 8025, '08025 - MIROMESNIL', '39 RUE DE MIROMESNIL - 75008 PARIS', '\0\0\0\0\0\0\0]no(ê†@…0b×oH@'),
(88, 14033, '14033 - DAGUERRE GASSENDI', '31 RUE FROIDEVAUX - 75014 PARIS', '\0\0\0\0\0\0\0ãOBðV @eÐ¨“÷jH@'),
(89, 22011, '22011 - MONTROSIER (NEUILLY)', '7 RUE MONTROSIER - 92200 NEUILLY', '\0\0\0\0\0\0\0a{ïp:@ ©èˆ‘pH@'),
(90, 12032, '12032 - PORTE DOREE', '1 PLACE EDOUARD RENARD - 75012 PARIS', '\0\0\0\0\0\0\0JÑ›	xB@/?Ö#ójH@'),
(91, 16110, '16110 - OCTAVE FEUILLET', '4-6 RUE OCTAVE FEUILLET - 75016 PARIS', '\0\0\0\0\0\0\0@]^/@‹<È15nH@'),
(92, 16030, '16030 - MIRABEAU', '4 PLACE DE BARCELONE - 75016 PARIS', '\0\0\0\0\0\0\0/#]D>0@%B[O€lH@'),
(93, 15049, '15049 - PORTE DE VERSAILLES', '2 AVENUE ERNEST RENAN - 75015 PARIS', '\0\0\0\0\0\0\0]Y©ÁL@8À$Û„jH@'),
(94, 15042, '15042 - FARMAN', '61 RUE HENRY FARMAN - 75015 PARIS', '\0\0\0\0\0\0\0ÜÅëéÑ+@GÊ·jH@'),
(95, 19012, '19012 - LALLY TOLLENDAL', '5 RUE LALLY TOLLENDAL - 75019 PARIS', '\0\0\0\0\0\0\0ìF\\?_ÿ@¹‹¯UüpH@'),
(96, 21018, '21018 - SEINE (BOULOGNE-BILLANCOURT)', 'FACE AU 13 RUE DE LA SEINE - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0.éQØX@’D\0âjH@'),
(97, 15053, '15053 - LECOURBE', '250 RUE LECOURBE - 75015 PARIS', '\0\0\0\0\0\0\0(Í˜0U@\Zü3¡kkH@'),
(98, 18027, '18027 - DAMREMONT ORDENER', '102 RUE DAMREMONT - 75018 PARIS', '\0\0\0\0\0\0\0×€¬°@œ¯ñZrH@'),
(99, 6103, '06103 - MEZIERES RENNES', '16 RUE DE MEZIERES - 75006 PARIS', '\0\0\0\0\0\0\0CqMÁ¤@µbMˆÖlH@'),
(100, 42006, '42006 - BROSSOLETTE (IVRY)', '23 RUE PIERRE BROSSOLETTE - 94200 IVRY', '\0\0\0\0\0\0\0•ñ\\;\r@px0\'‘hH@'),
(101, 17011, '17011 - PORTE DE CLICHY FRAGONARD', '4 RUE FRAGONARD - 75017 PARIS', '\0\0\0\0\0\0\0]}\\æu„@µursrH@'),
(102, 6020, '06020 - SAINT MICHEL DANTON', '2 RUE DANTON - 75006 PARIS', '\0\0\0\0\0\0\0RšÁ(Ã½@u ÝÒ,mH@'),
(103, 11017, '11017 - ALEXANDRE DUMAS', 'FACE 77 BOULEVARD DE CHARONNE - 75011 PARIS', '\0\0\0\0\0\0\0n†3+@æM÷£UmH@'),
(104, 14111, '14111 - DENFERT-ROCHEREAU CASSINI', '18 RUE CASSINI - 75014 PARIS', '\0\0\0\0\0\0\0äêþÞ°@Vc±Ð4kH@'),
(105, 11032, '11032 - METALLOS', '81 BIS RUE JP TIMBAUD - 75011 PARIS', '\0\0\0\0\0\0\0ˆü[×è@:;W—oH@'),
(106, 21113, '21113 - PETIT (CLICHY)', '2 RUE PETIT - 92110 CLICHY', '\0\0\0\0\0\0\0Ç«´}_@•ËØsH@'),
(107, 11044, '11044 - RICHARD LENOIR VOLTAIRE NORD', 'FACE 104 BOULEVARD RICHARD LENOIR - 75011 PARIS', '\0\0\0\0\0\0\0}Q9<ø@:ç~ð„nH@'),
(108, 3001, '03001 - CHEMIN VERT BEAUMARCHAIS', '69 BOULEVARD BEAUMARCHAIS - 75003 PARIS', '\0\0\0\0\0\0\0ÙžÐ?Rñ@$Œ=cÔmH@'),
(109, 20133, '20133 - RASSELINS', '2 RUE DES RASSELINS - 75020 PARIS', '\0\0\0\0\0\0\0{XkäF@D(m@mH@'),
(110, 13047, '13047 - BOUTROUX VITRY', '1 AVENUE BOUTROUX - 75013 PARIS', '\0\0\0\0\0\0\0‹Xº›@c\0qLiH@'),
(111, 34009, '34009 - MAAR (SAINT OUEN)', 'RUE DORA MAAR / GARE RER - 93400 SAINT OUEN', '\0\0\0\0\0\0\0w¢…Î“@ÀàßsH@'),
(112, 11001, '11001 - BASTILLE RICHARD LENOIR', '2 BOULEVARD RICHARD LENOIR - 75011 PARIS', '\0\0\0\0\0\0\0àiÉ\r&õ@p©æJmH@'),
(113, 3007, '03007 - ARCHIVES PASTOURELLE', '67 RUE DES ARCHIVES - 75003 PARIS', '\0\0\0\0\0\0\0ðÔöÃ%à@š´)cnH@'),
(114, 9009, '09009 - SQUARE MONTHOLON', '26 RUE MONTHOLON - 75009 PARIS', '\0\0\0\0\0\0\0˜Íp2+Ä@¢Q™w4pH@'),
(115, 905, '00905 - CONCORDE/BERGES DE SEINE (STATION MOBILE)', 'BERGES DE SEINE, BAS DE LA BRETELLE AVAL CONCORDE - 75007 PARIS', '\0\0\0\0\0\0\0ÊI»Ñ‡@üQÔ™{nH@'),
(116, 15115, '15115 - VAUGIRARD', '25-31 BOULEVARD DE VAUGIRARD - 75015 PARIS', '\0\0\0\0\0\0\0exåpÜ‹@HÎ‹°kH@'),
(117, 5018, '05018 - MUTUALITE', '20 RUE MONGE - 75005 PARIS', '\0\0\0\0\0\0\0¡å%Í@Õìœç—lH@'),
(118, 35006, '35006 - DELIZY (PANTIN)', 'FACE AU 23 RUE DELIZY - 93500 PANTIN', '\0\0\0\0\0\0\0h>M¿ÏE@l6»rH@'),
(119, 9036, '09036 - ATHENES CLICHY', '4 RUE D\'ATHENES - 75009 PARIS', '\0\0\0\0\0\0\0öåwð¢@ŒXfpH@'),
(120, 4107, '04107 - BEAUMARCHAIS', '27 BOULEVARD BEAUMARCHAIS - 75004 PARIS', '\0\0\0\0\0\0\0uí±ðŠò@—ˆmH@'),
(121, 17050, '17050 - BATIGNOLLES', '1 RUE DES BATIGNOLLES - 75017 PARIS', '\0\0\0\0\0\0\0É$E¬6—@C“zŒ	qH@'),
(122, 5013, '05013 - ULM ERASME', '13 RUE ERASME - 75005 PARIS', '\0\0\0\0\0\0\0£#nã»Á@`“xœØkH@'),
(123, 20110, '20110 - PORTE DES LILAS', 'FACE 241 AVENUE GAMBETTA - 75020 PARIS', '\0\0\0\0\0\0\0ÝDN!h?@Ù3¥ƒ\rpH@'),
(124, 13001, '13001 - PORT ROYAL', '51 BOULEVARD PORT ROYAL - 75013 PARIS', '\0\0\0\0\0\0\0üÔ8ßÁ@\rÆ#«:kH@'),
(125, 13103, '13103 - SAINT MARCEL', '89 BOULEVARD DE L\'HOPITAL - 75013 PARIS', '\0\0\0\0\0\0\0_be9â@øH.©:kH@'),
(126, 17018, '17018 - MONCEAU', '4 RUE DE THANN - 75017 PARIS', '\0\0\0\0\0\0\05ç áy@šøvêÉpH@'),
(127, 31704, '31704 - HORNET (BAGNOLET)', 'FACE AU 1 RUE JEANNE HORNET - 93170 BAGNOLET', '\0\0\0\0\0\0\0ùÐphl@î”zéÜoH@'),
(128, 4103, '04103 - HOTEL DE VILLE', '1 RUE DES ARCHIVES - 75004 PARIS', '\0\0\0\0\0\0\0^6ƒñÔ@KÚ¸mH@'),
(129, 21013, '21013 - GRENIER (BOULOGNE-BILLANCOURT)', '4 AVENUE PIERRE GRENIER - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0Ê"Ê–ý@Ý4ZµiH@'),
(130, 11012, '11012 - MONTREUIL VOLTAIRE', '93 RUE DE MONTREUIL - 75011 PARIS', '\0\0\0\0\0\0\0—*]Ì%@špìiÝlH@'),
(131, 33012, '33012 - LANDY (AUBERVILLIERS)', 'FACE 2 RUE DU LANDY - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0iVR—ê@ õyÖ#uH@'),
(132, 35001, '35001 - JAURES 1 (PANTIN)', '168 AVENUE JEAN JAURES - 93500 PANTIN', '\0\0\0\0\0\0\0ä\0<£Ñ1@Q_tH@'),
(133, 21703, '21703 - MARTINIE (VANVES)', '5-7 AVENUE MARCEL MARTINIE - 92170 VANVES', '\0\0\0\0\0\0\0fÒl•T@,Òô)iH@'),
(134, 2101, '02101 - BACHAUMONT', '14 RUE BACHAUMONT - 75002 PARIS', '\0\0\0\0\0\0\0Žƒ’r‚Ã@¢áÒIÛnH@'),
(135, 17025, '17025 - COURCELLES', '2 RUE DE CHAZELLES - 75017 PARIS', '\0\0\0\0\0\0\04üØQ€m@Xÿ®,‘pH@'),
(136, 7004, '07004 - RASPAIL VARENNE', 'FACE 28 BOULEVARD RASPAIL - 75007 PARIS', '\0\0\0\0\0\0\0î©Mœ@\nÏ¨­7mH@'),
(137, 20032, '20032 - AMANDIERS', '55 RUE DES CENDRIERS - 75020 PARIS', '\0\0\0\0\0\0\0Ü¯À¿c@b{ÂânH@'),
(138, 9008, '09008 - TOUR D\'AUVERGNE', '24 RUE D\'AUVERGNE - 75009 PARIS', '\0\0\0\0\0\0\0c}öä¿@/¸…_ˆpH@'),
(139, 43007, '43007 - VORGES (VINCENNES)', '4 AVENUE VORGES - 94300 VINCENNES', '\0\0\0\0\0\0\0Ú„‘æ„@‡FÅµ“lH@'),
(140, 21204, '21204 - D\'ORVES (MONTROUGE)', 'FACE 44 RUE D\'ESTIENNES D\'ORVES / PISCINE - 92120 MONTROUGE', '\0\0\0\0\0\0\0öJ\0-‘@1&¤^hH@'),
(141, 14016, '14016 - REILLE MONTSOURIS', '61 AVENUE RENE COTY - 75014 PARIS', '\0\0\0\0\0\0\0¨ÇK™ °@=<ê÷‘iH@'),
(142, 31002, '31002 - REPUBLIQUE (MONTREUIL)', '38 RUE DE LA REPUBLIQUE - 93100 MONTREUIL', '\0\0\0\0\0\0\0glÉ¬½Z@²ò)mH@'),
(143, 15070, '15070 - BLANC', '88 RUE BALARD - 75015 PARIS', '\0\0\0\0\0\0\0±+ôÑç9@TÈÍZXkH@'),
(144, 17047, '17047 - COURCELLES - DEMOURES', '172 RUE DE COURCELLES - 75017 PARIS', '\0\0\0\0\0\0\0K2$[€c@ZÍÚ]qH@'),
(145, 18018, '18018 - CARPEAUX', '13 RUE CARPEAUX - 75018 PARIS', '\0\0\0\0\0\0\0ñÅý)…¥@?X,rH@'),
(146, 4014, '04014 - ARCHIVES BLANCS MANTEAUX', '29 RUE DES BLANCS MANTEAUX - 75004 PARIS', '\0\0\0\0\0\0\0¢R“‚ðØ@8{‡è\0nH@'),
(147, 15105, '15105 - SUFFREN FÃ‰DÃ‰RATION', '84 RUE DE LA FEDERATION - 75015 PARIS', '\0\0\0\0\0\0\03;Û	\rb@íHíu\'mH@'),
(148, 10024, '10024 - BUISSON SAINT LOUIS', '2 RUE DU BUISSON SAINT LOUIS - 75010 PARIS', '\0\0\0\0\0\0\0¢Ê1¯Eú@ü„¢ý—oH@'),
(149, 32008, '32008 - EMGP-GARDINOUX (AUBERVILLIERS/ST-DENIS)', '204 RUE DES FILLETTES - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0þ{ðÚ¥í@?6ÉøsH@'),
(150, 8054, '08054 - HOCHE ALBRECHT', '10 AVENUE BERTHIER ALBRECHT - 75008 PARIS', '\0\0\0\0\0\0\0Ü´©ži@·ŸZ^%pH@'),
(151, 7009, '07009 - ASSEMBLEE NATIONALE', 'FACE 119 RUE DE LILLE - 75007 PARIS', '\0\0\0\0\0\0\0\'Õ¥ü @éAnH@'),
(152, 1015, '01015 - PLACE ANDRE MALRAUX', '2 PLACE ANDRE MALRAUX - 75001 PARIS', '\0\0\0\0\0\0\0k2ZØN¯@@¤¥â–nH@'),
(153, 17002, '17002 - LA FOURCHE RUE DE LA CONDAMINE', '4 RUE DE LA CONDAMINE - 75017 PARIS', '\0\0\0\0\0\0\0¯¿B_˜@`TÀ¦qH@'),
(154, 18030, '18030 - SIMPLON', '1 RUE JOSEPH DIJON - 75018 PARIS', '\0\0\0\0\0\0\0h¶ê·Ç@^ª‚âerH@'),
(155, 32605, '32605 - HORTENSIAS (LES LILAS)', '1 ALLEE DES HORTENSIAS - 93260 LES LILAS', '\0\0\0\0\0\0\0^‰ÃÜb@‘‚FëpH@'),
(156, 43005, '43005 - AUBERT (VINCENNES)', '18 AVENUE AUBERT - 94300 VINCENNES', '\0\0\0\0\0\0\0\'hàƒ«w@0Õ^ˆ|lH@'),
(157, 13045, '13045 - TOLBIAC ALBERT', 'FACE 1 RUE JEAN COLLY - 75013 PARIS', '\0\0\0\0\0\0\0loºØö@¨N¾˜öiH@'),
(158, 8034, '08034 - HAUSSMANN COURCELLES', '49 RUE DE BERRI - 75008 PARIS', '\0\0\0\0\0\0\0¨¶4]mw@¡¯oÉùoH@'),
(159, 2012, '02012 - QUATRE SEPTEMBRE', '10 RUE DE CHOISEUL - 75002 PARIS', '\0\0\0\0\0\0\0qÀ=t5°@ô+[oH@'),
(160, 5029, '05029 - PORT ROYAL', 'FACE 41 AVENUE GEORGES BERNANOS - 75005 PARIS', '\0\0\0\0\0\0\0_¼3¶È²@Œ÷¶°ˆkH@'),
(161, 20008, '20008 - MARAICHERS', '73 RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\0‹.uQ9?@ñÁ17mH@'),
(162, 17039, '17039 - PLACE SAINT FERDINAND', '26 RUE SAINT FERDINAND - 75017 PARIS', '\0\0\0\0\0\0\0äßŒâN@¤£ŽdgpH@'),
(163, 15069, '15069 - BOUCICAUT FAURE', '41 AVENUE FELIX FAURE - 75015 PARIS', '\0\0\0\0\0\0\0™Z¢N@ü	é®kH@'),
(164, 5027, '05027 - GOBELINS', '22 AVENUE DES GOBELINS - 75005 PARIS', '\0\0\0\0\0\0\0mœG¼Ï@4;/ò&kH@'),
(165, 12017, '12017 - ST MANDE NETTER', '82 AVENUE SAINT MANDE - 75012 PARIS', '\0\0\0\0\0\0\0gMú¤=@C‚ÈülH@'),
(166, 35003, '35003 - VAILLANT (PANTIN)', 'ANGLE RUE GENERAL GOSSERAND ET AVENUE EDOUARD VAILLANT - 93500 PANTIN', '\0\0\0\0\0\0\0´œïOc%@AÍ f‹sH@'),
(167, 20116, '20116 - HAIES REUNION', '53 RUE DES HAIES - 75020 PARIS', '\0\0\0\0\0\0\0¡÷.5+8@T˜\r”KmH@'),
(168, 18011, '18011 - HERBERT', '85 RUE PAJOL - 75018 PARIS', '\0\0\0\0\0\0\0`¶ÚxMè@3ë¬ÄHrH@'),
(169, 13005, '13005 - ARAGO CORDELIERE - VERSION 2', '2 RUE DES CORDELIERES - 75013 PARIS', '\0\0\0\0\0\0\0Å`Ú[àÉ@õ2>ñjH@'),
(170, 10032, '10032 - DODU', 'NÂ° 12-14 RUE CLAUDE VELLEFAUX- 75010 PARIS', '\0\0\0\0\0\0\0¥hµ\'èõ@2(Ù¹oH@'),
(171, 15037, '15037 - GROULT', '202 RUE LECOURBE - 75015 PARIS', '\0\0\0\0\0\0\0èÈt´]@PöÁ’kH@'),
(172, 21106, '21106 - MORICE 2 (CLICHY)', '2-4 RUE MORICE - 92110 CLICHY', '\0\0\0\0\0\0\0¦êëMów@±ËœÖHsH@'),
(173, 8055, '08055 - TERNES COURCELLES', '87 BD COURCELLES - 75008 PARIS', '\0\0\0\0\0\0\0‚D£Mõd@Ûö;~hpH@'),
(174, 19111, '19111 - ROSA PARKS â€“ GARE RER E', 'Parvis Nord Gare RER E ROSA PARKS - 75019 PARIS', '\0\0\0\0\0\0\0\0\0m\0@8Ö¾ØrH@'),
(175, 4002, '04002 - MARCHE AUX FLEURS', 'PLACE LOUIS LEPINE - 75004 PARIS', '\0\0\0\0\0\0\0Np5ÑbÇ@bO/ñxmH@'),
(176, 15030, '15030 - LINOIS', '66 RUE EMERIAU - 75015 PARIS', '\0\0\0\0\0\0\0gäŠZiF@nÌªÃŒlH@'),
(177, 11020, '11020 - CHARONNE', '1 RUE DE BELFORT - 75011 PARIS', '\0\0\0\0\0\0\0“7Jˆ@…R!Í›mH@'),
(178, 15059, '15059 - CITROEN', 'RUE BALARD - 75015 PARIS', '\0\0\0\0\0\0\0\ZƒÍa9@\rH>‡œkH@'),
(179, 8549, '08549 - PLACE DUNANT', '39 AVENUE GEORGE V - 75008 PARIS', '\0\0\0\0\0\0\06Ý¤F³h@¤‘ioH@'),
(180, 21501, '21501 - SELLIER (SURESNES)', 'RUE DE SAINT CLOUD / BOULEVARD HENRI SELLIER - 92150 SURESNES', '\0\0\0\0\0\0\0·Ï.KØÎ@}:veoH@'),
(181, 14011, '14011 - ALESIA SARRETTE', '6 RUE SARRETTE - 75014 PARIS', '\0\0\0\0\0\0\0Ý7»a§@)äHYìiH@'),
(182, 8013, '08013 - MARIGNAN', '24 RUE DE MARIGNAN - 75008 PARIS', '\0\0\0\0\0\0\0"lÑŸõs@œ”^•OoH@'),
(183, 43001, '43001 - PARIS 1 (VINCENNES)', '168 AVENUE DE PARIS - 94300 VINCENNES', '\0\0\0\0\0\0\0mŽ<£ª\\@ÿg+ÎTlH@'),
(184, 44101, '44101 - PLACE MONGOLFIER (SAINT MAURICE)', 'PLACE MONTGOLFIER - 94410 SAINT MAURICE', '\0\0\0\0\0\0\0.Ý¶…¬@œ\0ShH@'),
(185, 1007, '01007 - ETIENNE MARCEL', '2 RUE DE TURBIGO - 75001 PARIS', '\0\0\0\0\0\0\0ÕnLÿÈ@¤p]‰nH@'),
(186, 8105, '08105 - FRANCOIS 1ER LINCOLN', '56 RUE FRANCOIS 1ER - 75008 PARIS', '\0\0\0\0\0\0\0ûo^k@šHz]LoH@'),
(187, 16042, '16042 - PORTE DE SAINT CLOUD', '120 BOULEVARD MURAT - 75016 PARIS', '\0\0\0\0\0\0\0<T˜ìS@„-Á5kH@'),
(188, 18022, '18022 - BARBES MARCADET', '57 RUE MARCADET - 75018 PARIS', '\0\0\0\0\0\0\0Ò9šÞÊ@weMúqH@'),
(189, 21101, '21101 - VALITON (CLICHY)', '4 RUE DE VALITON - 92110 CLICHY', '\0\0\0\0\0\0\0ëçñùa@Wfß„sH@'),
(190, 14125, '14125 - DAREAU', '34 RUE DAREAU - 75014 PARIS', '\0\0\0\0\0\0\0kØ.›m°@Ug#UjH@'),
(191, 14115, '14115 - CITÃ‰ UNIVERSITAIRE', 'AVENUE MAURICE D\'OCAGNE - 75014 PARIS', '\0\0\0\0\0\0\0a–™Wˆ@q¨{PviH@'),
(192, 17004, '17004 - LEGENDRE AVENUE DE CLICHY', '130 RUE LEGENDRE - 75017 PARIS', '\0\0\0\0\0\0\0ŠW@Š”@Ž‹~ÉqH@'),
(193, 17007, '17007 - NAVIER', 'FACE 57 RUE NAVIER - 75017 PARIS', '\0\0\0\0\0\0\0ˆ2øò”@XUP­rH@'),
(194, 17116, '17116 - REIMS', '6 BOULEVARD DE REIMS - 75017 PARIS', '\0\0\0\0\0\0\0û™T>²f@–A–¡\'rH@'),
(195, 9104, '9104 - CAUMARTIN PROVENCE', '52 RUE DE CAUMARTIN - 75009 PARIS', '\0\0\0\0\0\0\0üÿÿ· @´Ì³ÉïoH@'),
(196, 8008, '08008 - ROME SAINT LAZARE', '1 RUE JOSEPH SANSBOEUF - 75008 PARIS', '\0\0\0\0\0\0\0\\ZúeD•@Jc¤’pH@'),
(197, 3013, '03013 - RUE DE SEVIGNE', '36 RUE DE SEVIGNE - 75003 PARIS', '\0\0\0\0\0\0\0U‚=Ã6ç@Ýl¬°mH@'),
(198, 13023, '13023 - BOBILLOT VERLAINE', '30 RUE BOBILLOT - 75013 PARIS', '\0\0\0\0\0\0\0¡ËÓ@‚ÆÖ¨jH@'),
(199, 43008, '43008 - FONTENAY (VINCENNES)', '12 RUE DE FONTENAY - 94300 VINCENNES', '\0\0\0\0\0\0\08g ºŽ@IçŒg„lH@'),
(200, 20016, '20016 - PYRENEES VITRUVE', '114 BIS RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\0(eŽ€C<@…{‹j¶mH@'),
(201, 18005, '18005 - TARDIEU', '8 RUE TARDIEU - 75018 PARIS', '\0\0\0\0\0\0\0[²Pz+¼@šêC,qH@'),
(202, 14106, '14106 - STADE DIDOT', 'FACE 58 AVENUE MARC SANGNIER - 75014 PARIS', '\0\0\0\0\0\0\0`ÃCå@|@ë92G¤iH@'),
(203, 20120, '20120 - NOISY LE SEC', '1 RUE EVARISTE GALOIS - 75020 PARIS', '\0\0\0\0\0\0\0,ÀµPN@`ÞŒÉoH@'),
(204, 15107, '15107 -  PALAIS DES SPORTS', '42 BOULEVARD VICTOR - 75015 PARIS', '\0\0\0\0\0\0\0—ì{õ©H@ÒRŠ²jH@'),
(205, 15013, '15013 - LECOURBE VOLONTAIRE', 'DEV 1 RUE DES VOLONTAIRES - 75015 PARIS', '\0\0\0\0\0\0\0šá\0Õs@²ÐU5ùkH@'),
(206, 33104, '33104 - JOINEAU (PRE SAINT GERVAIS)', 'RUE ANDRE JOINEAU / PLACE ANATOLE FRANCE - 93310 LE PRE SAINT GERVAIS', '\0\0\0\0\0\0\0†^Ö9@«8Ãw\ZqH@'),
(207, 4009, '04009 - VILLAGE SAINT PAUL', '6 RUE SAINT PAUL - 75004 PARIS', '\0\0\0\0\0\0\0@ýV/ã@€€é&mH@'),
(208, 16034, '16034 - PORTE D\'AUTEUIL', '76 RUE D\'AUTEUIL - 75016 PARIS', '\0\0\0\0\0\0\0/#¥ÑÔ@pŽå¡‰lH@'),
(209, 9029, '09029 - TRINITE', '62 RUE SAINT LAZARE - 75009 PARIS', '\0\0\0\0\0\0\0§é›R©@lõ*í<pH@'),
(210, 13022, '13022 - BUTTE AUX CAILLES', '27 ET 36 RUE DE LA BUTTE AUX CAILLES - 75013 PARIS', '\0\0\0\0\0\0\0<ÙËÎáÊ@õt-¡íiH@'),
(211, 20018, '20018 - HARPIGNIES', '2 RUE HARPIGNIES- 75020 PARIS', '\0\0\0\0\0\0\0%1öG@t¿šPçmH@'),
(212, 8002, '08002 - GARE SAINT LAZARE - COUR DU HAVRE', 'Cour du Havre - Face au 2, rue d\'Amsterdam - 75008 PARIS', '\0\0\0\0\0\0\0ébg\n@\0:Ì—pH@'),
(213, 8047, '08047 - GEORGE V', '28 AVENUE GEORGE V - 75008 PARIS', '\0\0\0\0\0\0\0(‘©i@sÁ oH@'),
(214, 33009, '33009 - FELIX (AUBERVILLIERS)', '120 BOULEVARD FELIX FAURE - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0–“DwÜ@~û¹™5tH@'),
(215, 11042, '11042 - OBERKAMPF', '1 RUE DU GRAND PRIEURE - 75011 PARIS', '\0\0\0\0\0\0\0‘×GW?ô@\'{\nÕ¬nH@'),
(216, 21707, '21707 - PASTEUR (VANVES)', '9 AVENUE PASTEUR ANGLE CARREFOUR ALBERT LEGRIS - 92170 Vanves', '\0\0\0\0\0\0\0xfíi\nW@[wÕÚœiH@'),
(217, 15047, '15047 - DANTZIG', 'FACE AU 37 RUE MORILLONS - 75015 PARIS', '\0\0\0\0\0\0\0cr/Lîd@I}¢¥jH@'),
(218, 13121, '13121 - BRUNESEAU - QUAI D\'IVRY', '5 RUE BRUNESEAU - 75013 PARIS', '\0\0\0\0\0\0\0•FÜ/Ð@ÜD˜iH@'),
(219, 7001, '07001 - DUROC', '63 BOULEVARD DES INVALIDES - 75007 PARIS', '\0\0\0\0\0\0\0 3èj‹‡@¨Î\0¹ƒlH@'),
(220, 15039, '15039 - CHARLES VALLIN', '133 RUE DE L\'ABBE GROULT - 75015 PARIS', '\0\0\0\0\0\0\0ão´8j@W”!ökH@'),
(221, 8057, '08057 - HOCHE', '62 AVENUE HOCHE - 75008 PARIS', '\0\0\0\0\0\0\0L\rz\'a@Hð˜0þoH@'),
(222, 6001, '06001 - INSTITUT', '5 QUAI MALAQAIS - 75006 PARIS', '\0\0\0\0\0\0\0í%2YÈ¯@oü½YÆmH@'),
(223, 11109, '11109 - REPUBLIQUE PIERRE LEVEE', '1 RUE DE LA PIERRE LEVEE - 75011 PARIS', '\0\0\0\0\0\0\0mƒfðø@Ú^òãnH@'),
(224, 20019, '20019 - MAQUIS DU VERCORS - PORTE DES LILAS', 'PLACE DU MARQUIS DU VERCORS - 75020 PARIS', '\0\0\0\0\0\0\0—:ÈëÁD@>ÍÉ‹LpH@'),
(225, 14027, '14027 - ALESIA GERGOVIE', 'FACE 83 RUE DE GERGOVIE - 75014 PARIS', '\0\0\0\0\0\0\0ø¸@,¯Ì‚ZjH@'),
(226, 16104, '16104 - PAUL VALÃ‰RY', '26-32 RUE PAUL VALERY - 75016 PARIS', '\0\0\0\0\0\0\0H_/™O@l0ÂˆoH@'),
(227, 11111, '11111 - CHARONNE FROT', '31 RUE LEON FROT - 75011 PARIS', '\0\0\0\0\0\0\0n\0qE@Ú,tomH@'),
(228, 18111, '18111 - FELIZ ZIEM', '2 RUE FELIX ZIEM - 75018 PARIS', '\0\0\0\0\0\0\0¾jKÊª@1©ÑÛqH@'),
(229, 14108, '14108 - JOURDAN LE BRIX ET MESNIN', 'RUE LE BRIX ET MESNIN - 75014 PARIS', '\0\0\0\0\0\0\0r_4îuŸ@lxBiH@'),
(230, 8026, '08026 - MESSINE', '2 AVENUE MESSINE - 75008 PARIS', '\0\0\0\0\0\0\0ÆòÅ†@³FûpH@'),
(231, 9002, '09002 - MAUBEUGE CONDORCET', '19 RUE D\'ABBEVILLE - 75009 PARIS', '\0\0\0\0\0\0\0;¾Q×\rË@8]3dŠpH@'),
(232, 11019, '11019 - CHARONNE PHILIPPE AUGUSTE', '156 RUE DE CHARONNE - 75011 PARIS', '\0\0\0\0\0\0\0öD:ÉÖ@© ‡g„mH@'),
(233, 19118, '19118 - BOLIVAR BURNOUF', '82 AVENUE SIMON BOLIVAR - 75019 PARIS', '\0\0\0\0\0\0\0z¤¶®„þ@^ÎäšEpH@'),
(234, 5022, '05022 - CARDINAL LEMOINE', '40 RUE BOU LANGERS - 75005 PARIS', '\0\0\0\0\0\0\0\\¥I@ZÑ@{FeSlH@'),
(235, 10009, '10009 - HITTORFF', 'FACE 14 RUE HITTORFF - 75010 PARIS', '\0\0\0\0\0\0\0TœEÇ~Ü@]¼‰o oH@'),
(236, 12038, '12038 - BEL AIR', 'FACE 12 BOULEVARD PICPUS - 75012 PARIS', '\0\0\0\0\0\0\0=ÍF4@±¬À„kH@'),
(237, 14036, '14036 - BOULARD DAGUERRE', '14 RUE BOULARD - 75014 PARIS', '\0\0\0\0\0\0\0Ø†j¢@"PQÍjH@'),
(238, 17005, '17005 - BROCHANT', '43 RUE BROCHANT - 75017 PARIS', '\0\0\0\0\0\0\0qSåÎŽ@ÅõDUöqH@'),
(239, 16019, '16019 - HENRI MARTIN', 'FACE 98 AV. HENRI MARTIN - 75016 PARIS', '\0\0\0\0\0\0\0qup„&@8›wnH@'),
(240, 13106, '13106 - BOBILLOT MERY', '17 RUE BOBILLOT - 75013 PARIS', '\0\0\0\0\0\0\0±Í5Õ@\rª0[9jH@'),
(241, 21007, '21007 - RHIN DANUBE (BOULOGNE BILLANCOURT)', '15 ROND POINT RHIN DANUBE - 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\0¹.‰æÒ@ŒcneškH@'),
(242, 10111, '10111 - JEMMAPES', '100 QUAI DE JEMMAPES - 75010 PARIS', '\0\0\0\0\0\0\0ßŸ6‹é@¸\\¡ÍoH@'),
(243, 19022, '19022 - MEAUX - SECRETAN', '53 RUE DE MEAUX - 75019 PARIS', '\0\0\0\0\0\0\0\0\0•ü@Õ)J<ÐpH@'),
(244, 35008, '35008 - LOLIVE 2 (PANTIN)', '132 RUE JEAN LOLIVE - 93500 PANTIN', '\0\0\0\0\0\0\0ÛØÐMÜL@Ë±U£DrH@'),
(245, 19109, '19109 - PLACE DU MAROC', '27 RUE DE TANGER - 75019 PARIS', '\0\0\0\0\0\0\0©î°újó@â=¼pqH@'),
(246, 8048, '08048 - MARCEAU', '45 AVENUE MARCEAU - 75008 PARIS', '\0\0\0\0\0\0\04hU[c@£øcˆ6oH@'),
(247, 9014, '09014 - FAUBOURG MONTMARTRE', '55 RUE DU FAUBOURG MONTMARTRE - 75009 PARIS', '\0\0\0\0\0\0\0Ð¬€ç¹@{ëÍ\npH@'),
(248, 9108, '09108 - ROCHECHOUART MAUBEUGE', '25 RUE DE ROCHECHOUART - 75009 PARIS', '\0\0\0\0\0\0\0˜±GôÂ@Tæ3³^pH@'),
(249, 13009, '13009 - BLANQUI CORVISART', '46 BOULEVARD AUGUSTE BLANQUI - 75013 PARIS', '\0\0\0\0\0\0\0DÄpe Í@ràþç<jH@'),
(250, 19006, '19006 - MATHIS', '6 RUE MATHIS - 75019 PARIS', '\0\0\0\0\0\0\0^?“ûV@¸•®½rH@'),
(251, 17009, '17009 - BODIN AVENUE DE CLICHY', '2 RUE PAUL BODIN - 75017 PARIS', '\0\0\0\0\0\0\0õa‘ˆÛ‰@!í\rÔArH@'),
(252, 12106, '12106 - BARTHES TROYES', '3 RUE ROLAND BARTHES - 75012 PARIS', '\0\0\0\0\0\0\0´†¤Ì[@eÝÎ†lH@'),
(253, 19125, '19125 - LEDIT DE NANTES', 'PLACE LEDIT DE NANTES - 75019 PARIS', '\0\0\0\0\0\0\0k*+@d!ßÃqH@'),
(254, 42703, '42703 - FONTAINEBLEAU (KREMLIN BICETRE)', '93 AVENUE DE FONTAINEBLEAU - 94270 LE KREMLIN BICETRE', '\0\0\0\0\0\0\0€—®œÆæ@Ö£àd gH@'),
(255, 8016, '08016 - SQUARE LOUIS XVI', 'DEV 32 RUE PASQUIER - 75008 PARIS', '\0\0\0\0\0\0\0·ÓèpÚ–@@’l)ÅoH@'),
(256, 15025, '15025 - AMETTE', '26 RUE DUPLEIX - 75015 PARIS', '\0\0\0\0\0\0\0#w¦©_@Î#]sülH@'),
(257, 5031, '05031 - LACEPEDE', '2 RUE LACEPEDE - 75005 PARIS', '\0\0\0\0\0\0\01‚ç@Ö@cÎŽ‰ýkH@'),
(258, 6008, '06008 - ASSAS LUXEMBOURG', '90 RUE D\'ASSAS - 75006 PARIS', '\0\0\0\0\0\0\0˜¸ÝÜª@)õ¶}ÿkH@'),
(259, 1116, '01116 - OPÃ‰RA PYRAMIDES', '4 RUE DE VENTADOUR - 75001 PARIS', '\0\0\0\0\0\0\0>7ËÙÓ¬@`ìÇ¦ónH@'),
(260, 15033, '15033 - VIOLET', '5 PLACE VIOLET - 75015 PARIS', '\0\0\0\0\0\0\0©ðtS@m"lH@'),
(261, 12130, '12130 - NOGENT - PORTE JAUNE', 'AVENUE DE NOGENT - LA PORTE JAUNE - 75012 PARIS', '\0\0\0\0\0\0\0‘,`·®@ÏIï_kH@'),
(262, 19035, '19035 - PORTE CHAUMONT', 'RUE SIGMUND FREUD / PORTE CHAUMONT - 75019 PARIS', '\0\0\0\0\0\0\0‰6÷Ê.@ïqµ_qH@'),
(263, 19001, '19001 - OURCQ CRIMEE', '243 RUE DE CRIMEE - 75019 PARIS', '\0\0\0\0\0\0\0Í\Z©(Ëû@3ð$rrH@'),
(264, 41603, '41603 - PASTEUR (SAINT MANDE)', 'AVENUE PASTEUR/AVENUE DE PARIS - 94160 SAINT MANDE', '\0\0\0\0\0\0\0U„|Öác@^ùR~BlH@'),
(265, 18041, '18041 - MARTYRS 2', 'FACE 112 BOULEVARD DE ROCHECHOUART - 75018 PARIS', '\0\0\0\0\0\0\0<™K­§¹@PX[½ëpH@'),
(266, 20119, '20119 - SQUARE DE MENILMONTANT', '138 RUE DE MENILMONTANT - 75020 PARIS', '\0\0\0\0\0\0\0<xÇ l,@Œ¨¡`oH@'),
(267, 20047, '20047 - COURS DE VINCENNES BD DAVOUT', '107 COURS DE VINCENNES - 75020 PARIS', '\0\0\0\0\0\0\0(€~ŽzH@\rXulH@'),
(268, 15026, '15026 - BIR HAKEIM', 'FACE 6 BOULEVARD DE GRENELLE - 75015 PARIS', '\0\0\0\0\0\0\0¸ 	QQ@ŸÃJmH@'),
(269, 2022, '02022 - BONNE NOUVELLE SAINT FIACRE', '20 RUE SAINT FIACRE - 75002 PARIS', '\0\0\0\0\0\0\0°{DjÄ@ædÏuoH@'),
(270, 20006, '20006 - PYRÃ‰NÃ‰ES - PLAINE', '33 RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\0·ƒ|,@@ëLè%ÖlH@'),
(271, 16044, '16044 - STADE FRANCAIS', '24 AVENUE DE LA PORTE DE SAINT CLOUD - 75016 PARIS', '\0\0\0\0\0\0\0Ò*¿|@À õZkH@'),
(272, 17033, '17033 - CARNOT', '8 AVENUE CARNOT - 75017 PARIS', '\0\0\0\0\0\0\0. 7Y@7ƒš¤pH@'),
(273, 20035, '20035 - PYRENEES', '262 RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\0^¤¿¸\n)@!ïëHoH@'),
(274, 18040, '18040 - CHAPELLE MARX DORMOY', '29 BOULEVARD DE LA CHAPELLE - 75018 PARIS', '\0\0\0\0\0\0\0OÓÀ³¸á@2\'‚—9qH@'),
(275, 10021, '10021 - MARCHE ST QUENTIN', '4 RUE DES PETITS HOTELS - 75010 PARIS', '\0\0\0\0\0\0\0æÈ\nÖ@0H4MpH@'),
(276, 10006, '10006 - PETITES ECURIES', '5 RUE DES PETITES ECURIES - 75010 PARIS', '\0\0\0\0\0\0\0h7Õ@|…}¼oH@'),
(277, 18026, '18026 - RUISSEAU ORDENER', '37 RUE DU RUISSEAU - 75018 PARIS', '\0\0\0\0\0\0\0+WP¤¸@}²…dJrH@'),
(278, 16016, '16016 - PAUL DOUMER / LA TOUR', '53 AVENUE PAUL DOUMER - 75016 PARIS', '\0\0\0\0\0\0\0]›iK)?@ðÍàHnH@'),
(279, 19009, '19009 - CITE DES SCIENCES', '28BIS AVENUE CORENTIN CARIOU - 75019 PARIS', '\0\0\0\0\0\0\0ðK1Ã@†ÂrH@'),
(280, 19101, '19101 - SIMON BOLIVAR', '36 AVENUE SIMON BOLIVAR - 75019 PARIS', '\0\0\0\0\0\0\0ßy¼>Œ@ÿ’—NpH@'),
(281, 17044, '17044 - PORTE DE SAINT OUEN', '1 AVENUE DE LA PORTE DE SAINT OUEN - 75017 PARIS', '\0\0\0\0\0\0\0Q-7Ì @†ïrH@'),
(282, 12107, '12107 - DIDEROT BOURDAN', '146 BOULEVARD DIDEROT - 75012 PARIS', '\0\0\0\0\0\0\0#×·n5@	” ìlH@'),
(283, 7014, '07014 - SAINT FRANCOIS XAVIER', '35 BOULEVARD DES INVALIDES - 75007 PARIS', '\0\0\0\0\0\0\0ÿ°=¿^„@ç<ÎÊmH@'),
(284, 14001, '14001 - EDGAR QUINET', '13 BOULEVARD EDGAR QUINET - 75014 PARIS', '\0\0\0\0\0\0\0°a›x˜@‘OÄ«kH@'),
(285, 12021, '12021 - COURTELINE', '1 - 3  et 5 avenue Courteline (angle boulevard Soult) - 75012 PARIS', '\0\0\0\0\0\0\0¸Æ»ì«I@0ºklH@'),
(286, 3009, '03009 - TEMPLE 113', '76 RUE DU TEMPLE - 75003 PARIS', '\0\0\0\0\0\0\0C˜—ÿUÚ@ñ¦—JHnH@'),
(287, 3004, '03004 - REPUBLIQUE 23', '19 PLACE DE LA REPUBLIQUE - 75003 PARIS', '\0\0\0\0\0\0\0Õ&Nîwè@Þ«V&ünH@'),
(288, 19105, '19105 - PORTE BRUNET', 'FACE 1 AVENUE AMBROISE RENDU - 75019 PARIS', '\0\0\0\0\0\0\0¨Pýn*@{ä¹¾qH@'),
(289, 18001, '18001 - DAMREMONT CAULAINCOURT', '6 RUE DAMREMONT - 75018 PARIS', '\0\0\0\0\0\0\0aEž‹C©@5\\*7’qH@'),
(290, 15108, '15108 - LOURMEL - MARIE SKOBTSOV', '84 RUE DE LOURMEL - 75015 PARIS', '\0\0\0\0\0\0\0û’[L@3ü§(lH@'),
(291, 20030, '20030 - PERE LACHAISE', '54 BOULEVARD MENILMONTANT - 75020 PARIS', '\0\0\0\0\0\0\0ê™7°Ù@8§RA„nH@'),
(292, 2020, '02020 - OPERA CASANOVA', '02 RUE DANIEL CASANOVA - 75002 PARIS', '\0\0\0\0\0\0\0=a¹ˆª@\'ÁäEoH@'),
(293, 14104, '14104 - LOSSERAND BOYER-BARRET', '4 RUE BOYER BARRET - 75014 PARIS', '\0\0\0\0\0\0\0OÜóü‰@Ö{L¤jH@'),
(294, 11004, '11004 - CHARONNE SAINT ANTOINE', '3 RUE DE CHARONNE - 75011 PARIS', '\0\0\0\0\0\0\0¹1Æýþ@©I‹³mH@'),
(295, 16022, '16022 - RUE JEAN BOLOGNE', '16 RUE JEAN BOLOGNE - 75016 PARIS', '\0\0\0\0\0\0\0úœÆ\0=@ÜàxÀÄmH@'),
(296, 19106, '19106 - GARE EMGP', '35, rue de la Gare - 75019 PARIS', '\0\0\0\0\0\0\0Aš±h:û@³µ¾HhsH@'),
(297, 13010, '13010 - PLACE D ITALIE AURIOL', 'FACE 11 PLACE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0¦ÿÊñ‰Ú@šwÑLqjH@'),
(298, 17107, '17107 - BERTHIER STUART MERRIL', '182 BOULEVARD BERTHIER - 75017 PARIS', '\0\0\0\0\0\0\0/i‡%‹X@ˆzô™eqH@'),
(299, 13101, '13101 - CROULEBARBE RECULETTES', '67-69 RUE DE CROULEBARBE - 75013 PARIS', '\0\0\0\0\0\0\0:É½0íÈ@:uÅ2bjH@'),
(300, 42503, '42503 - LENINE (ARCUEIL/GENTILLY)', '71 AVENUE VLADIMIR LITCH LENINE - 94110 ARCUEIL', '\0\0\0\0\0\0\0\'«ØNJ§@ayFhH@'),
(301, 13151, '13151 - GARE D\'AUSTERLITZ', 'GARE D\'AUSTERLITZ - 75013 PARIS', '\0\0\0\0\0\0\0Ÿo©Òí@ºß|	˜kH@'),
(302, 8029, '08029 - PLACE DU CANADA', '1 AVENUE FRANKLIN ROOSEVELT - 75008 PARIS', '\0\0\0\0\0\0\0ÙuáF{@lP£ªÃnH@'),
(303, 15034, '15034 - COMMERCE', '2 RUE LAKANAL - 75015 PARIS', '\0\0\0\0\0\0\0?íe2Z@É+&lH@'),
(304, 3003, '03003 - TURENNE BRETAGNE', '4 RUE DES FILLES DU CALVAIRE - 75003 PARIS', '\0\0\0\0\0\0\0Dµú¡kë@ã]YZnH@'),
(305, 13046, '13046 - OUDINE PATAY', '10 RUE EUGENE OUDINE - 75013 PARIS', '\0\0\0\0\0\0\04«Û9\0@@@Þõ°iH@'),
(306, 20023, '20023 - PELLEPORT BELGRAND', '44 RUE PELLEPORT - 75020 PARIS', '\0\0\0\0\0\0\0ÑNZ;@Z/ÉX¸nH@'),
(307, 1012, '01012 - BOURSE DU COMMERCE', 'FACE 29 RUE JEAN JACQUES ROUSSEAU - 75001 PARIS', '\0\0\0\0\0\0\0Ñgˆ:»@NcS¹vnH@'),
(308, 13111, '13111 - CIMETIERE DE GENTILLY', 'RUE DE LA POTERNE DES PEUPLIERS - 75013 PARIS', '\0\0\0\0\0\0\0Z+AzÓ@»¯äÇhH@'),
(309, 42008, '42008 - CASANOVA (IVRY)', '128 AVENUE DANIEL CASANOVA - 94200 IVRY', '\0\0\0\0\0\0\0À\0q Û@¶œZé7hH@'),
(310, 12041, '12041 - BOIS DE VINCENNES', 'AVENUE DAUMESNIL - 75012 PARIS', '\0\0\0\0\0\0\0ïÈØýÅN@l‡Ä3µjH@'),
(311, 21104, '21104 - SANZILLON (CLICHY)', '64 RUE DE MADAME DE SANZILLON - 92110 CLICHY', '\0\0\0\0\0\0\0< Ï}¬@Š,­«sH@'),
(312, 11009, '11009 - RUE DES BOULETS', '45 RUE DES BOULETS - 75011 PARIS', '\0\0\0\0\0\0\0¹†b·@ÿcÑ©mH@'),
(313, 19031, '19031 - MANIN CRIMEE', '8 RUE MANIN - 75019 PARIS', '\0\0\0\0\0\0\0<÷…>@üŒ,qH@'),
(314, 23010, '23010 - VOLTAIRE (LEVALLOIS)', '47 RUE VOLTAIRE - 92300 LEVALLOIS-PERRET', '\0\0\0\0\0\0\0/D\rF@}TÒ+rH@'),
(315, 13031, '13031 - ITALIE MAISON BLANCHE', '170 AVENUE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0•~¾žÞ@¬Ò¥¿iH@'),
(316, 9017, '09017 - TRUDAINE MARTYRS', '01 RUE LALLIER - 75009 PARIS', '\0\0\0\0\0\0\0½àZïç¹@í_U©ÅpH@'),
(317, 12026, '12026 - PARC DE BERCY', '61 RUE DE BERCY - 75012 PARIS', '\0\0\0\0\0\0\0Ä”öÇ@$¾ît:kH@'),
(318, 12012, '12012 - REUILLY DIDEROT', '71 BOULEVARD DIDEROT - 75012 PARIS', '\0\0\0\0\0\0\0åíoçí@öœ4tlH@'),
(319, 5026, '05026 - MOUFFETARD SAINT MEDARD', '3 RUE PASCAL - 75005 PARIS', '\0\0\0\0\0\0\04\Z-©Ì@ÂúN&dkH@'),
(320, 11045, '11045 - SAINT SEBASTIEN FROISSARD', '12 BD DES FILLES DU CALVAIRE - 75011 PARIS', '\0\0\0\0\0\0\0þmòjVð@žš–÷;nH@'),
(321, 32602, '32602 - POULMARCH (LES LILAS)', '7 RUE JEAN POULMARCH - 93260 LES LILAS', '\0\0\0\0\0\0\0€›ƒ\nLT@K`R.pH@'),
(322, 18046, '18046 - FOURCHE', '12 RUE ETIENNE JOGELLE - 75018 PARIS', '\0\0\0\0\0\0\0›j½ç›@zö¨qH@'),
(323, 10014, '10014 - BEAUREPAIRE', '14 RUE DE MARSEILLE - 75010 PARIS', '\0\0\0\0\0\0\0Úm2ÞUé@C7a¤’oH@'),
(324, 19115, '19115 - PORTE DE LA VILLETTE', '1 AVENUE DE LA PORTE DE LA VILLETTE - 75019 PARIS', '\0\0\0\0\0\0\0VÃ<Æ@àÝØ¸sH@'),
(325, 12113, '12113 - CARDINAL LAVIGERIE', '4 PLACE DU CARDINAL LAVIGERIE - 75012 PARIS', '\0\0\0\0\0\0\0m²¶™8@™Ôp–jH@'),
(326, 20042, '20042 - PYRENEES ERMITAGE', '300 RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\0Bsß%H"@÷ä_Ú¢oH@'),
(327, 7023, '07023 - BOURDONNAIS TOUR EIFFEL', 'QUAI BRANLY - 75007 PARIS', '\0\0\0\0\0\0\0hS€Rc]@q­\'æ1nH@'),
(328, 18113, '18113 - LEPIC', '70 - 72 RUE LEPIC - 75018 PARIS', '\0\0\0\0\0\0\0$—€Ï³¬@Gþ›qH@'),
(329, 19027, '19027 - SERRURIER', 'FACE 109 BOULEVARD SERURIER - 75019 PARIS', '\0\0\0\0\0\0\0wù\Z@ä.@baü²·pH@'),
(330, 33102, '33102 - JAURES 1 (PRE SAINT GERVAIS)', 'RUE GABRIEL PERI ANGLE AVENUE JAURES - 93310 LE PRE SAINT GERVAIS', '\0\0\0\0\0\0\0Ÿx¸ñ~B@ìX·yqH@'),
(331, 19026, '19026 - DANUBE', '53 RUE MIGUEL HIDALGO - 75019 PARIS', '\0\0\0\0\0\0\0ôrÕ#@» p×ãpH@'),
(332, 17028, '17028 - PORTE DE COURCELLE', '34 BOULEVARD DE REIMS - 75017 PARIS', '\0\0\0\0\0\0\0NüÜ^@‰¯ö2ÄqH@'),
(333, 17030, '17030 - RENNEQUIN PEREIRE', '143 BOULEVARD DE PEREIRE - 75017 PARIS', '\0\0\0\0\0\0\0:è¯x\\@;»yqH@'),
(334, 10017, '10017 - GARE DE L\'EST SAINT LAURENT', '1 RUE DE LA FIDELITE - 75010 PARIS', '\0\0\0\0\0\0\0<ý.C¸Ú@Fo&òoH@'),
(335, 15103, '15103 - SQUARE DES CÃ‰VENNES', '01 RUE CAUCHY - 75015 PARIS', '\0\0\0\0\0\0\0OHÿk3@xýŠõkH@'),
(336, 8033, '08033 - SAINT PHILIPPE DU ROULE', '1 RUE DU CDT RIVIERE - 75008 PARIS', '\0\0\0\0\0\0\0ú^2ÖOz@+Ë¸·oH@'),
(337, 19025, '19025 - BOTZARIS', 'FACE 80 RUE BOTZARIS - 75019 PARIS', '\0\0\0\0\0\0\0‚žF—@<x•pH@'),
(338, 4018, '04018 - RIVOLI SEBASTOPOL', '1 RUE SAINT BON - 75004 PARIS', '\0\0\0\0\0\0\0¹LÂ·>Í@6¬îÒmH@'),
(339, 16118, '16118 - MICHEL ANGE', '91 RUE MICHEL ANGE - 75016 PARIS', '\0\0\0\0\0\0\0æ`5&@Õ™kH@'),
(340, 2107, '02107 - THOREL', '11 RUE THOREL - 75002 PARIS', '\0\0\0\0\0\0\0ÊÇƒ)¾Ê@ï-#.\\oH@'),
(341, 42706, '42706 - SALENGRO (KREMLIN BICETRE)', '3 RUE ROGER SALENGRO -  94270 LE KREMLIN BICETRE', '\0\0\0\0\0\0\0lõe	ä@{õSÜFhH@'),
(342, 12128, '12128 - ROUTE DE LA PYRAMIDE- ECOLE DU BREUIL', 'Pyramide  (proche rond-point Route de la Ferme) - 75012 PARIS', '\0\0\0\0\0\0\0]›«@·e¥IiH@'),
(343, 20025, '20025 - GAMBETTA GATINES', '13 RUE DES GATINES - 75020 PARIS', '\0\0\0\0\0\0\0C’\n[¹.@TÑi<ÅnH@'),
(344, 28003, '28003 - JAURES (PUTEAUX)', '152 RUE JEAN JAURES - 92800 PUTEAUX', '\0\0\0\0\0\0\0ÐiAHæ@•\0E³pH@'),
(345, 14009, '14009 - COTY TOMBE D\'ISSOIRE', '49 RUE DE LA TOMBE D\'ISSOIRE - 75014 PARIS', '\0\0\0\0\0\0\0è“–«@2{³¨OjH@'),
(346, 11035, '11035 - GONCOURT', '140 AVENUE PARMENTIER - 75011 PARIS', '\0\0\0\0\0\0\0„~˜Jèø@^à¯ÇJoH@'),
(347, 18101, '18101 - CHAMPIONNET', '32 RUE CHAMPIONNET - 75018 PARIS', '\0\0\0\0\0\0\0¾©íA†Ì@_³éÅžrH@'),
(348, 19123, '19123 - QUAI DE METZ', '7 QUAI DE METZ - 75019 PARIS', '\0\0\0\0\0\0\0d;ßO@cArH@'),
(349, 15011, '15011 - THEBAUD RUE DE CAMBRONNE', '32 RUE CAMBRONNE - 75015 PARIS', '\0\0\0\0\0\0\0EÀÀ…ýi@\'”64DlH@'),
(350, 12033, '12033 - SAINT EMILION', 'FACE 28 RUE FRANCOIS TRUFFAUT - 75012 PARIS', '\0\0\0\0\0\0\0+À›üÌ@lªf°jH@'),
(351, 9034, '09034 - GODOT DE MAUROY', '2 RUE GODOT DE MAUROY - 75009 PARIS', '\0\0\0\0\0\0\0OñGàœ@v&”½ZoH@'),
(352, 14035, '14035 - MAINE GAITE', '90 AVENUE DU MAINE - 75014 PARIS', '\0\0\0\0\0\0\0€1Iô•”@ø‹MÅ?kH@'),
(353, 21009, '21009 - LECORBUSIER (BOULOGNE-BILLANCOURT)', 'FACE AU 1 RUE LECORBUSIER - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0«&Aí@c+4‡CkH@'),
(354, 20039, '20039 - COURONNES', '44 BOULEVARD DE BELLEVILLE - 75020 PARIS', '\0\0\0\0\0\0\0ˆ)räÝ@Imr9oH@'),
(355, 16010, '16010 - BELLES FEUILLES', '4 RUE DES BELLES FEUILLES - 75016 PARIS', '\0\0\0\0\0\0\0WSLC@„øWZÔnH@'),
(356, 8052, '08052 - WASHINGTON', '2 RUE BALZAC - 75008 PARIS', '\0\0\0\0\0\0\0t{5Xf@$¼=¡ºoH@'),
(357, 17026, '17026 - WAGRAM COURCELLES', '105 RUE JOUFFROY D\'ABBANS - 75017 PARIS', '\0\0\0\0\0\0\0\\·î<»h@Žó±àpH@'),
(358, 42702, '42702 - LECLERC (KREMLIN BICETRE)', '73 RUE DU GENERAL LECLERC - 94270 LE KREMELIN BICETRE', '\0\0\0\0\0\0\0¨õdÀ‰Ý@Æv	º½gH@'),
(359, 14110, '14110 - ABBE CARTON', '89 RUE DE L\'ABBE CARTON - 75014 PARIS', '\0\0\0\0\0\0\0ŽE•Ò@Eó–óiH@'),
(360, 10152, '10152 - GARE DU NORD 2', '3 BOULEVARD DE DENAIN - 75010 PARIS', '\0\0\0\0\0\0\0×Å5]QÕ@­¤°„pH@'),
(361, 14107, '14107 - PORTE DE MONTROUGE 2', '2 AVENUE DE LA PORTE DE MONTROUGE - 75014 PARIS', '\0\0\0\0\0\0\0\n?ë_•@™Ó´eiH@'),
(362, 15031, '15031 - THEATRE', '60 RUE DU THEATRE - 75015 PARIS', '\0\0\0\0\0\0\0Ïlk“ºQ@ÞÌ‚ØlH@'),
(363, 11010, '11010 - ST ANTOINE GONNET', '1 RUE DES BOULETS - 75011 PARIS', '\0\0\0\0\0\0\0G,@>P"@N\n‡´lH@'),
(364, 7021, '07021 - BOSQUET SAINT DOMINIQUE', '37 AVENUE BOSQUET - 75007 PARIS', '\0\0\0\0\0\0\0;âZõn@	‰™LèmH@'),
(365, 16005, '16005 - POINCARE VICTOR HUGO', '89 AVENUE RAYMOND POINCARE - 75016 PARIS', '\0\0\0\0\0\0\0“B)ÕG@ºÖê0foH@'),
(366, 21303, '21303 - ILES (ISSY LES MOULINEAUX)', 'ANGLE AVENUE JEAN MONNET ET BOULEVARD DES ILES -  92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0Ë¾…Pÿ@¦ØÓfiH@'),
(367, 15041, '15041 - LABROUSTE', '13 RUE FRANQUET - 75015 PARIS', '\0\0\0\0\0\0\0\\Åx0‡t@“2õôšjH@'),
(368, 13055, '13055 - LAGROUA', '18 RUE MARIE ANDREE LAGROUA - 75013 PARIS', '\0\0\0\0\0\0\0mé±\n@ÌäijH@'),
(369, 21021, '21021 - PARADIS (BOULOGNE-BILLANCOURT)', 'FACE AU 128 RUE DES ENFANTS DU PARADIS - 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\0Ý—Y@·. z¥jH@'),
(370, 10025, '10025 - ECLUSES SAINT MARTIN', '148 QUAI DE JEMMAPES - 75010 PARIS', '\0\0\0\0\0\0\0„Á\Zi—í@5OOOpH@'),
(371, 20121, '20121 - MENILMONTANT BOYER', '27 RUE BOYER - 75020 PARIS', '\0\0\0\0\0\0\0ÃÅf£Û"@Grr8oH@'),
(372, 19011, '19011 - ROUVET DAMPIERRE', '2 RUE ROUVET - 75019 PARIS', '\0\0\0\0\0\0\0-²¦Àz@ˆßGZrH@'),
(373, 13038, '13038 - CHOISY POINT D\'IVRY', '28 AVENUE DE CHOISY - 75013 PARIS', '\0\0\0\0\0\0\0k¼\\è@/ÃG4iH@'),
(374, 1016, '01016 - OPERA PYRAMIDES', '27 RUE THERESE - 75001 PARIS', '\0\0\0\0\0\0\0¶Ãömë¬@g«ŠîènH@'),
(375, 1102, '01102 - FRANCAISE â€“ MAUCONSEIL', '6 RUE FRANCAISE - 75001 PARIS', '\0\0\0\0\0\0\0h3\ZjáÇ@"÷®™nH@'),
(376, 15057, '15057 - BOSSOUTROT - MARTIAL VALIN', 'face au 4 rue Lucien Bossoutrot angle Bd Martial Valin - 75015 PARIS', '\0\0\0\0\0\0\0!x|{×0@]xkH@'),
(377, 16025, '16025 - FONTAINE RAYNOUARD', '4 RUE JEAN DE LA FONTAINE - 75016 PARIS', '\0\0\0\0\0\0\0èêã—c4@‡®a(mH@'),
(378, 16017, '16017 - RUE DE SIAM', '1 BIS RUE DE SIAM - 75016 PARIS', '\0\0\0\0\0\0\0LØæè3@8¼ÚLnH@'),
(379, 20029, '20029 - PORTE DES LILAS', '57 RUE DES FRERES FLAVIEN - 75020 PARIS', '\0\0\0\0\0\0\0‹²J¤ÒI@{wŽepH@'),
(380, 22101, '22101 - GARE ROUTIERE ( SAINT CLOUD)', 'GARE ROUTIERE - ARRET TRAM - 92210 SAINT CLOUD', '\0\0\0\0\0\0\0n-f&Ç@©ƒ<ëkH@'),
(381, 20131, '20131 - REPOS', '41 RUE DU REPOS - 75020 PARIS', '\0\0\0\0\0\0\0·6~í@7/ÉuÿmH@'),
(382, 1003, '01003 - RIVOLI SAINT DENIS', '7 RUE SAINT DENIS - 75001 PARIS', '\0\0\0\0\0\0\0M`\níÇ@Vù¢ømH@'),
(383, 17001, '17001 - GUY MOQUET', 'RUE GUY MOQUET - 75017 PARIS', '\0\0\0\0\0\0\0yè%K@á¦ÙHrH@'),
(384, 1010, '01010 - PONT NEUF', '10 RUE BOUCHER - 75001 PARIS', '\0\0\0\0\0\0\0Ÿ5\\CÁ@©ùÝnH@'),
(385, 17016, '17016 - BROCHANT', '3 RUE BROCHANT - 75017 PARIS', '\0\0\0\0\0\0\0µ¨¹~îˆ@Üdt°qH@'),
(386, 11002, '11002 - ROQUETTE THIERE', '37 RUE DE LA ROQUETTE - 75011 PARIS', '\0\0\0\0\0\0\0—ì˜Æü@ù®‚tmH@'),
(387, 13120, '13120 - VITRY DESAULT', 'RUE PIERRE ET JOSEPH DESAULT - 75013 PARIS', '\0\0\0\0\0\0\0ð*îž@siH@'),
(388, 8004, '08004 - MALESHERBES PASQUIER', 'FACE 4 BD MALESHERBES - 75008 PARIS', '\0\0\0\0\0\0\0ûK^Š–@ðˆùûioH@'),
(389, 20113, '20113 - PARC DE BELLEVILLE', '30 RUE PIAT - 75020 PARIS', '\0\0\0\0\0\0\0†q@ãÄOCœoH@'),
(390, 10036, '10036 - AQUEDUC', '80 RUE DE L\'AQUEDUC - 75010 PARIS', '\0\0\0\0\0\0\0)	‘´×ï@2v°Æ!qH@'),
(391, 42207, '42207 - PARIS 3 (CHARENTON)', '136 RUE DE PARIS - 94220 CHARENTON', '\0\0\0\0\0\0\0pRœK<?@\\AçÏiH@'),
(392, 12028, '12028 - VIVALDI', '42 ALLEE VIVALDI - 75012 PARIS', '\0\0\0\0\0\0\0;í(:*@*À“\'ÄkH@'),
(393, 5008, '05008 - ST GERMAIN-DANTE', '9 RUE DE DANTE - 75005 PARIS', '\0\0\0\0\0\0\0þIíÃÄ@XÍeÒìlH@'),
(394, 2003, '02003 - ALLEE PIERRE LAZAEFF', '189 RUE SAINT DENIS - 75002 PARIS', '\0\0\0\0\0\0\0¥êuœ‡Î@yt#ÝÝnH@'),
(395, 1026, '01026 - COLONEL DRIANT', 'PLACE DU LIEUTENANT HENRI KARCHER - 75001 PARIS', '\0\0\0\0\0\0\0ØmCíª¸@j\Zä„nH@'),
(396, 20112, '20112 - JOURDAIN', '3 RUE DU JOURDAIN - 75020 PARIS', '\0\0\0\0\0\0\0(XÑ’@:›-CâoH@'),
(397, 16101, '16101 - MALAKOFF', '161 AVENUE MALAKOFF - 75016 PARIS', '\0\0\0\0\0\0\0Ä+j…D@‹—Jw7pH@'),
(398, 17110, '17110 - LEGENDRE', '83 RUE LEGENDRE - 75017 PARIS', '\0\0\0\0\0\0\0©ë@†¢qH@'),
(399, 15120, '15120 - AVIA', '26 RUE DU COLONEL PIERRE AVIA - 75015 PARIS', '\0\0\0\0\0\0\0‹¾mÐæ3@“ß›3jH@'),
(400, 10114, '10114 - HOPITAL SAINT LOUIS', '12 BIS RUE DE LA GRANGE AUX BELLES - 75010 PARIS', '\0\0\0\0\0\0\0^XÂbðî@ÆJHùoH@'),
(401, 17031, '17031 - PORTE DE CHAMPERET', 'PLACE DE LA PORTE DE CHAMPERET - 75017 PARIS', '\0\0\0\0\0\0\0ÒÔ]4…S@+ÚWé[qH@'),
(402, 6021, '06021 - BONAPARTE BEAUX ARTS', '17 RUE DES BEAUX ARTS - 75006 PARIS', '\0\0\0\0\0\0\0÷»J`ª­@Ö´½ŸmH@'),
(403, 16031, '16031 - BOULAINVILLIERS', '51 RUE DES VIGNES - 75016 PARIS', '\0\0\0\0\0\0\0ºÊû•3@~¦ùX–mH@'),
(404, 16103, '16103 - TRAKTIR', '3 RUE TRAKTIR - 75016 PARIS', '\0\0\0\0\0\0\0<‰=U@a{ûá·oH@'),
(405, 6027, '06027 - VAUGIRARD DESGOFFE', '2 RUE BLAISE DESGOFFE - 75006 PARIS', '\0\0\0\0\0\0\0äQ¹q˜@3/úûMlH@'),
(406, 8030, '08030 - MONTAIGNE', '25 RUE BAYARD - 75008 PARIS', '\0\0\0\0\0\0\0÷,<\'v@¨ÊúvoH@'),
(407, 4105, '04105 - MORLAND', '17 BOULEVARD DU MORLAND - 75004 PARIS', '\0\0\0\0\0\0\0VæMêç@F6}ËlH@'),
(408, 12120, '12120 - CONSERVATION', 'ROUTE DE LA CEINTURE DU LAC DAUMESNIL - 75012 PARIS', '\0\0\0\0\0\0\0d[z+ŸX@¹˜‹æòiH@'),
(409, 20044, '20044 - DAVOUT VOLGA', '63 BOULEVARD DAVOUT / ANGLE 84 RUE VOLGA 75020 PARIS', '\0\0\0\0\0\0\0><ÀH@ÄÙx,mH@'),
(410, 16018, '16018 - FLANDRIN', '2 BOULEVARD FLANDRIN - 75016 PARIS', '\0\0\0\0\0\0\0!Ù{Žù-@9õv¥nH@'),
(411, 13042, '13042 - NATIONALE BACH', '150 RUE NATIONALE - 75013 PARIS', '\0\0\0\0\0\0\0ÀÅoõ°é@»onÐ\\jH@'),
(412, 41302, '41302 - CHARLES DE GAULLE (NOGENT)', 'FACE AU 60 AVENUE CHARLES DE GAULLES - 94130 NOGENT SUR MARNE', '\0\0\0\0\0\0\0¦Í\\ñÕ@FÇJÐkH@'),
(413, 23004, '23004 - COUTURIER 2 (LEVALLOIS)', '109 RUE  PAUL VAILLANT COUTURIER - 92300 LEVALLOIS', '\0\0\0\0\0\0\0\\‹YýÌY@áÊºørH@'),
(414, 12109, '12109 - CHAROLAIS', '212 RUE DE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0¯}T»@;ÐFœ¡kH@'),
(415, 9030, '09030 - VICTOIR CHAUSSEE D ANTIN', '79 RUE DE LA VICTOIRE - 75009 PARIS', '\0\0\0\0\0\0\0Ž˜§¨@&H$pH@'),
(416, 18017, '18017 - PECQUEUR', '93 RUE CAULAINCOURT - 75018 PARIS', '\0\0\0\0\0\0\0ÇNµ\n—´@å1÷àqH@'),
(417, 18107, '18107 - CHARTRES', '22-24 RUE DE CHARTRES - 75018 PARIS', '\0\0\0\0\0\0\0ÆsS÷!Ô@k­>qH@'),
(418, 15008, '15008 - SEVRES LECOURBE', 'FACE 4 BOULEVARD PASTEUR - 75015 PARIS', '\0\0\0\0\0\0\0ix×e\Z}@À÷¦#lH@'),
(419, 7018, '07018 - SEGUR ESTREES', '23 AVENUE DE SEGUR - 75007 PARIS', '\0\0\0\0\0\0\0>8õ\\z@9*w6÷lH@'),
(420, 19044, '19044 - GRANDS MOULINS', 'RUE DE LA CLOTURE / ANGLE RUE DU DEBARCADERE - 75019 PARIS', '\0\0\0\0\0\0\0Ú	—x++@dW(ÕrH@'),
(421, 10012, '10012 - VINAIGRIERS', '58 RUE DES VINAIGRIERS - 75010 PARIS', '\0\0\0\0\0\0\0«ëåß@¥<™=ÇoH@'),
(422, 7022, '07022 - PONT DE L\'ALMA', '3 AVENUE BOSQUET - 75007 PARIS', '\0\0\0\0\0\0\0\r†{:k@gKc<JnH@'),
(423, 35012, '35012 - CANDALE (PANTIN)', 'FACE AU 12 RUE CANDALE - 93500 PANTIN', '\0\0\0\0\0\0\0¼_u€P@ ò¬ÚqH@'),
(424, 1009, '01009 - PONT NEUF - 14', '14 RUE DU PONT NEUF - 75001 PARIS', '\0\0\0\0\0\0\0Wïò1Á@†‡¸ƒnH@'),
(425, 15051, '15051 - ROLLET', '1 PLACE HENRI ROLLET - 75015 PARIS', '\0\0\0\0\0\0\0¢ÞøIY@˜ñlkH@'),
(426, 20107, '20107 - STADE MARYSE HILSZ', '26 RUE MARYSE HILSZ - 75020 PARIS', '\0\0\0\0\0\0\0»¦KGM@1UzêölH@'),
(427, 8012, '08012 - CLICHY', '10 BOULEVARD DES BATIGNOLLES SUR TPC - 75008 PARIS', '\0\0\0\0\0\0\0{ðœ@<ÐqH@'),
(428, 3012, '03012 - GAITE LYRIQUE', 'FACE 8 RUE SALOMON DE CAUS - 75003 PARIS', '\0\0\0\0\0\0\04V=LÔ@sì’,\noH@'),
(429, 10105, '10105 - BONNE NOUVELLE PROP2', '2 RUE DE MAZAGRAN - 75010 PARIS', '\0\0\0\0\0\0\0\r*¿lÏ@iö¦EeoH@'),
(430, 9033, '09033 - HAVRE CAUMARTIN', 'FACE 45 RUE CAUMARTIN - 75009 PARIS', '\0\0\0\0\0\0\03c\nd @u;I¿·oH@'),
(431, 14116, '14116 - ROMAIN ROLLAND', '49-51 BD ROMAIN ROLLAND - 75014 PARIS', '\0\0\0\0\0\0\0<Jž‚•@ÿ€]\0iH@'),
(432, 12027, '12027 - MONTGALLET CHARENTON', '2 RUE MONTGALLET - 75012 PARIS', '\0\0\0\0\0\0\0à“>£Ý@kÈåáÛkH@'),
(433, 13034, '13034 - EDISON', '54 AVENUE EDISON - 75013 PARIS', '\0\0\0\0\0\0\0`€(xã@ÚÁ‹jH@'),
(434, 9026, '09026 - BRUYERE PIGALLE', '28 RUE J.B.PIGALLE - 75009 PARIS', '\0\0\0\0\0\0\0äÞ·o«@^QpH@'),
(435, 17013, '17013 - LEGENDRE', '62 RUE LEGENDRE - 75017 PARIS', '\0\0\0\0\0\0\0T:o#ˆ@kVqH@'),
(436, 31004, '31004 - PARIS 2 (MONTREUIL)', '175/179 RUE DE PARIS - 93100 MONTREUIL', '\0\0\0\0\0\0\08ª§Á^`@.8(mH@'),
(437, 9106, '09106 - AUBER', '3 RUE BOUDREAU - 75009 PARIS', '\0\0\0\0\0\0\0¹$êÈ¨¢@Ôî£oH@'),
(438, 16028, '16028 - MILLET - JEAN DE LA FONTAINE', '12 RUE FRANCOIS MILLET - 75016 PARIS', '\0\0\0\0\0\0\0\\?òz.@F¶LºílH@'),
(439, 18034, '18034 - LEIBNITZ', '50 RUE LEIBNITZ - 75018 PARIS', '\0\0\0\0\0\0\0;[9™Èª@K­\'ãºrH@');
INSERT INTO `Station` (`id`, `Number`, `Name`, `Address`, `Location`) VALUES
(440, 5010, '05010 - SAINT MICHEL HENRI BARBUSSE', '1 RUE HENRI BARBUSSE - 75005 PARIS', '\0\0\0\0\0\0\0ÉQqæ¶@ ;:\0lH@'),
(441, 12102, '12102 - DIDEROT BERCY', '224 RUE DE BERCY - 75012 PARIS', '\0\0\0\0\0\0\0ˆÄo—ö@—GpãOlH@'),
(442, 5019, '05019 - POISSY', '8-10 RUE DE POISSY - 75005 PARIS', '\0\0\0\0\0\0\0=EâÒ@ÆGÈ§ÂlH@'),
(443, 16038, '16038 - RUE MOLITOR', 'RUE MOLITOR - 75016 PARIS', '\0\0\0\0\0\0\0ì»gû3 @Õ2„$,lH@'),
(444, 9022, '09022 - LAFITTE ROSSINI', '19 RUE ROSSINI - 75009 PARIS', '\0\0\0\0\0\0\0‚ž+P/´@qÔŒÏÉoH@'),
(445, 11030, '11030 - SAINT MAUR OBERKAMPF', '80 RUE OBERKAMPF - 75011 PARIS', '\0\0\0\0\0\0\0—&Fº@ê ziÂnH@'),
(446, 16130, '16130 - BOIS DE BOULOGNE / PORTE DE LA MUETTE 2', 'AVENUE LOUIS BARTHOU / PLACE DE LA COLOMBIE - 75016 PARIS', '\0\0\0\0\0\0\0ØÛ~Ù#@cº°žnH@'),
(447, 43009, '43009 - MURS DU PARC (VINCENNES)', 'AVENUE DES MURS DU PARC - 94300 VINCENNES', '\0\0\0\0\0\0\0]Dã£.ž@·\0:ilH@'),
(448, 15113, '15113 - FALGUIERE ARSONVAL', '2 RUE D\'ARSONVAL - 75015 PARIS', '\0\0\0\0\0\0\0ö¯¾ðC@ÛžŒ=’kH@'),
(449, 1001, '01001 - ILE DE LA CITE PONT NEUF', '41 QUAI DE L\'HORLOGE - 75001 PARIS', '\0\0\0\0\0\0\0©iu_æ»@þw¿-µmH@'),
(450, 18044, '18044 - CLICHY', '132 BOULEVARD DE CLICHY - 75018 PARIS', '\0\0\0\0\0\0\0,m«e¡@•H»+qH@'),
(451, 23001, '23001 - COUTURIER 1 (LEVALLOIS)', '2 RUE PAUL VAILLANT COUTURIER - 92300 LEVALLOIS', '\0\0\0\0\0\0\06rÑ*8@™Á÷arH@'),
(452, 17046, '17046 - MAC MAHON', '18 AVENUE MARC MAHON - 75017 PARIS', '\0\0\0\0\0\0\0ñßtc)[@ÐC©øRpH@'),
(453, 19018, '19018 - CITÃ‰ DE LA MUSIQUE', 'FACE 210 AVENUE JEAN JAURES - 75019 PARIS', '\0\0\0\0\0\0\0ÇøŸ8$@(«ñ½ÃqH@'),
(454, 16033, '16033 - MICHEL ANGE AUTEUIL', '85 RUE JEAN DE LA FONTAINE - 75016 PARIS', '\0\0\0\0\0\0\0‡+8e=@UàªF™lH@'),
(455, 14031, '14031 - DIDOT CHATEAU', '13 RUE DIDOT - 75014 PARIS', '\0\0\0\0\0\0\0ßO—n’@mV}®¶jH@'),
(456, 16029, '16029 - MAISON DE RADIO FRANCE', '1 RUE GROS - 75016 PARIS', '\0\0\0\0\0\0\0?Ã“X¹8@×Ô’\\ùlH@'),
(457, 17021, '17021 - WAGRAM (17EME ARR.)', 'RUE JOUFFROY D\'ABBANS - 75017 PARIS', '\0\0\0\0\0\0\0iãà¤¨q@1ye0qH@'),
(458, 19116, '19116 - JAURES VILLETTE', '180 BOULEVARD DE LA VILLETTE - 75019 PARIS', '\0\0\0\0\0\0\0‹ï!-Lö@P¦@ÔpH@'),
(459, 34010, '34010 - DIDEROT 2 (SAINT OUEN)', 'FACE 61-63 RUE DIDEROT- 93400 SAINT OUEN', '\0\0\0\0\0\0\0ô•žÙ«@I]?W®tH@'),
(460, 22006, '22006 - PIERRET (NEUILLY)', '33 RUE PIERRET - 92200 NEUILLY SUR SEINE', '\0\0\0\0\0\0\0ƒ4>º­@KqH@'),
(461, 15038, '15038 - PLACE ADOLPHE CHERIOUX', '18 PLACE ADOLPHE CHERIOUX - 75015 PARIS', '\0\0\0\0\0\0\0ènp†½g@:Ë)ykH@'),
(462, 19014, '19014 - LORRAINE', '28 RUE DE LORRAINE - 75019 PARIS', '\0\0\0\0\0\0\0‡cÑG@¦msqH@'),
(463, 20043, '20043 - CHARONNE AVRON', '48 BOULEVARD DE CHARONNE - 75011 PARIS', '\0\0\0\0\0\0\0À<Íïí/@(îPmH@'),
(464, 20036, '20036 - MENILMONTANT - PELLEPORT', '164 RUE DE MENILMONTANT - 75020 PARIS', '\0\0\0\0\0\0\0E„c»1@fÇN‡roH@'),
(465, 21207, '21207 - VERDIER (MONTROUGE)', 'AVENUE VERDIER ANGLE AVENUE DE LA REPUBLIQUE - 92120 MONTROUGE', '\0\0\0\0\0\0\0®¦ôF‰@©ÈhFchH@'),
(466, 15067, '15067 - DESAIX', '23 RUE DESAIX - 75015 PARIS', '\0\0\0\0\0\0\0ŽÅ8X@cˆ³(mH@'),
(467, 18114, '18114 - LEPIC VERON', '35 RUE VERON - 75018 PARIS', '\0\0\0\0\0\0\0åç9L­@„»"PqH@'),
(468, 9035, '09035 - PLACE DE BUDAPEST', '38 RUE DE LONDRES - 75009 PARIS', '\0\0\0\0\0\0\0ðâdž@ÍþÌ7ZpH@'),
(469, 2016, '02016 - ABOUKIR', '108 RUE D\'ABOUKIR - 75002 PARIS', '\0\0\0\0\0\0\0CLB.Í@öÄCD0oH@'),
(470, 5021, '05021 - JUSSIEU', '41 RUE JUSSIEU - 75005 PARIS', '\0\0\0\0\0\0\0"Í™‡ÂÓ@ó´Û‹plH@'),
(471, 18006, '18006 - MARCHE ST-PIERRE', 'PLACE SAINT PIERRE - 75018 PARIS', '\0\0\0\0\0\0\0«KÌÀ@UG“=qH@'),
(472, 4015, '04015 - MAIRIE DU 4 EME', '25 RUE DU PONT LOUIS PHILIPPE - 75004 PARIS', '\0\0\0\0\0\0\0Z¹è\\ÞÙ@-uJmH@'),
(473, 20117, '20117 - SAINT FARGEAU MORTIER', '72 RUE SAINT-FARGEAU - 75020 PARIS', '\0\0\0\0\0\0\0Ì»2,\0D@¹.¶oH@'),
(474, 17012, '17012 - MAIRIE DU 17EME', 'FACE 16 RUE DES BATIGNOLLES - 75017 PARIS', '\0\0\0\0\0\0\0#‡«Àà“@Q>.;*qH@'),
(475, 35009, '35009 - LOLIVE 1 (PANTIN)', '104 AVENUE LOLIVE - 93500 PANTIN', '\0\0\0\0\0\0\0¶¼GÚE@>9ÉŸ1rH@'),
(476, 19029, '19029 - SEINE FLANDRE', '51 QUAI DE LA SEINE - 75019 PARIS', '\0\0\0\0\0\0\0){.òlÿ@aY›Ÿ‚qH@'),
(477, 10004, '10004 - METZ', '7 RUE DE METZ - 75010 PARIS', '\0\0\0\0\0\0\0I:AÔ@$doyoH@'),
(478, 2010, '02010 - BOULEVARD MONTMARTRE', '21 RUE D\'UZES - 75002 PARIS', '\0\0\0\0\0\0\0®økÌ¾@)Ñ{”uoH@'),
(479, 9027, '09027 - FONTAINE DOUAI', '24 RUE DE DOUAI - 75009 PARIS', '\0\0\0\0\0\0\0ºC·ü…ª@GóðpH@'),
(480, 11040, '11040 - TEMPLE JEAN PIERRE TIMBAUD', '18 BD DU TEMPLE - 75011 PARIS', '\0\0\0\0\0\0\0ª<JèØí@_·Q¥nH@'),
(481, 21003, '21003 - JAURES 1 (BOULOGNE-BILLANCOURT)', '2 BOULEVARD JEAN JAURES -  92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\08•1Efå@	EÛÞ=lH@'),
(482, 13036, '13036 - TOLBIAC NATIONALE', '86 RUE TOLBIAC - 75013 PARIS', '\0\0\0\0\0\0\0†ŒA<âë@ßj¡Ý×iH@'),
(483, 42014, '42014 - CACHIN (IVRY)', 'PLACE MARCEL CACHIN - 94200 IVRY SUR SEINE', '\0\0\0\0\0\0\0 c<• @ÔuÓÁ5hH@'),
(484, 906, '00906 - GARE DE L\'EST', 'GARE DE L\'EST-PARVIS GARE DE L\'EST - 75010 PARIS', '\0\0\0\0\0\0\0Ã¦tpyÞ@Õ“B†.pH@'),
(485, 14117, '14117 - MOUCHOTTE', '5 RUE DU COMMANDANT RENE MOUCHOTTE - 75014 PARIS', '\0\0\0\0\0\0\0¥,ŒeP‘@«¬ž\0okH@'),
(486, 10031, '10031 - AQUEDUC', '48 RUE LOUIS BLANC - 75010 PARIS', '\0\0\0\0\0\0\0|$V´è@\Z	ÚHåpH@'),
(487, 13053, '13053 - CHEVALERET TOLBIAC', '56 RUE CHEVALERET - 75013 PARIS', '\0\0\0\0\0\0\04Ù@úé@‹‡}*jH@'),
(488, 9010, '09010 - CADET', '1/3 RUE DE ROCHECHOUART - 75009 PARIS', '\0\0\0\0\0\0\0ªªî QÁ@sŸ†[8pH@'),
(489, 1002, '01002 - PLACE DU CHATELET', '14 AVENUE VICTORIA - 75001 PARIS', '\0\0\0\0\0\0\0Ùà—5­Æ@\nš ûÐmH@'),
(490, 16107, '16107 - GODARD', '2 RUE BENJAMIN GODARD - 75016 PARIS', '\0\0\0\0\0\0\0a¤¯4@´Šñ‰ØnH@'),
(491, 13118, '13118 - PATAY REGNAULT', '36-38 RUE REGNAULT - 75013 PARIS', '\0\0\0\0\0\0\0³÷Ë+@fs„iH@'),
(492, 20013, '20013 - PLACE DE LA REUNION', '106 RUE ALEXANDRE DUMAS - 75020 PARIS', '\0\0\0\0\0\0\0Óòç¤2@¼ZøF|mH@'),
(493, 17043, '17043 - PLACE GENERAL KOENIG', '10 RUE BELIDOR - 75017 PARIS', '\0\0\0\0\0\0\0›þiªuH@¸Ù~«pH@'),
(494, 17105, '17105 - PALADINES', '18 BOULEVARD D\'AURELLE DE PALADINES - 75017 PARIS', '\0\0\0\0\0\0\0I=³c‘A@wqH@'),
(495, 14037, '14037 - JEAN MOULIN', '56 AVENUE JEAN MOULIN - 75014 PARIS', '\0\0\0\0\0\0\0^ä&“@”úÛ°iH@'),
(496, 8005, '08005 - MADELEINE', '04 PLACE DE LA MADELEINE - 75008 PARIS', '\0\0\0\0\0\0\0Ô¯æn˜@XX>oH@'),
(497, 5003, '05003 - GAY LUSSAC LE GOFF', '9 RUE LE GOFF - 75005 PARIS', '\0\0\0\0\0\0\0£¼Ž»@ßÀ›‘QlH@'),
(498, 11037, '11037 - FAUBOURG DU TEMPLE PLACE DE LA REPUBLIQUE', '2 RUE DU FAUBOURG DU TEMPLE - 75011 PARIS', '\0\0\0\0\0\0\0z]¢zë@Év¾Ÿ\ZoH@'),
(499, 10034, '10034 - CHAPELLE LOUIS BLANC', '68 RUE LOUIS BLANC - 75010 PARIS', '\0\0\0\0\0\0\01 ƒcá@&¦vù!qH@'),
(500, 21211, '21211 - MARNE (MONTROUGE)', '100 AVENUE DE LA MARNE - 92120 MONTROUGE', '\0\0\0\0\0\0\0ŒòƒUäl@)ˆkçgH@'),
(501, 16002, '16002 - PERGOLESE', 'FACE 25 RUE PERGOLESE - 75016 PARIS', '\0\0\0\0\0\0\0!´lÖF@ŸöpH@'),
(502, 13008, '13008 - ITALIE ROSALIE', 'FACE 2 PLACE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0{LY¦Ö@…üeÛ~jH@'),
(503, 21110, '21110 - VILLENEUVE (CLICHY)', 'FACE 51 RUE VILLENEUVE - 92110 CLICHY', '\0\0\0\0\0\0\0öre|@­«†çsH@'),
(504, 17041, '17041 - PORTE DE VILLIERS', '51 RUE GUERSANT - 75017 PARIS', '\0\0\0\0\0\0\0œ5îŒ$M@·$_#qH@'),
(505, 8102, '08102 - LAMENAIS WASHINGTON', '1 RUE LAMENNAIS - 75008 PARIS', '\0\0\0\0\0\0\09\n²›"m@pD©ÐoH@'),
(506, 11027, '11027 - SAINT AMBROISE PARMENTIER', '17 RUE SAINT AMBROISE - 75011 PARIS', '\0\0\0\0\0\0\0Õ‘@Q|ápZnH@'),
(507, 15027, '15027 - GIDE', '4 RUE ANDRE GIDE  - 75015 PARIS', '\0\0\0\0\0\0\0³·R—l€@˜pškH@'),
(508, 20045, '20045 - LOUIS GANNE', '3-5 RUE LOUIS GANNE - 75020 PARIS', '\0\0\0\0\0\0\0`œG@¶W,†nH@'),
(509, 10001, '10001 - JOHANN STRAUSS', 'FACE 50 RUE RENE BOULANGER - 75010 PARIS', '\0\0\0\0\0\0\0}Ò4ú7á@ö+oH@'),
(510, 15021, '15021 - CROIX NIVERT', 'DEV 2 RUE JOSEPH LOUVILLE - 75015 PARIS', '\0\0\0\0\0\0\00nma@>gè"lH@'),
(511, 9113, '09113 - BLEUE', '5 RUE BLEUE - 75009 PARIS', '\0\0\0\0\0\0\0»êFÇ@I=8î\ZpH@'),
(512, 5107, '05107 - PONTOISE', '1 RUE DE PONTOISE - 75005 PARIS', '\0\0\0\0\0\0\06˜ŒÓÑ@ô\nÜÎÛlH@'),
(513, 17040, '17040 - TERNES PEREIRE', '227 BOULEVARD PEREIRE SUR TPC - 75017 PARIS', '\0\0\0\0\0\0\0 ÝË¼M@”¬3¸pH@'),
(514, 41203, '41203 - STALINGRAD (FONTENAY SOUS BOIS)', '14 AVENUE STALINGRAD - 94120 FONTENAY SOUS BOIS', '\0\0\0\0\0\0\0»„zì¤@¼—RçÐlH@'),
(515, 15010, '15010 - CAMBRONNE', 'FACE 3 BD GARIBALDI - 75015 PARIS', '\0\0\0\0\0\0\0@>}Cl@¥LY}lH@'),
(516, 9012, '09012 - ROUGEMONT', '3-5 RUE ROUGEMONT - 75009 PARIS', '\0\0\0\0\0\0\0vTçEÄ@“Vü±ŽoH@'),
(517, 2015, '02015 - OPERA - CAPUCINES', '25 RUE LOUIS LE GRAND - 75002 PARIS', '\0\0\0\0\0\0\0ûåè¾$¬@Q<ÖloH@'),
(518, 34011, '34011 - DHALENNE (SAINT OUEN)', 'FACE AU 61 RUE ALBERT DHALENNE - 93400 SAINT OUEN', '\0\0\0\0\0\0\0¢½¨@ÏduH@'),
(519, 31706, '31706 - CHATEAU (BAGNOLET)', 'RUE DU CHATEAU - 93170 BAGNOLET', '\0\0\0\0\0\0\0Šó»1S@ÈrŒžwnH@'),
(520, 16123, '16123 - MAHATMA GANDHI', 'Avenue du Mahatma Gandhi face Ã  la Fondation Louis Vuitton dans le Bois de Boulogne - 75016 PARIS', '\0\0\0\0\0\0\0w„Ó‚@¢Óón,pH@'),
(521, 12002, '12002 - LACUEE', '17 RUE LACUEE - 75012 PARIS', '\0\0\0\0\0\0\0›ÄÊö@z›ú\Z³lH@'),
(522, 15009, '15009 - SUFFREN', '140 AVENUE DE SUFFREN - 75015 PARIS', '\0\0\0\0\0\0\0Â Á×t@\n$@plH@'),
(523, 12036, '12036 - REUILLY', '116 RUE DE REUILLY - 75012 PARIS', '\0\0\0\0\0\0\0(ìƒû3(@–AT\nkH@'),
(524, 14004, '14004 - PORT ROYAL COCHIN', '111 BD PORT ROYAL - 75014 PARIS', '\0\0\0\0\0\0\0´âæò¹@Ê4ë»QkH@'),
(525, 8001, '08001 - PETIT PALAIS', 'AV. DUTUIT - 75008 PARIS', '\0\0\0\0\0\0\0Æ°®ƒ·†@±ÚÜ¼ônH@'),
(526, 3101, '03101 - PORTE SAINT MARTIN', '62 RUE MESLAY - 75003 PARIS', '\0\0\0\0\0\0\0d»­g@Ø@ŒÙKz/oH@'),
(527, 10010, '10010 - JACQUES BONSERGENT', 'FACE 8 PLACE JACQUES BONSERGENT - 75010 PARIS', '\0\0\0\0\0\0\0…Ž\Zžã@°Œ{í|oH@'),
(528, 13122, '13122 - PARC DE CHOISY', 'FACE 153 AVENUE DE CHOISY - 75013 PARIS', '\0\0\0\0\0\0\0#ò×W<Þ@?(jH@'),
(529, 18029, '18029 - POTEAU', '1 RUE EMILE BLEMONT - 75018 PARIS', '\0\0\0\0\0\0\0¥z»@(\0\ZýrH@'),
(530, 21005, '21005 - MORIZET (BOULOGNE-BILLANCOURT)', '20 AVENUE ANDRE MORIZET - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0&i?úî@‘)¢ÅßjH@'),
(531, 15061, '15061 - DESNOUETTES', '12 SQUARE DESNOUETTES - 75015 PARIS', '\0\0\0\0\0\0\0_Ã•eìE@´°ÙjH@'),
(532, 14122, '14122 - BRUNE', '1 RUE DU COLONEL MONTEIL - 75014 PARIS', '\0\0\0\0\0\0\0Œàõey@ÃàÙÊiH@'),
(533, 18025, '18025 - MAIRIE DU 18 EME', '81 RUE MONT-CENIS - 75018 PARIS', '\0\0\0\0\0\0\0P<¢œ’Á@Q GcKrH@'),
(534, 7003, '07003 - BON MARCHE', 'RUE VELPEAU - 75007 PARIS', '\0\0\0\0\0\0\0¢U\nR¾™@®YúõlH@'),
(535, 10113, '10113 - PARMENTIER LOUVEL-TESSIER', '151 AVENUE PARMENTIER - 75010 PARIS', '\0\0\0\0\0\0\0€6<Œõ@‘)/`‰oH@'),
(536, 12030, '12030 - WATTIGNIES', '245 RUE DE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0âŽ’Ýe"@¸uG1kH@'),
(537, 10161, '10161 - GARE DE L\'EST', 'FACE 129 RUE DU FBG SAINT MARTIN - 75010 PARIS', '\0\0\0\0\0\0\0B^¿Fà@—˜OõpH@'),
(538, 16043, '16043 - PLACE DE PASSY', '2 PLACE DE PASSY - 75016 PARIS', '\0\0\0\0\0\0\0.éí4R8@k´i|ÌmH@'),
(539, 12123, '12123 - CHATEAU DE VINCENNES', 'COURS DES MARECHAUX - 94300 VINCENNES', '\0\0\0\0\0\0\0éjDJ€ƒ@àH¾ÊlH@'),
(540, 18122, '18122 - BINET', '5 RUE BINET - 75018 PARIS', '\0\0\0\0\0\0\0Ë%¶¢c¾@Ð û=sH@'),
(541, 908, '00908 - PORT DU GROS CAILLOU (STATION MOBILE)', 'BERGES DE SEINE, ESCALIER PORT DU GROS CAILLOU - 75007 PARIS', '\0\0\0\0\0\0\0ÇÙtps@GÉ«snH@'),
(542, 12126, '12126 - AVENUE DE GRAVELLE', 'FACE 71 AVENUE DE GRAVELLE - 75012 PARIS', '\0\0\0\0\0\0\0[IðïþX@ø˜1†iH@'),
(543, 14006, '14006 - SAINT JACQUES TOMBE ISSOIRE', '46 BOULEVARD SAINT JACQUES - 75014 PARIS', '\0\0\0\0\0\0\0¹ºB"\n²@d1ùú¥jH@'),
(544, 17117, '17117 - PEREIRE SAUSSURE', '2 BIS BOULEVARD PEREIRE - 75017 PARIS', '\0\0\0\0\0\0\0¼dÒy {@Fp.°qH@'),
(545, 6013, '06013 - JACQUES CALLOT', '1 RUE JACQUES CALLOT - 75006 PARIS', '\0\0\0\0\0\0\0m8‡ÒG³@ÒÑPüxmH@'),
(546, 8015, '08015 - ROQUEPINE', '4 RUE ROQUEPINE - 75008 PARIS', '\0\0\0\0\0\0\0J¨“›ï@ÐneÎoH@'),
(547, 5014, '05014 - CALVIN', '8 RUE JEAN CALVIN - 75005 PARIS', '\0\0\0\0\0\0\0m#ö£ÕÉ@Þ`ßžºkH@'),
(548, 19119, '19119 - BOURET PAILLERON', '20 RUE EDOUARD PAILLERON - 75019 PARIS', '\0\0\0\0\0\0\0¹†Ë@PÀø©¶pH@'),
(549, 13048, '13048 - TOLBIAC WURTZ', '20 RUE WURTZ - 75013 PARIS', '\0\0\0\0\0\0\0ÉB!Á@ïÊiH@'),
(550, 6003, '06003 - SAINT SULPICE', '15 RUE DU VIEUX COLOMBIER - 75006 PARIS', '\0\0\0\0\0\0\0Ÿ©lƒ¥@¡½óËmH@'),
(551, 8113, '08113 - PLACE ST AUGUSTIN', '5 PLACE SAINT AUGUSTIN - 75008 PARIS', '\0\0\0\0\0\0\0{Ðœ\nŽ@žŽÿzýoH@'),
(552, 19039, '19039 - PAILLERON', '6 RUE EDOUARD PAILLERON - 75019 PARIS', '\0\0\0\0\0\0\0­\\ý&©ÿ@·×°yœpH@'),
(553, 18012, '18012 - DOUDEAUVILLE STEPHENSON', '51 RUE STEPHENSON - 75018 PARIS', '\0\0\0\0\0\0\07Ÿ—Ù@-SÆqH@'),
(554, 21310, '21310 - KLEBER (ISSY LES MOULINEAUX)', '4 RUE KLEBER - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0Ø™l¢‘-@Ox©ÕØiH@'),
(555, 13025, '13025 - PLACE DE RUNGIS', 'FACE 35 RUE DE LA FONTAINE A MULARD - 75013 PARIS', '\0\0\0\0\0\0\0’˜²˜pÇ@)ÇŠ<FiH@'),
(556, 31702, '31702 - CURIE (BAGNOLET)', '40 PIERRE ET MARIE CURIE - 93170 BAGNOLET', '\0\0\0\0\0\0\0x iurd@bÅ¸qoH@'),
(557, 10002, '10002 - STRASBOURG', '3 BD STRASBOURG - 75010 PARIS', '\0\0\0\0\0\0\0üm‚Â©Õ@šÈB¥QoH@'),
(558, 43401, '43401 - GARE RER (JOINVILLE)', 'PARC DU STATIONNEMENT / GARE RER - 94340 JOINVILLE-LE-PONT', '\0\0\0\0\0\0\0¨ù\0S¶@iˆAôhH@'),
(559, 11025, '11025 - FROMENT BREGUET', '9 RUE FROMENT - 75011 PARIS', '\0\0\0\0\0\0\0`;Ô7°û@Äˆ³mH@'),
(560, 15114, '15114 - PASTEUR COTENTIN', 'FACE 1 RUE DU COTENTIN - 75015 PARIS', '\0\0\0\0\0\0\0x·îMƒ‡@„×ßHbkH@'),
(561, 11013, '11013 - NATION VOLTAIRE', '5 PLACE DE LA NATION - 75011 PARIS', '\0\0\0\0\0\0\01ÿOhÓ(@¼!ÍµlH@'),
(562, 17037, '17037 - BAYEN PEREIRE', '40 RUE BAYEN - 75017 PARIS', '\0\0\0\0\0\0\0oˆlØMV@4#6ÔßpH@'),
(563, 9101, '09101 - CADET LA FAYETTE', '24-26 RUE CADET - 75009 PARIS', '\0\0\0\0\0\0\0”ùK‰¿@—ÄôõpH@'),
(564, 11101, '11101 - SQUARE NORDLING', '15 RUE CHARLES DELESCLUZE - 75011 PARIS', '\0\0\0\0\0\0\0øÈqno@ÁË—«mH@'),
(565, 21012, '21012 - LECLERC (BOULOGNE-BILLANCOURT)', '745 AVENUE DU GENERAL LECLERC - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0û3¸³<à@óAÙ¦PjH@'),
(566, 20132, '20132 - REUNION', '4 RUE DE LA REUNION - 75020 PARIS', '\0\0\0\0\0\0\0jM¨£>;@,ÒFè mH@'),
(567, 12042, '12042 - MONTEMPOIVRE', '36-38 boulevard Soult - 75012 PARIS', '\0\0\0\0\0\0\0£\ZF@¸ƒÔ*’kH@'),
(568, 18038, '18038 - ROND POINT DE LA CHAPELLE', '70 RUE DE LA CHAPELLE - 75018 PARIS', '\0\0\0\0\0\0\0õKÜzá@#ªÚ–rH@'),
(569, 10153, '10153 - GARE DU NORD 3', '7 BOULEVARD DE DENAIN - 75010 PARIS', '\0\0\0\0\0\0\0›oÄðÕ@*®¯\0–pH@'),
(570, 10023, '10023 - VERDUN', '1 AVENUE DE VERDUN - 75010 PARIS', '\0\0\0\0\0\0\0?ÿZ\'ã@é¤¯á%pH@'),
(571, 8017, '08017 - ROCHER', '14 RUE ROCHER - 75008 PARIS', '\0\0\0\0\0\0\0YIô”@Ý^#pH@'),
(572, 20122, '20122 - DAVOUT VITRUVE', '98 RUE VITRUVE - 75020 PARIS', '\0\0\0\0\0\0\0k¯{##E@S)YnH@'),
(573, 8103, '08103 - D\'ARTOIS BERRY', '31 RUE D\'ARTOIS - 75008 PARIS', '\0\0\0\0\0\0\0çŒ¹-Ms@|o~ØoH@'),
(574, 32003, '32003 - METALLURGIE (SAINT DENIS)', 'AVENUE DU PRESIDENT WILSON / RUE DE LA METALLURGIE - 93200 SAINT DENIS', '\0\0\0\0\0\0\0¥7qIÝ@³¤ídtH@'),
(575, 43004, '43004 - MONTREUIL (VINCENNES)', '43 RUE DE MONTREUIL - 94300 VINCENNES', '\0\0\0\0\0\0\0›Õ+]ây@°“P‚ÚlH@'),
(576, 17019, '17019 - MALESHERBES', '20 RUE DE PHALSBOURG - 75017 PARIS', '\0\0\0\0\0\0\0iÂáâx@ß`SùpH@'),
(577, 17119, '17119 - TOQUEVILLE', '64 RUE DE TOQUEVILLE - 75017 PARIS', '\0\0\0\0\0\0\0–n—Ÿ½|@ÞiŽ3EqH@'),
(578, 2009, '02009 - BOURSE', '1 RUE DES FILLES SAINT THOMAS - 75002 PARIS', '\0\0\0\0\0\0\0Ê½ÈÅ·@Áv;ˆ6oH@'),
(579, 19016, '19016 - OURCQ', '78 RUE D\'HAUTPOUL - 75019 PARIS', '\0\0\0\0\0\0\0ÐÉÊ£@oGYuqH@'),
(580, 20115, '20115 - PORTE DE BAGNOLET', '102 RUE LOUIS LUMIERE - 75020 PARIS', '\0\0\0\0\0\0\0ˆ½ƒŸ…H@h="o¥nH@'),
(581, 11021, '11021 - PHILIPPE AUGUSTE (20EME ARR.)', '212 BOULEVARD CHARONNE - 75011 PARIS', '\0\0\0\0\0\0\0õ¥\0\r‰@ã»‡ámH@'),
(582, 8036, '08036 - RIO', '39 RUE DE LISBONNE - 75008 PARIS', '\0\0\0\0\0\0\0BÆö@z@oÍµwPpH@'),
(583, 9039, '09039 - CHAUSSEE D\'ANTIN', '22 rue de la ChaussÃ©e d\'Antin - 75009 PARIS', '\0\0\0\0\0\0\0^.â;1«@OGÉ«oH@'),
(584, 18002, '18002 - CLIGNANCOURT', '25 RUE DE CLIGNANCOURT - 75018 PARIS', '\0\0\0\0\0\0\0_O˜”Ç@5–DQqH@'),
(585, 41301, '41301 - CLEMENCEAU (NOGENT)', '2 AVENUE GEORGES CLEMENCEAU - 94130 NOGENT', '\0\0\0\0\0\0\0²S`4TÃ@”yï+kH@'),
(586, 19017, '19017 - PARC DE LA VILLETTE', '197 AVENUE JEAN JAURES - 75019 PARIS', '\0\0\0\0\0\0\0N>0<À @,bÐ¶qH@'),
(587, 18032, '18032 - PORTE DE CLIGNANCOURT', 'FACE 59 RUE BELLIARD - 75018 PARIS', '\0\0\0\0\0\0\0þÀ”<À@Ž”ßæàrH@'),
(588, 8039, '08039 - COLISEE', '6 RUE DU COLISEE - 75008 PARIS', '\0\0\0\0\0\0\0qC!Çv@ŸëÀókoH@'),
(589, 14101, '14101 - PLACE FERNAND MOURLOT', '33 BD EDGAR QUINET - 75014 PARIS', '\0\0\0\0\0\0\0µ –@Töèm¶kH@'),
(590, 4003, '04003 - PONT SAINT LOUIS', '1 QUAI AUX FLEURS - 75004 PARIS', '\0\0\0\0\0\0\0g •ÚÑ@ºtOL-mH@'),
(591, 18010, '18010 - MARX DORMOY - RIQUET', '100 RUE RIQUET - 75018 PARIS', '\0\0\0\0\0\0\0ÁÒñäá@S ¢,ôqH@'),
(592, 15060, '15060 - MONDRIAN', '9 PLACE DE LA MONTAGNE DU GOULET - 75015 PARIS', '\0\0\0\0\0\0\0‚¬- 8@ÛòâÉlH@'),
(593, 12105, '12105 - BERCY VILLOT', '153 RUE DE BERCY - 75012 PARIS', '\0\0\0\0\0\0\0Î¦aÏI@ëÃkH@'),
(594, 12003, '12003 - QUAI DE LA RAPEE', 'FACE 98 QUAI DE LA RAPEE - 75012 PARIS', '\0\0\0\0\0\0\0†–gï@\ZlFlH@'),
(595, 14103, '14103 - MAINE LIANCOURT', '132 / 136 AVENUE DU MAINE - 75014 PARIS', '\0\0\0\0\0\0\0€™²ƒ\0—@ežšcãjH@'),
(596, 13030, '13030 - ITALIE TOLBIAC', '88 AVENUE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0™±¹“Û@ó¸µiH@'),
(597, 8046, '08046 - ALMA MARCEAU', '2 Avenue MARCEAU - 75008 PARIS', '\0\0\0\0\0\0\0·È;éf@š¶µ°¾nH@'),
(598, 16023, '16023 - RUE DE PASSY', '1 RUE DE PASSY - 75016 PARIS', '\0\0\0\0\0\0\0I»‘nåE@ÃXØoßmH@'),
(599, 10035, '10035 - AUBERVILLIERS', '1 BOULEVARD DE LA CHAPELLE - 75010 PARIS', '\0\0\0\0\0\0\0{²ÁvÎé@z úQ2qH@'),
(600, 14127, '14127 - ODESSA', '5-7 RUE D\'ODESSA - 75014 PARIS', '\0\0\0\0\0\0\0‹å½Ñt˜@zAâkH@'),
(601, 21111, '21111 - LERICHE (CLICHY)', '14 RUE DU PROFESSEUR RENE LERICHE - 92110 CLICHY', '\0\0\0\0\0\0\0õoÍäÌu@µö<tH@'),
(602, 13016, '13016 - PRIMO LEVI', '9 RUE PRIMO LEVI - 75013 PARIS', '\0\0\0\0\0\0\0ªÆUÈ‡	@1fÍ„\\jH@'),
(603, 12010, '12010 - MICHEL BIZOT', '251 AVENUE DAUMESNIL - 75012 PARIS', '\0\0\0\0\0\0\0¥»-Uð6@ë:ã2kH@'),
(604, 20105, '20105 - GAUMONT', 'AVENUE BENOIT FRACHON - 75020 PARIS', '\0\0\0\0\0\0\0‘}áS@‘é5x mH@'),
(605, 19023, '19023 - MANIN SIMON BOLIVAR', 'FACE 1 RUE MANIN - 75019 PARIS', '\0\0\0\0\0\0\0RÌ1º	@·$1pH@'),
(606, 15125, '15125 - AQUABOULEVARD', '2 AVENUE DE LA PORTE DE SEVRES / AQUABOULEVARD - 75015 PARIS', '\0\0\0\0\0\0\0xªîö‰6@t yò¦jH@'),
(607, 8049, '08049 - DUNANT', '42 AVENUE GEORGE V - 75008 PARIS', '\0\0\0\0\0\0\0m°3²h@h—‰joH@'),
(608, 5017, '05017 - DESCARTES', '17 RUE DESCARTES - 75005 PARIS', '\0\0\0\0\0\0\0Å|<ÈÊ@©!/s]lH@'),
(609, 18037, '18037 - AMIRAUX', '48 RUE BOINOD - 75018 PARIS', '\0\0\0\0\0\0\0WÇ"I€Ñ@º=ËW€rH@'),
(610, 19033, '19033 - CAMBRAI', '30 RUE DE CAMBRAI - 75019 PARIS', '\0\0\0\0\0\0\0jb\0á@òYCg®rH@'),
(611, 5034, '05034 - CENSIER', '21 RUE CENSIER - 75005 PARIS', '\0\0\0\0\0\0\0€QÅgÔ@+S³É•kH@'),
(612, 6024, '06024 - SAINT GERMAIN DES PRES', '55 RUE DES SAINTS PERES - 75006 PARIS', '\0\0\0\0\0\0\0ZXü‡\'¤@nBIûMmH@'),
(613, 11014, '11014 - NATION TRONE', 'FACE 21 PLACE DE LA NATION - 75011 PARIS', '\0\0\0\0\0\0\0ËóSl}-@CG¾›lH@'),
(614, 20021, '20021 - PRAIRIE L INDRE', '2 RUE DE L\'INDRE - 75020 PARIS', '\0\0\0\0\0\0\0b`Œ@:@~qÒmnH@'),
(615, 2011, '02011 - BIBLIOTHEQUE NATIONALE', '71 RUE DE RICHELIEU - 75002 PARIS', '\0\0\0\0\0\0\0Åûojh´@fžes$oH@'),
(616, 32603, '32603 - CALMETTE (LES LILAS)', '1 ALLEE DOCTEUR CALMETTE - 93260 LES LILAS', '\0\0\0\0\0\0\0½ä\\åXf@ÿÊ’:ÉpH@'),
(617, 16121, '16121 - SABLONS MAILLOT', 'ROUTE PORTE DES SABLONS / PORTE MAILLOT - 75016 PARIS', '\0\0\0\0\0\0\0ÖÕF›*@\\\ZíypH@'),
(618, 7101, '07101 - SEVRES BABYLONE', 'BOULEVARD RASPAIL - 75007 PARIS', '\0\0\0\0\0\0\0£âãœ@ì+Ú@mH@'),
(619, 32006, '32006 - EGLISE SAINT JUSTE (SAINT DENIS)', 'AVENUE DU PRESIDENT WILSON / PARKING DE L\'EGLISE SAINT JUSTE - 93210 SAINT DENIS', '\0\0\0\0\0\0\08B\r,Þ@\nrÍ‘LtH@'),
(620, 18024, '18024 - CLIGNANCOURT MARCADET', '105 RUE DE CLIGNANCOURT - 75018 PARIS', '\0\0\0\0\0\0\0³ûëÊ@jÌiIrH@'),
(621, 20106, '20106 - MAIRIE DU 20ÃˆME', '44-46 AVENUE GAMBETTA - 75020 PARIS', '\0\0\0\0\0\0\0×èÚÕ\n1@«t½ÜÃnH@'),
(622, 903, '00903 - QUAI MAURIAC  / PONT DE BERCY', 'FETE DE L\'OH (BERCY) - QUAI MAURIAC ANG PONT DE BERCY - 75013 PARIS', '\0\0\0\0\0\0\0áÇ¼B¦þ@yI]2\'kH@'),
(623, 16105, '16105 - CREVAUX', '1 RUE CREVAUX - 75016 PARIS', '\0\0\0\0\0\0\0·\n\rË?@’—ð®voH@'),
(624, 9025, '09025 - TAITBOUT CHÃ‚TEAUDUN', '77 RUE TAITBOUT - 75009 PARIS', '\0\0\0\0\0\0\0ýÁa{Ï®@Yœ“Y-pH@'),
(625, 22002, '22002 - ARGENSON (NEUILLY)', '44 BOULEVARD D\'ARGENSON - 92200 NEUILLY', '\0\0\0\0\0\0\0äœ.z@ 6>¿qH@'),
(626, 13024, '13024 - BOBILLOT TOLBIAC', '81 RUE BOBILLOT - 75013 PARIS', '\0\0\0\0\0\0\0˜ÞÖR8Í@§eÙÔªiH@'),
(627, 9016, '09016 - MARTYRS CHORON', '24 RUE DE CHORON - 75009 PARIS', '\0\0\0\0\0\0\0°ëX.á·@góFÊZpH@'),
(628, 9037, '09037 - CLICHY PARME', '01 RUE DE PARME - 75009 PARIS', '\0\0\0\0\0\0\0„8Ì% @âŽ“VÍpH@'),
(629, 9001, '09001 - POISSONNIERE', '5 RUE DE BELLEFOND - 75009 PARIS', '\0\0\0\0\0\0\0£X½ÞÉ@ÓÏ÷QpH@'),
(630, 20002, '20002 - PIXERECOURT', 'FACE 65 RUE PIXERECOURT - 75020 PARIS', '\0\0\0\0\0\0\0ç"ßt+@~îÌØoH@'),
(631, 23009, '23009 - FRANCE (LEVALLOIS)', '18 RUE ANATOLE FRANCE - 92300 LEVALLOIS-PERRET', '\0\0\0\0\0\0\0sz4A\ZN@£ŒúÂqH@'),
(632, 19046, '19046 - PORTE DE PANTIN', '3 PLACE DE LA PORTE DE PANTIN - 75019 PARIS', '\0\0\0\0\0\0\0~óv…)@— ÌqH@'),
(633, 2017, '02017 - CAIRE', '40, rue du Caire - 75002 PARIS', '\0\0\0\0\0\0\0%•CË@BCÿoH@'),
(634, 19003, '19003 - QUAI DE SEINE', '3 QUAI DE LA SEINE - 75019 PARIS', '\0\0\0\0\0\0\0—×ê5iõ@šÉE1qH@'),
(635, 14023, '14023 - MALAKOFF PINARD', '76-78 BOULEVARD ADOLPHE PINARD - 75014 PARIS', '\0\0\0\0\0\0\0¾utNv@w,zmiH@'),
(636, 15020, '15020 - MAIRIE DU 15EME', '4 RUE LEON SECHE - 75015 PARIS', '\0\0\0\0\0\0\0À2ðÏmc@)œ8$½kH@'),
(637, 11039, '11039 - JULES FERRY REPUBLIQUE', 'FACE 121 BOULEVARD RICHARD LENOIR - 75011 PARIS', '\0\0\0\0\0\0\0Jwÿfô@m®¬ÒnH@'),
(638, 19041, '19041 - PYRÃ‰NÃ‰ES', '101 RUE DE BELLEVILLE - 75019 PARIS', '\0\0\0\0\0\0\0\rã+¹@·V)¬êoH@'),
(639, 17101, '17101 - ALEXANDRE CHARPENTIER', 'FACE 3 RUE ALEXANDRE CHARPENTIER - 75017 PARIS', '\0\0\0\0\0\0\0ÿúxbN@Âw2qH@'),
(640, 12018, '12018 - SAINT MANDE - FAVRE', '5 AVENUE SAINT MANDE - 75012 PARIS', '\0\0\0\0\0\0\0ƒ=ª¹Þ*@›C„ì<lH@'),
(641, 15001, '15001 - ARRIVEE', '8 RUE DE L\'ARRIVEE - 75015 PARIS', '\0\0\0\0\0\0\0ÓØo®a”@d®öÿkH@'),
(642, 33103, '33103 - JAURES 2 (PRE SAINT GERVAIS)', '34 AVENUE JEAN JAURES - 93310 LE PRE SAINT GERVAIS', '\0\0\0\0\0\0\0Ùò8C@5/ô&qH@'),
(643, 13014, '13014 - GARE D\'AUSTERLITZ', '5 BIS BOULEVARD DE L\'HOPITAL - 75013 PARIS', '\0\0\0\0\0\0\0¤ =gé@¾õ®××kH@'),
(644, 20109, '20109 - SURMELIN HAXO', '2 RUE HAXO - 75020 PARIS', '\0\0\0\0\0\0\0“TI@>@÷ïÏ¶IoH@'),
(645, 7103, '07103 - BELGRADE', '2 RUE DE BELGRADE - 75007 PARIS', '\0\0\0\0\0\0\0­1Yüj@…\ZúY“mH@'),
(646, 15006, '15006 - CHERCHE MIDI', '133 RUE DU CHERCHE MIDI - 75015 PARIS', '\0\0\0\0\0\0\0 a°äŠ@£êW:lH@'),
(647, 19013, '19013 - LAUMIERE', '8 & 1 RUE PETIT - 75019 PARIS', '\0\0\0\0\0\0\0lY×\n@0÷ñ9qH@'),
(648, 35011, '35011 - D\'ORVES (PANTIN)', '12 RUE HONORE D\'ESTIENNE D\'ORVES - 93500 PANTIN', '\0\0\0\0\0\0\0‚[²"‚@@[*`fûqH@'),
(649, 14032, '14032 - MOUTON DUVERNET - MAIRIE DU 14EME', '26 RUE MOUTON DUVERNET - 75014 PARIS', '\0\0\0\0\0\0\0k6Híkš@kôâfjH@'),
(650, 11046, '11046 - VOLTAIRE', '8 place de la rÃ©publique - 75011 PARIS', '\0\0\0\0\0\0\0\\Z\r‰{ì@BìL¡ónH@'),
(651, 4007, '04007 - BOURDON', 'BOULEVARD BOURDON - 75004 PARIS', '\0\0\0\0\0\0\0H§·0(ò@˜­t— mH@'),
(652, 11031, '11031 - PARMENTIER', '1 RUE JACQUARD - 75011 PARIS', '\0\0\0\0\0\0\0Îr\Zêü@KÍhÃ©nH@'),
(653, 19021, '19021 - MAIRIE DU 19 EME', '4 RUE ARMAND CARREL - 75019 PARIS', '\0\0\0\0\0\0\0å.d½@-”ÖÁøpH@'),
(654, 21014, '21014 - HAMEAU FLEURI (BOULOGNE-BILLANCOURT)', 'FACE AU 12 RUE DU HAMEAU FLEURIE - 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\0ê5‘´üí@AvAljH@'),
(655, 14010, '14010 - JEAN MOULIN ALESIA', '12 AVENUE JEAN MOULIN - 75014 PARIS', '\0\0\0\0\0\0\0ûB¿;(›@´×ééiH@'),
(656, 10039, '10039 - SAMBRE ET MEUSE', '37 RUE SAMBRE ET MEUSE - 75010 PARIS', '\0\0\0\0\0\0\0¶“1¦Žý@€ë]†ìoH@'),
(657, 12110, '12110 - BARON LE ROY TRUFFAUT', '57-61 RUE DES PIROGUES DE BERCY - 75012 PARIS', '\0\0\0\0\0\0\0 ‹ð˜Ã@³íö¶jH@'),
(658, 15048, '15048 - OLIVIER DE SERRE', 'PLACE AMEDEE GIORDANI - 75015 PARIS', '\0\0\0\0\0\0\0ëÕkV@Q\rROjH@'),
(659, 5015, '05015 - MOUFFETARD EPEE DE BOIS', '12 RUE DE L\'EPEE DE BOIS - 75005 PARIS', '\0\0\0\0\0\0\0Û-iéÃÌ@Xö²…¶kH@'),
(660, 2001, '02001 - SEBASTOPOL-GRENATA', '12 RUE GRENETA - 75002 PARIS', '\0\0\0\0\0\0\0×äsK8Ð@é¬f4ÀnH@'),
(661, 7015, '07015 - VARENNE', '9 BOULEVARD DES INVALIDES - 75007 PARIS', '\0\0\0\0\0\0\0ÈKÁ…@Óý¾®»mH@'),
(662, 16024, '16024 - KENNEDY RANELAGH', '4 RUE RANELAGH DEVANT RER - 75016 PARIS', '\0\0\0\0\0\0\0bô.W>@˜ðîé,mH@'),
(663, 11036, '11036 - JULES FERRY FAUBOURG DU TEMPLE', 'FACE 28 RUE JULES FERRY - 75011 PARIS', '\0\0\0\0\0\0\0..âVñ@wÞó(oH@'),
(664, 15109, '15109 - CEVENNES', '65 - 67 RUE DES CEVENNES - 75015 PARIS', '\0\0\0\0\0\0\0K,¢?@/ù\ZÕkH@'),
(665, 5004, '05004 - SAINT JACQUES VAL DE GRACE', '272 RUE SAINT JACQUES - 75005 PARIS', '\0\0\0\0\0\0\0BÀÎ Èº@—rCÂkH@'),
(666, 14012, '14012 - SIBELLE ALESIA', 'FACE 2 AVENUE DE LA SIBELLE - 75014 PARIS', '\0\0\0\0\0\0\0þö†µ@ÇmKoÑiH@'),
(667, 42007, '42007 - PIERRE ET MARIE CURIE (IVRY)', 'Angle Avenue de Verdun et rue Pierre et Marie Curie - 94200 IVRY', '\0\0\0\0\0\0\0»=|÷@ŒmDÌhH@'),
(668, 8028, '08028 - HOUSSAYE', '1 RUE ARSENE HOUSSAYE - 75008 PARIS', '\0\0\0\0\0\0\0BÆY´a@Ph°ÌoH@'),
(669, 18110, '18110 - DEPARTEMENT', 'FACE 53 RUE DU DEPARTEMENT - 75018 PARIS', '\0\0\0\0\0\0\0Üm*@dä@8ZB~qH@'),
(670, 31708, '31708 - NOISY (BAGNOLET)', '116-118 RUE DE NOISY LE SEC - 93170 BAGNOLET', '\0\0\0\0\0\0\0~SŒë3R@µ¤\0;îoH@'),
(671, 907, '00907 - PONT NEUF (STATION MOBILE)', '63 Voie Georges Pompidou  - 75001 Paris', '\0\0\0\0\0\0\0>øÿg@½@ZïtÝmH@'),
(672, 14112, '14112 - FAUBOURG SAINT JACQUES CASSINI', '24 RUE MECHAIN - 75014 PARIS', '\0\0\0\0\0\0\0ñ\rœ	/´@;º¦¶ýjH@'),
(673, 10107, '10107 - MAGENTA PARE', '9 RUE AMBROISE PARE - 75010 PARIS', '\0\0\0\0\0\0\0,4`—Ñ@åË«ºãpH@'),
(674, 23006, '23006 - GUESDE (LEVALLOIS)', '8 RUE JULES GUESDE - 92300 LEVALLOIS-PERRET', '\0\0\0\0\0\0\0“Pp\')\\@€¶rH@'),
(675, 20041, '20041 - BELLEVILLE', '116 BD DE BELLEVILLE - 75020 PARIS', '\0\0\0\0\0\0\0Ï7Hå!@£…vƒoH@'),
(676, 3014, '03014 - GRENIER SAINT LAZARE', 'FACE 34 RUE GRENIER SAINT LAZARE - 75003 PARIS', '\0\0\0\0\0\0\0%gtÒ@5ƒÈ×xnH@'),
(677, 3006, '03006 - MAIRIE DU 3EME', '10 RUE PERREE - 75003 PARIS', '\0\0\0\0\0\0\0ÌïIõƒä@—ò¨nH@'),
(678, 42203, '42203 - ELUARD (CHARENTON)', 'FACE AU 7 RUE PAUL ELUARD - 94220 CHARENTON', '\0\0\0\0\0\0\0‚]“jD@¸#«þiH@'),
(679, 6026, '06026 - SAINT PLACIDE CHERCHE MIDI', '28 RUE SAINT PLACIDE - 75006 PARIS', '\0\0\0\0\0\0\0<ï÷õ™@‹É°lH@'),
(680, 2002, '02002 - MONTORGUEIL ETIENNE MARCEL', '32 RUE ETIENNE MARCEL - 75002 PARIS', '\0\0\0\0\0\0\0¼eFŽ/Å@nô¥¢ªnH@'),
(681, 8056, '08056 - WAGRAM', '21 RUE BEAUJON - 75008 PARIS', '\0\0\0\0\0\0\0KhX_@–Íï_pH@'),
(682, 5032, '05032 - PANTHEON CARMES', '2 RUE VALETTE - 75005 PARIS', '\0\0\0\0\0\0\0	æGœ¡Å@;½ÙjlH@'),
(683, 22010, '22010 - DE GAULLE 4 (NEUILLY)', '72 AVENUE CHARLES DE GAULLE - 92200 NEUILLY SUR SEINE', '\0\0\0\0\0\0\0³UÊ_+@ö‘OµÚpH@'),
(684, 16111, '16111 - HELIE', '4 - 6 rue Faustin Helie - 75016 PARIS', '\0\0\0\0\0\0\0îö‡6Q6@È‘ë\0nH@'),
(685, 14014, '14014 - STADE CHARLETY', '5 BOULEVARD JOURDAN - 75014 PARIS', '\0\0\0\0\0\0\0Ÿƒ<<¿@0XW$âhH@'),
(686, 12035, '12035 - MADAGASCAR', '4 RUE DE MADAGASCAR - 75012 PARIS', '\0\0\0\0\0\0\0†ò[ÒH-@^¯@¤×jH@'),
(687, 33005, '33005 - REPUBLIQUE 2 (AUBERVILLIERS)', 'FACE AU 106 AVENUE DE LA REPUBLIQUE - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0’¨Ë@¿:_tH@'),
(688, 12005, '12005 - CROZATIER', '74 RUE CROZATIER - 75012 PARIS', '\0\0\0\0\0\0\0J‚pý@dæ7ÛlH@'),
(689, 15106, '15106 - GRENELLE VIOLET (PROP3)', 'BOULEVARD DE GRENELLE - 75015 PARIS', '\0\0\0\0\0\0\0\\Àw[@ÄVô6ÊlH@'),
(690, 18043, '18043 - BLANCHE', '55 BOULEVARD DE CLICHY - 75018 PARIS', '\0\0\0\0\0\0\0ƒéb×ª@J†I¦qH@'),
(691, 17015, '17015 - PLACE DE LEVIS', '19BIS/21 RUE LEGENDRE - 75017 PARIS', '\0\0\0\0\0\0\0×8A›@©	\r²qH@'),
(692, 13043, '13043 - DUNOIS CLISSON', '55 RUE DUNOIS - 75013 PARIS', '\0\0\0\0\0\0\0†ÉÝºwð@ó›gç‡jH@'),
(693, 16007, '16007 - LONGCHAMP', '4 RUE DE LONGCHAMP - 75016 PARIS', '\0\0\0\0\0\0\0%"AW@HTµbµnH@'),
(694, 7024, '07024 - AVENUE RAPP', '43 AVENUE RAPP - 75007 PARIS', '\0\0\0\0\0\0\0Þz¨e{g@3\Z´{ØmH@'),
(695, 23007, '23007 - WILSON (LEVALLOIS)', '22 RUE DU PRESIDENT WILSON - 92300 LEVALLOIS-PERRET', '\0\0\0\0\0\0\0\0µ <XV@nzû÷qH@'),
(696, 13104, '13104 - GARE D\'AUSTERLITZ', 'FACE 109 QUAI D\'AUSTERLITZ - 75013 PARIS', '\0\0\0\0\0\0\0ÖDl-¸ì@4bŒSlH@'),
(697, 21203, '21203 - BRIAND (MONTROUGE)', 'PLACE JULES FERRY / AVENUE ARISTIDE BRIAND - 92120 MONTROUGE', '\0\0\0\0\0\0\0?VGqþš@ª-[\0hH@'),
(698, 42011, '42011 - MARCEL BOYER (IVRY)', '26, Quai Marcel Boyer / rue Victor Hugo - 94200 IVRY', '\0\0\0\0\0\0\0q„Vqô"@ÉfXÖGiH@'),
(699, 5009, '05009 - SQUARE VIVIANI', '6 RUE DU FOUARRE - 75005 PARIS', '\0\0\0\0\0\0\0v‘RÛšÇ@¡}åçmH@'),
(700, 1006, '01006 - GRANDE TRUANDERIE', '2-4 rue DE LA GRANDE TRUANDERIE 75001 PARIS', '\0\0\0\0\0\0\0Eã]@Ì@Z­\r¸jnH@'),
(701, 21208, '21208 - CARVES (MONTROUGE)', '67 RUE CARVES ANGLE AVENUE HENRI GINOUX - 92120 MONTROUGE', '\0\0\0\0\0\0\0xãMúìŽ@sÔ		hH@'),
(702, 16013, '16013 - AVENUE HENRI MARTIN', '71 AVENUE HENRI MARTIN - 75016 PARIS', '\0\0\0\0\0\0\0épô¾\r7@aÑšnH@'),
(703, 18023, '18023 - POISSONNIERS ORDENER', '57 RUE ORDENER - 75018 PARIS', '\0\0\0\0\0\0\0aõ¦npÏ@˜uùKrH@'),
(704, 23008, '23008 - REPUBLIQUE (LEVALLOIS)', 'PLACE DE LA REPUBLIQUE - 92300 LEVALLOIS', '\0\0\0\0\0\0\0&[&:²O@¦Óÿ3TrH@'),
(705, 18047, '18047 - ST OUEN LAMARCK', '53 AVENUE DE SAINT OUEN - 75018 PARIS', '\0\0\0\0\0\0\0,*žš\'@zRrH@'),
(706, 13028, '13028 - GOUTHIERE', '12 RUE GOUTHIERE - 75013 PARIS', '\0\0\0\0\0\0\0š°ýdŒÏ@Í‘•_iH@'),
(707, 3005, '03005 - TURBIGO SAINTE ELISABETH', '7 RUE SAINTE ELISABETH - 75003 PARIS', '\0\0\0\0\0\0\0$Œ–à@‹·¦•ÝnH@'),
(708, 18031, '18031 - ALBERT KAHN', '67 RUE CHAMPIONNET - 75018 PARIS', '\0\0\0\0\0\0\0Z î_ÂÃ@–¶y©rH@'),
(709, 19007, '19007 - OURCQ-FLANDRES', '139 AVENUE DE FLANDRE - 75019 PARIS', '\0\0\0\0\0\0\0ýX£à™@Ã`.RDrH@'),
(710, 15104, '15104 - HÃ”PITAL GEORGES POMPIDOU (PROP 2)', 'FACE 66 - 70 RUE LEBLANC - 75015 PARIS', '\0\0\0\0\0\0\0Ëì?²4@¹àÉ9kH@'),
(711, 12023, '12023 - SAHEL', '15 AVENUE EMILE LAURENT - 75012 PARIS', '\0\0\0\0\0\0\0y…ƒÀH@oÿ*žkH@'),
(712, 20028, '20028 - GAMBETTA MARTIN NADAUD', 'FACE 2 RUE ORFILA - 75020 PARIS', '\0\0\0\0\0\0\0`Iº$ß\'@Þªm¾nH@'),
(713, 31009, '31009 - DE GAULLE (MONTREUIL)', '13/15 PLACE DU GENERAL DE GAULLE - 93100 MONTREUIL', '\0\0\0\0\0\0\0ÕK}»v@û–X>5oH@'),
(714, 13002, '13002 - ARAGO', '55 BD ARAGO - 75013 PARIS', '\0\0\0\0\0\0\0÷>•œ°Á@ÿo€íÜjH@'),
(715, 13004, '13004 - GLACIERE', '88 BOULEVARD AUGUSTE BLANQUI (SUR TPC) - 75013 PARIS', '\0\0\0\0\0\0\0ÞôÚ„pÃ@æÂãQjH@'),
(716, 8011, '08011 - DUBLIN', '1 RUE CLAPEYRON - 75008 PARIS', '\0\0\0\0\0\0\0Y²w-œ˜@äa}ÂpH@'),
(717, 20103, '20103 - LE VAU BERTEAUX', '24 RUE LE VAU - 75020 PARIS', '\0\0\0\0\0\0\0;%ñjÊI@®Z;ÀoH@'),
(718, 42205, '42205 - PARIS 1 (CHARENTON)', '89 RUE DE PARIS - 94220 CHARENTON', '\0\0\0\0\0\0\0&ð°M@ûfü;iH@'),
(719, 1019, '01019 - SAINT HONORE VENDOME', '237 RUE SAINT HONORE - 75001 PARIS', '\0\0\0\0\0\0\0}‡jŽU @zóØõïnH@'),
(720, 12022, '12022 - BIZOT', 'FACE 29 RUE DU SAHEL - 75012 PARIS', '\0\0\0\0\0\0\0O«¢+<@oÍçš¢kH@'),
(721, 19020, '19020 - MANIN HAUTPOUL', '4-6 RUE GOUBET - 75019 PARIS', '\0\0\0\0\0\0\0„G±A&@­äG›<qH@'),
(722, 14030, '14030 - LOSSERAND - PERNETY', '61 RUE PERNETY - 75014 PARIS', '\0\0\0\0\0\0\0Â‘ìÃvŠ@\'ÌÛÈjH@'),
(723, 7026, '07026 - PLACE DE FINLANDE', '39 QUAI D\'ORSAY - 75007 PARIS', '\0\0\0\0\0\0\0!%Ì´}@\nK< lnH@'),
(724, 21704, '21704 - REPUBLIQUE (VANVES)', '2 RUE DE LA REPUBLIQUE - 92170 VANVES', '\0\0\0\0\0\0\0­yX€}H@³‰×-iH@'),
(725, 44102, '44102 - VERDUN (SAINT MAURICE)', '14 avenue de Verdun - 94410 SAINT MAURICE', '\0\0\0\0\0\0\0žq½=_@vâˆ=iH@'),
(726, 9003, '09003 - PLACE BARBÃˆS', 'PLACE BARBES - 75009 PARIS', '\0\0\0\0\0\0\0Ž¹ŠîÕÊ@–—GŒqH@'),
(727, 21209, '21209 - GEORGES MESSIER (MONTROUGE)', '35 RUE MOLIERE - 92120 MONTROUGE', '\0\0\0\0\0\0\0±®è™\\„@°z]/ÒgH@'),
(728, 22008, '22008 - DE GAULLE (NEUILLY)', '153 BIS AVENUE CHARLES DE GAULLE - 92200 NEUILLY SUR SEINE', '\0\0\0\0\0\0\01‘|\Zÿ@ lqH@'),
(729, 42202, '42202 - RONSARD (CHARENTON)', '1 RUE  KENNEDY / ALLEE RONSARD - 94220 CHARENTON', '\0\0\0\0\0\0\0È˜@Ê>@¿™äiOiH@'),
(730, 13033, '13033 - PORTE D\'ITALIE', '15 AVENUE DE LA PORTE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0Š:ºá@¦|€°hH@'),
(731, 17032, '17032 - ESPACE CHAMPERRET', '12 RUE JEAN OESTREICHER - 75017 PARIS', '\0\0\0\0\0\0\0m7ýO@ø‡({qH@'),
(732, 11016, '11016 - PHILIPPE AUGUSTE', '5 RUE DU PASSAGE PHILIPPE AUGUSTE - 75011 PARIS', '\0\0\0\0\0\0\0>Ë!c%@A™÷`mH@'),
(733, 5033, '05033 - SAINT SEVERIN', '42 RUE SAINT SEVERIN - 75005 PARIS', '\0\0\0\0\0\0\0„«³LËÀ@ku%mH@'),
(734, 12108, '12108 - BERCY', 'FACE AU NÂ°16 BOULEVARD DE BERCY - 75012 PARIS', '\0\0\0\0\0\0\0eä,ìi@3þ}Æ…kH@'),
(735, 34007, '34007 - ROSIERS (SAINT OUEN)', '43-45 RUE BLANQUI / RUE DES ROSIERS - 93400 SAINT OUEN', '\0\0\0\0\0\0\0M™Xù²@!oéâsH@'),
(736, 19102, '19102 - BELLEVILLE RAMPAL', '4 RUE DE RAMPAL - 75019 PARIS', '\0\0\0\0\0\0\0-Ë½ñ	@šñwÃoH@'),
(737, 16116, '16116 - GEORGES SAND', '23 rue Georges Sand - 75016 PARIS', '\0\0\0\0\0\0\0Œª!d%@fwƒÈlH@'),
(738, 41103, '41103 - BRIAND (ARCUEIL)', 'AVENUE ARISTIDE BRIAND (CARREFOUR VACHE NOIRE) - 94110 ARCUEIL', '\0\0\0\0\0\0\0œîR¢@ñ¬Iò»gH@'),
(739, 12020, '12020 - COURS DE VINCENNES - BD SOULT', 'FACE 118 COURS DE VINCENNES - 75012 PARIS', '\0\0\0\0\0\0\0ó¿²\\úG@ÎÒI#jlH@'),
(740, 42002, '42002 - GARE (IVRY)', 'VIS-A-VIS DU 17 RUE DE LA GARE - 94200 IVRY SUR SEINE', '\0\0\0\0\0\0\0¿ÅîÀÑ"@à»®‚OhH@'),
(741, 21309, '21309 - CRESSON 2 (ISSY LES MOULINEAUX)', '1 BIS AVENUE VICTOR CRESSON - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0úC¾“-@Yi›oiH@'),
(742, 904, '00904 -17/19 PLACE JOFFRE / ECOLE MILITAIRE', 'ECOLE MILITAIRE-AVENUE DE LA MOTTE PICQUET - 75007 PARIS', '\0\0\0\0\0\0\0ÏnˆLTj@OãƒCmH@'),
(743, 35010, '35010 - GERVAIS (PANTIN)', '1-3 RUE DU PRE SAINT GERVAIS - 93500 PANTIN', '\0\0\0\0\0\0\0,u%_â8@T :àrH@'),
(744, 4001, '04001 - NOTRE DAME', '10 RUE D\'ARCOLE - 75004 PARIS', '\0\0\0\0\0\0\0\Z3ãÃ‡Ë@=Ç9ZOmH@'),
(745, 16026, '16026 - RANELAGH', '91 RUE DU RANELAGH - 75016 PARIS', '\0\0\0\0\0\0\0úŽ Ì)@iæV‡€mH@'),
(746, 43010, '43010 - JARRY (VINCENNES)', '139 RUE DE LA JARRY - 94300 VINCENNES', '\0\0\0\0\0\0\0~u]@	XqÄlH@'),
(747, 15012, '15012 - MADEMOISELLE', '76 RUE CAMBRONNE - 75015 PARIS', '\0\0\0\0\0\0\0ÊxH k@Ïúô‚ðkH@'),
(748, 35002, '35002 - JAURES 2 (PANTIN)', '130 RUE JEAN JAURES - 93500 PANTIN', '\0\0\0\0\0\0\0÷<GÉE+@ˆ<cûtH@'),
(749, 10038, '10038 - COLONEL FABIEN', '69 RUE DE LA GRANGE AUX BELLES - 75010 PARIS', '\0\0\0\0\0\0\0š¿Uõ@ãù‡“RpH@'),
(750, 14025, '14025 - JACQUIER', '10 RUE JACQUIER - 75014 PARIS', '\0\0\0\0\0\0\0eq<«ü‹@ëï\\/jH@'),
(751, 9031, '09031 - PROVENCE', '69 RUE DE PROVENCE - 75009 PARIS', '\0\0\0\0\0\0\0ÿ	Ü–ï©@ª¾èoH@'),
(752, 1004, '01004 - MARGUERITE DE NAVARRE', '12 RUE DES HALLES - 75001 PARIS', '\0\0\0\0\0\0\0nU\\(Æ@=\ZnH@'),
(753, 4021, '04021 - BEAUBOURG RAMBUTEAU', '49 RUE RAMBUTEAU - 75004 PARIS', '\0\0\0\0\0\0\0\'28Ò@´¬ëúBnH@'),
(754, 20034, '20034 - SORBIER - MÃ‰NILMONTANT', '1 RUE SORBIER - 75020 PARIS', '\0\0\0\0\0\0\0‰¯@M@@z\Zà+oH@'),
(755, 20024, '20024 - GAMBETTA - PÃˆRE LACHAISE', '11 RUE MALTE BRUN - 75020 PARIS', '\0\0\0\0\0\0\0Çrò‚’/@‘Ê=¡nH@'),
(756, 42010, '42010 - ROBESPIERRE (IVRY)', '1 RUE ROBESPIERRE - 94200 IVRY', '\0\0\0\0\0\0\0ªKÔT@t3ÌÉgH@'),
(757, 21205, '21205 - JAURES 2 (MONTROUGE)', 'AVENUE JEAN JAURES / RUE ROGER SALENGERO - 92120 MONTROUGE', '\0\0\0\0\0\0\0$<`Ùžt@ä^©,hH@'),
(758, 18105, '18105 - BELIARD POISSONNIERS', '157 BIS-159 RUE DES POISSONNIERS - 75018 PARIS', '\0\0\0\0\0\0\0H3GùÑ@*Â9ÞrH@'),
(759, 6018, '06018 - MICHELET ASSAS', '13 RUE MICHELET - 75006 PARIS', '\0\0\0\0\0\0\0ºŒS8®@†YãaØkH@'),
(760, 20009, '20009 - DOCTEUR DEJERINE', 'RUE DES DOCTEURS DEJERINE - 75020 PARIS', '\0\0\0\0\0\0\0ËåK@Ð‡Ž¢PmH@'),
(761, 31007, '31007 - PARIS 1 (MONTREUIL)', '56 RUE DE PARIS - 93100 MONTREUIL', '\0\0\0\0\0\0\0«œQNu@Eb‚\Z¾mH@'),
(762, 15122, '15122 - PLACE CHARLES VALLIN', 'PLACE CHARLES VALLIN - 75015 PARIS', '\0\0\0\0\0\0\0e\'[\rÅk@Ö¡yòjH@'),
(763, 16020, '16020 - PORTE DE PASSY', '1 PLACE DE LA PORTE DE PASSY - 75016 PARIS', '\0\0\0\0\0\0\0C]-L=@öó“²¾mH@'),
(764, 21706, '21706 - BLEUZEN (VANVES)', '74 RUE JEAN BLEUZEN - 92170 VANVES', '\0\0\0\0\0\0\0òÄ·>_@(‰\0biH@'),
(765, 5001, '05001 - SAINT GERMAIN HARPE', '32 RUE DE LA HARPE - 75005 PARIS', '\0\0\0\0\0\0\0k°*è¿@§\nž\0mH@'),
(766, 16008, '16008 - GALILEE KLEBER', '1 RUE GALILEE - 75016 PARIS', '\0\0\0\0\0\0\0ý/0…S@‡³ZoH@'),
(767, 18020, '18020 - RUISSEAU', '31 RUE FRANCOEUR - 75018 PARIS', '\0\0\0\0\0\0\0Ÿ%‘Y¸@ì¼œ£\rrH@'),
(768, 4011, '04011 - PLACE DU BATAILLON FRANCAIS DE L\'ONU', 'FACE 18 RUE DE L\'HOTEL DE VILLE - 75004 PARIS', '\0\0\0\0\0\0\0€ÁdSÛ@@+ÈImH@'),
(769, 22403, '22403 - BROSSOLETTE (MALAKOFF)', 'FACE 35 AVENUE PIERRE BROSSOLETTE - 92240 MALAKOFF', '\0\0\0\0\0\0\0Ð8–ö@K?é1iH@'),
(770, 8007, '08007 - HAUSSMANN ROME', '1 RUE DE ROME - 75008 PARIS', '\0\0\0\0\0\0\0óG³€Äš@çò<ÅæoH@'),
(771, 19103, '19103 - MANIN CARRIERES', '139 RUE MANIN - 75019 PARIS', '\0\0\0\0\0\0\0h±··#@ÑÚå+@qH@'),
(772, 34004, '34004 - VOLTAIRE (SAINT OUEN)', '1 RUE VOLTAIRE - 93400 SAINT OUEN', '\0\0\0\0\0\0\0¿~c˜ì¼@Qèµ…sH@'),
(773, 8038, '08038 - FRANCOIS 1 ER', '22 RUE FRANCOIS 1ER - 75008 PARIS', '\0\0\0\0\0\0\07žSt@*û¬,önH@'),
(774, 8010, '08010 - LIEGE', '22 RUE DE LIEGE - 75008 PARIS', '\0\0\0\0\0\0\0†1›ñ…œ@ðKš–pH@'),
(775, 13041, '13041 - PORTE D\'IVRY', '4 AVENUE D\'IVRY - 75013 PARIS', '\0\0\0\0\0\0\0+$Ð,¿ò@êZµ6iH@'),
(776, 4019, '04019 - BEAUBOURG SAINT MERRY', '4 RUE DU CLOITRE SAINT MERRI - 75004 PARIS', '\0\0\0\0\0\0\0 Q°y¬Ð@e’¸îmH@'),
(777, 19030, '19030 - MOSELLE JAURES', '6 PASSAGE DE MELUN - 75019 PARIS', '\0\0\0\0\0\0\0¥ ÛK\Z@úÏšqH@'),
(778, 16003, '16003 - ANDRE MAUROIS', '2 BIS BOULEVARD ANDRE MAUROIS - 75016 PARIS', '\0\0\0\0\0\0\0r&éIO;@»íy	`pH@'),
(779, 21702, '21702 - BASCH (VANVES)', '6 AVENUE VICTOR BASCH - 92170 VANVES', '\0\0\0\0\0\0\0´ó¿ïU@BÓhH@'),
(780, 15046, '15046 - GEORGES BRASSENS', '42 RUE DES MORILLONS - 75015 PARIS', '\0\0\0\0\0\0\0c2HT+k@¥‡1Å…jH@'),
(781, 6002, '06002 - SAINT PÃˆRES', '1 RUE SAINT BENOIT - 75006 PARIS', '\0\0\0\0\0\0\0ýTØSåª@æWmH@'),
(782, 19036, '19036 - HOPITAL ROBERT DEBRE', 'AV DE LA PTE DU PRES SAINT GERVAIS / ANGLE BD D\'ALGERIE - 75019 PARIS', '\0\0\0\0\0\0\0ü¿k‰%5@¤¹R¡pH@'),
(783, 1013, '01013 - SAINT HONORE', '186 RUE SAINT HONORE - 75001 PARIS', '\0\0\0\0\0\0\0\Z­â\nJµ@I²*dnH@'),
(784, 14034, '14034 - RUE DE L OUEST CHATEAU', '48 RUE DE L\'OUEST - 75014 PARIS', '\0\0\0\0\0\0\0:æwŽ@§X¶kH@'),
(785, 12037, '12037 - DAUMESNIL', '53 BOULEVARD DE REUILLY - 75012 PARIS', '\0\0\0\0\0\0\0‡Ó­®}-@AïöAtkH@'),
(786, 31005, '31005 - PARIS 2  (MONTREUIL)', '127/129 RUE DE PARIS - 93100 MONTREUIL', '\0\0\0\0\0\0\0áqx|Vi@Å‹$»šmH@'),
(787, 4017, '04017 - PLACE DE L\'HOTEL DE VILLE', '11 PLACE DE L\'HOTEL DE VILLE - 75004 PARIS', '\0\0\0\0\0\0\0Í±¼«Ð@×Š6Ç¹mH@'),
(788, 21705, '21705 - HUGO (VANVES)', '11 AVENUE VICTOR HUGO - 92170 VANVES', '\0\0\0\0\0\0\0Ê–å·€O@_Š¶kiH@'),
(789, 4010, '04010 - SAINT PAUL PAVÃ‰E', '105-109 TERRE PLEIN SAINT PAUL - 75004 PARIS', '\0\0\0\0\0\0\0²;Q®¾ã@‡–(mqmH@'),
(790, 17003, '17003 - JACQUES KELLNER', '4-6 RUE JACQUES KELLNER - 75017 PARIS', '\0\0\0\0\0\0\0ÑlF­ˆŸ@(|žâ©rH@'),
(791, 8104, '08104 - FRIEDLAND CHATEAUBRIAND', '27/31 RUE DE CHATEAUBRIAND - 75008 PARIS', '\0\0\0\0\0\0\0F”¸~:f@ï‹Ò´ßoH@'),
(792, 7017, '07017 - LA TOUR MAUBOURG', '1 AVENUE DE LA MOTTE PICQUET - 75007 PARIS', '\0\0\0\0\0\0\0G³ ‚h{@ãç}<»mH@'),
(793, 23011, '23011 - BINEAU (LEVALLOIS)', '16 BOULEVARD BINEAU - 92300 LEVALLOIS-PERRET', '\0\0\0\0\0\0\0á‘ˆ6®E@ymtÆ~qH@'),
(794, 15043, '15043 - BRANCION', '122 RUE BRANCION - 75015 PARIS', '\0\0\0\0\0\0\0ør‹Mi@0"ÕrjH@'),
(795, 13123, '13123 - BNF - QUAI FRANÃ‡OIS MAURIAC', '51/57 QUAI FRANCOIS MAURIAC - 75013 PARIS', '\0\0\0\0\0\0\0ûÿÿ™¹@ì ÜjH@'),
(796, 20005, '20005 - RUE DE LAGNY SAINT MANDE', '2 RUE REYNALDO HAHN - 75020 PARIS', '\0\0\0\0\0\0\0;Lì×sL@¿oí¿´lH@'),
(797, 18007, '18007 - GOUTTE D\' OR', '65 RUE DE LA GOUTTE D\'OR - 75018 PARIS', '\0\0\0\0\0\0\0\0cc®Ì@Àb\Z+NqH@'),
(798, 15044, '15044 - J DUPRE', '65 RUE DANTZIG - 75015 PARIS', '\0\0\0\0\0\0\0#\'q{9^@þsDFjH@'),
(799, 32604, '32604 - KOCK (LES LILAS)', 'FACE 3 AVENUE PAUL DE KOCK - 93260 LES LILAS', '\0\0\0\0\0\0\0»ž–\\@=ÈªËpH@'),
(800, 15002, '15002 - BOURDELLE', '26 AVENUE DU MAINE - 75015 PARIS', '\0\0\0\0\0\0\0:L‹æ@„ =8êkH@'),
(801, 15005, '15005 - PLACE TREFOUEL', 'FACE 24 BOULEVARD PASTEUR - 75015 PARIS', '\0\0\0\0\0\0\0¿FÌ7w€@¸ðGûÛkH@'),
(802, 10026, '10026 - CHATEAU LANDON', '2 RUE DE CHATEAU LANDON - 75010 PARIS', '\0\0\0\0\0\0\0¶HÚ>æ@Ê\ZõpH@'),
(803, 13052, '13052 - TOLBIAC LERREDE', '2 RUE LEREDDE - 75013 PARIS', '\0\0\0\0\0\0\0K0¬Æ¡þ@„\r,ØjH@'),
(804, 14018, '14018 - PORTE D\'ORLEANS', '6 PLACE DU 25 AOUT 1944 - 75014 PARIS', '\0\0\0\0\0\0\01%Ëø¯™@¬‘eSiH@'),
(805, 15068, '15068 - BOULEVARD VICTOR', 'FACE 5 BOULEVARD MARTIAL VALIN - 75015 PARIS', '\0\0\0\0\0\0\0ê+§)@‚ûŽ2IkH@'),
(806, 15063, '15063 - SAINT CHARLES - CONVENTION', '59 RUE DE LA CONVENTION - 75015 PARIS', '\0\0\0\0\0\0\0ïˆD@j©1\ZñkH@'),
(807, 31703, '31703 - CARNOT (BAGNOLET)', '177 RUE SADI CARNOT - 93170 BAGNOLET', '\0\0\0\0\0\0\0ßòX¢c@2³¾¿pH@'),
(808, 21001, '21001 - TRANSVAL (BOULOGNE-BILLANCOURT)', '11 RUE DU TRANSVAL - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0‚Æn(‹æ@•‘•lH@'),
(809, 6010, '06010 - MONTPARNASSE CHEVREUSE', '5 RUE DE CHEVREUSE - 75006 PARIS', '\0\0\0\0\0\0\0 g>Ù§@æŸÜ¾kH@'),
(810, 8018, '08018 - SAINT AUGUSTIN', '18 PLACE HENRI BERGSON - 75008 PARIS', '\0\0\0\0\0\0\0r_çðŽ@#\\\'pH@'),
(811, 43003, '43003 - PARIS 2 (VINCENNES)', '104 AVENUE DE PARIS - 94300 VINCENNES', '\0\0\0\0\0\0\05·ãþSk@ÚºŒ@lH@'),
(812, 15023, '15023 - LA MOTTE PIQUET', '146 BOULEVARD GRENELLE - 75015 PARIS', '\0\0\0\0\0\0\0¬	 Úd@®-)Å lH@'),
(813, 5023, '05023 - PLACE JUSSIEU', '13 RUE JUSSIEU - 75005 PARIS', '\0\0\0\0\0\0\0CÁ‘Ø@}ƒ,=lH@'),
(814, 41602, '41602 - DIGEON (SAINT MANDE)', 'PLACE CHARLES DIGEON - 94160 SAINT MANDE', '\0\0\0\0\0\0\0ó›IÕ¶X@/½ÆXùkH@'),
(815, 21202, '21202 - BARBES (MONTROUGE)', '16 RUE BARBES - 92120 MONTROUGE', '\0\0\0\0\0\0\0é÷w»ž@ê84{›hH@'),
(816, 20001, '20001 - PLACE DE LA NATION', '1 COURS DE VINCENNES - 75020 PARIS', '\0\0\0\0\0\0\0¯/Ÿ¶2@s—£6—lH@'),
(817, 5030, '05030 - SORBONNE', '5 RUE DE LA SORBONNE - 75005 PARIS', '\0\0\0\0\0\0\0(X¼€£¿@ól‡FÅlH@'),
(818, 22003, '22003 - BEFFROY (NEUILLY)', '3 RUE BEFFROY - 92200 NEUILLY', '\0\0\0\0\0\0\0~¬ÌS@QÑƒŒqH@'),
(819, 10011, '10011 - BOURSE DU TRAVAIL', '3 RUE DU CHATEAU D\'EAU - 75010 PARIS', '\0\0\0\0\0\0\0®œ~éå@ïþe>oH@'),
(820, 19037, '19037 - PORTE DES LILAS', '304 RUE DE BELLEVILLE - 75019 PARIS', '\0\0\0\0\0\0\0ENä÷<@x«¥Ž4pH@'),
(821, 21103, '21103 - HUGO (CLICHY)', '94-98 BOULEVARD VICTOR HUGO - 92110 CLICHY', '\0\0\0\0\0\0\0p_ni{‰@ÜóácsH@'),
(822, 19008, '19008 - CORENTIN CARIOU', '177 AVENUE DE FLANDRE - 75019 PARIS', '\0\0\0\0\0\0\0ñÔD1@}}>æƒrH@'),
(823, 42704, '42704 - ROSSEL (LE KREMLIN BICETRE)', 'RUE ROSSEL / AVENUE DE LA CONVENTION - 94270 LE KREMLIN BICETRE', '\0\0\0\0\0\0\0KzÛ@Û¥0	ðgH@'),
(824, 13109, '13109 - BRILLAT SAVARIN', '16 RUE BRILLAT SAVARIN - 75013 PARIS', '\0\0\0\0\0\0\0\'NªÍ@Yºxó=iH@'),
(825, 7016, '07016 - TOUR MAUBOURG UNIVERSITE', '13 RUE SURCOUF - 75007 PARIS', '\0\0\0\0\0\0\0Àu†ÈÂy@Áë¶1>nH@'),
(826, 9011, '09011 - FOLIES BERGERES', '14 RUE GEOFFROY MARIE - 75009 PARIS', '\0\0\0\0\0\0\0’¿}Á@…W-ØoH@'),
(827, 17020, '17020 - NICARAGUA', '49 RUE JOUFFROY D\'ABBANS - 75017 PARIS', '\0\0\0\0\0\0\0ÅË¥èt@°^ÏøIqH@'),
(828, 3002, '03002 - SAINT GILLES', '26 RUE SAINT GILLES - 75003 PARIS', '\0\0\0\0\0\0\0Lj›±ïê@\'ØmH@'),
(829, 18008, '18008 - SQUARE LEON', 'FACE 36 RUE CAVE - 75018 PARIS', '\0\0\0\0\0\0\0)ù_aÓ@„\\N~qH@'),
(830, 35005, '35005 - GENERAL LECLERC (PANTIN)', 'QUAI DE L\'AISNE/AVENUE DU GENERAL LECLERC 93500 PANTIN', '\0\0\0\0\0\0\0`’	_4@˜ˆ4Á¦rH@'),
(831, 11007, '11007 - FAIDHERBE PALAIS DE LA FEMME', '17 RUE JEAN MACE - 75011 PARIS', '\0\0\0\0\0\0\0èˆäw@§u›•8mH@'),
(832, 14003, '14003 - RASPAIL SCHOELCHER', '2 RUE VICTOR SCHOELCHER - 75014 PARIS', '\0\0\0\0\0\0\0oð•€‚¦@ÖríkH@'),
(833, 20026, '20026 - PELLEPORT', '121 AVENUE GAMBETTA - 75020 PARIS', '\0\0\0\0\0\0\0C¾d;35@Öõã+oH@'),
(834, 13102, '13102 - LA PITIE-SALPETRIERE', '47-83 BOULEVARD DE L\'HOPITAL (AllÃ©e de la grille) - 75013 PARIS', '\0\0\0\0\0\0\0AŸÈ“¤ë@‚”0kH@'),
(835, 7005, '07005 - BAC', 'FACE 2 BOULEVARD RASPAIL - 75007 PARIS', '\0\0\0\0\0\0\0ÈU|!ÿš@Št)ÅmH@'),
(836, 19110, '19110 - MACDONALD', '180 Boulevard Macdonald - 75019 PARIS', '\0\0\0\0\0\0\0/Ý$@ŸFsH@'),
(837, 15126, '15126 - RENAN', 'Avenue ERNEST RENAN / PARC DES EXPOSITIONS - 75015 PARIS', '\0\0\0\0\0\0\0Áã“JyH@„®}ajH@'),
(838, 13013, '13013 - SAINT MARCEL', '3 BD SAINT MARCEL - 75013 PARIS', '\0\0\0\0\0\0\0Y†bkNã@97ˆátkH@'),
(839, 42206, '42206 - PARIS 2 (CHARENTON)', '111 RUE DE PARIS - 94220 CHARENTON', '\0\0\0\0\0\0\0§‚×-µG@ñÎÁqiH@'),
(840, 7002, '07002 - VANEAU', '86 RUE VANEAU - 75007 PARIS', '\0\0\0\0\0\0\0|J„þ6@ÞKè0žlH@'),
(841, 14015, '14015 - CITE UNIVERSITAIRE', 'FACE 15 BOULEVARD JOURDAN - 75014 PARIS', '\0\0\0\0\0\0\07æàX+¸@éPÁ­úhH@'),
(842, 11112, '11112 - CHARONNES VALLES', '22 RUE JULES VALLES - 75011 PARIS', '\0\0\0\0\0\0\0Sª\r1?@ËDÜÖYmH@'),
(843, 35007, '35007 - DELESSERT (PANTIN)', '1 RUE  BENJAMIN DELESSERT - 93500 PANTIN', '\0\0\0\0\0\0\0ãæ(ïX@ÅNb¿lrH@'),
(844, 21306, '21306 - LAFAYETTE (ISSY LES MOULINEAUX)', 'PLACE LAFAYETTE - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0ºø½K@F5jH@'),
(845, 19113, '19113 - PRE ST GERVAIS', '27 RUE DU PRE SAINT GERVAIS - 75019 PARIS', '\0\0\0\0\0\0\0³Tyú*@>N[Ë_pH@'),
(846, 42016, '42016 - CURIE (IVRY)', '1 BIS RUE PIERRE ET MARIE CURIE - 94200 IVRY', '\0\0\0\0\0\0\0ÑÜÏû@%U÷¯mhH@'),
(847, 31701, '31701 - BERTON (BAGNOLET)', '3 RUE RAOUL BERTON - 93170 BAGNOLET', '\0\0\0\0\0\0\0DH³g°W@B»Jz)oH@'),
(848, 16039, '16039 - VERSAILLES EXELMANS', '27 BOULEVARD EXELMANS - 75016 PARIS', '\0\0\0\0\0\0\0RÓ©z@b¬¤kH@'),
(849, 7019, '07019 - ECOLE MILITAIRE', '85 AVENUE BOSQUET - 75007 PARIS', '\0\0\0\0\0\0\0‘ú;Èžq@"5\nomH@'),
(850, 5105, '05105 - GEOFFROY SAINT HILAIRE', '8 RUE GEOFFROY SAINT HILAIRE - 75005 PARIS', '\0\0\0\0\0\0\0$áÖâÚ@YÞ£êfkH@'),
(851, 12115, '12115 - PORTE DE VINCENNES', '22 AVENUE DE LA PORTE DE VINCENNES - 75012 PARIS', '\0\0\0\0\0\0\0_´I9S@ÄàJxWlH@'),
(852, 33010, '33010 - HUGO (AUBERVILLIERS)', '161 AVENUE VICTOR HUGO - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0Ãa­ƒ|@…ŸtH@'),
(853, 11003, '11003 - ROQUETTE DALLERY', '29 RUE KELLER - 75011 PARIS', '\0\0\0\0\0\0\0žïÔ~\0@äWrmH@'),
(854, 1005, '01005 - LES HALLES - SEBASTOPOL', '3 RUE DE LA COSSONNERIE - 75001 PARIS', '\0\0\0\0\0\0\0õ1!:’Ë@bvãÕ=nH@'),
(855, 16014, '16014 - AVENUE D EYLAU', '4 AVENUE D\'EYLAU - 75016 PARIS', '\0\0\0\0\0\0\0a°2‰J@l°D°ˆnH@'),
(856, 22402, '22402 - JAURES (MALAKOFF)', '10 AVENUE JEAN JAURES - 92240 MALAKOFF', '\0\0\0\0\0\0\0ê<TVl@XÌ˜š%iH@'),
(857, 19010, '19010 - PORTE DE LA VILLETTE', 'RUE EMILE REYNAUD SUR TPC - 75019 PARIS', '\0\0\0\0\0\0\0ÝùkuÕ@¤}XYsH@'),
(858, 18004, '18004 - ABBESSES', '2 RUE DE LA VIEUVILLE - 75018 PARIS', '\0\0\0\0\0\0\0<Ê¹8ãµ@„S¸6qH@'),
(859, 9111, '09111 - LA FAYETTE PROVENCE', '28 RUE DE LA VICTOIRE - 75009 PARIS', '\0\0\0\0\0\0\0Ø#Žyw´@žr¼µpH@'),
(860, 13107, '13107 - MARCHAND SANTE', '12 PASSAGE VICTOR MARCHAND - 75013 PARIS', '\0\0\0\0\0\0\0$ÂklY¼@,Ê¯ojH@'),
(861, 11018, '11018 - SAINT MAUR AVENUE DE LA REPUBLIQUE', '87 RUE DE SAINT MAUR - 75011 PARIS', '\0\0\0\0\0\0\0¨Œ¦ÿª@HÖ÷|žnH@'),
(862, 17022, '17022 - PLACE DE WAGRAM', '67 BOULEVARD PEREIRE - 75017 PARIS', '\0\0\0\0\0\0\0ú²1ÐÑn@ïf˜‡‹qH@'),
(863, 21210, '21210 - PERI 2 (MONTROUGE)', '8 RUE GABRIEL PERI - 92120 MONTROUGE', '\0\0\0\0\0\0\0WWùµ—@L5;®hH@'),
(864, 17010, '17010 - JONCQUIERE', '90 RUE DE LA JONQUIERE - 75017 PARIS', '\0\0\0\0\0\0\0Åò³Ã@VG>Ç‡rH@'),
(865, 35004, '35004 - ALLENDE (PANTIN)', 'AVENUE DE LA GARE - 93500 PANTIN', '\0\0\0\0\0\0\09,Q€a4@¦·²¬ÛrH@'),
(866, 9023, '09023 - ITALIENS LAFFITE', '1 RUE LAFFITE - 75009 PARIS', '\0\0\0\0\0\0\0Ò=¡¹–²@¬ x¨—oH@'),
(867, 6104, '06104 - HERSCHEL', '7 RUE HERSCHEL - 75006 PARIS', '\0\0\0\0\0\0\0§èIÒ³@Å©\\ókH@'),
(868, 21105, '21105 - MORICE (CLICHY)', '35-37 RUE MORICE - 92110 CLICHY', '\0\0\0\0\0\0\0.÷?®@a5	åˆsH@'),
(869, 4006, '04006 - BASSIN DE L\'ARSENAL', 'FACE 1 BOULEVARD BOURBON - 75004 PARIS', '\0\0\0\0\0\0\0‚¸qí@[_ÅA‚lH@'),
(870, 17024, '17024 - VILLIERS', '1/3 PLACE PROSPER GOUBAUX - 75017 PARIS', '\0\0\0\0\0\0\0Ð}Ð¿ˆ@!)EoËpH@'),
(871, 20033, '20033 - ETIENNE DOLET', '29 RUE ETIENNE DOLLET - 75020 PARIS', '\0\0\0\0\0\0\0ú\nW©À@Ù):>oH@'),
(872, 17038, '17038 - ARGENTINE', '42 AVENUE DE LA GRANDE ARMEE - 75017 PARIS', '\0\0\0\0\0\0\0ÝÐ§TN@•>~{&pH@'),
(873, 12009, '12009 - DIDEROT', 'FACE 124 RUE DE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0k¼»@ªê#‰RlH@'),
(874, 8110, '08110 - STOCKOLM ROME', '6 RUE DE STOCKOLM - 75008 PARIS', '\0\0\0\0\0\0\0b\\e!”@\\4EpH@'),
(875, 15003, '15003 - GARE DE MONTPARNASSE', 'TP DU 1-13 BOULEVARD DE VAUGIRARD - 75015 PARIS', '\0\0\0\0\0\0\0ßFâE[Ž@‡qVÀkH@'),
(876, 12013, '12013 - RUE MONTGALLET', 'FACE 39 RUE MONTGALLET - 75012 PARIS', '\0\0\0\0\0\0\0êŽ<\Zä@äl€olH@');
INSERT INTO `Station` (`id`, `Number`, `Name`, `Address`, `Location`) VALUES
(877, 1025, '01025 - TEMPLE DE L\'ORATOIRE', '2 RUE DE L\'ORATOIRE - 75001 PARIS', '\0\0\0\0\0\0\0 G¾àn¸@ðº•BnH@'),
(878, 21008, '21008 - HUGO (BOULOGNE-BILLANCOURT)', '74 AVENUE VICTOR HUGO - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0•Ì\\{ð÷@¢¿8AkH@'),
(879, 12040, '12040 - PORTE DE CHARENTON', 'FACE 2 AV. DE LA PORTE DE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0š3‘¡0@à®ÌzqjH@'),
(880, 13039, '13039 - IVRY POINTE D\'IVRY', '42 - 44 AVENUE D\'IVRY - 75013 PARIS', '\0\0\0\0\0\0\0æ-#W{ì@jQ8C_iH@'),
(881, 13054, '13054 - PAU CASALS', '1 RUE PAU CASALS - 75013 PARIS', '\0\0\0\0\0\0\0âø‚–¢@:1<fjH@'),
(882, 15029, '15029 - EMERIAU', '27 RUE EMERIAU - 75015 PARIS', '\0\0\0\0\0\0\0~OÐIL@‚Q´ñàlH@'),
(883, 19004, '19004 - QUAI DE LA LOIRE', '4 QUAI DE LA LOIRE - 75019 PARIS', '\0\0\0\0\0\0\0¸ dëõ÷@u6û)qH@'),
(884, 14114, '14114 - PLACE DE CATALOGNE', '4 RUE ALAIN - 75014 PARIS', '\0\0\0\0\0\0\0â¡}4Š@ÆnZm,kH@'),
(885, 21307, '21307 - CRESSON 1 (ISSY LES MOULINEAUX)', 'FACE 36 AVENUE VICTOR CRESSON - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0Åâ(&@GýT†MiH@'),
(886, 8009, '08009 - SAINT LAZARE RER', '1 RUE DE L\'ISLY - 75008 PARIS', '\0\0\0\0\0\0\0¯tPS¢œ@ÅÀ˜µùoH@'),
(887, 42208, '42208 - PARIS 4 (CHARENTON)', '178 RUE DE PARIS - 94220 CHARENTON', '\0\0\0\0\0\0\0Ýü.H“6@|³—{*jH@'),
(888, 17102, '17102 - ALFRED ROLL', '14 RUE ALFRED ROLL - 75017 PARIS', '\0\0\0\0\0\0\0 ë7oxf@è]\r¥qH@'),
(889, 18033, '18033 - MOSKOWA', '111 RUE BELLIARD - 75018 PARIS', '\0\0\0\0\0\0\0–…£E´@K\nðÐÆrH@'),
(890, 32001, '32001 - PROUDHON (SAINT DENIS)', 'AVENUE PRESIDENT WILSON / RUE PROUDHON - 93200 SAINT DENIS', '\0\0\0\0\0\0\0ïúÞÞ@3t<0tH@'),
(891, 11022, '11022 - LEON BLUM ROQUETTE', '142 RUE DE LA ROQUETTE - 75011 PARIS', '\0\0\0\0\0\0\0™•4ôë\r@S#§ÓmH@'),
(892, 32606, '32606 - GARDE CHASSE (LES LILAS)', '49 RUE DU GARDE CHASSE - 93260 LES LILAS', '\0\0\0\0\0\0\0V|ºîY@ï©=qH@'),
(893, 4104, '04104 - SEBASTOPOL RAMBUTEAU', 'FACE 40 BOULEVARD SEBASTOPOL - 75004 PARIS', '\0\0\0\0\0\0\0Ø¦µ§@Í@~|/RnH@'),
(894, 22405, '22405 - NORD (MALAKOFF)', 'ANGLE PASSAGE DU NORD / GABRIEL PERI - 92240 MALAKOFF', '\0\0\0\0\0\0\0Ô®$j`g@ÌÙàhH@'),
(895, 21109, '21109 - GUICHET (CLICHY)', '12BIS RUE DU GUICHET - 92110 CLICHY', '\0\0\0\0\0\0\0íÆ†k@Ý8ƒ‡ÛsH@'),
(896, 12008, '12008 - HECTOR MALOT', '15 BIS RUE HECTOR MALOT - 75012 PARIS', '\0\0\0\0\0\0\0ž/eŠó@šŽ1pdlH@'),
(897, 33001, '33001 - EMGP (AUBERVILLIERS)', '45 Avenue Victor Hugo - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0ö‘i·ñ@{ Œƒ›sH@'),
(898, 16011, '16011 - VICTOR HUGO RUE DE LA POMPE', '118 AVENUE VICTOR HUGO - 75016 PARIS', '\0\0\0\0\0\0\09ºŠIw@@´K\'1oH@'),
(899, 8040, '08040 - CHAMPS ELYSEES CHARRON', '65 RUE PIERRE CHARRON - 75008 PARIS', '\0\0\0\0\0\0\0DÚï<o@‘Ûw^oH@'),
(900, 13113, '13113 - CHOISY VISTULE', '2 RUE DE LA VISCULE - 75013 PARIS', '\0\0\0\0\0\0\0ÆíÒä@K;ÖliH@'),
(901, 9028, '09028 - MONCEY BLANCHE', '4 RUE MONCEY - 75009 PARIS', '\0\0\0\0\0\0\0•nÆ»\n¦@[Äâ¨pH@'),
(902, 18015, '18015 - CUSTINE', '23 RUE CUSTINE - 75018 PARIS', '\0\0\0\0\0\0\0Kûá­Æ@4^vJ¾qH@'),
(903, 12014, '12014 - NATION', '16 PLACE DE LA NATION SUR TPC - 75012 PARIS', '\0\0\0\0\0\0\06²—¯*@Ãp¨btlH@'),
(904, 41102, '41102 - RENAN (ARCUEIL)', 'rue Ernest Renan / angle rue Vaucouleurs (A la sortie du RER B) - 94110 ARCUEIL', '\0\0\0\0\0\0\0Í­Åq­@…¾vÅ†gH@'),
(905, 2004, '02004 - REAUMUR MONTORGUEIL', '83 ALLEE PIERRE LAZAREF - 75002 PARIS', '\0\0\0\0\0\0\0LEkÑÿÉ@S“¢þønH@'),
(906, 14005, '14005 - DENFERT ROCHEREAU', '2 AVENUE RENE COTY - 75014 PARIS', '\0\0\0\0\0\0\0øWŠP©@eÝ’[¤jH@'),
(907, 21019, '21019 - VAILLANT (BOULOGNE-BILLANCOURT)', '71 AVENUE EDOUARD VAILLANT - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0;)f\\Ÿû@ö¸ÜjH@'),
(908, 13032, '13032 - MASSENA', '163 AVENUE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0$Œ^`à@¹^NòhH@'),
(909, 16041, '16041 - VERSAILLES', '164 AVENUE DE VERSAILLES - 75016 PARIS', '\0\0\0\0\0\0\0oŒ´U@\\?©NŒkH@'),
(910, 13019, '13019 - AURIOL QUAI DE LA GARE', '20 RUE FERNAND BRAUDEL - 75013 PARIS', '\0\0\0\0\0\0\0UÆ®òŸú@Ôë\rkH@'),
(911, 6032, '06032 - RENNES SABOT', '7 RUE DU SABOT - 75006 PARIS', '\0\0\0\0\0\0\0YjÝë6§@š mH@'),
(912, 11104, '11104 - CHARONNE DU BUREAU', '170 RUE DE CHARONNE - 75011 PARIS', '\0\0\0\0\0\0\0@äè#@æAÖmH@'),
(913, 7008, '07008 - SOLFERINO', '10 RUE DE VILLERSEXEL - 75007 PARIS', '\0\0\0\0\0\0\0;ò[›8—@ÓÿªbÝmH@'),
(914, 43002, '43002 - LAGNY (VINCENNES)', '1 BIS RUE DE LAGNY - 94300 VINCENNES', '\0\0\0\0\0\0\0±Må·Úh@&qT¨lH@'),
(915, 8051, '08051 - CHAPTAL', '45 BD BATIGNOLLES - 75008 PARIS', '\0\0\0\0\0\0\0ÞtËñ@9ñÕŽâpH@'),
(916, 15014, '15014 - VOLONTAIRES', '25 RUE DES VOLONTAIRES - 75015 PARIS', '\0\0\0\0\0\0\0ãê_÷v@»mäc°kH@'),
(917, 19120, '19120 - ALOUETTES', '20 RUE CARDUCCI - 75019 PARIS', '\0\0\0\0\0\0\0\rò?s»@0yäsRpH@'),
(918, 6014, '06014 - PONT DE LODI DAUPHINE', '7 RUE DU PONT DE LODI - 75006 PARIS', '\0\0\0\0\0\0\0ÙBK6¸@ˆïg^zmH@'),
(919, 12112, '12112 - CHARENTON JARDINIER', '311-313 RUE DE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0ãs¢ T(@¡²þ«ºjH@'),
(920, 14028, '14028 - PLAISANCE ALESIA', '164 RUE ALESIA - 75014 PARIS', '\0\0\0\0\0\0\0£‚ºÕq…@|€y+sjH@'),
(921, 18109, '18109 - RIQUET PAJOL', '55 RUE PAJOL - 75018 PARIS', '\0\0\0\0\0\0\0†X\\Êç@d6DPÞqH@'),
(922, 7025, '07025 - SUFFREN TOUR EIFFEL', '2 AVENUE OCTAVE CREARD - 75007 PARIS', '\0\0\0\0\0\0\0áËM\ZnX@»ã¡mH@'),
(923, 7010, '07010 - INVALIDES', 'FACE 3 RUE DE CONSTANTINE - 75007 PARIS', '\0\0\0\0\0\0\0F°îÉ„@*}Áµ-nH@'),
(924, 6009, '06009 - GUYNEMER LUXEMBOURG', '26 RUE GUYNEMER - 75006 PARIS', '\0\0\0\0\0\0\0“ÿ¾¨@³~hZalH@'),
(925, 42505, '42505 - FREROT (GENTILLY)', '37 RUE CHARLES FREROT - 94250 GENTILLY', '\0\0\0\0\0\0\0š#wÆÍ@ŽUkhH@'),
(926, 10003, '10003 - HAUTEVILLE', '1 RUE D\'HAUTEVILLE - 75010 PARIS', '\0\0\0\0\0\0\0ì	ÚÌ@È¶ÃˆuoH@'),
(927, 42012, '42012 - BARBUSSE (IVRY)', '1 RUE HENRY BARBUSSE - 94200 IVRY', '\0\0\0\0\0\0\0Ü»	@mÜ¥´gH@'),
(928, 11026, '11026 - CHEMIN VERT SAINT MAUR', '105 RUE DU CHEMIN VERT - 75011 PARIS', '\0\0\0\0\0\0\0rd\\è@©Bež;nH@'),
(929, 6028, '06028 - ODEON QUATRE VENTS', '6 RUE DES QUATRE VENTS - 75006 PARIS', '\0\0\0\0\0\0\0¬âjŽ´@ÛÏd0mH@'),
(930, 42501, '42501 - RASPAIL 1 - FRAYSSE', '80 AVENUE RASPAIL - 94250 GENTILLY', '\0\0\0\0\0\0\0ªþ”lmÀ@Å˜ªj¸gH@'),
(931, 15071, '15071 - CHAMP DE MARS COTE 16EME', '36 AVENUE DE SUFFREN - 75015 PARIS', '\0\0\0\0\0\0\0€Fé-\\@ˆ8ÈkmH@'),
(932, 18103, '18103 - CHARLES HERMITE', '45 RUE CHARLES HERMITE - 75018 PARIS', '\0\0\0\0\0\0\0¾ ²Þøê@¹%Ô>sH@'),
(933, 22007, '22007 - CHARCOT (NEUILLY)', '35-37 BOULEVARD DU COMMANDANT CHARCOT - 92200 NEUILLY SUR SEINE', '\0\0\0\0\0\0\0¦W¬@?ÍGÎpH@'),
(934, 41201, '41201 - DE RICARD (FONTENAY SOUS BOIS)', 'RUE LOUIS-XAVIER DE RICARD - 94120 FONTENAY SOUS BOIS', '\0\0\0\0\0\0\0GKs@~Ç@œ˜ò¦SlH@'),
(935, 15052, '15052 - CONVENTION', '183 RUE DE LA CONVENTION - 75015 PARIS', '\0\0\0\0\0\0\0§£­\\]@\0D~þ8kH@'),
(936, 6004, '06004 - REGARD', '19 RUE DU REGARD - 75006 PARIS', '\0\0\0\0\0\0\0²H1.¤@qØv{lH@'),
(937, 13006, '13006 - SAINT MARCEL JEANNE D\'ARC', '02 RUE DUMERIL - 75013 PARIS', '\0\0\0\0\0\0\0šÂ¿¬[Û@,éHHkH@'),
(938, 20038, '20038 - LEON FRAPIE', '6 RUE LEON FRAPIE - 75020 PARIS', '\0\0\0\0\0\0\0àJ­õ»I@v°ltÐoH@'),
(939, 15035, '15035 - PLACE ETIENNE PERNET', '2 RUE DES FRERES MORANE - 75015 PARIS', '\0\0\0\0\0\0\0ýé_V@vA°ÕkH@'),
(940, 21305, '21305 - MADAULE (ISSY LES MOULINEAUX)', 'PLACE MADAULE - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\03üÍ@(õ|iH@'),
(941, 6017, '06017 - SENAT CONDE', '34 RUE CONDE - 75006 PARIS', '\0\0\0\0\0\0\0Ò†¥áé³@ä\\š	¿lH@'),
(942, 13044, '13044 - PLACE JEANNE D\'ARC', '20 PLACE JEANNE D\'ARC - 75013 PARIS', '\0\0\0\0\0\0\0W§ŒÂøó@Ò)”‰/jH@'),
(943, 20022, '20022 - PORTE DE BAGNOLET', '1 RUE GEO CHAVEZ - 75020 PARIS', '\0\0\0\0\0\0\0¤ÂØBC@;6ñºnH@'),
(944, 4005, '04005 - SULLY MORLAND', '2 QUAI DES CELESTINS - 75004 PARIS', '\0\0\0\0\0\0\0Æº¾ÏAæ@àÍÃvölH@'),
(945, 12122, '12122 - POLYGONE', 'AVENUE DU POLYGONE - 75012 PARIS', '\0\0\0\0\0\0\0•™\\åŒs@òIèÛïjH@'),
(946, 12114, '12114 - PORTE DE SAINT MANDE', '33 AVENUE COURTELINE - 75012 PARIS', '\0\0\0\0\0\0\0fï¿1R@ÕÀÞ…lH@'),
(947, 34006, '34006 - MICHELET (SAINT OUEN)', '42 AVENUE MICHELET - 93400 SAINT OUEN', '\0\0\0\0\0\0\0|ºÏä Á@ß$*†tH@'),
(948, 21302, '21302 - BRIAND (ISSY LES MOULINEAUX)', 'PLACE DE LA RESISTANCE ANGLE RUE ARISTIDE BRIAND - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0\rê’Œ@ÞŠò„iH@'),
(949, 21206, '21206 - PERI (MONTROUGE)', '35/37 RUE GABRIEL PERI - 92120 MONTROUGE', '\0\0\0\0\0\0\0¡èè+‘@ã	â»hH@'),
(950, 6005, '06005 - MONTPARNASSE', '40 RUE DU MONTPARNASSE - 75006 PARIS', '\0\0\0\0\0\0\0²™Áœ@UkñkH@'),
(951, 2006, '02006 - PLACE DES VICTOIRES', '2 RUE D\'ABOUKIR - 75002 PARIS', '\0\0\0\0\0\0\0´ÙÄ@¼@þŽœ,ÙnH@'),
(952, 17048, '17048 - TOCQUEVILLE', '12 RUE DE TOCQUEVILLE - 75017 PARIS', '\0\0\0\0\0\0\0áÉ¥ƒ@”ÛÞŽòpH@'),
(953, 16012, '16012 - BOULEVARD FLANDRIN', '68 BOULEVARD FLANDRIN - 75016 PARIS', '\0\0\0\0\0\0\0f0êÊà1@†×4"4oH@'),
(954, 21502, '21502 - VERDUN (SURESNES)', '18 BIS RUE DE VERDUN / COUR MADELAINE - 92150 SURESNES', '\0\0\0\0\0\0\0#v\Z¶ßÑ@ý}oH@'),
(955, 15019, '15019 - VAUGIRARD CAMBRONNE', '3 RUE PAUL BARRUEL - 75015 PARIS', '\0\0\0\0\0\0\0}W3–¡o@F•æ‡kH@'),
(956, 15056, '15056 - BALARD', '13 PLACE BALARD - 75015 PARIS', '\0\0\0\0\0\0\0ÙXÐ:@ºf§kH@'),
(957, 18035, '18035 - PORTE MONTMARTRE', 'FACE 66 RUE RENE BINET - 75018 PARIS', '\0\0\0\0\0\0\0Ìê1õ±@j(\\ãsH@'),
(958, 7013, '07013 - PLACE DE BRETEUIL', '17 RUE DUROC - 75007 PARIS', '\0\0\0\0\0\0\0cŽ½b€@9ôzlH@'),
(959, 21002, '21002 - DENFERT ROCHEREAU (BOULOGNE-BILLANCOURT)', 'PLACE DENFERT ROCHEREAU - 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\0—Ã*?ø@ßp6íkH@'),
(960, 12001, '12001 - BASTILLE', '48 BOULEVARD DE LA BASTILLE - 75012 PARIS', '\0\0\0\0\0\0\0Yø˜9ô@\\RÖÃ÷lH@'),
(961, 16035, '16035 - HIPPODROME D AUTEUIL', 'ALLEE DES FORTIFICATIONS - 75016 PARIS', '\0\0\0\0\0\0\0Gb2Ÿ«@ãþ…¨lH@'),
(962, 8053, '08053 - FRIEDLAND', 'PLACE GEORGES GUILLAUMIN - 75008 PARIS', '\0\0\0\0\0\0\0ž¼l$j@ÖÐ÷oH@'),
(963, 9015, '09015 - LAMARTINE', '43 RUE LAMARTINE - 75009 PARIS', '\0\0\0\0\0\0\0†ùué·@òùT\'5pH@'),
(964, 13117, '13117 - STADE GEORGES CARPENTIER', '95-97 BOULEVARD MASSENA - 75013 PARIS', '\0\0\0\0\0\0\0µ˜R(?ï@r™üiH@'),
(965, 10019, '10019 - PARADIS', '23 RUE PARADIS - 75010 PARIS', '\0\0\0\0\0\0\0ÞfkPFÑ@¥:¯pH@'),
(966, 32004, '32004 - BAILLY (SAINT DENIS)', 'AVENUE DU PRESIDENT WILSON/ RUE DE BAILLY - 93200 SAINT DENIS', '\0\0\0\0\0\0\0÷Õ…Q)Ü@+N§:%uH@'),
(967, 8050, '08050 - BOETIE PONTHIEU', '116 RUE DE LA BOETIE - 75008 PARIS', '\0\0\0\0\0\0\0±ÝH\n¼u@ oÁºoH@'),
(968, 42701, '42701 - GIDE (LE KREMLIN BICETRE)', 'FACE 50 AVENUE CHARLES GIDE - 94270 LE KREMELIN BICETRE', '\0\0\0\0\0\0\0ñ‘Ìµ°Ô@Å©¯±RgH@'),
(969, 10018, '10018 - ALBAN SATRAGNE', '110-112 RUE FAUBOURG SAINT DENIS - 75010 PARIS', '\0\0\0\0\0\0\0oõ"ÒGÙ@qÒœpH@'),
(970, 9018, '09018 - PLACE PIGALLE', '05 RUE DUPERRE - 75009 PARIS', '\0\0\0\0\0\0\0BB2…±@©ñ\\­çpH@'),
(971, 19045, '19045 - CANAL SAINT DENIS - BD MACDONALD', '145 BOULEVARD MCDONALD - 75019 PARIS', '\0\0\0\0\0\0\05´g9Þ@7b%ÞsH@'),
(972, 18014, '18014 - DOUDEAUVILLE LEON', '26 RUE LEON - 75018 PARIS', '\0\0\0\0\0\0\0éÀÁFÔ@£?¥›´qH@'),
(973, 9024, '09024 - LAFAYETTE TAITBOUT', '27 RUE TAITBOUT - 75009 PARIS', '\0\0\0\0\0\0\0Çû	°®@$Ž\'ËoH@'),
(974, 31001, '31001 - LAGNY (MONTREUIL)', '96 RUE DE LAGNY - 93100 MONTREUIL', '\0\0\0\0\0\0\0b©_@C~”³lH@'),
(975, 8003, '08003 - GALILLE', '63 RUE GALILEE - 75008 PARIS', '\0\0\0\0\0\0\0ÿ5Ébc@±d$	”oH@'),
(976, 8019, '08019 - EUROPE', '03 RUE DE NAPLES - 75008 PARIS', '\0\0\0\0\0\0\0á	Ÿ%’@H´o¢pH@'),
(977, 15032, '15032 - LOURMEL', '112 AVE FELIX FAURE - 75015 PARIS', '\0\0\0\0\0\0\0	çr	A@íÈ*¦[kH@'),
(978, 21112, '21112 - DEBUSSY (CLICHY)', '31/35 AVENUE CLAUDE DEBUSSY - 92110 CLICHY', '\0\0\0\0\0\0\037P€~@X\'ñˆtH@'),
(979, 20108, '20108 - HOSPICE DEBROUSSE', '142 RUE DE BAGNOLET - 75020 PARIS', '\0\0\0\0\0\0\0#¾\'¯Ù>@9ŽÐHnH@'),
(980, 17115, '17115 - PORTE DE SAINT OUEN', '22 AVENUE DE LA PORTE DE SAINT OUEN - 75017 PARIS', '\0\0\0\0\0\0\06±t“ï¢@ñ­\0’\nsH@'),
(981, 12127, '12127 - TREMBLAY - INSEP', '11, avenue du Temblay - 75012 PARIS', '\0\0\0\0\0\0\0¤ˆ«x£@-ìi‡¿jH@'),
(982, 31011, '31011 - STALINGRAD 2 (MONTREUIL)', '27 RUE DE STALINGRAD - 93100 MONTREUIL', '\0\0\0\0\0\0\0BhJŽ‹@w“0ñmH@'),
(983, 41604, '41604 - LAGNY (SAINT MANDE)', '126 RUE LAGNY / ANGLE AVENUE JOFFRE - 94160 SAINT MANDE', '\0\0\0\0\0\0\0ç¹µáW@ò/ü?¶lH@'),
(984, 10115, '10115 - DODU', '1 - 3 RUE DES ECLUSES SAINT MARTIN - 75010 PARIS', '\0\0\0\0\0\0\0ì—IÖñ@¸±D%pH@'),
(985, 3008, '03008 - PERLE', '22 RUE DE LA PERLE - 75003 PARIS', '\0\0\0\0\0\0\0ípnã@YùÃtnH@'),
(986, 22404, '22404 - BROSSOLETTE 2 (MALAKOFF)', '102 AVENUE PIERRE BROSSOLETTE - 92240 MALAKOFF', '\0\0\0\0\0\0\0·Ð#»u@nJÌ¥hH@'),
(987, 20004, '20004 - PORTE DE VINCENNES BIS', '10 RUE DU COMMANDANT L\'HERMINIER - 75020 PARIS', '\0\0\0\0\0\0\0¹g}ØT@?pY›llH@'),
(988, 20007, '20007 - BUZENVAL', '52 RUE BUZENVAL - 75020 PARIS', '\0\0\0\0\0\0\0˜¯ÊÂL6@æÊmH@'),
(989, 16004, '16004 - BOULEVARD LANNES', 'FACE 2 BOULEVARD LANNES - 75016 PARIS', '\0\0\0\0\0\0\0‚õÒñ2@éïö×toH@'),
(990, 21107, '21107 - SINCHOLLE (CLICHY)', 'RUE BERTRAND SINCHOLLE - 92110 CLICHY', '\0\0\0\0\0\0\0´ØFÑ¬n@ër7sH@'),
(991, 18102, '18102 - RUE DE LA CHAPELLE', '69 BIS RUE DE LA CHAPELLE - 75018 PARIS', '\0\0\0\0\0\0\0}ŒgêÞ@I6ó¿rH@'),
(992, 15065, '15065 - HUMBERT', '23 RUE EMILE ZOLA - 75015 PARIS', '\0\0\0\0\0\0\0tÝÝu=@u°MVlH@'),
(993, 21301, '21301 - SAINT VINCENT (ISSY LES MOULINEAUX)', '21 RUE SAINT VINCENT - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0ÕhÁ°ì@b“QåhH@'),
(994, 10037, '10037 - VERSION 2 JAURES', 'EGLISE SAINT JOSEPH ARTISAN - 75010 PARIS', '\0\0\0\0\0\0\0ði>šçñ@—+eÍpH@'),
(995, 17027, '17027 - PEREIRE LEVALLOIS', '121 BOULEVARD PEREIRE - 75017 PARIS', '\0\0\0\0\0\0\0ÀïÝäb@?êNPqH@'),
(996, 1018, '01018 - RIVOLI TUILERIE', '2 RUE D\'ALGER - 75001 PARIS', '\0\0\0\0\0\0\0øAüð¬¢@dæ±nH@'),
(997, 5028, '05028 - CENSIER BUFFON', '6 RUE CENSIER - 75005 PARIS', '\0\0\0\0\0\0\0§fíì×@Jð™‚¨kH@'),
(998, 15024, '15024 - LAOS', '88 AVENUE DE SUFFREN - 75015 PARIS', '\0\0\0\0\0\0\0uFi@¡äÅêlH@'),
(999, 16001, '16001 - AVENUE DES PORTUGAIS', '2 AVENUE DES PORTUGAIS - 75016 PARIS', '\0\0\0\0\0\0\0.áèB{Y@ØPîƒoH@'),
(1000, 42502, '42502 - RASPAIL 2 (GENTILLY)', 'FACE AU 79 AVENUE RASPAIL- 94250 GENTILLY', '\0\0\0\0\0\0\0‹<!<Æ@£‘hH@'),
(1001, 33013, '33013 - RECHAUSSIERE (AUBERVILLIERS)', '52 RUE LEOPOLD RECHOSSIERE - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0I*q›ß @IK‰uH@'),
(1002, 20020, '20020 - PYRENEES RENOUVIER', '183 RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\0<ÿ8_4@Ê°Wê3nH@'),
(1003, 8101, '08101 - LONDRES AMSTERDAM', '42 RUE DE LONDRES - 75008 PARIS', '\0\0\0\0\0\0\0é*g£œ@ÓuèncpH@'),
(1004, 19034, '19034 - PANTIN', '20 AVENUE DE LA PORTE DE PANTIN - 75019 PARIS', '\0\0\0\0\0\0\0—Ú8ë¸.@ßô¥¹öqH@'),
(1005, 5012, '05012 - ULM - LHOMOND', '20 RUE DE L\'ESTRAPADE - 75005 PARIS', '\0\0\0\0\0\0\0I|K¹gÃ@û˜y©-lH@'),
(1006, 10022, '10022 - CHABROL SAINT QUENTIN', 'FACE 124 RUE DU FAUBOURG SAINT DENIS - 75010 PARIS', '\0\0\0\0\0\0\0qs7öTÙ@l¢½,=pH@'),
(1007, 15058, '15058 - GEORGES POMPIDOU', '4 PLACE DU MOULIN DE JAVEL - 75015 PARIS', '\0\0\0\0\0\0\0_4ïT7,@|\'ÿ6ˆkH@'),
(1008, 21004, '21004 - JAURES 2 (BOULOGNE-BILLANCOURT)', '55 BOULEVARD JEAN JAURES - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0§ç8&ë@ÆQÏá…kH@'),
(1009, 16009, '16009 - SAINT DIDIER', '32 RUE SAINT DIDIER - 75016 PARIS', '\0\0\0\0\0\0\0íêm+5I@ãÏxzçnH@'),
(1010, 8035, '08035 - NARVICK', '54 RUE DE LA BIENFAISANCE - 75008 PARIS', '\0\0\0\0\0\0\00§®\\@*ÈFm4pH@'),
(1011, 5016, '05016 - CONTRESCARPE-THOUIN', '1 RUE THOUIN - 75005 PARIS', '\0\0\0\0\0\0\0µKÅË@"\0+lH@'),
(1012, 10033, '10033 - LARIBOISIERE', '15 RUE SAINT VINCENT DE PAUL - 75010 PARIS', '\0\0\0\0\0\0\0LÀúÇÑ@ãÌa(ÃpH@'),
(1013, 14007, '14007 - SAINT JACQUES FERRUS', '1 RUE FERRUS - 75014 PARIS', '\0\0\0\0\0\0\0[v”û¹@RÍ.9jjH@'),
(1014, 18048, '18048 - PORTE DE LA CHAPELLE', '29 BOULEVARD NEY - 75018 PARIS', '\0\0\0\0\0\0\0—aæ©ã@ ÀÉGþrH@'),
(1015, 21017, '21017 - REPUBLIQUE 1 (BOULOGNE-BILLANCOURT)', '91 BOULEVARD DE LA REPUBLIPQUE - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0‹\rF‚ó@ŠFùC¯jH@'),
(1016, 7102, '07102 - SAINTE CLOTHILDE', 'FACE 19 RUE CASIMIR PERIER - 75007 PARIS', '\0\0\0\0\0\0\0»ž@Å$XÍmH@'),
(1017, 16135, '16135 - STADE WILMILLE', 'ROND POINT DU MARECHAL DELATRE DE TASSIGNY - 75016 PARIS', '\0\0\0\0\0\0\0|(Ñ’Ç3@mS<.ªoH@'),
(1018, 9102, '09102 - PLACE D\'ESTIENNE D\'ORVES', '2 RUE DE LONDRES - 75009 PARIS', '\0\0\0\0\0\0\0)ðîéÔ¤@L#AÅ8pH@'),
(1019, 10027, '10027 - DUNKERQUE', '4 RUE DE DUNKERQUE - 75010 PARIS', '\0\0\0\0\0\0\0æEùèõÝ@ðÙ@µŽpH@'),
(1020, 6025, '06025 - RENNES - ASSAS', '16 RUE D\'ASSAS - 75006 PARIS', '\0\0\0\0\0\0\0ž‹<Ì @Z\\7Ý²lH@'),
(1021, 42705, '42705 - CONVENTION (LE KREMLIN BICETRE)', '1 RUE DE LA CONVENTION - 94270 LE KREMLIN BICETRE', '\0\0\0\0\0\0\0ýiã@Þ×	hH@'),
(1022, 1024, '01024 - LOUVRE COQ HERON', '20 RUE COQUILLIERE - 75001 PARIS', '\0\0\0\0\0\0\0MOVvÝ½@ï\\°nH@'),
(1023, 17111, '17111 - LEMERCIER', '109 RUE LEMERCIER - 75017 PARIS', '\0\0\0\0\0\0\0imŠ@ÿØ\r1ìqH@'),
(1024, 9013, '09013 - MAIRIE DU 9EME', '20 RUE DE LA GRANGE BATELIERE - 75009 PARIS', '\0\0\0\0\0\0\0.›ñÜ¹@‡K²7ÇoH@'),
(1025, 7011, '07011 - ST DOMINIQUE', '30 BIS RUE LAS CASES - 75007 PARIS', '\0\0\0\0\0\0\0ÛŠŒ@^²ôõmH@'),
(1026, 2013, '02013 - RICHELIEU DROUOT', '20 RUE FAVART - 75002 PARIS', '\0\0\0\0\0\0\0„iqÑ´@—\'Û‹oH@'),
(1027, 19040, '19040 - TELEGRAPHE', '265 RUE DE BELLEVILLE - 75019 PARIS', '\0\0\0\0\0\0\0Ó:‚Ø2@Ó¬«ØpH@'),
(1028, 15072, '15072 - PLACE FERNAND FOREST', '1 RUE LINOIS ANGLE QUAI DE GRENELLE - 75015 PARIS', '\0\0\0\0\0\0\0MHk:A@z8é´lH@'),
(1029, 14021, '14021 - PLACE DE LA PORTE DE CHATILLON', 'BOULEVARD BRUNE PORTE DE CHATILLON - 75014 PARIS', '\0\0\0\0\0\0\0öÍ®*.Œ@XøéàˆiH@'),
(1030, 11011, '11011 - RICHARD LENOIR', 'FACE 86 BOULEVARD RICHARD LENOIR - 75011 PARIS', '\0\0\0\0\0\0\0ª	¬0û@6—ŸOnH@'),
(1031, 31003, '31003 - PARIS (MONTREUIL)', '237-241 RUE DE PARIS - 93100 MONTREUIL', '\0\0\0\0\0\0\0,\\¥Y@$Ñ\n¼mmH@'),
(1032, 13029, '13029 - ITALIE', '30 AVENUE D\'ITALIE - 75013 PARIS', '\0\0\0\0\0\0\0\nªvÙ@‰Ï¸jH@'),
(1033, 1014, '01014 - RIVOLI MUSEE DU LOUVRE', '5 RUE DE L\'ECHELLE - 75001 PARIS', '\0\0\0\0\0\0\0jV,e&¬@¡ýÏŒnH@'),
(1034, 18108, '18108 - EVANGILE', '61 RUE DE L\'EVANGILE - 75018 PARIS', '\0\0\0\0\0\0\0ú¸Æéó@÷§æQ’rH@'),
(1035, 11023, '11023 - LEO FROT ROQUETTE', '2 RUE SAINT MAUR - 75011 PARIS', '\0\0\0\0\0\0\0z·Á„@x…ƒémH@'),
(1036, 2021, '02021 - CLERY', '4 RUE DE CLERY - 75002 PARIS', '\0\0\0\0\0\0\0#„+—Á@r·Q,	oH@'),
(1037, 19043, '19043 - PETITS PONTS', 'RUE JULES LADOUMEGUE / ANGLE ROUTES DES PETITS PONTS / ANGLE AV. DU GAL. LECLERC - 75019 PARIS', '\0\0\0\0\0\0\0‘–T¡ë.@˜àChrH@'),
(1038, 9006, '09006 - TRUDAINE ROCHECHOUART', '81 RUE DUNKERQUE - 75009 PARIS', '\0\0\0\0\0\0\0¤“¼%Å@Ì(çèpH@'),
(1039, 16006, '16006 - RUE LAURISTON', '60 RUE LAURISTON - 75016 PARIS', '\0\0\0\0\0\0\0t¹HèÀQ@›SDëCoH@'),
(1040, 11102, '11102 - RUE DES BOULETS ( COMPLEMENTAIRE )', '3 RUE ALEXANDRE DUMAS - 75011 PARIS', '\0\0\0\0\0\0\0½4pù@K,¹t+mH@'),
(1041, 18021, '18021 - MARCADET - RAMEY', '98 RUE MARCADET - 75018 PARIS', '\0\0\0\0\0\0\0gÐÑEˆÂ@’¡¾	rH@'),
(1042, 15016, '15016 - DUTOT', '59 RUE DUTOT - 75015 PARIS', '\0\0\0\0\0\0\0í‹ßw@w+»ÒMkH@'),
(1043, 16112, '16112 - CHERNOVITZ', '1-3 RUE CHERNOVITZ - 75016 PARIS', '\0\0\0\0\0\0\0Ù=äA@Eù»±mH@'),
(1044, 42003, '42003 - INSURRECTION AOUT 1944 (IVRY)', '2 PLACE DE L\'INSURRECTION AOUT 1944 - 94200 IVRY SUR SEINE', '\0\0\0\0\0\0\0 p"¿£/@Z"ÈFhH@'),
(1045, 22004, '22004 - CHARLES DE GAULLE (NEUILLY)', '162 AVENUE CHARLES DE GAULLE - 92200 NEUILLY', '\0\0\0\0\0\0\0\'îux@‘ì­>qH@'),
(1046, 16032, '16032 - EGLISE D AUTEUIL', 'PLACE DE L\'EGLISE D\'AUTEUIL - 75016 PARIS', '\0\0\0\0\0\0\0m·7ßÚ%@ÁÀÔzlH@'),
(1047, 20012, '20012 - BUZENVAL VIGNOLES', '90 RUE BUZENVAL - 75020 PARIS', '\0\0\0\0\0\0\0×ý	„G3@\r	 [MmH@'),
(1048, 13114, '13114 - NATIONALE DUCHAMP (PROP 1)', '46 RUE NATIONALE - 75013 PARIS', '\0\0\0\0\0\0\0*ûóMñ@ÒTÑf“iH@'),
(1049, 32601, '32601 - PARIS (LES LILAS)', '46 RUE DE PARIS - 93260 LES LILAS', '\0\0\0\0\0\0\0{ù17’K@&f¦upH@'),
(1050, 18003, '18003 - JOSEPH DE MAISTRE LEPIC', '2 RUE JOSEPH DE MAISTRE - 75018 PARIS', '\0\0\0\0\0\0\0eVÆ©@‰¦¼jwqH@'),
(1051, 4101, '04101 - BASTILLE', '11 RUE DE LA BASTILLE - 75004 PARIS', '\0\0\0\0\0\0\0.¸M|ò@=;ImH@'),
(1052, 20031, '20031 - DURIS', '33 RUE DURIS - 75020 PARIS', '\0\0\0\0\0\0\0®	÷L\Z@íÅ\nÊnH@'),
(1053, 15018, '15018 - ALLERAY', '85 RUE DUTOT - 75015 PARIS', '\0\0\0\0\0\0\06$x zt@ÖJOékH@'),
(1054, 15017, '15017 - PROCESSION', '7 PLACE FALGUIERE - 75015 PARIS', '\0\0\0\0\0\0\0XÖ¹Õ{@E…ìükH@'),
(1055, 10005, '10005 - CONSERVATOIRE', '59 RUE DES PETITES ECURIES - 75010 PARIS', '\0\0\0\0\0\0\0z7~€É@ÂúôQÞoH@'),
(1056, 17017, '17017 - PONT CARDINET', '167 RUE DE ROME - 75017 PARIS', '\0\0\0\0\0\0\05çPç#„@ôÜ}ÑqH@'),
(1057, 8027, '08027 - MAIRIE DU 8 ÃˆME', '28 RUE DE MADRID - 75008 PARIS', '\0\0\0\0\0\0\0WQDÙŒ@ÝDÖÇapH@'),
(1058, 15112, '15112 - FALGUIÃˆRE LEBRUN', '19 RUE VIGEE LEBRUN - 75015 PARIS', '\0\0\0\0\0\0\0’è$Ì|@Æ™är\\kH@'),
(1059, 28001, '28001 - WALLACE (PUTEAUX)', 'FACE AU 4 BOULEVARD RICHARD WALLACE - 92800 PUTEAUX', '\0\0\0\0\0\0\0PÊþØï@5WwypH@'),
(1060, 18045, '18045 - GANNERON', '2 RUE PIERRE GINIER - 75018 PARIS', '\0\0\0\0\0\0\0¸\n¤Ý?œ@Vh—ÿ|qH@'),
(1061, 12125, '12125 - PYRAMIDE ENTRÃ‰E PARC FLORAL', 'PYRAMIDE ENTREE PARC FLORAL - 75012 PARIS', '\0\0\0\0\0\0\0%º”æ†@-G¼Ô$kH@'),
(1062, 22014, '22014 - HUGO (NEUILLY)', '35 BOULEVARD VICTOR HUGO - 92200 NEUILLY', '\0\0\0\0\0\0\0‘¥	~9@éz%w£qH@'),
(1063, 10020, '10020 - CHABROL', '59 RUE CHABROL - 75010 PARIS', '\0\0\0\0\0\0\0Rk‘MÏ@_£ÓDpH@'),
(1064, 21304, '21304 - BLUM (ISSY LES MOULINEAUX)', 'FACE 2 PLACE LEON BLUM - 92100 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\03’ùü@ê•iH@'),
(1065, 10028, '10028 - GARE DU NORD DENAN', '24 RUE DE DUNKERQUE - 75010 PARIS', '\0\0\0\0\0\0\0H“rR“Ò@½ü¯pH@'),
(1066, 3010, '03010 - BEAUBOURG', '46 RUE BEAUBOURG - 75003 PARIS', '\0\0\0\0\0\0\0ÃæùzÕ@Úc¢@enH@'),
(1067, 11105, '11105 - REPUBLIQUE PARMENTIER', '82 AVENUE PARMENTIER - 75011 PARIS', '\0\0\0\0\0\0\0cÜVf\0@˜ÎL©nH@'),
(1068, 8032, '08032 - MATIGNON', '27 AVENUE MATIGNON - 75008 PARIS', '\0\0\0\0\0\0\0Éüê[Ö‚@‚\\ŠŒoH@'),
(1069, 11033, '11033 - BREGUET SABIN', 'FACE 23 BD RICHARD LENOIR - 75011 PARIS', '\0\0\0\0\0\0\0¹°ÜYåö@÷uî­mH@'),
(1070, 12111, '12111 - DECAEN CANNEBIERE', '73 RUE CLAUDE DECAEN - 75012 PARIS', '\0\0\0\0\0\0\0^ñd“-@9îð6kH@'),
(1071, 5006, '05006 - SAINT JACQUES SOUFFLOT', '174 RUE SAINT JACQUES - 75005 PARIS', '\0\0\0\0\0\0\0éˆO±·¾@-·œªZlH@'),
(1072, 21011, '21011 - SILLY (BOULOGNE BILLANCOURT)', '153 RUE DE SILLY - 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\043´ýCß@^Yßù‡jH@'),
(1073, 18039, '18039 - EOLE', '41 RUE D\'AUBERVILLIERS - 75018 PARIS', '\0\0\0\0\0\0\0‡_¬bï@eÐ)é‰qH@'),
(1074, 18009, '18009 - LEPINE', '12 RUE JEAN FRANCOIS LEPINE - 75018 PARIS', '\0\0\0\0\0\0\0ê\r×Ú@â¶—4lqH@'),
(1075, 22401, '22401 - DE GAULLE (MALAKOFF)', 'BOULEVARD CHARLES DE GAULLE (STATION DE METRO) - 92240 MALAKOFF', '\0\0\0\0\0\0\0âôþ˜c@,)‡›HiH@'),
(1076, 9032, '09032 - MATHURINS', '12 RUE DES MATHURINS - 75009 PARIS', '\0\0\0\0\0\0\0,KÛÝ¾¢@° …½oH@'),
(1077, 16015, '16015 - RUE DE BASSANO', '1 RUE DE BASSANO - 75016 PARIS', '\0\0\0\0\0\0\0ª—®ƒ^@y\\ü[oH@'),
(1078, 41601, '41601 - GENERAL DE GAULLE (SAINT MANDE)', '86 AVENUE DU GENERAL DE GAULLE - 94160 SAINT MANDE', '\0\0\0\0\0\0\0ž‰HHÛV@fdYekH@'),
(1079, 21006, '21006 - PARIS (BOULOGNE-BILLANCOURT)', '162 RUE DE PARIS - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0yµŽ3Þ@£Å‘s¹kH@'),
(1080, 18112, '18112 - HÃ”PITAL BICHAT', '2 RUE ARTHUR RANC - 75018 PARIS', '\0\0\0\0\0\0\0ŽvR«@‡¸M"òrH@'),
(1081, 21308, '21308 - BARA (ISSY LES MOULINEAUX)', '23 RUE BARA - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0„õó%@t{Ic´jH@'),
(1082, 13020, '13020 - MENDES FRANCE', 'FACE 15 RUE PAUL KLEE - 75013 PARIS', '\0\0\0\0\0\0\0¬Œ§Ùö@N–gkH@'),
(1083, 33011, '33011 - FAURE (AUBERVILLIERS)', 'FACE 172-174 BOULEVARD FELIX FAURE - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0k¼ ~“\0@ždŒ¨tH@'),
(1084, 19005, '19005 - RIQUET', '56 AVENUE DE FLANDRE - 75019 PARIS', '\0\0\0\0\0\0\0u²º«uý@ýQkªqH@'),
(1085, 12004, '12004 - TRAVERSIERE', '76 RUE TRAVERSIERE - 75012 PARIS', '\0\0\0\0\0\0\0Ø“j0È@œWéälH@'),
(1086, 21201, '21201 - JAURES (MONTROUGE)', '6 PLACE JEAN JAURES / RUE MAURICE ARNOUX ET RUE CAMILLE PELLETIN - 92120 MONTROUGE', '\0\0\0\0\0\0\0å!€}@|á€6|hH@'),
(1087, 31013, '31013 - CENTENAIRE (MONTREUIL)', '8 RUE DU CENTENAIRE - 93100 MONTREUIL', '\0\0\0\0\0\0\0&^yœKk@<†âmH@'),
(1088, 16108, '16108 - SABLONS', '40 RUE DES SABLONS - 75016 PARIS', '\0\0\0\0\0\0\0,)5îOA@îOÖu“nH@'),
(1089, 13017, '13017 - NATIONALE', '167 RUE NATIONALE - 75013 PARIS', '\0\0\0\0\0\0\0i±\Zæ@WY[?jH@'),
(1090, 20037, '20037 - SAINT FARGEAU', '177 AVENUE GAMBETTA - 75020 PARIS', '\0\0\0\0\0\0\0&s/ˆJ;@ƒº@¤…oH@'),
(1091, 2108, '02108 - VIVIENNE', '42 RUE VIVIENNE - 75002 PARIS', '\0\0\0\0\0\0\0™ &M-»@ü7éÝ„oH@'),
(1092, 12101, '12101 - CHARENTON PRAGUE', '89 TER RUE DE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0ÿ7È@FF®\0‘lH@'),
(1093, 8044, '08044 - VAN DYCK', '2 RUE ALFRED DE VIGNY - 75008 PARIS', '\0\0\0\0\0\0\0â†€>)q@¤XT%npH@'),
(1094, 31010, '31010 - STALINGRAD (MONTREUIL)', '67-69 RUE DE STALINGRAD - 93100 MONTREUIL', '\0\0\0\0\0\0\0µ7‘U@78¤ü«mH@'),
(1095, 14124, '14124 - PORTE D\'ARCUEIL', 'AVENUE DAVID WEIL - 75014 PARIS', '\0\0\0\0\0\0\0‰?RŸ—«@ôOÄ0\ZiH@'),
(1096, 13514, '13514 - GARE D\'AUSTERLITZ 2', '9 BOULEVARD DE L\'HOPITAL - 75013 PARIS', '\0\0\0\0\0\0\0N|£>bè@#\Z©IÁkH@'),
(1097, 5035, '05035 - BUFFON AUSTERLITZ', '1 RUE BUFFON - 75005 PARIS', '\0\0\0\0\0\0\0î¦Íñôè@Çlp›ìkH@'),
(1098, 12007, '12007 - GARE DE LYON CHALON', 'FACE 54 RUE DE CHALON - 75012 PARIS', '\0\0\0\0\0\0\0l‚^þ@DSN‰?lH@'),
(1099, 6012, '06012 - SAINT GERMAIN COPEAU', '141 BD SAINT GERMAIN - 75006 PARIS', '\0\0\0\0\0\0\0lc:ü¬@cz9mH@'),
(1100, 5007, '05007 - ECOLES CARMES', '39 RUE DES ECOLES - 75005 PARIS', '\0\0\0\0\0\0\0fX›}Ç@õÇ`©lH@'),
(1101, 12034, '12034 - PIROGUES DE BERCY', '20 RUE DES PIROGUES DE BERCY - 75012 PARIS', '\0\0\0\0\0\0\09ËôLI@ÿAÐ‰jH@'),
(1102, 21010, '21010 - SILLY (BOULOGNE-BILLANCOURT)', '93 RUE DE SILLY - 92100 BOULOGNE-BILLANCOURT', '\0\0\0\0\0\0\0¦mŒp9Ü@÷ôÎñjH@'),
(1103, 42707, '42707 - OKABE (LE KREMLIN-BICETRE)', '51 avenue de Fontainebleau - 94270 Le Kremlin-Bicetre', '\0\0\0\0\0\0\0IòÌüä@ÁE«ûgH@'),
(1104, 19015, '19015 - THIONVILLE', '24 RUE DE THIONVILLE - 75019 PARIS', '\0\0\0\0\0\0\0æyz!\'@ŸÔÏqH@'),
(1105, 14024, '14024 - RAYMOND LOSSERAND', 'RUE VERCINGETORIX - 75014 PARIS', '\0\0\0\0\0\0\0PR¤7r@šÕ<ûiH@'),
(1106, 4016, '04016 - LOBAU', '3 RUE LOBAU - 75004 PARIS', '\0\0\0\0\0\0\0‰+k+…Ó@…~™mH@'),
(1107, 15004, '15004 - VAUGIRARD PASTEUR', 'DEV 71 BOULEVARD DE VAUGIRARD - 75015 PARIS', '\0\0\0\0\0\0\0a—{Ý…@iÓ7¥˜kH@'),
(1108, 6031, '06031 - SAINT MICHEL SARRAZIN', '5 RUE PIERRE SARAZIN - 75006 PARIS', '\0\0\0\0\0\0\0’f²lÒ¼@ëÿÿèlH@'),
(1109, 18049, '18049 - PTE D\'AUBERVILLIERS', '3-5 BOULEVARD NEY - 75018 PARIS', '\0\0\0\0\0\0\0‹jÎõô@Þ¶{\0sH@'),
(1110, 22009, '22009 - DE GAULLE 2 (NEUILLY)', 'FACE AU 99 AVENUE CHARLES DE GAULLE - 92200 NEUILLY SUR SEINE', '\0\0\0\0\0\0\0x¹ˆïÄ,@÷Ç{ÕÊpH@'),
(1111, 35013, '35013 - TELL (PANTIN)', '1 RUE GUILLAUME TELL / FACE AU 64 BENJAMIN DELESSERT- 93500 PANTIN', '\0\0\0\0\0\0\0*Ë¯ÆÙ[@.­ÁÚqH@'),
(1112, 20014, '20014 - CHARONNE - ALEXANDRE DUMAS', '142 BD CHARONNE - 75020 PARIS', '\0\0\0\0\0\0\0ÎôùÅ(@\\¼H6‘mH@'),
(1113, 10013, '10013 - SAINT LOUIS', '2 RUE ALIBERT - 75010 PARIS', '\0\0\0\0\0\0\0&\0q$î@;ƒoH@'),
(1114, 14002, '14002 - RASPAIL QUINET', 'FACE 4 BD EDGAR QUINET - 75014 PARIS', '\0\0\0\0\0\0\0æeÈí¢@JãØàjkH@'),
(1115, 41101, '41101 - DOUMER (ARCUEIL)', 'FACE AU 11 AVENUE PAUL DOUMER - 94110 ARCUEIL', '\0\0\0\0\0\0\0{=99•±@0Îu7gH@'),
(1116, 13027, '13027 - MAZAGRAND COUBERTIN', 'AVENUE DE LA PORTE DE GENTILLY - 75013 PARIS', '\0\0\0\0\0\0\0Œê¸sâÀ@ð‹&{hH@'),
(1117, 13015, '13015 - WEISS', '2 RUE LOUIS WEISS - 75013 PARIS', '\0\0\0\0\0\0\0B9ÐyHø@LÊb­‘jH@'),
(1118, 33003, '33003 - FAURE (AUBERVILLIERS)', 'ANGLE RUE BORDIER ET BOULEVARD FELIX FAURE  - 93300 AUBERVILLIERS', '\0\0\0\0\0\0\0 îí¤@¥ÙµsH@'),
(1119, 22407, '22407 - BARBUSSE (MALAKOFF)', 'ROND POINT HENRI BARBUSSE - 92240 MALAKOFF', '\0\0\0\0\0\0\0Û‚kœ˜L@ÑMlGhH@'),
(1120, 9038, '09038 - SQUARE BERLIOZ', '50 BIS RUE DOUAI - 75009 PARIS', '\0\0\0\0\0\0\0†¯w¨”¥@ŒÒ\\ôqH@'),
(1121, 22406, '22406 - MOQUET (MALAKOFF)', '81 RUE GUY MOQUET - 92240 MALAKOFF', '\0\0\0\0\0\0\0‘”õçMb@ýðrZhH@'),
(1122, 21701, '21701 - LARMEROUX (VANVES)', 'FACE 5 BIS RUE LARMEROUX - 92170 VANVES', '\0\0\0\0\0\0\0œ©iw?@µå¬|‘hH@'),
(1123, 5020, '05020 - PONT DE SULLY RIVE GAUCHE', '03 RUE DES FOSSES SAINT BERNARD - 75005 PARIS', '\0\0\0\0\0\0\0Yš`Ù@XÃC±lH@'),
(1124, 18013, '18013 - CHATEAU ROUGE', '28 RUE POULET - 75018 PARIS', '\0\0\0\0\0\0\0$«r>ÜÍ@ |CÕ¢qH@'),
(1125, 17014, '17014 - PORTE DE CLICHY - AVENUE DE CLICHY', '12 AVENUE DE LA PORTE DE CLICHY - 75017 PARIS', '\0\0\0\0\0\0\0ÌT`×W|@KmìíÉrH@'),
(1126, 31707, '31707 - VAILLANT (BAGNOLET)', 'FACE 70 RUE EDOUARD VAILLANT - 93170 BAGNOLET', '\0\0\0\0\0\0\0qeír¢Q@J1ÛèßmH@'),
(1127, 1023, '01023 - ANDRE MALRAUX MUSEE DU LOUVRE', '165 RUE SAINT HONORE - 75001 PARIS', '\0\0\0\0\0\0\0ãPéÃ­@x‡nH@'),
(1128, 15102, '15102 - SQUARE BELA BARTOK', 'QUAI DE GRENELLE - 75015 PARIS', '\0\0\0\0\0\0\0â‘uZàF@§SólH@'),
(1129, 2008, '02008 - MAIRIE DU 2EME', '11 RUE DE LA BANQUE - 75002 PARIS', '\0\0\0\0\0\0\0U9ty¹@í3woH@'),
(1130, 6108, '06108 - SAINT ROMAIN CHERCHE MIDI', '20 RUE SAINT ROMAIN - 75006 PARIS', '\0\0\0\0\0\0\030\0’@Y‚O{klH@'),
(1131, 42009, '42009 - VERDUN (IVRY)', '157-165 AVENUE DE VERDUN - 94200 IVRY', '\0\0\0\0\0\0\0!gCD\0@·Ç¨ETgH@'),
(1132, 14019, '14019 - SARETTE GENERAL LECLERC', '58 RUE SARRETTE - 75014 PARIS', '\0\0\0\0\0\0\0Fx¸Y~œ@¦ÀiœšiH@'),
(1133, 6007, '06007 - VAVIN', '18 RUE BREA - 75006 PARIS', '\0\0\0\0\0\0\0†\'\'k£@\\™½ÚÞkH@'),
(1134, 11034, '11034 - PARMENTIER FONTAINE AU ROI', '124 AVENUE PARMENTIER - 75011 PARIS', '\0\0\0\0\0\0\0TW«EMû@"”y•oH@'),
(1135, 17045, '17045 - PLACE DES TERNES - 5', '5 PLACE DES TERNES - 75017 PARIS', '\0\0\0\0\0\0\0NlÕ@õa@‡4eÀopH@'),
(1136, 21016, '21016 - POINT DU JOUR (BOULOGNE-BILLANCOURT)', '118 RUE DU POINT DU JOUR - 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\0>Pdn ÷@¤v;•jH@'),
(1137, 11028, '11028 - BLUETS REPUBLIQUE', 'FACE 20 RUE GUILLAUME BERTRAND - 75011 PARIS', '\0\0\0\0\0\0\0\\¿…¤@\n¡ÄÒ‘nH@'),
(1138, 909, '00909 - PONT D\'ARCOLE (STATION MOBILE)', 'Voie Georges Pompidou - 75004 PARIS', '\0\0\0\0\0\0\0ã÷ÛCgÎ@YÁoCŒmH@'),
(1139, 16129, '16129 - BOIS DE BOULOGNE / PORTE DE LA MUETTE 1', 'CHEMIN DE LA CEINTURE DU LAC INTERIEUR / AVENUE DE SAINT CLOUD - 75016 PARIS', '\0\0\0\0\0\0\0§$?}@@±Ø²XnH@'),
(1140, 13011, '13011 - CAMPO FORMIO', '112 BD DE L\'HOPITAL - 75013 PARIS', '\0\0\0\0\0\0\0\'Ýe”¡Ý@š“îjH@'),
(1141, 15055, '15055 - VASCO DE GAMA', '44 RUE VASCO DE GAMA - 75015 PARIS', '\0\0\0\0\0\0\0ñ€Í‚\0E@ÂÖùKkH@'),
(1142, 10016, '10016 - VILLEMIN', '29 RUE DES RECOLLETS - 75010 PARIS', '\0\0\0\0\0\0\0µÆxßà@¯ñ¶"pH@'),
(1143, 34008, '34008 - GARIBALDI (SAINT OUEN)', 'FACE AU 4 AVENUE GARIBALDI / AVENUE GABRIEL PERI - 93400 SAINT OUEN', '\0\0\0\0\0\0\0•ä#è¦@ì> ïsH@'),
(1144, 12029, '12029 - DUGOMMIER', 'FACE 4 BOULEVARD DE REUILLY - 75012 PARIS', '\0\0\0\0\0\0\0u›â\'@Áá g_kH@'),
(1145, 34005, '34005 - LESENNE (SAINT OUEN)', '44 RUE ADRIEN LESENNE - 93400 SAINT OUEN', '\0\0\0\0\0\0\0á‘«^DÉ@žn¦Ý†sH@'),
(1146, 14008, '14008 - MOUTON DUVERNET', '5 RUE MOUTON DUVERNET - 75014 PARIS', '\0\0\0\0\0\0\0¤·0r¢@Å6ÏnjH@'),
(1147, 21102, '21102 - NATIONS UNIES (CLICHY)', 'PLACE DES NATIONS UNIES - 92110 CLICHY', '\0\0\0\0\0\0\06¼Æ­z@ÅžÝ~ÔrH@'),
(1148, 12152, '12152 - MICHEL CHASLES - GARE DE LYON', '4 au 8 et 7bis, rue Michel Chasles - 75012 PARIS', '\0\0\0\0\0\0\0\0\0ÓÁý@$¢ºVlH@'),
(1149, 6030, '06030 - ASSAS-VAUGIRARD', '22 RUE D\'ASSAS - 75006 PARIS', '\0\0\0\0\0\0\0ÝZàÉ¡@ë-³ šlH@'),
(1150, 11103, '11103 - RICHARD LENOIR', '21 RUE PELEE - 75011 PARIS', '\0\0\0\0\0\0\0P€Õ§Æ÷@]¥ÄnH@'),
(1151, 8045, '08045 - ALMA', 'FACE 3 AVENUE MONTAIGNE - 75008 PARIS', '\0\0\0\0\0\0\0”;Þçžk@6Ð»µnH@'),
(1152, 12016, '12016 - PICPUS', '43 AVENUE DE SAINT MANDE - 75012 PARIS', '\0\0\0\0\0\0\0é)\0“6@ªb÷)-lH@'),
(1153, 4013, '04013 - FRANCS BOURGEOIS', '50 RUE VIEILLE DU TEMPLE - 75004 PARIS', '\0\0\0\0\0\0\0¦t,H{Þ@ŸÈÕ­ãmH@'),
(1154, 17036, '17036 - AVENUE DE TERNES', '2-4 PLACE TRISTAN BERNARD - 75017 PARIS', '\0\0\0\0\0\0\0?X\0ýT@YÇ9“pH@'),
(1155, 31012, '31012 - CARNOT (MONTREUIL)', '35/37 RUE CARNOT - 93100 MONTREUIL', '\0\0\0\0\0\0\0‹¦Þ;ˆ@N¯81‹mH@'),
(1156, 11041, '11041 - SAINT AMBROISE', '2 RUE LACHARRIERE - 75011 PARIS', '\0\0\0\0\0\0\0C¹M@0@v_/nH@'),
(1157, 23002, '23002 - FRANCE (LEVALLOIS)', '157 ANATOLE FRANCE - 92300 LEVALLOIS', '\0\0\0\0\0\0\0…m°tÂ;@‡NÀ ýrH@'),
(1158, 6016, '06016 - DANTON', '11 RUE DANTON - 75006 PARIS', '\0\0\0\0\0\0\0º›7F»@r*Ñ6mH@'),
(1159, 17042, '17042 - PORTE MAILLOT', 'FACE 279 BOULEVARD PEREIRE - 75017 PARIS', '\0\0\0\0\0\0\0˜pGÃŠF@dÌóZpH@'),
(1160, 13035, '13035 - IVRY TOLBIAC', '116 AVENUE DE CHOISY - 75013 PARIS', '\0\0\0\0\0\0\0+8;Áá@(¦±c¹iH@'),
(1161, 20048, '20048 - BAGNOLET', '110 RUE DE BAGNOLET - 75020 PARIS', '\0\0\0\0\0\0\0é.!ü@:@Ãd 1\rnH@'),
(1162, 2014, '02014 - SAINT AUGUSTIN', '1  3 RUE DAUNOU - 75002 PARIS', '\0\0\0\0\0\0\0oô­ý¨@Ëu‹?oH@'),
(1163, 14026, '14026 - PLANTES MOULIN VERT', '23 RUE DES PLANTES - 75014 PARIS', '\0\0\0\0\0\0\0¬¼&\\%–@€ehCBjH@'),
(1164, 22013, '22013 - SAINTE FOY (NEUILLY)', '2 rue de ChÃ©zy - 92200 NEUILLY', '\0\0\0\0\0\0\0ŠªTt$@Ö3îDLqH@'),
(1165, 41202, '41202 - CHARMES (FONTENAY SOUS BOIS)', 'ANGLE AVENUE DES CHARMES / AVENUE FOCH - 94120 FONTENAY SOUS BOIS', '\0\0\0\0\0\0\0-Ä«d´@(|T…ýkH@'),
(1166, 23005, '23005 - BRIAND (LEVALLOIS)', '152 RUE ARISTIDE BRIAND - 92300 LEVALLOIS', '\0\0\0\0\0\0\0-#D¯ë_@îÝùÌ±rH@'),
(1167, 16040, '16040 - EXELMANS', '73 BIS BOULEVARD EXELMANS - 75016 PARIS', '\0\0\0\0\0\0\0ßªâ<@ÃÿÙêkH@'),
(1168, 11110, '11110 - SQUARE ROQUETTE', '176 RUE DE LA ROQUETTE - 75011 PARIS', '\0\0\0\0\0\0\0Žð8¾@O¬ûmH@'),
(1169, 11107, '11107 - BIBLIOTHEQUE FAIDHERBE', '11 RUE FAIDHERBE - 75011 PARIS', '\0\0\0\0\0\0\0ÔDïƒÝ@q71\0ÿlH@'),
(1170, 8037, '08037 - MALSHERBES MONCEAU', '75 RUE DE MONCEAU - 75008 PARIS', '\0\0\0\0\0\0\0®ÌY£4„@exÃñ–pH@'),
(1171, 15045, '15045 - PLAINE', 'AVENUE DE LA PORTE DE LA PLAINE - 75015 PARIS', '\0\0\0\0\0\0\0¼„ 8W@t‡å¢jH@'),
(1172, 18016, '18016 - FRANCOEUR CAULAINCOURT', '1 RUE FRANCOEUR - 75018 PARIS', '\0\0\0\0\0\0\0´½§nV½@|a?EìqH@'),
(1173, 21020, '21020 - REPUBLIQUE 2 (BOULOGNE-BILLANCOURT)', '28 Bd de la RÃ©publique 92100 BOULOGNE BILLANCOURT', '\0\0\0\0\0\0\0I©VXž@¾´Nø~jH@'),
(1174, 19002, '19002 - TANGER', '45 & 48 RUE RIQUET - 75019 PARIS', '\0\0\0\0\0\0\04cX÷@5°·DÖqH@'),
(1175, 8115, '08115 - BASSANO', '10 RUE VERNET - 75008 PARIS', '\0\0\0\0\0\0\0Þ¸´7Èf@M·a>ˆoH@'),
(1176, 16036, '16036 - PORTE MOLITOR', 'PLACE DE LA PORTE MOLITOR - 75016 PARIS', '\0\0\0\0\0\0\0ÍƒñP6@¿›6÷0lH@'),
(1177, 17104, '17104 - GENERAL KOENIG', '2 BOULEVARD AURELLE DE PALADINES - 75017 PARIS', '\0\0\0\0\0\0\0Õ‚RjûD@f(ìbÜpH@'),
(1178, 19117, '19117 - EURYALE DEHAYNIN', '22 RUE EURYALE DEHAYNIN - 75019 PARIS', '\0\0\0\0\0\0\0µDÈsä@üí²GrqH@'),
(1179, 20111, '20111 - L\'ISLE ADAM PYRENÃ‰ES', '60 RUE VILLIERS DE L\'ISLE ADAM - 75020 PARIS', '\0\0\0\0\0\0\0¬È5èv+@\'NºoH@'),
(1180, 10041, '10041 - CHARTRES (18 ARR.)', 'FACE 39 BOULEVARD DE LA CHAPELLE - 75010 PARIS', '\0\0\0\0\0\0\0=ímëOÙ@£‘ä‰+qH@'),
(1181, 19024, '19024 - BUTTES CHAUMONT', '28 / 30 RUE BOTZARIS - 75019 PARIS', '\0\0\0\0\0\0\0G]X=\r@²Èè´`pH@'),
(1182, 6022, '06022 - MARCHE SAINT GERMAIN - MABILLON', '17 RUE LOBINEAU - 75006 PARIS', '\0\0\0\0\0\0\0,ûÞ¯@£0P/mH@'),
(1183, 12043, '12043 - DAUMESNIL HEBRARD', '108, avenue Daumesnil - 75012 PARIS', '\0\0\0\0\0\0\0N´«ò@2æ®%äkH@'),
(1184, 21108, '21108 - VILLENEUVE 2 (CLICHY)', '6-8 RUE VILLENEUVE - 92110 CLICHY', '\0\0\0\0\0\0\0XIWö\'s@\r˜sÚ©sH@'),
(1185, 12119, '12119 - DOM PÃ‰RIGNON GRAVELLE', 'ROUTE DOM PERIGNON - 75012 PARIS', '\0\0\0\0\0\0\0?ßqUG@ãÐ)À¬iH@'),
(1186, 23003, '23003 - WILSON (LEVALLOIS)', '132 RUE DU PRESIDENT WILSON - 92300 LEVALLOIS', '\0\0\0\0\0\0\0ìR);ÝG@o9!ÎürH@'),
(1187, 16102, '16102 - PERGOLÃˆSE/ MARBEAU', '52-54 RUE PERGOLÃˆSE - 75016 PARIS', '\0\0\0\0\0\0\0\nq-£‰@@ÞgqÑoH@'),
(1188, 20104, '20104 - RUE LOUIS LUMIÃˆRE', '68 RUE LOUIS LUMIERE - 75020 PARIS', '\0\0\0\0\0\0\08ë\\PüI@{ãR[nH@'),
(1189, 10110, '10110 - LOUIS BLANC', '10 RUE LOUIS BLANC - 75010 PARIS', '\0\0\0\0\0\0\0*´œóò@];êôpH@'),
(1190, 14020, '14020 - PORTE DE MONTROUGE', 'AV. DE LA PORTE DE MONTROUGE - 75014 PARIS', '\0\0\0\0\0\0\0²^ÀiÃ‘@(R»¡iH@'),
(1191, 19124, '19124 - ALEXANDER FLEMMING', 'RUE ALEXANDER FLEMMING - 75019 PARIS', '\0\0\0\0\0\0\0LÏ¾\Z¶9@fœ%ÕÝpH@'),
(1192, 2102, '02102 - SAINT MARC', '8 RUE SAINT MARC - 75002 PARIS', '\0\0\0\0\0\0\0ý\rwÔ*¼@ÍJdyfoH@'),
(1193, 13007, '13007 - LE BRUN GOBELINS', '42 RUE LE BRUN - 75013 PARIS', '\0\0\0\0\0\0\0ßž\ZçÓ@j\nRäjH@'),
(1194, 11006, '11006 - LEDRU ROLLIN-BASFROI', '169 AVENUE LEDRU ROLLIN - 75011 PARIS', '\0\0\0\0\0\0\0t‘\'ò;@ôA¥žŸmH@'),
(1195, 20118, '20118 - ORTEAUX MOURAUD', '100 RUE DES ORTEAUX - 75020 PARIS', '\0\0\0\0\0\0\0BVÅ|%E@Ù›(ÛƒmH@'),
(1196, 11024, '11024 - BOULEVARD VOLTAIRE', '82 RUE SEDAINE - 75011 PARIS', '\0\0\0\0\0\0\0þº°í@Ö?\rîmH@'),
(1197, 15110, '15110 - PLACE ROBERT GUILLEMARD', 'PLACE ROBERT GUILLEMARD - 75015 PARIS', '\0\0\0\0\0\0\0•2“‘?@“íðkH@'),
(1198, 16122, '16122 - MUETTE NEUILLY', 'ROUTE DE LA MUETTE A NEUILLY - 75016 PARIS', '\0\0\0\0\0\0\0_~hš@…"s¦pH@'),
(1199, 7020, '07020 - CLER', 'FACE 3 RUE DU CHAMP DE MARS - 75007 PARIS', '\0\0\0\0\0\0\05¨îés@`µbj¦mH@'),
(1200, 41605, '41605 - GENERAL DE GAULLE 2 (SAINT MANDE)', '120 AVENUE GENERAL DE GAULLE - 94160 SAINT MANDE', '\0\0\0\0\0\0\0ë›9ìY@©/ôkH@'),
(1201, 16124, '16124 - SÃˆVRES NEUILLY', 'Route de SÃ¨vres Ã  Neuilly - 75016 PARIS', '\0\0\0\0\0\0\0~èyeþ@¡É$pH@'),
(1202, 15123, '15123 - RUE DU COMMERCE', '20 RUE DU COMMERCE - 75015 PARIS', '\0\0\0\0\0\0\0`òÊ¥š_@‹lH@'),
(1203, 5106, '05106 - CUJAS', '22 RUE CUJAS - 75005 PARIS', '\0\0\0\0\0\0\0è®<¼@¼u»ˆ‘lH@'),
(1204, 22001, '22001 - CHATEAU (NEUILLY)', '26 BOULEVARD DU CHATEAU - 92200 NEUILLY', '\0\0\0\0\0\0\0ªþ\'oM)@QŠ\\KüqH@'),
(1205, 12039, '12039 - DECAEN', '45 AVENUE DU GENERAL MICHEL BIZOT - 75012 PARIS', '\0\0\0\0\0\0\0b‡Ð 5@«±ç#ÛjH@'),
(1206, 31006, '31006 - REPUBLIQUE 2 (MONTREUIL)', '2/4 PLACE DE LA REPUBLIQUE - 93100 MONTREUIL', '\0\0\0\0\0\0\0š§ØCe@wg¿þGmH@'),
(1207, 16037, '16037 - MOLITOR - MICHEL ANGE', '35 RUE MOLITOR - 75016 PARIS', '\0\0\0\0\0\0\07£ò”Î@¯+í.lH@'),
(1208, 2007, '02007 - CHABANAIS', '1 RUE CHABANAIS - 75002 PARIS', '\0\0\0\0\0\0\0â›¿ˆ±@¾®æýnH@'),
(1209, 5110, '05110 - LACEPEDE', '27 RUE LACEPEDE - 75005 PARIS', '\0\0\0\0\0\0\0NÀ\'²Ð@ÌµlH@'),
(1210, 12011, '12011 - CHARENTON', '160 RUE CHARENTON - 75012 PARIS', '\0\0\0\0\0\0\0>”q‹…@ÕxÁœ$lH@'),
(1211, 10151, '10151 - GARE DU NORD 1', '8-10 RUE DE DUNKERQUE - 75010 PARIS', '\0\0\0\0\0\0\0‚c¡üðÚ@Å±¶˜pH@'),
(1212, 16021, '16021 - RUE FRANCOIS PONSARD', '1 RUE FRANCOIS PONSARD - 75016 PARIS', '\0\0\0\0\0\0\0<»áªÈ1@•xqõàmH@'),
(1213, 15050, '15050 - PADO - CROIX NIVERT', '19 Rue Dominique Pado - 75015 PARIS', '\0\0\0\0\0\0\0ý‚Ý°mQ@%’èekH@'),
(1214, 20503, '20503 - COURS DE VINCENNES PYRÃ‰NÃ‰ES', '1 RUE DES PYRENEES - 75020 PARIS', '\0\0\0\0\0\0\09dÞUL?@[åt@‚lH@'),
(1215, 31709, '31709 - MARCEL (BAGNOLET)', 'FACE AU 184 RUE ETIENNE MARCEL - 93170 BAGNOLET', '\0\0\0\0\0\0\0.õ\'ßaa@k9ÌÓ³mH@'),
(1216, 13110, '13110 - MOULIN DE LA POINTE', '66 RUE DU MOULIN DE LA POINTE - 75013 PARIS', '\0\0\0\0\0\0\0\'}¢{ËÙ@-»ÐiH@'),
(1217, 21503, '21503 - LEDRU ROLLIN (SURESNES)', '13/15 RUE LEDRU ROLLIN - 92150 SURESNES', '\0\0\0\0\0\0\0©å9ñ2Ö@¸æ‘RzoH@'),
(1218, 1017, '01017 - SAINT HONORE', '215 RUE SAINT HONORE - 75001 PARIS', '\0\0\0\0\0\0\0·ï¼‡\0¥@Je	ËnH@'),
(1219, 17006, '17006 - GUY MOQUET DAVY', '34 RUE GUY MOQUET - 75017 PARIS', '\0\0\0\0\0\0\0´LÅ–@.î\'/rH@'),
(1220, 7006, '07006 - QUAI VOLTAIRE', 'QUAI VOLTAIRE - 75007 PARIS', '\0\0\0\0\0\0\0bt–¾¦@;bØñmH@'),
(1221, 8041, '08041 - CHAMPS ELYSEES LINCOLN', '16 RUE DE LINCOLN - 75008 PARIS', '\0\0\0\0\0\0\0“Óàÿl@O•lÆroH@'),
(1222, 21311, '21311 - GAMBETTA (ISSY LES MOULINEAUX)', 'FACE AU 40 BOULEVARD GAMBETTA - 92130 ISSY LES MOULINEAUX', '\0\0\0\0\0\0\0!½Ž6x:@\Z®«êiH@'),
(1223, 19121, '19121 - BELLEVILLE PRE SAINT GERVAIS', '195 RUE DE BELLEVILLE - 75019 PARIS', '\0\0\0\0\0\0\0wÑ È$@¤óßùpH@'),
(1224, 1020, '01020 - RIVOLI CONCORDE', '2 RUE CAMBON - 75001 PARIS', '\0\0\0\0\0\0\0|ƒÝ+š@Ëï"oânH@'),
(1225, 10007, '10007 - CHATEAU D\'EAU', '57 RUE DU CHATEAU D\'EAU - 75010 PARIS', '\0\0\0\0\0\0\0bùFÒ\nØ@@˜\rÉ«oH@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `County`
--
ALTER TABLE `County`
  ADD PRIMARY KEY (`id`),
  ADD SPATIAL KEY `geom_x_y` (`geom_x_y`);

--
-- Indexes for table `District`
--
ALTER TABLE `District`
  ADD PRIMARY KEY (`id`),
  ADD SPATIAL KEY `Geometry_X_Y` (`Geometry_X_Y`);

--
-- Indexes for table `Station`
--
ALTER TABLE `Station`
  ADD PRIMARY KEY (`id`),
  ADD SPATIAL KEY `Coordinates` (`Location`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `County`
--
ALTER TABLE `County`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `District`
--
ALTER TABLE `District`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Station`
--
ALTER TABLE `Station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1226;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
