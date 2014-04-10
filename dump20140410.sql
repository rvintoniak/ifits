CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `file` mediumblob,
  `contentType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Category_idx` (`category_id`),
  CONSTRAINT `FK_Category` FOREIGN KEY (`category_id`) REFERENCES `newscategory` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (132,'Ð¢ÑƒÑ€Ñ‡Ð¸Ð½Ð¾Ð² Ð¾Ð±Ñ–Ñ†ÑÑ” \"Ð°Ð¼Ð½Ñ–ÑÑ‚Ñ–ÑŽ\" ÑƒÑ‡Ð°ÑÐ½Ð¸ÐºÐ°Ð¼ Ð¿Ð¾Ð´Ñ–Ð¹ Ð½Ð° Ð¡Ñ…Ð¾Ð´Ñ–','2014-04-10 13:37:59','Ð’Ð¸ÐºÐ¾Ð½ÑƒÐ²Ð°Ñ‡ Ð¾Ð±Ð¾Ð²â€™ÑÐ·ÐºÑ–Ð² Ð¿Ñ€ÐµÐ·Ð¸Ð´ÐµÐ½Ñ‚Ð° Ð£ÐºÑ€Ð°Ñ—Ð½Ð¸ ÐžÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ Ð¢ÑƒÑ€Ñ‡Ð¸Ð½Ð¾Ð² Ð³Ð°Ñ€Ð°Ð½Ñ‚ÑƒÐ²Ð°Ð² Ð»ÑŽÐ´ÑÐ¼, ÑÐºÑ– Ð´Ð¾Ð±Ñ€Ð¾Ð²Ñ–Ð»ÑŒÐ½Ð¾ ÑÐºÐ»Ð°Ð´ÑƒÑ‚ÑŒ Ð·Ð±Ñ€Ð¾ÑŽ Ñ‚Ð° Ð·Ð²Ñ–Ð»ÑŒÐ½ÑÑ‚ÑŒ Ð·Ð°Ñ…Ð¾Ð¿Ð»ÐµÐ½Ñ– Ð°Ð´Ð¼Ñ–Ð½Ñ–ÑÑ‚Ñ€Ð°Ñ‚Ð¸Ð²Ð½Ñ– Ð¿Ñ€Ð¸Ð¼Ñ–Ñ‰ÐµÐ½Ð½Ñ Ñƒ Ð”Ð¾Ð½ÐµÑ†ÑŒÐºÑƒ Ñ– Ð›ÑƒÐ³Ð°Ð½ÑÑŒÐºÑƒ, Ð²Ñ–Ð´ÑÑƒÑ‚Ð½Ñ–ÑÑ‚ÑŒ ÐºÑ€Ð¸Ð¼Ñ–Ð½Ð°Ð»ÑŒÐ½Ð¾Ð³Ð¾ Ð¿ÐµÑ€ÐµÑÐ»Ñ–Ð´ÑƒÐ²Ð°Ð½Ð½Ñ.',1,13,'383965113.jpg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 95\nÿÛ\0C\0			\n\n\n\n\n\n	\n\n\nÿÛ\0C\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nÿÀ\0\0Ò;\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0úoG¶[ÄhrsÚ¨øŽÖîü˜ÕIŠÒV±AæÍ2¦+XñÞŸfÆ82ÍŸ¼kÌjÊÇëðju.µcôß\n¬XšpA#ºK;¿&ÜÂ¼àb¹Å’j²mfÿ\0€šÜ¸¼²¶‡ÎyÔã4¢ŸBªÍ6”Ìý[G¹Ôæ$¯´í7ÂöÖ’	FwŽsYš·Ä!ýÅ™9±Vü5â9u#—|¯¡©z³Oz4î´G@î~ÊaÎ8æ¹ÛÏ\r\\]Ü™\\.ÓZº¦¯ea‘æR1Ðu®jóâ\0–o.ÝJ¯­[ÕjeI6Û·¦è–Ö\Z8ðÝÏ­]½\r<<ûÕ=ÿ\0íP,ÓOÁ Õ-wÆZ~–ì±+îšqA)*“³Ü¼\"òNÍ8IäZºU•¾š|¸PñÖ¹X¼mywt¾fUIãô®¦ÇZ±[}×wh¿/ñšK•²ªÊP‡½°ºÅ¬šŒf4=º\ZÌƒÂ\nŒèl\ZMWÇz}³ì˜9ésYÖ^1¹¼¼Ve\rùQ&®¤ùo­°-¢òÀ<+;ZÑ®uÂ‘Œõ&­&»§Eiºâé2¨Í`jþ;#Ef¤ã¸4ïdD\Z•M7/ÙøVÞÍ„îñèkP 6Û#Šæü;âI®ç>lÄsÑ«oPñ&—ajg–áÑ–%€Üš#kh:Õ9_¾gÜxjâæçÌbõ­3O‡L\0¦}ñÞ¹Šú^§xö:6£Ä±®ç‚Òa,›}v¦M]µñ®­lc^¸Ôæd\0F£©\'ž}¸&©S“Ù\\ã¯›`0ñå©U}÷ü®uz‘7ðÍcEá6_6u*	è5[Dø•¥ëÖ¯äÚK\rÒæZ8b@ÎÑúTÇ2Ü‚*“€:TÏE©¾‡ÅÃ›$ÑÛé®–y@œcŒÖ^¿÷äˆÔµI¤êÖÏ\0k¹€ã©8ªš¯ŠôÛMÂØïj¹K²u|Èl<4ÐH.\\}3Ö·…Â¥¯’ zW5¦xŠ}FçivþU±uymmŸqpŒÑ­¡u]åïú–•u}q¹cã=sWt½)l\0ù‰\'®Maßøò/3Éµ\'ƒÉ­/ër^€Ó8ÇqéE“•ËjP†»õU{ˆ|µãµa§ƒ¢ÔI‘àœŽµ¯ªëZe”{šl“ØV5·Šîµƒš¿6x_oZ$“2Œá9lº_ü&Óä\"D»òÀ<î«#ñŸ‡þhkaEæpsË€95ç¿>1jöðGà¯3]j§åí²DcÜŠó‰þ\Z|cñÄñê^\'¾*°&õLœõ<VéF÷ŸÈøl×2†*§-5·SÙ-¿iåÖsÞ¡¡Hç@?SM²ýªuÛNmã °1À).Wð¯–~)ø±´g¶Ö,þÑ\r¶SÊŒàzâ¼ÂßÄwzÄ\r«K#YÚ/0[¬„±ÿ\0\nÚ3qØòéb\'ïE3ôWOøyâh÷>¨“yód“\\ÅïxGá–˜úŸ‰eØì»z¾Ñ~7übðæ¹Ðuâ!Îè ÏµñGöŒñÆ\r=Å‘¢Þ \n$‚z~¤«ÖµºÏ…«v6e?µWˆ<s&™¡LÐY«…N	“û<|+Ô>\'x°ø³Å—SK¥é®Ç#ñ<Bý;šÆÕ¾Þé–ÏsénÜy{yÎM}!à=7Mð\'†4ïÚFªÁÜÀÜç’}ë¯(¤±ÕÝþêÏ0œ°ð]ÞÇ]g`«Õ@ÇEYD£?J¦5DÊÇ¹«ËrJ‚ÅsJûd´<+XóÁCÝ›KyÉ±œñŠô‡´÷‡5Ý=ouK˜[rƒ÷¯€¦Ð^ož ŠÑÒ`×4è„6—ó ÇEr+ðéfUS»Øý©WšÑ÷wŒk¿\nøm\Z]*ñ†~á×›]ÿ\0Á@ÿ\0R‘Lq¿Å¸×Ëwðj®éæ‘Éë¹‰ª	¥LOÊ¼úÓ–iUü:­yN×è~†xö‡ðµþ˜·zÔNÌ™$µexßöÅÐ</¿û*î5Àè­Ö¾µÔüEc´¶Ô§?º®@©¢´½¾ËÝLò69,I¡æ•!\rµ.ž.£V>¥°ý¸§ñº–mrV\'p79Àæ½‡Fý ¼!k¢‹›ÙâgÛœ±šøÛOò8#\ZÑŸS×ZÜZhÌcìÍaÚ·5ä‚5åOD}eãïÛ~ËK[é#Œ€¨k™ðínúæ¶ÏªÞlªæ¾m¶Ñ®\'s4œ“ÎIÍXM5ã`A‚\rM\\Û)YhŠu¥7sì~Ö¾Ò´Õe¸ÌÛè+Ç¼mûqkBv‡Gvu$ã\rÀ¯ºÓ¯&È‘Ù¿Þ5TxrY$ÁN1œCÍ«¸é yÊ<¯cÞþþØ—— ø†ü£g…\'ŠïüKûjhvšx_+8m#5òæ…ðßY×ÙÎ—¦´‹îžcòÇ\nú»’G¹\"»O\0þÏ:6»pòø‹Tžh£`Qlc\";…Î2®Ã,¹ãpïœs]8:øêëš*ë»Øá¯™ÐÀ+Nzöêt÷_¶¿ŒµÍQ4Ý\nÖâåäm±GeÙ¾€rkÞ~ø§â­§Gªx—Km:7{ê\'ËÇÔGÐŒûW)á\ni¿\rü/ß†<+§é–fäÇ!·7sœ³ç z|Øã¦k¢´ñQXþÑ£Z¡‘ÙQ¤œùŒŸírsÐzÔèVŒ”ªNþKD|ýn#¯)?cy½þíR}kJI	¸–ê|ã_%Äeˆÿ\0€öªz.ž¾/×M›ë\r-šÒ®Íe99é‚1^3âoŽ”Ht‰¼×²J%‰²ƒB’ÏNHúW}û>üG»ñG‡u´ÓíÎ§k:f&‘TË/Uî:9Åz4¢ç(©+/#ÃÄã1x­jÍ¿žŸqßi:¿‡ü! êž žÖ+$•˜E,Š5A´xV8Ž\0•æ:ŸíËá«\nÌÚv•<ZÊª¬6÷-˜]‰Á>bõUò==ë³øÑà¿øçáÀðÿ\0„¾Ïiuªº­ÄW2ªù‘à–Py#æÈàŒ×€|0ÒõŸ‡>8‡À^.øuk©Ç¬°Œ—·IdHÎU¤ŠUÎWçŒv5è©û;F,âJêí•ð»âŸÄ_iL<Ag¦Åo¨yí»¥¿–JŽÙåÎpXÀîÉ:ó[:øÕ§øWÁz‹ž,Ã+˜ö•p9õüi|ð¯Ãþ\0·“À\Z~=ö‘ªÅ<÷æÿ\0çPãÊQ*\0\0©nÉÛx5É|Nø9;ü.Õ|+¬še’ùú=Þ@òÌÆ7r»¡\rÏzÇB¤°îQW’=,§1©—â”¢ý×dÿ\0¯#Î¼gûnê6A“O‘Ž{#g/Âÿ\0Û\0ê—;õKà‡w(çŸÖ¾Ô|<ÈÍˆA‚QYãE?òÏ ƒÔ\Zø)f¸—-OÐý¬¥.cìýwöÂðæ“\0xn£ç2k€×n¹/î–Ö9ÎrC`WÎ/¢É÷äv$zšŠ]	§ …Î=jóªÖ´PN¤åO·üûAø~ëK[ÍNxœ²g9ãoÚÿ\0FðøeÒîrFÕnµò.›m¬Aµ·¾™*¹¬Â?upG˜Îìzdäš•T‚²Zšªõ³Øú\'À¿µ/‰>&ø²=K…Ø¹ùœç\n3Þ¾Ž°kÕð±Òôçßv»QÑ~nG8ô¯˜go\n\0héâ-BËÉ‘îs•ä/¡¯\\ø‡ñ«TÐôg×ü¥»J‘ù>bX³qòŠ÷p~ÝÁT¨õòY–:U›§î­üËzŠ|àOÅ¢]é3]\\ÆI¿¸…²Å»/¿5SãgÆ{›««CöÖÁq\n *Ät÷&¼G^ñOÅÏ\0øšÛÅÖ:UÍ¬çGöø²Ó‚~fÇ­vÚv½¨|sžn,¤‚â$å,æCÜ×sj2¹ã(¹#Uðd:×£½.ë±Ÿ)þógëÉ¯:ñ/€®þË\ZlL\"P’gø€ë_LÁà»Ý2ÁtSF-xa.?(ô·Ö¼Gâw^ñ<\ZJÁ5Ì›Éx€ù7™«Dõd85+#Êî|ªi·­¨ÛíhÈá—Ò¸ËûÒ5É%¿°ù»žÙ¯gÖ\"×¬´™õ»ëuŽgfHíqÏ^Â¹;¯‹õ¨mïV2Ï±xñU\ZÊ.à¨Éè‹¿mï5‹åµÕÞY-Ñ„–RJ¤©Çðƒ^ƒ¬kkÑ*Ôc¥Eàß\r^xCÂz•õÎšÂeU·b8\\÷RgÔnÅÄî2¹â¾§ kêõ&º¿Èòs/k¾ˆë´}}·ù¾rx\0g5ÑÃ­‰U\\¸[[]qòäõ­èüI¥À‚!<_(ï\"×µ~n‡žÒµÙó¿ƒVR\nDOÑjÃøQm†\Z\"ºÖç‡¼}¡Å2÷ˆª~0ø…¥H¤@ÉõR+ù¿Û¹O–ÇíÏ\r(ÃšæCøjÞ|ƒ4‘x1²BÛþíQÇð¤ ±ã=«©Ñ~&èßgØîŠÁqÉªYSŽ†1ÃÊ£µÎvëÂê²`ÄF=EX¶Ð–(²#úTºçŽôë‰‰‰—>¢©Eã[}áWžz\n¥QÊ\"xyEØŽëE»óE	 ¸«Z~–f`Žœý+rÊþ;»,›cP:¹ëX’øŸH·¼1‹ÁÁäƒÅvQ¡ˆ¬½Úlã«:t¥4nZèq¤ptª¯¤—,§ôâ¨7¬…K°}=ªï¨MÑ0o@§“YTÃâ)¿z\rQ9í4o[i);`€»È@UQ’ÇÐWE ø{ÀzF¡\Zø¬\\êWbEQ¡é+¹Ë‚YŽ¤ûÍm|5ðÔ^ðÉñV»,ÞÜ[n‚kÂÅcbA*Š¤n2w8a†ù!ˆ¤Ÿ´‡>xçÃsx{Á1ÿ\0gjÚ©µ¾žK%•o¾URÀ¶2Û™	`r9ûØÁú<³&„9jâÛÕ.–óÿ\0#æs,â¤ª:Tº7ùØô½{áþ§¦‹m2êwÓôÉ†ÂËEvˆ2áÝˆËòò:àòp1§«xsPÒõm.ÁÞLêq¬çÛp­¹›©À<õâ¶nþ6YFn¼9­è«þ‰,‚ÔÀ@	?$|öÛŽrs×â² ñ¯„EÃx¢f»¾žÉì¶3ÆvÃÀ\\¡*÷ºã_C8Ð’V’·m¬|Ûsm·¹ÓøòÓRñ—… E¼ŠüÛ^²B¶Ä\0#À\'¦Až=+‰{)´MAôôÔ ™U-o&àIŒC‘øRi_<Q«> “©Yc*–òÇNp\0Æ1úÕ8÷7M>B¼¼¨äžk,DéM^;Ž7LÇø¤K5›izližGW}¤n I©5§áO‚ž ñî|7â¶¼6å¶<Å7>0cWsÓ§Öº=+L’éÛ|ª8–8ÿ\0=kÔ¾\n-¥Ž¨,[GŽQ*³ÇvIùIlœ¨ôã<Ò¡9Jq‹Ø6E‹ŸŠÚg‡¾§ƒï<.òK‰o|&&F†ÞÚ0|È²I9u¤	$nr|k¥êÚÄ7ØpE\r­¼E\\´³…iFÒE&ÆY¤rÀB7—r~Ñžño‡å¹ño€íu;Ë…fÔ4{€7ÌT•òØ2†byS÷X…mÉàßük}ÿ\0	ež.Ÿ5•´ßh¼{»˜gò¢ˆ	Ä“É’Ùvàâ0JSI­º•9A·¹öÎ¥e£ê±éš¼^KN@´“nåãÛ¡íÍqu˜-í®<1q ú¦Ÿ4W(`\0a€G#¶áßV?†mï|q£øƒâ-ž•yo«ëˆ––ò¼ƒlI\Zm9ÎÒ¹bA¨àqÐüOð=î¯ádñ\rÚoÔ­mI•cû®£“×Ó“ù×tªUj\\‹Ðãq[ x®ÇKÔn%Ôì`X®e†Xîòf¶ºgÓ¡Ì+›}.…aŠôxgO·Ñ<V¾°‘§¹XõË9‹ò² ]Bë•L{ñÐ×ƒˆ®K€zôÅ~uœa%‡Å9%îËUúŸ dµþ¹ƒJúÇFw-¥[2˜sÞ®iú\r“®—Øæ¼èøòøŒá¿\n±mñ\nú}ì×’ù¬{\nŒ™évú%”qa[>¶Ò&× Y#/²@HÎ¼‰¾#ê.¤± b»ß€ëªøò{Ø,.‚ÜÇµ”¸ï]9}ÖÆF2Úç?ÚPÂJk¡éþ-Å¤\\Ûè@¬po\"òd¯xýž<[à7Á#_ñ]œR2’m¡3ë_üQ‚ÿ\0N×¾ß¨Ü´²Ár$Vàö¯ ¾x?Æþ6Ñt\nÌF4¸\0K\Zû\\Mzt\Z¹ò˜<%Ld_+=‡â/ÄŸ‚þ=¾Z½ÄI>DP!Çžq]wÂI>øbé®´X-æ™Ð1ÙÉÀ¯‹¿iOø§áŽ­ü?Rù›Hy@ÊR+¾øOüà¡âÙ¢¶¹]žmËüÎ;+•â¨É¦ÞçWö}X_•hºŸ`ë:WŒ¼;}ªèv0ý¥ÉXBœô®&óö[mWÃÒø‡ZXa»œüžÕ™û:ø£WñÍôZ5™0Ù©ß,ÄòÍ^¿ñÀÞ1Ðî ñ¾¥%Å’F«ƒ·ž•ÏS1¥	r§{SÊ+´œ´¹á~+ý”næŸ6j×3e$Žˆ=jÎ‘û)Ë‚\'ñié²fÜ«ÌÇ¹&½ÛàwˆõÍrêö4Hòƒ2öµz_Š¼39ð5ÞodSíL9Uè+Ë¯•Yû¯cÛ¡T0íIjÏÌï‰Þ&ºðO„õÏx¥qÉÖS·Ê¥’}«Åü/¬ø£Æ/ÿ\0	/„ü_iw\nJñD^2± ïÀåÈìxúûh~Ë?>$~Ëþ*Ò<A¨I‰tý%fÒìÖqyƒæ<eù 3ï_œÿ\0³ëKkk}áW´X¥ÓdÚa€\0àÒ¾ï‡óUGQhÛ»íµŠÎréK7O²·™Ýéú=üádñ&µ5ôÙù—#Ïû«Ô}s[	¥Æ¨b\n\0àÊjŸüá½ï|/‹ÅaŠÑ˜“éžŸ­pšŸíž–·òÛÙ|=¹h‘ñM8G¸Šû_í4›š×Ìù¥…ÅÉÙAœƒhwX\0»}IrË™ŠúicMpao\\TÃö6Ö–?ø÷|zm5üûõ,k	ûÍ0Ì|¼Þr3’)Ã²çpÉ÷¯¨¿á‹õÙ%°}ªx¿bÝQTf&ëÅ?¨c”ŸíLF|Ãgá¹¥;I8îOjÑÒ,´‹Kï)‚»sï^µñcàMç€í~Én¤Hã’{×à‚úî£©ý¡ƒ6z×¹—e°£MÕÄoÑ>?2ž\"J\rº³˜×¦Õ¯c{{\"È€•ÊÛxfþy\\I#’9&¾©Ó?g\'¸ÓÏ›, µ“ªü¶±]¡ß»æ85êÃ®Xždðsº”·>j¿Ð®´øŒ’†ñÅIàûiïüKcªÒ‹;}ÁC‚QFâ ž2qîE{_ˆ~ëVû\rƒmSÏËÖ¶ü%û/ëÖ(Öúiä‚­·¥L³\nQIÉ\\ªx\Z³~æ‡+á_Zñv©ÿ\0	_ŒäÅ›Iÿ\0­\'\'d0ä…%}Lrz×¨xƒWøgâ{\r\'IÔ´ËKÏì‹±ul·!sæÌ¸é¼jð¯Œ7ž)ø!ñ;PðŠmdI(d´ÀòV_QÉwW7¤øÂ{[ÖÔ.®EÌí¶Q²B¹ãºçú×©hÔ÷á³ÛÐùÙBTæá-Ñîÿ\0üw¥Ø]Xê\Z–ž¯a­iˆ[ÈÄ¼¨Åç¶Ñ·ß‘ë^o§xŸQ°ñÔ¡¸¼û$ä®\ZmíåçÜØãnâ¶>ø’øOþ=bÃÌ“H¼mKN®ñ,r²Œžr)ü9®³GÑ¬d¸ŽêÃMT,¤q÷òzIéùV\\Ê“µ„`ÁñÄ·Ú¼‹w”²\"ãË;ÉPì€Á­øüWãm]þÒ×-¢òÝ„+\n¦€<´c©O>µÛ]þÏ—º¥í§Šl´ëÔ½kÓ[Zº¬‘m8Y0¿Þ€\0èœääÖ¬\r¼Q¤XÃ½¥]\\ÜÜDNáÉÉ c85S½¾\'©­àox1ÝkvsI”!ÜP–$u#¦xõè~ñ­¥ö˜4kÛØjw³¯Ùmå+G6Æ˜$ƒŒrIç^ðf«¬¼‘éÐ&óss;•Žã–n‹íêx®ƒÂ³„§Ö•¼ga¨Du©çK[‹›°ÙQy&nX»·c<€1›ÃB§6‹Oë©2hõ‡^9ÓüVoü$–·WV“˜î-V-àÆ[¹îF85Ãø¯áŽŸâŠ:ˆ<}¯é÷‰=¸m/MŠgI¶®wÇJÆJ·$ƒÇCÏi:¿ÂÙÇÁ^,Õ¼Sâí7K×.¯æÑô{ëýeQw“û¸Ëœ*9Àfs€1Õ@5ä¿¾?|]ðö¯áèàð-¦»§ÜŽ<A¡x‚ÖyåyOÀ‘3™YBà1<+¶«”i(´âº>ž³ñt7>[Í[>)bŽ\rM^-²D\n¨ p‰•<—\'Ðæáßü>ÔõÝW@ñ\'4ù¯þÀ>Í¥$á&GÍ)òó¾N9P@õæ¾ñ\'ÇŸ[hàçí)ñvÙ´­dDCv?³¯mÀ”•ó,wG¹H\npäPf¸­;ö¹Öô2n>üÕ¼S{c ·³Öu9§\"\0Ä¡Žà\"Íƒ»*¥W!þ`j!ZªqæÙ|‡Ët}aâ/‰³^½|/ü5¡º[5™½±ò¢•¬Š>|60èÀvãæ¯ˆß	´\rxÆòÇC¸K«	Î°¸‰HY\"nF3éÊŸu5çž1øÏûWx¦Åáÿ\0†|Ôl“í/8’}ànV*ÀGH$cƒØ€këÿ\0ÙgÀƒã·ìíáø²Á-µ;yío¢hÊ”´Jåpz`±¯9ÀÏCÜÝ;£ÙÉ1«‰n_ZŸ4Db\'ð¦¿ƒñå~B¾Õ—öWðÎÜ™â•þË~æž }s_)ýŒî}bÏp‹¡ñcxI0@„ñÖ¾†ý‚~ÚÛëzÏˆgŒŸ#N`ª ÛšôÙ¯Á°†iŽõÒüðÆðöëP²±»P· 	Ý—e˜š8ÈNODÎ<Ç7¡ˆÁÎœV­kð\nãÄÿ\0Wû~a%•ÍÙh-‡NsÍ~†üø\'àý\r:þÆÑKkaü#Í|—§o¦xÆÛU½²&àÜíˆâÉ¯·~jú!³±MFA³¨Â±ï^ŽjßµHÃ$‹t.oöø)ñkR‹Yñ&‰æ])È”¾	Ï­Zø‰ÿ\0âð·‹4+}@ŽÒÞÞÙ1+‘Ÿ¯¥z¤wÚ&“\nÊ¾ ·…”gkÊ`k´.™áKæOøIí\'F\\„ŠpH=û×˜£ÚR=”«Õ÷i?Àä~~Áš?Ãk¸ßSÑ­¥T}Î\"c†ôÍ{_Œ>	øgÅžþÁÜ,b?ºQÆ+›ð×Çè¼P|½&ù´;˜pkÎþ&~ÚV\"•¼a¨E¹I2øaøRO	Rlª”3\n²\\ÒJÇ{á?€Þð\Zˆôi¬Éu$ý*_xbV·T1(EäZùnïþ\nÙàíSÄ#ÂŸ´èõKƒ÷§g\nª=yë]“ûzŸ]^¶Xg8Ãÿ\0=«9FŠÑ*x”ýãÌ?à¢ž×F§x¾Ýˆ[@$ïr!e>Ý>•ð‡gg¥üaÔ.ô»p`¾„¡aÑØu?\\WêÅ÷ã/ÂýWE„Ç+][\0™çk“‘ÓÒ¾/ý¦?g­kà‡¼áýSE‚×RÓmd—Pš\rö”šFurqœí c¶1^ÞU\'*|¾¿†Ç‡™G‘Ýù~;Ÿ7|IÑ ±Žk¹#›Ú¼vÿ\0KÓÞòG˜&âÙjú#â.•o©æÚ8òÒ&r;W–]|0®šÑØçïg­wT^ouœiÆ*ìú‰¿o»üš„8<\Zíëàö`‹s#×5ùÍ§k2åÉüz×U #^‘š·¼Õ3§$~€Z~Ú~\Z¹‡zÜÇ·ª÷†?k/ø‡ÄphÑN¹•¸Å|G¥Ìöqy}AW£|´k¿‰Zq#¬ƒ<ûŠÍ;ÎÉ;Æ\'¾þÓú—Úo!‘#Ê‘‘Çµwÿ\0°?ìã7ÆçÕµHJ@²yqävõ®ö£šÒÃTÒôÉ#gÕ÷ü§Á?ðü3†ìCµf;Áú×lÝ8¨®§¯“û×“è^ƒþ	í¥¼!l/\n–<µ½ÿ\0âÑí-ÍüW.óãœŽ>•õg‡¯–V±ï[Áí&]³üMx‡5ìõ=‰×œmt|7ì¨ÞÊT¡ \'jé´oØÓPðµ’£Ù)ùzŠûHC¥[1r±óX^,×44„Ä÷0¨©aXÎŒí«6§‰MÚ1?ÿ\0àº?²sé¾ð?í Ù¸Ò.ÛGÖŠG÷¡Þ[³qÑ\\J¤žò¨¯Ï¿iÓêº”Zu/3ãq àØ?…~ÛÁQ­to~ÍÚ·ƒìîc¹’òXÕ\"Œ†!·|­bü+ñ“áõ”º\'Žo¬uUu¿°¹xe‡Bƒ×¡È¯¨Ê*JY½ö]¿Så³ªq†;™}¥žÇºxÁÖ^þÊñ6µöi\"¼µ{)ˆQ´L½	ø$~uíá¼µH»ò!Ô4O*8în Â‰”´“À÷9¯ºñ<š×…N½eŽl„I*.Ó„*{Iõ®Ãá_ˆd_‰:¹¶[É-ÏQ…#ù\rÜEQ÷cŒ•Q =kÓç§5ó<{6ìz¯âÝ{N¹Õ¼[¡j—LöeÞÞ	½c\r–P‚ò1‘Ÿ^”ÿ\0þÐ>>°ñ¿&¥ý‡knóx¯TÑbYQ”;cÈFòœžŠy ç§5ÌÙë^ñ7ö§ƒm.H¹¼Ó%\Zl±\r½Â‚QÁ\n‘‘èÀÕò‹~.üGÒgtðƒõý\'â½Ì‘ë6þÑåŽÇ_…NÖ’æ\"|¥‘vœI`äàƒÂèN|®NZ;è(ö¯~Üz€~µŸÁ=-¼W¡kúÜÓë:‡™þ“ilJ°\r¨Ë¨Â0ÆÜ/œÖ\\_´œ¾#ÒOŽþ xæ´Ó£é’êò\\ÁÔs:ùÐJJƒT(Èsrq^#gá¿Ú#â‰íu½3@ÑüöÅÅÍ„ZzÍ¨1ãuÇ’\"2G¸„ŒOË¸±î<û|ÐüR“ê\Zeþ©s<ê†Ç^¼[©?ß&\0OR;ãºw§,E¤­ø\r.æ^:½Ô<K©øKá…Ž«ñ/Á¯æ.‡¸ž-’6Ä×³\r± ?uË(=sÚü<ýˆ~.kz=Í‰þ,iš/‡5`\ræ ÚGl¾[rmÞíâP¤t&4püòÍ}eðãàw‚¼£ÃaáÝ\"+\r>5RxÐŽI!ç¢€9ç­nk:‡ÃoÈ·:¤Ö¶»>D¹º@dÈCÔzñMBSw–ÏúÐže¡à>ý—~\n|<ÑaðïÃ¯ƒºv»*È¿mñ$ºYÔ%‰ð¹òæ}ß0ø\n ôÉ&½]þxJÇLŠÎÓH¶½Ô!Â©Ô¡Ý	Çßò€9ÇEÜ@¯.øÏûSèÿ\0\n´1£xrò+•ŒZvšwÞÞž¥ä$æ$\'Œ±ÜÝƒ\nùÃÆÿ\0µoÇO‰±K¡h7iá}\"VÌ–z\n^n0L“Þ>{Œ…>•ž#G¼Î¬>ŠwŠ²î}kãßˆþ\'Ù>(üGÒ-æ3é‹M9ÿ\0gìê%u™Q\\Øýµþø	%Ó¼\'ðÛXT¸	,¢ÓL¶³YI9Ã©Îä®kãx<ßlŠfrÒnÜîü’ÝrI¯Mø§¦Úý@×!\\}¯GHæö–\"PûàF\Zó¥œéÊP_yÝý—\Z5›zö=GZÿ\0‚‰ø³%Ï…¼s£ÜKö;{ØHç?vD#·sY7¶¥ö±hú§ƒ5ÅÔíUÕ$o&H$˜G ¢žT°µãvvªò€Ã#ÚµâÑ‘ãàžœW+ÆÝ[—^æë	ÊïÍtwçö·ñ¥Û\röäg¶úôß…uÿ\0è+¨Ü’À²žkçt9>ÓÂqô¯£ÿ\0f_Éá˜­V3¹å*8÷«ÃÕ•DÛècZ\nœ£cÑfýïÇßÀú´»çµ·óíšNw(9Ïò¯£¾#Ï¨x/ÂkZ{H.lc&#=@¯²ðíçìÕûGx{â¬\'þÏÔl<‡t\\ýî?ç_h|+›À^6Fµl·6·`Ÿ%×!®mhN*­î}\nŠj:˜ú÷íeûU|\\ñßƒ|g=íáb™¸»0ÆœôÉ®7Çß?à¡¿$OøŽÖiÅÛüÖúf Óë_²wŸ±Wìë«&‡àË=6YŽæ–Ö ŒÄ÷$s]GƒdO…>·wº_Úü¯™^îBøüÍpûJ•>+½:Ô©%)I§ùŸÁ \"øÑñ6ÓS¶ø¡¥ëZ\\ÐH¾D·Ð2‰TáÜ9éU¿à¨ÿ\0°çÇÏˆ~+·»ø34—¬L53#ƒØíšýð=†ƒkâD—N³†’±ˆúS¼Kaa®O{4‘ª73ãSÂºte>­…\\}j¸¤’Ù}çãÿ\0Áø&‡ÂŸ	è©«þÐ\ZoŒ/õâÙS¢ÜO\nôýÙZö_‡ßðL_ø£Æ6þ8ð7ˆ¯ô=,mÒuyå™åÇBKœŠý\"°Ó<3â(“PµŽ\0Ç«\"©ÍUÖq¥“j˜ÙŽ«ÅféWtýé]	ã!)µrË©áú_Ãù¾xvk€³Ë«|Ìå…|áÿ\0&Õ|=â}Cñ4>7Šòá¥šÝ´Åe@XnoPJúsã‡Š¢û(µVÉ\rŒšðwöu“ãN³.¡`ñ[Mei$4¿ÅF1ô&ºòÊÏ;=Ž,dzWkSóï_¿Hã\0}áÔ×:úÓï;YHõÁ®ÇâŸ…›Ãþ »Ò%\\.\Z2bÃ>›0r#ˆ•ÏîTæOCËÃÊ†§Êún†åÁÁô®·Bt´Àr\0ÇJ§¢§\n½;ÔñÚÍ;\r™ëÚ±•IO©ã\'n‘p.›Ë ú\nöŸÙ»Kó¾%ép¤E²ã çµx—„ dcsŸzû»þ	að{JñÏí¤ZØI´/1R¹Œcù×]Yó>‡5ys+#Ó?iÙ\"çÆÞ±ø‡áýa\rÝI>Ìë÷ñÕG¡¯ þübð§Ã€÷ZôËk%˜óÆ>`9þUÛ~×?³7ŠôŸÂQðÍÛln¦êÃøRc^Qñ?á\r¯Äo€óéÐX´7­fUÑ~R\nóqþÑÔýïÉŸC€öÅ:+ÖýÏ™>6ÁÄ\ZÃÜøsÁÞ¸Ô~Í3!d\nƒŽ+Îoÿ\0àåï\ZIq\ZEðÎHÆð7@ägé_þÑ³Ä?|KÔlfðn Éö¦1í]²	öCáìiñSâŽô¿·µKh//cŽ[©lU°ÉÉ•Ñì2êTy¥Û¹’«™Õ­Ë×±û¡þß?~=þÉ£ã§ÂŸêåÓšá!š,yeAÊ	ÝÓ¯¸¯É?_ðZÛ;\\ñ&¡¢Ã­\r,Erñ´J‡rà‘Žk÷—öFýŸ|!ð£ödÒ¾Øi‘‹{=)`ÚËË|¸$ûšünÿ\0‚—ÿ\0Á,þ\"ÏûDë)ø9à™n­5	Úi ·@ 9<‘õ®\\=ù«%gµÏCG(òaÛºÜÀÿ\0‚uüyý¨?kŸñxÄZÕþ³n\"3ÏüGÐs[ðPOÙÙ¾	þÔ¶>%³³’ÁæÎ\nµDBÎƒÜ‚õsX°ÇÀŸÛsöañ7ˆ<MàoÝhš¯öj¬f[`ÆQ¸ü£ñ¯uý¦|GñKö¢ø3}ðçâß†ßâ\'†ÂêzCAh|ËÇU;ÑTåÓpÀþ ¾•èáñ´–/Ù«r¾ÇŸŠÊªTÀûi7Îº3çû%m~ÑôûmöÊyg#†9ÈíÞ¶®ãð§Áí\n{x®æËDñ|-³ZF\Zm>õOîîUpK!Qµ€ïÏ¼²çãEÏÂ_Åg«ønT×äýÚÚÞFÑ¼l2åasôª~ðçŽþ-jÑë^?Ô\ZycÇÙãv\"(SƒµFk²UiÒ½õìŽ­YvG¶|×>øÛT¸ðïµ†ÓNµ¦£ªÆÌ×Œ>XÌˆ\\6s’á‡üó5éÖÿ\0?´á2x«ÆZè|¼¢Ò!‘‚\0ƒkG$37OÆ¸wö%ñ€¾èßDi&™®.à‘ÆC[äå}TnÀx›Åü:‰·‰®$†e‰.[~Åa‚3÷ºq×¡®Hbbâ¹´GeLª£Ö“¿©íš¶•áé¯£ø[OTºŸ\"×OÓÁÜîÃÚ¹#±ÍtßþøcÂ6·¨«<;¯g‘FèÙ€ÊíÒ¾sð\'íWwà;k¥î§pªªKª²’ ýÐ¦3´}aQxÛöÈøŸ¬#Gáý*ËJFz%i¦Sþû`ãµÒ±¸*1ø®ÿ\0®‡2Ê±óvåüO¬üYãM\'ÀºI¿×üEm¦ØD›‹¯¼Iìª9ví€+æŽ¿µLÞ8º¶Ñ~™¬ ³¹2^yºñ€Ê½!œ`–ç9+ÈuCÇ?¯¿µ|Y¬]ÝÎÃ›‹ÙÙØ¸8ØVt>.økáýa´Ë‡–y¢8–HàÐšäÅf“¨š š_—§EùžÎ$¥FJUõ‡üIüw¬LÓÎ¯3Ìå¦–F$±ÎI$õ=koEðŸobgº)\nýÒä€çW´?hºÎ-ôxBFÿ\0Æî7cØW+ñÊ=zâH,4ëùmà‚#C’ÌIü+Èƒ­ˆžç¹R4¨GEs¡ƒIðÄ·\"ßN¼ó%CóJ	Á5Ñ|dÐ­¥øaáÝWM6÷×Ü\0‰•?øá¯Ð>Z^]Á\'ˆ5÷\0cŽf@ÿ\0\\W¸¾kÿ\0\nM´Ë|¸,õh¤HÎI\nÉ(ÎO=Hüë¾“Q„•ï£èy8´ÜSJÎèóÌd<ƒtÍlé×\"iV :Ô\ZYçh¦ÙfÎà{dW:kCFW;ï\nøa5Y‚,a³ê+íïØöeÖ¼c£lÛí`œím¿xæ¾Oø§¦³©C]ÜŽ?\Zý‹ÿ\0‚|ø&ÃIøhŸgPí#–;qŸ˜Ö˜)JQîŒñ‰EÅ³É¿lÙú\rOà‹j1ØÔ4-·¬œ¼+Æ¿d_Ž’Ûx<?¯ÊHÈTVú×ßÿ\0ô=;Rót‹ëe{yíÊIAàŠüûø‹ðWÃ~6O¤øni J·å›$zgÒ¼øÎ”]L$·Nèö0µ&Ú©ÑŸoxcÅPß¬wj[Fj_|M‚ÛN:Q»*Ó\r­ƒ÷W¹5å_üUw6›“HÒ1ÉõÅt¯á\'×ôN}Rã÷óÚ:C¸ð¤‚)G5îÏb‡/<úlwß\n|Aáõ]–šÔW0(:Liî85ŸñƒâOÃ]OµøÛÅ6:m‚õ{¹Â+Ÿ©5øßãÏþÙŸ±—Å_OðÏ‰5Kxu;¹(&™¥‚EÜHeÏ\0ò8ë²Gìÿ\0û@ÁG5É|_ûVx‹R	èŽµ”må%Ì‡·lë^…XÊ…;JÖòêaJ®µWZºßÈý+øyã+}OI_øî;í\ZV>D°>T¯ª‘ÔW[{¬ÛêV~yq¿ÄyÍqŸí¾|ð-§ÃÝ\"´ý/M·[DN\0P=MV»Ö£Õ­¤Õ<;|\ZÛ\'ÁµÂ¡:qæ}K©V•j®ËçßÔä~)ÚÇ©ë ¢¾\\õòüþ\nCáØ×Â÷Þðf§e¨ø£T´h³ã—qµR&>ïÓ©«_¶ïíæº\rÝ÷Âßƒ÷©6ªÛ¢Ô5˜Ÿ\"Øô+[ßµ~:~Õøƒ x‚ëÄ>,½žú+ùÙÆ¥,ÅÌŒy!‰9Í}.Y’^>ß·Hþ¯Èù,Ã9å“£C~²íè}sð×âô¿¾i~;¾¹Yu7Ã©yóU¹${ŒWq¤ü ø©éÐßéþºxe\\Æá1‘ë_þÀ^9Ö4{_AŠàÉq¥Ø¶cyÃèqŠýðOíSáƒáK>žáÖ\0¬§¨ã×Ú°ÆÊ½)Ú*çf^©b!Í7f|#…TÇ–\0çÚšÚjÚ\'Ê¼}+^MR£ˆéÖ³u\rN	Pò+Zt”w>~R¾ˆ³árSPHÀ#ƒõ¯Õø$\'ÃÓ§øæÃÄò\'Í-Œ˜8ìJ×ä¿…ïÊkH3HþuûGÿ\0¡Œ›\r\ZwPX·OÂºU¯deSK¡úö…¹áYlf„8hˆ jù^·¾ðOŒ®ô-FÑ–˜ùbDá—=½kí-<d7Ž1Îkåÿ\0ø(/Ž<à\rÎúúþ¯¤»U7\rÍê,nëwmÑÕ—b\nê/fÌ+Á_	ïŸûSVðÕœ’	gIýEO?€<®¿Ûü=áûek3º0‘’>‚¼×Á~?¶ñ=„mov0ëÙ«sOño‹¼+t[O€KlOÌO¥||­{3î!9F7ŽåOþßžøÚŒü?y\'îíÙ %d=\0T¿>(·ÆÝ2ok>6‘Ë+b»\r·±öÍ[ñoˆü\râË5¼ñ_†¬eš/˜yöÁùÆGZòýSãž·âð¿‚<?ö{(ÛÌ±l\\{UÖå•4¶H\"ëÓ|ÜºžÉ5ß„æñ\ZyzdÈP¨`€sÔWÎÿ\0¶Ä?_²g‹ãŸÃß\0é÷÷\ZÂÃlÚåÕ¡–;[qœEòF÷#\'88AéY?´_í]£|ÓâñÕêy–Œ%™w}à:¯ãÒ¾žøWã/„¿µÇìó¦ø§EK}_Ãz… këYÆñäHÈ1Ø£*?¨1žôF„Ý5=“ëæmÆR§‹¼ìÒÝy3óûâí“áÛsO²ðí—û;øzlOåÙxÛFÓYot™àKów‹8Þ¡†G r?¾xKKøágàýnéfÒ~Ûöi.-˜º0\'	\"°ê¤íçÒ¾åý¥ÿ\0eÆø“û7êøsàK8u9$H—NµXÜ˜¾VPUsÊç<‚:æ¼ëö\rýŽô?|ñˆ¼n÷®é’µ®–¿hÚ\"óôî‚ó÷BZt+W…eúži…Ëê`%V—‘íë³ùŸMÍðóáïŽ>Ÿ†Þ °‚çH’Ê;HŒ`*€©„#uÔ‚8û½sÏæoí›û0ë<suáËè¼Û)›K¾òÏ	\'ð!ÐŽÄ}+ôÛÂÒÚÚéPIª\\DZIöº 9 6Q$Œ®Æ}«œý¢¾xoö†ð5×‚õyÞÄ¦M#QuËC&^~ëcgßµwT¨é´º1‚iÜüJñ&”ºtÎËþáüëjºe–c·Òç¼˜ž~]¨§Ô’?–kß>4|	ñ\'ÃŸÞøGÆ\ZKÚ^ZNU£‘xaž#ªžÄuçW~‘ffŽO°Î·åP¡}QÕ*RŒ4Ö“Æ^ ì“ëmajF\r¾Çobç\'òÅsÚwÃyt1-ÆŸ¥\rÇ9r¹8÷5îú\'€^à…ŽØ»aÐV®¥à[LO‘ó½k®œd©ê•ŒeCži-Ï\rð&“«YÝÁ‚–æ:öX>M¬éPêú•¡e	¹K‚Z«àÏâŸXøÃöbkýFú;{h“œ»°Uç·ZýøAÿ\0üøá¿ÙÎ‡šç„,5]Y´¶Š÷\\º‹Ì•ep~h·ª\nOË·šÆŽ&:ÞÎ×¾§}l\"†ÚOMl¼ÏÇûo‡Öí´ÚÇ€	Á#8­ýCE];Àz¥¬¨\0h†9!þ@þu¯¬x;Äß¾%jß|cjéy¦ß<2‡B€EÏUa†¸4ß@—Úô@ø÷b\0õÿ\0JìNœâí¹çbèÊ³Ç¦ŒÂâ²¯†.Tdã¾+¤’ÅzÉ»Ó³r1ÈÏJñ”â‘å«¶}ûømuÛ£¨#nyúŠý•ý‘´Ä°ø]ofªÇnÞõùûÚˆ¼Ql6ñ°ŒWìì¸ü Æ$aú×vVÔ§&qæMÄµñR—ÔtNµð/üïPøiã­â”(Íg)û-éc_ Ÿ‚Ç0\'¼}ëá?ø*ÆšÚ¿ìÍ®Ë¦^B·ÚtbòÚ\'|g%GÔdWÏc¦èç±¶ÍÙüô=œû‡3é©¿ðâ…âë+=ZÂñ	tS÷ºŠôß‹^\røƒâ½Ã?Ûé·’¦ÜÆ^0}À\"¿ÿ\0fÛ×Uøt±9¹‘ WKy?Q_¥ÿ\0²Ÿí‡ðÛãÎ‡~0.Ê\0öÞpÞ§é^–*p³mýç]	SÄÓNýly÷Æ_Ùö‡øÄ¶zÇ_ŒžÑ´Û+€â÷KÒÙ¦™AççfÂÀ× xoáÿ\0Àÿ\0èV~	¸ý±õr-#Xí-´«¸­Î@þ/-~cõ¯z·øXž#´k\rGUûe¬ àK‚p{W=\'ìwû,x6âOxVØG™¤2Ül1ÉcéYÆuª%hß±éRÄÓ£7eäŽ_Hýž¾x¦Õ¯¼mñgÄÚÆ—\no\'QÕŒq9É+·­|Áûdþßú/‡<?yðöj¾hôØsî¹™G8O\\z¿åX?·¯í±añS›àßì÷5·„ìœÃs}*ú‹¯ž¾XíëÖ¾HyWRÕÅ‚‘±Îs__“ä*‹Ž#¯.‹¢õó>+9Ï¥ˆn–Ú=ú²k}éj·.L’esÉ\'©¯ý°e]GáÁµl4²]§”6ó×µzÇˆu»dcoÊü£Aé^+ñ\'Äv~%ø±£x,¡‘m£7ç¦yÅ{õ¦”[gÍÓW’±Â~Æš§ögÆS`ù6$l¾½ô¯¤ï¡žÉ\"…äUp«Ò¾`ð²ÂûJ·m°›ƒ·¿júæxnaK…\0‡PA¯eUžæNT¾¼¹QŒœVt—wÕ&º9,â˜m \n§w¢+gb¨®7W¡,I|¾v®…¹çú×íü°tÍ	Iÿ\0—&Î\nüZð>Ÿ4\ZÂâ2Gÿ\0^¿Rb_ÚßÀ?|7¥jzíÇ™ök]³?w VØuR¬ôW9«¸Dý[ñÿ\0Žt¯‡ž½ñ^±t°ÁgjÒÉ#B’kùôý¥¿n/ˆ´Çí©«ë!Õ&]ÎC‡´ýä$Q)Æüyºçð¯©ÿ\0oø,>‘ñ‹Á—¾ZÏW¿%íÔÍ³1ç•Qï_›ZÙž‰Ö¾(°·°Þ@íšéÄâ}‡îz½ÿ\0ÈêÁa}¤}·m·þ~ÓÐxUÿ\0²õ[¦M¼)cž+ì/Ÿü)ñ/G[/ítÜŸšüÉ³¶MvÚ;ø#Êöë]ÿ\0Ã\rKÇ^¸[ß\rjòÂÙû›|Î#\r	Í´ì}&8Å&~ëß\0<7©ÞÙüet‘ç&$¸À5æ_´ŸÄ_ƒ_³7€î5)õxLæ\"\"ÌÝ»_,|Xýº>!ü8ÓF›©k~uóÇòBäqÔ×Ç?þ4xÿ\0ã7ˆ¤Ö<g®Ï?Íû¸Kˆ=\0®¼&LëIN¯Â¿—œ{8òSw—ähþÐußº½ö§ª\\<vòïò-ÃpªzSà›ŸðWŸ‹_°&¿}ð¥¼9ÿ\0	ƒ¨]”´Óe”ƒ®ØÂç¤žEyŸŒî.í¼9tÖRé	(Ùï^;û9Ásã?ÚÁú}øóZoZï:*“ü«è–Ž!Fƒ^ëjÞGOˆÂÔu`õ¶¾gôÍû~Ð^&øÏá³¯[Ee¦kB$Ö|5*o[…é‘ÉÈá\0Cœƒ´tïÜ|YðeÌÂÍð=®›VÏ.¹§¥·–÷MÆé~^äÞFx•ù/ñþ\nâßØSö‚›QðÝ„w·V—‘ý¦ÂIŠ£Ú7¡ÇF#¦z\Z÷y?àäoÙ¿Çž‹Â°øOX·Öµ§K¶šÜyq<¤!fpq´n\'Žxé^Fg•OŠ8Å¸§§_øcë°Ë\Z¼ñR²æMÛÿ\0Úý³ü3¨økU¶ŠKdXn!Ir7ÎP6íËŸá\rüGùÔ#¾Õm±z¯\"ˆØ¢É‘–#«duuïÏ¥x¿Á‹SO ™äµ€Ì²â9ãÜäÆª|Ùùq»°Ï½2ÇÆÖ¾!d·\Z•›ý¡ð¿½.WNÁ÷Ã€íÉÈÍyub¤µ5ÃTösÓcŠý¡¾xSöœðÀ´¿Ž(5›(ñc«ƒg\"7õR,äWÀß>xËá‰î¼\'ã\r[Y bºü®½OñØŠý&Ðìnmõ3\rÜb,VDH=2	Æ=«{Ä?|ñLKxNÇUƒŒBÜHÊ2s´žWð\"¸iÕ©Jvg»	Pœ{£òO-äGÈ9õ\"£ñ~rö\"BîçjýM~›Ïû(þÎ~Y51ð‹OpcËòž\\sýÖ\'¿¥tÞý“ÿ\0gqáñ_Š>éí¥_±Ù¬EQ˜à1†ô ûÖóÆT”yl5õj^þ¶ô?<?àš~8ý”?gßxâí;â;Cz°ø{û_åŽJó2nà±$®„ë_¥Ÿ¿lÙ÷ÇÞž÷Àô›»Y#aŽéAÛëƒÚ¹ÿ\0ÚWö2ýšÿ\0kŸ†iðÏÆ¿4èâ°V:£¥Z%¤úyeÉhöŒm<nBl8Ü?2~=ÿ\0ÁlÙ»Y•>Á©ëžº“{K£Ü‘ß€èqü@cÞ”)>~hËVsÏC”\\^›j»~1~Î¿¿nˆx‹Âÿ\0,-nü$‚ÛT–ÂidI3\")`Ã\0øÎ~ót¯œ¿jØÊïà¥¤¾!ðÕÔú–‡$mòK^e!IÇPÇ¡áZŸðJgÃß³‡„¼`~\'øÉluMKW·ŠKâÊò´aƒ’ŒŒ¸ðH>•ô·í)âOx¯öZñV·µo \ZUÍÀxÍ*cÀáFN\0ÉÀ?^Õ×AMc]]¾G—˜×,4¡5ek¯™øø×\r9\'Š¤.¼ËÎp3Ö´ì·ð	­åWùWSAïU%ÒD’ädðA¯6qq“¹äAó+ŸT~Â³+øžÓË`A^kõëö^\0øå£gó¯Æÿ\0Ø×^Ðü®[_xƒUŠÚÝÝ,î\nû{Fÿ\0‚½þÍ|!/‡á–ÿ\0Z¿ÌcN…JŽ	bEzÙ-\Z•$ùQçæu#~‡²ÿ\0ÁCjï~Í¾w÷i&¥s;PÃs:ãÓÞ¿kïÛ«Ä¥¿›ÄÞ\'’Eœ:Å§C1Ø ôÈï]?í‡û`x³öŸø¡ãryR\\¥£>DÓë_.üTøqmâøžîÀywcGF5õØl]ƒ¨ê¨óT}_èxµ1ÊéEÊÑì)Ñ>$Gô–š’!Û\"ðTú×}à/xÓÀÚ¬~0ømã;›y pêÖÒA÷¯ñ‡µ-VkR‰²FqÅC xÏWÐ/@²¸$«ãiþ/­râ(ÓªÚhêÃâ*ÑiÅì~²þÍð\\Oˆ^ð¤>ø‹ O¨ÝÛ(T½µçpõlô5±ûVÁB<eûIøV×Âº=œºm¬à5È‰%<|§…ýkà?†Åki­©iiÕâ†šž·­{g…Y¦´mBY?y·#€=ª2ì³\rN§´ê¶]œvkŠ¯KÙ7£Ý­Í´MÒØBãsuÍr–:ˆÓb½½»V&¶Öý‹\n†·sXž!Ôc–r¯OÌ b½ëèÑáòê®s>\"ñ6„\"k©ï–wšó],u¿‰÷*Šá\\„1½†rkÑ|QðçÂúù\ZŒöŒüä®ü*äî4íÃž3²Ò´k5…ZÎ}âIÿ\0\nâ¯wM¦oNÊHóé:ø7ˆV\"ÐE*¡•GÜn£?ZúŸÂ×7^²¸Rpöê~ö;UÏ‚Ÿ±¦½û_iW	øI‰-7ßjupPÝF².Å$Œ)ÚÍ\\\Z÷[ø&\'íuáû(tføgç›xÂù¶÷q²7‰5ó˜œUW•»4{¸<5hQæèö>9·†æYDp¡oN+Jð­ÝÉt¸¶+®Ñ|	{BÁöˆ­ý?ÁóÊ!;SŠöpùL ¹«¿‘âUÅÎNÔþóšð÷…íí§T·ƒæ=HÙëš‚øWÃm \0°BqžœUˆ´;}ár˜ üÙ+âEÚê0KrN{WMIÂ–\nÈÎ)ÉÞG‚|AÔ¼Muâ#â]„yéø×¿þÀÞ\'øYâŸ‰xoâtpæéB@Ó(*$ÏCŸZá&ð„r[ï¢ƒ‘^e¬A­xÇÞh¾b(h¤CŒx¯0ÂÇI÷=Œ·èUQè~«üNý‹!Ó”xá½ºµ¬‹¼ELzW‰|ZñjüðÜÒjV»5IT¥­¼‹ƒŸïWÚ_ðMÚGàÏ¿doøL>0øòÃO½Ð­ÌZ´W×*®¬«Ãa!€5ù“ûo|³ý¢~=ê¾(ÐT&opÐi)Àh”ýk.Àâ\ZR®½ÔvãñôéÞ4Ÿ¼Ï,ño‹5ê2ëzÍÓK4îX–9Ç°¬]:S,Í!¨«wåD[vÕ]\"&äÚFOkßv¶‡ÏÝ½J¾)xÍŒÁÇÊP‚JOØ·öSø™}âùik_K&™áÛÃ.jeXÛPIän ˜ÐõÇ,~UîG©ü.ý›µ/üsãí:âÛÂV·\n\'†G¿\'8Š.9|ÍÀ<æ¾éð—ÂÛK¯i#Ãúu­žk­­gŠ«Â¢àŽ^xé[áiË™MôÛÌÎ¬¯SòÓöÀø‡ñ/^ñt³üNÐåµÕn™™…Ý—“!\\ðOÊzIú×Ï}©øsÄÖº”˜ç·»Žhž6å]X0#Ðñšý@ýµ~x»ã.¸þñv•·2Ûá™ìa.b\0œÆsœoƒø\nüàø×ðgâ\'Á¿Máˆ~žÆþÖN‹òºõÈ?B8ê;WŒ«íj»…û8«²ÿ\0±ßÅÍÇß\nô/xa`Ö‹æ´ópÊ>b@^Ôá-’¿ÃÒ½Î_‹†ŸA†x\"·|˜‘w‰SÉðsÁù±Ž+ò_þ	—ûQjŸuVð4÷b0½Öœ»æ‘Bîˆ62¹*‘ÏÈkôßá¯ÄëO\ZhÃW°hå7N–ó#FàÛ0RÄ&À &Y—•sÉ ã ü¦:‡³›ìÏ®Ëñ*¥õG¯øGâ³As‹ÖX„ëû™ƒ*ï#åì6=³^™áÍLÌ –ÝË,­¡÷éëÉ þF¾cñÚë·\ZBßØÙª\\Ø§É,3þñl™RrAùB‚\0RÁ®ƒá¿ÆëíJ7zÕ¤ò®ï-VáŠD\0\\\r·yrÝö$ùuiI=O^†!(^\'×:6š¨ów(	Æ>3PxËÅZ/‡­6ÿ\0jB†<aö–|‚0sÏCúûWÌúOía¬i—rÏ©M%Ü77Lm#ŠEVbCd1,FâF2	ÛÅM©ø³_ñž²šö½¥Dæ$Sö+dóqå”‘´ƒ…-Ó\0ç5ƒQ‚¿RÜå^Itãçí3ûdø#Âú–³ðãöVñú%†Ÿ,òk:{Ú\\<áFâcŠZM¸Ï\0öù…ñöñÿ\0‚„|^ñD×ž\ZøSâKK{–òìÞçN¸$dõ\'`%`çÖ¾¹ø¹û\\übý‹~\"Ú^I¦¼~×bóF‰4ìñÀãhFäó—§$``£ªÿ\0Á_?f•ðë]i~»“T‘äafª–)…û¸\nªIïÎkªƒæVŠ×ÏcêrèàÕ.nnT·åiKæåü”ò€±_‹þü.Ói?Ú×_¸‹Å\ZÅöÍÁò@ª 2Ü\\o9rÌ\"\0`*–nvŒÛcö‚Ô¾ü1Ôü5O\"ÓÅµ¬pNbùáÑƒ®>\\áÆÎ8 ž×á_Ç/þÚµ\'‚ô¿ÛKeá­\"ô\\9œ”>Zæ¾Ümà×åœó_ÁXþ6XüMý±üQá	Ü/ö.‰©‹$1JÌ²Oh’‘¸žA\"nœWµ•áÓ¯ÎÕùlþgÄñž6”«(Q•âî´ì¿­úîyï‚~)k>•-§\rs§9Ï•¿æQž«þ\r{–™©A«øa<aáhÍþœÜ=Ú©Ì-”‘z£~bG5ó%†™q<‘J	DÀ_Zõ/Ù—Å|ñÚÃÃvw7V:«,z•”jYBƒ\'sê2+ÜÄ`0Î~ÚPÔøZxºñ³RÐïŸÄ:•èÛ%ÃþàlV}åó‚rý}kØ¼eðkH×-¤¼Ðã]>ø}Ñ\ZbÞcéà\'ÔqíÞ¼kÆ:.­á+Æ·ñ\r„–Ï‚}ÿ\0pzî\rq·»÷=Ù˜ò†w¼¸”\"/ô¢êºnwö‰\rÀòØ4@’¹éYÅì€Ì~Pr¨:\n×‹Ã×z¾˜ºf	y¤8\nëôªm¶RJ×8¯|:Ó<q¡2O—xk{”ý\ry·Ãoz´!m_Å6[!´›÷HÇýsÿ\0JúKXÒt_‡^ŽÏUºê7	ÆÉõ÷¯;Ôu­E%–Ý¦Ž\\a’DxTÕ*´‹†º¢Yì–;¥q2Ý@5è^Öã::ÚK!Ü:ý+ÊÅ¦©~<ø¥ØÃ<Öÿ\0…µMVÏr]Ä[Û®k:U9f­°êEÊ:ž-âíòã••©a¤É#ÜšÍÓ<eauû·cg•”r\rZº—ÍÐî½zi¦rY‰§gjZ9./Bôæ~ ñ…õ?\ZSÃÚ²Ü5¬â)@^±üMwºäbúÍô¸ôØî$‘Èä.G¦{f¼Ö?‡ºŽ‰5ÔÚ†Š¶7“ù†ˆ(ƒ¶1Ú¹ñ2j™¥%­ÏÒoø!>™¡ñçÄZÌÀ)þÉû±n?!_®Ñx^ÔÄ¤3:/Jþr~üMøƒðÏ@!ðŠ¯4}NèWV7:ÊN:ýöG„àâÏÚÃ\Z³ð÷‹þxsZÔ¬á]ê¢êX>ÔÃøÌk¤Œgg\'Ž•ñØü¶½\\C«{ŸMƒÇPXXÓ“³ã÷yàß„Úßõ•Ò´{b#‰¿}(^ã^«ü*Óô$Ó¬!\r2&dzîté´?„\Z‡á~ÝzáXã–cÔÔŸ.,t«„‚ÛK,ûú×ÕÎ¬æïÐù¥Å3|P°ƒK°–ü¥	Ýšò¼C¦ê7%]°Á½+ëüÓ>/k·×!Sýž¡–%nŒGV>Õò/í-ð‡\\ðÄ}A<¯a¿(2«žÕž²|¥-gSšÂé0³©`8¬4ðïŽoÄ\Zm‘;çÇÊ¢º¯„ß|M®é°ë^5v·F„é]‡uÝá¯ƒ¥:d+TÛ\0dµtB…5ñ«’ç4ïcÄ>!Egá›ÏøF,/žS\ZrÊÜnô¬;IpŠ¯s}&§{-ýÌ…žG,I=ëOÂ~ñ‹õTÑ¼3£Ü_]I÷a¶ˆ±çÐ{ž+*’ævèŠŠ¶¬‰tûÝJí,lmäšYœ,PÂ…™Øô\0I¯§ÿ\0dÙARx»â´vóÜÚÌ«i¤»HäÆyÙØtdù=3~þÎñ\nk~,Ôƒ^ÇÍ­¸â™ýzƒSƒ_K|:ñoƒ4OÛE\"i\'‘¥h\0•‹d–\'¾OZšR‡=æì—r%>m\"tš÷‡üS\"Ã†¢ŽXØÇ<o³hÏ†1éž;Sü¡]øKûÖÑÃLÆ;[VÄQ¡9áF9É\'¯½cZüDñjÑ]	LÀÐE`G¯=Jï­ïôŸi¢òÈä2à˜Áî9®ŠuéW¬ÜdôéÐŽNTp~:ñ‡Ä-wÃ70|%Ò.áÕ`»T.à”w\rëæ|®20r2kçMKà¾•ãßxƒÃß|o©êsZË–¿\\G1o›	\\àç‚Àé^ýañ“Dñ—ÄYþè·Ãvó¦­}4¾TŠBíoÏ/’HàÇ¦ÛøÂ>ð=öà»£u}$â;ZRÏ–.	=û¯¡¥ˆq¿3{_y¤4Ôü‹ø·ð·Ä³ïíá-Ì´Ù~/<90ùdÄ˜ðÇ®9Cî¦¾Àý—iïx?^´ðÿ\0Ä>÷Aºº³1¾Ÿ4M½Fë$Œ>\'©ÆG^•GöåýuÏˆÐAâ-­§ëº	–u-h¯ŽÝködý£¼3â-\Z/‚ßtû}kB@†ú Ll¿u•Ž\Z6C.=®\nÔ©â£}Žœ>&xy_¡õo‹~4ØéâhôM}Ò32º“&c7\'ii$ÚIØQñ•þè#¥x¶¿ûF-Æ¨ãZgC‘Zî¹WØdcù «c ŒÝ17Å¯Ù¿â&á¹<Qû6øžoxx¨•ü7u>o-ñÏîß?¾\0€ß8õl×ÌzÅëh59¬<Ocsk}1Kov…&•e Ïb+É­„­EÚJèöèâèUÖ.Ï±ô¿…¾?YÏwÝMw-ŸÌ\' Ã\09’»€Ç$Ny\'ôOöQøïð—Äº®‘\'ˆlnolÝâ–U0îˆ‚È/ÍÀcÈÆrOñ¯@ø«á˜ H·:—\09Œ€[×éZðü`ºÐµÔ<!â«•‘^ˆ¦!Ñ”‚¬Æ<zá•8ý¤uªÏ¤Ü¿³¯ìçûUø\n?|EŠw†—p]åµ› Œ¾7	È#¨ôø§â·ü¿àÿ\0ÂE¨[|Q±]Ý$fêêÁ„ñÈG°ÌGLwÁ qñöƒÿ\0ø÷à;i\"oˆ2Ý.7^D²0	‚NO9ÁPzò|›ö‡ÿ\0‚€üløŸöÞ ñýãÛ™w­¼Ð·$£€rOOZéÃá£7îÜšÙ•Z¶Œû+öšý°ÿ\0f/ø\'×ÃÝ{HýŸ5¨5ÏëÖg¤ùÌ’:)\0]Î 0›¨mÀAü©´½ÖµMSûKRi.o/îZW’F,òÈìIbO$’rMT±Ó¼UñcÇñYØZÝjZ…äÿ\0$Q«I$ŒOâI¯ 4ïÙ£Z±øáOéþžþïG1ßø¡íSpEiØsÂ¸óµj÷i¨á×$Ÿ«>k^¦&¢œÞÿ\0‘õwìMû|5Ó>Añ?ã‡.umTÎ,¦LY¯<2(9›Ð–ùr×èø#Ã6+qáëM\'M·µH°¶°²Xž laF=—zå¾YéšWÅ<}}r!·´kkG›UB‰…ÃFTäH2xQÈààŠê~$øOM¿¼}ÒfŽlq\0wXÏ;‘³œÏ\\ñ‘Zªµ\\–§<”÷Nv÷À0^[Ç­ø>X]ˆi³Æå änÚFyãëßŠàuÍÂ{Ö²ñ†í.ÞOÞÚÝ@AÏ8œWsð›Áž+ðWÇk›RmOO¸ÐñõÂm8çË“jí‘Án¤ƒƒøWgñàn‘ªÇ.«áæònä%ž2ÙØõê?\nÖ¥M{ªÍ¸¥©àzÀÿ\0‚zåÔO{áYôÁ>v]i3·•ø£nÁñœ{t¨´ßÙ¿GÐã]WÃÞ*VSÊñÇ3Ä7)^\nöÉƒÅz%§ÂÙeÒ\'ðç‰Änd(A?*ä`ƒÀ<sÁ{W1sû\"xîÓM“Ä>ñ[;Ø‡IômiÊœ`2O\n¬Š;‡q)ãy¨‹¯I^HisisÈ~3þÊ|K¬OA·Òµ[e„K¿÷;»ñ2*0ã´™æ¼âŸ„|yðž`|ð‡Åš\nãj\\ÞiLöïþìˆJ‘ô&¾ÇÓ¼oñÀöé¥übðÌÖÖÏòÌív%rÆxÔ´XÏÞ–4Ç­uÞñ×ï.!Ô|¢>­áIâH-æŽ÷Î„à:#\rÛÕz…!‡$t<5R5äõ[‚±ùÃ¢x¾Hcðþ»È1>Cø	ÁþuÔh\ZÕãÎtíT*L¼©SÂ¾Íý¨?b/Ùƒâ¿‡¿ábè(žÕÈ²Ötû	\"€Ì8Äñ…ÂxÜ6ÿ\0À«ä/xCÆ_u˜<ñŸL[Û…?Ø>$@\Z×Q@z‡ÙÇ#=;QV„¡©p­ÌìÏ@ÒþXx»Ãé«h—ó…ýô9ùÔŽ¦²n´ÕÐwAu$Þj™8ü+CáL³ée¿µ®ÛM06;–qÓz°êÿ\0¯è$ðuä–ÑêZ’%ÜR\rÐË\Zü‡Ûëõ®Š#5n¤T‹RºØó\r\'‡õ\rãPŒùÄ‚Î’`Ø`Ö_Ä>Î;¨œÒ0U —5Õx‡Ã¨äj	IŽ6å\\¿‹..Vöæ£Y\n´’žç§5u¢6m³Ÿ‚öâÃO“•TºÉÞ;i\ZóN¸c4’(f9#5sSÒã]227xî.™±s` ãwLàô®vo\0kFV6®þY9L¿jóeEŸ¡?´×Ä/Oø©iªØjˆðÚ¶UCä\ZÏðgÇ›/øðY_ÜªÇ0\ndcÂÖ¾^ñ>·¯ê·F}FþYz³óLÒµ{­2ãív7.Ž‹÷•¹¿4ymar¶î~…ê>>ðO€|%sý“©@¡8\nÃå_ñ&¾q“V>,ÕåÔo G¥2‚?ˆ“ßÖ¼GRñÿ\0‰/t™íÛWšF~gÍvÿ\05¹âð>£pK€WŽøíW‡²o¹3Ž§}¬ëÖ¶ö&FuŽ5Zùÿ\0ö˜×u]GÃGS´ˆ¥£n“qù¤ú\nô(¯.u»ï.ïvÅîzw5éþ\nøC¥i¯­¯é6·šŒ´#ÌŠÝ‡ñmèXv=LWT!*¯•Jq‚»>røû)øÏÆÚBxãâ—á½h’(.cÅåÚÿ\0±åõažáH¯¡ü=siàŸÂ#ð—ÀÙÛ´{f¹šéDÒ·«7,ë€+öˆøÍáo„“CwâÍZæîòèm°Ó¬­ËÏw\'÷\"ŒuçÝ=ëÌ´?|{øýª¬Þ>†?	øfé·[]7ÚnG7n¸$«/^:Õa†“‚Ñ÷ëÿ\0\0Qæ­è{—ÁïØx[Õ´(ü]¦j·š|iö¸´×öBá¾Fpv“òž3‘ßÓ|#Óå×\']ÞtYˆýÒÊOÌ»1ŸÈ{ÖgÃO‡Vß™´»P²ÉC\Zœ\0ˆ£\0Ã?AKðëPº´×eû5ÓÄÐÏ Vaˆí^lìß3ØÖÉhPÓÂø_YSÓÕäƒ‘“wðœô#8?…wºÝ„úïƒLþÒ{I5a\ZÏi´2êS>Ùþ•áþ:øÑáàÚÏa,×ä´-¸	n¤súW{à_Üø–þÂóR^Ò@W•‚…VS·ŸZßUáæÒZ=‡(ÝXäÁ½F¼Óæ²Óö]Y»›y|Ý’ÙÈÌœeþñcþEuzŠ|9áµÎ­t“[&¤\"[¨rù›	ËqÂŒzä×[{¢xuµDÖ`·Ü\\¨HÝ¤8ŽÃ8Çá\\<ñ*çÆ‘xkÂºUîŸá¦Ùo5šFLÞ`bî¹Rp\0\0óÇã]²¡µ>ß;“ÌÞˆò¯‹õOˆºå§ˆµ†~\"ƒÃÐZÕ®,\"†Iâþ4˜BÍºhÈ8`£vÖÈ¯˜~:hß¯üWe¯ü{™,¡µU¹7ìˆ(rª$qÀàò	?~k\r£ðNŸoi£YÏˆÞV\'j÷ç½|ÑûE|8Ó.õ;ëïI#^=£9Yc#Ì#Ó=qœþuÍí§\nÎŠ]ŽOàÏÇ][ÂúzZ¶¯&c‘ž\\˜>Y<Œöö¯øðö}ý¯ü7ü\'\ZqjfÏ]±ÄwQŒqóóöXí_ŸÓÝ]øzég¼Ç\"É·†=}+èïÙ/ö‡ºµÔßÂ×z¸ØUDaÓq¶œ…é×ƒÜqU\Zêu-%£´´<kö‘ÿ\0‚züoýžne×ü?x—Ã¨‹û$>l+ž‘ŽsÓ•ÈúWˆ[øÎ(Tý£RŠ2¼·\"¿\\~$þÐþø7ð7^ø™â‘£¦¼Ë	P<é(±Ø³•ÿ\0k¥~cxGöXý¥?nÜ|fÑt4[ë7Nd¿{˜á·ƒ°Çg\\9\\œw©­¥¤›µúT±•Wºµ±å>&ø†—2l$gÔõü+’¼–÷P¸Ì„»¹Â æ¾¦ø™ÿ\0­øÃð·ÂßÛ·ºþ›{q±ˆ¶³û¬@ÎÐîÊrGL­y?„í4ÏÙãW‡Çÿ\0>6¥¨[Ü‘ ø~ùöÅs272Ê·˜Ñ°\0Û†ïŠ¨B%e¹”ªN¬¯&}åû~Èšì¹ð\'þŒ´8î<]­Z4¾d¿zÂÝ€ÄQç€Ä}ãÔôÍxoÃŸüTø™ûOøËÃ>¹†×Âwú•ü$:äÐï’Ñ¡yb!œŸ0rÝŽ}SÁŸ·?‹þ-|2ºð¯Å_„±x+Z]\'ûKO·µã·½°$§ž‹#3)W\\$ðTŠµÿ\0òø¨kÿ\0³UÏÄ’ÌšŸŠ|Iu©B_“<P9Œ/=Úã>¯žÔªÉÃ\rOY7¹?W\'²[Fø?àþŸ§­®¥geX9CöØÜB®ÝÜäƒŒñëš~·áÛkq^Yî‘–àGÑÜT€23Á8ÇøU¿\0ø®m/I\rjòyQ³G-»áZ6ï¸GqŒÖ)ñn¬ž$>	Õ5û©mdœç·”áì1žsÚ¹¡:§}y¯ª%ÉóXæî|Wmð+ã‡ˆ|C¯é××K®ØEsambƒÊ”‰7ú0Á;½3žµêß|nÿ\0tÉ|OeâG¸¶,Ñ¶›q`±Éhû‰\n]NmÀ÷ç\"|1ð·Šü64iop\"RÖ’yŒ’G&Ò9ïß ÷¾y?\Z<wðçá×ü*_AÔt)—PgƒQòÚÝ¤ˆ’Jä\0Xä˜ãÒ½våNI½ˆ\\¶åê{ÇÅox’òI5\r] µ¶3I\ZDÈÃ9P9,HþÊ³üâ<w¢Ã­ø\\›ûWNEJ1$kÉR:†^˜lÆGZá~~ÑÞ?Ô<A§øOÄ·–š¥õÚÄ×—_$±†rðyþðÉÏZì>*xcS²ñM‡ˆ|gör\rÏæÅr1þª_ï©Æ0zgŒP¥N¤oäD£(I\\õ/Ï¢_…,	ºƒÍ<¶ê¥˜“óÜ~uÈüJýš¼/©Kã¯‡þ)½ðµ+î¼Õ4\0«ëç†¹·`aœçøKsÃµ_à÷ÇÝ#X¿“FñM”ÚN¦CÍ1ásöwR8!”žF	ëœrk£ñw€uKÉãÿ\0	x‚XÜ§›?‡d”¬\Z‹ã»“†)ÀÂõ\0óBŒcNÃr“g‡^~Ó~6ø®KáÚËAŽ]\Zi„vž9ÑíYì0ÝîÎö¹Èç2G“÷€é§ñ+öløKñïÀ¯á{I&‡¬Çö«(mÞ9í•º¬–ìAòÛ\';‘¹RGJì4}OÂ?áÿ\0„\'âw„ ƒQÕÚXíí¥´Ñsû–*í‡ÆA\0xÀ&¾røÛà_þÀ7ãŸ„Pêw\ZèÍ¯ø2i~Ñý“»þ_,¤<ªdüÈxãîåN³Œ}íPJŠj³‡Ž>k7þ²øƒq8°™–Ö\rb×\0€~\\89\\ŒsÈ®›áÇÆÝfø{ã¨d¶ûBâTsÓžHàŒôaøâ½kÄ>ñgíàwý¨¾kPx—L¹‰N¥áÂ¡\'G\Zƒ-±#ïíÆè[«)ÁƒâWú7ƒ~1øe5\rY,Ð1û-Ý¿Ž\n²žqØ«\n·NcÏONÀ§8é-Í­WT¸°¸m/U´K¥“&Îàp&Ô_já||É¤ÜCg‰6’!G™ïZžñŽ¡gx~|SÓ•îKÙ\\FJ­Ò’DÝ˜w^Þâ­øšÏS²—û\"ÛËº‰¢ÝÎ™Þ¾¿ì‘Ðèj£QÊð–àÒZ£Å<;ñïHÑd—áçm.—JiÌ~L‡óci\0»kOx:{d›Oø…aä²æ?2áCcÜkæZÞŽn`°¹”_)ü¾›9‡¾xŸ_Ñ Ö-õ¨\"K…,±»ò£$z×$ù ìÍ£Ih}uŒ´èvê}¥Qw\Zl7N‘y²[K	#••¯TŠÝ^ñ­n\"h–8‹Çÿ\0^¡ñÂ}#S³¶Ô5;«‡óÀavðkÛ©J•mÑÏhj™äº×Ù-f$n<]÷Á­ZÜx*mOS»\"8d8F#ž{çšn¿ðIÕ Ù¡jf‘URwÊ¯©­«]/ÂþÑÓáç‡´¸îçyÀ¾Ôgev+´ä…ê€Ž8çžq\\”h»\\©T=GáEì3iÇYðç†ü¨^2^úù”K<™à&ÒB ÉêOâk›ø­ûOÜx;Åö_<-¶«â­^háŠÒ¾26`\ZâäŒŒðœgØ^eñËö‡×<áûo…_­£ŸÄZ¶ÕÓm!Q‹téçH=8ã<sÀÁ“özð]„´;k«—:ÅÍË]kzœ¿4—žIä€O¦½*¸õJš5©š¦ç>il}à¿Ù«ÂÖ^!ÆW\ZáÖ5[÷ï\\»‹Ï¸\'€GGž.+¬³ñ7‡ü1­®¢héuJÂG¾ˆn2g¨ööâ¼óÂ~9½6—ú4VÑïrŒ.3‰T{3]€4›sP»¹ÔþÕ\"YÚ5ÁK`È$sØz×¤§;Ó^óêõüÍkÐë ñCxß^‹MÔEµ™0¾Éá@b“Óù^_sâ(¼)âë½6Ø4=ÜëÒ°‰ƒ»{±àùâº]/ãoÂŸx«EðÆ‰ \\«\\´†[©•âA £Äî;sŽ„×¥yïÇŸ4Þ1’ËÃ¶Ë¬,EÜq.YU‚lÞ}OÌÈ¥RœœÚl¥¾„¾+Šââê5¾¿]FîêáR¸g6p¥6ã ò9â½ãÀž	¹¼D²Ð£Š+{d\0©¸>Ozò¯ƒžŽ9dÖ5‹q4\nIÚMË´õÆ8Ý‘Ïq_@xHKçÃ¶ñ­Ñ•’XÕ<Ç‘qÜçŽ	<qÅsÆ«W•ìodføŸ]½–Ú\rÃ—‹ö˜BGâä;€ÀR8\'&«ë´ÄŸ¼Miá\Zx~êâ²I$Õ-X1È#aÇ÷Oñæ©ÂÂ+øå‘Xn†<þ5[â—ƒüñý<I©_k0µ´J‘iÿ\0iß!˜ï ’A\0“Ž×GÜZ“³[¸œE¯ÆKÅ4½kP¹™¬ÒùÚÞÉ®§ªAÛÀcógœ¯8Æ\0ë?|1 øóH‚>;ff˜$y‘qžGã6zVƒÅi“ÂÚ#ÜyV\nðEg³0àà{žµKö¥ý¼¾þÎ_\n®ü+âÍu.üY`ðÛéú=Ò-å\0˜ä*	Ù†Ûó0ãŠTjN½f´³ZÜr´by_íAû+O\nÿ\0ÂMá=,yÇ‰6ÐÇÕF9\'šùÃÁú¶·ðûÇ3Û¼ÃÃ‚„pkÑ>~Üüc¢ÅþÔ|aá§ËÔíÒäÝêºD€rÙ_Þ2tu}¥y#*CV\'í„¼I5—‹üò^-ìDº¶”6ý§æÈëËÆc=G#¨\'[u/íañwRñ¿Áo\0j~!‡Mµ¿Ö KËù™Ê²G¾Ö	9e_lã8#wþ	ÝñA>x·Oðmìî4?ÛnäÎÑt§å‘Cpˆ\0>¤)éšùëÇšêx«ÁÚv™}žüEn\Z\'–1ì}Ùè}y÷¯yð~¡á_|.Ÿû\"8-/´¯*òÆ[¹@rð0òxC $ä€&§*“ŠMê¶4¤Ô~gÓ_´µ÷ˆ&{]æ3žðÉ=¼®ä7–àí<`^•áÿ\0þ½ç‹àø§â_G‹Å·°»‹mb]ï¡iÀ	ŽeXÆW2·wïe\ré\ZoÅ¿ŒúW‡ô«ß^y\Z2y7Zî1+ª.U—‘‚9Ï<äWÊ·Ïíeoâjžøba·Y\n[ëº­ Û%æÅÁ‹ ´pÉ 9\ZjŠëD¿>„¶éû«{ÇÚgÃ¿u¿Â¿´…4	éRÚØjL?s5Äˆ¬ºù{c8ó×Ò¾Ôøâ;örø{à¿„úV&³{káKX¯­m¦ýâÝ8VdqÉ‘ˆ\0žžõùðžóY¿Ó®þé²O?ˆ5K(ãŽ4ÜÎÊÎ\0\0sügò¯Ó­Ã:×…>i^½i4Mhé·ójZ³Ã†Òt¬ –áÈó™ F\'ç–ÇÈÄmu­µôØM(A³œý¦ÿ\0oí?Äž&ûGÃ\rÿ\0dÁáxÙ¼KâÁ»\n¤fªŒ…›…É\r’víäÔþý³eˆÃweñVÖÆñ¶²Zjlð¼oé™\0Ü_$Ãû-~Óµÿ\0†5?üðìIáíÓBÑ\'º[cxGÄâm¸.Äõ!Aèµó·Œ|ão‡ž!ŸÂž:ð­þ©Z¶.,uV†T?î°ý\rgYF¼ï¸˜Ã•kÔý¼ðwÆoíûTkOA¨XºçXKÎ8ãk Ó5=\'Å—ðŽÞj6Ú…¬Á•­õ[p%+Ž@Ç\rŸ~kðƒÃþ.ñW…/R÷Ã^%¿°™>ì¶—-Ä^ñðþ\n]ûC|3š+\\Yx®Êö$\ZÜ$È¾âT!‰­šph}«ýå8+Ÿ¥ß¾øF/U“áÿ\0‡¥°Ôt»o¶.É¡¹U”›\nxãÜV‡ÁÏˆZ÷Åÿ\0Úé·škI6‘y\ZÍyq8_0Tõné’0}kä\rþ\n{á?Š~_j~#Ö<+(Ëow?e2·ÊSÍûÊ¸þðù×«þÎ_´ÿ\0ÞË£J×1…fÔ´ù~Ñåû „Ï^y4êÖŽé[¿¡1NþñõE÷öO„5»Õ,C[ÜªÅ$é“zúgô¬ée×µ->iówöUË‚{åcÉò®‚pŽƒB¤v®Z}}µÓu¨Ï?ÚÀ	#åB‘ÐHã¶zUÉ<G¨[êöþ [˜ït¿ìëñŸ-ãÀÚÅ[€GMíU[J½6ž‹ñ!E¡5´ñ¼±]NdY†D«\'9<†;÷ØU¯h·ñ[xoÇ:Œ÷~b˜âšý<Å•ð7T àõëÎk2+{m<±‚v1ÊåÆ[p_eô_jÕÒ<Y«iw„¹Y#‹”Že€õïÓð¯.JVmØÜ>ü!Ñf½CÆÞ\ZðmŠA¢ÜÝ%î—¢[Êø¶‘÷ùˆÎÕBB9É\0+ócöòÖüEû;~ÖÒü]økaq¦iž,‹í·šMÄaPÜÙp„Tå€}Êqóñ_ª0xâÝ^ÞXÙ¤wÃF“xvù$!†ÐyäsßÖ¿=ÿ\0à©¾\n½ø—à3Æ¶Z	·¾Ð$s}kg9ÜGo•‚çµ{”¤½“Ñþg<ÿ\0ˆ¥ØÆÐ<Kàÿ\0Ú;ÀñkšeÏ–ñë°5À1ÈÁïÐŠšïQ¾Ôô	4Û‰|­gL\\^‹8ç\'=uŽG¡¯¾|LñÁÏˆÖ7šMû%µÄÉõ»•ÑŽG¯zúŸÄš­Äš½ŸŒ,€P$\\€pãŸ¡Úi7Î¯ö‘vµ—F|ÙñÛáâèz¼(Ómw[Ü&.dEé.O\'Üÿ\0:ã\"Ôn#Œ$r°QÐ+`WÔºî‘¦Ï-Î—sj’[ÌÄ´l2¤75Á]~Îþ\n¸¸y¡{˜•ŽDk/ôâ¹¹“Ü½c¢>ûÒ|/Š<Mý•$Ÿq¼uû¶ÐƒŸ,´{×ûR|gð?ÂµóRY\'²ÎÊ.\\€0sÿ\0¿i\ráGÃ­N·5ÙV-IC7=Ïv5oöSý”™Ì¿´÷íKâx¿·g\'†ô»Öb¾ëí?y½09=¯jUT»«éþfnÖ×c’Ðô¯ÚÄÞ\ZOø¯ÂÒhÉªb].ÊöŽE‡¢»ËÀôõÆøâ½á-Wñ‰÷Ìa†IHrI}ˆ[n}øö—ÆmwÃÞ7°O\nê($xßÊ–v•vÌ@#\\^â_‚ºjjÚ~3Áö…72Hà°PÛ™Hþ-ÁBçß¯zó+T‹–÷}LÒ¿CÈ¿eï‡ž(ñäúŸÄˆðHu-Fð›ég%D+òFœ|ª>\\ŒW«øI—ÃºÖ#s\r„ÜIÀÇLþ×wàíÃw\ZÖ»-ÝëÙ‰åC‡*p¸Ïé¿<2ž]ÄV,³Û^¹[»ˆ×\0¶>^3Ó®7N¤ï.†¼Ëb·Ãè5Ý^²Z´ [ç tÝÇ=Nâºí3âÌ>\n¸»Ólâi¥P—P[[“n0 uÿ\08®gàOŽ Ñüvž]ï.ï.„q²`y0€KÉÎx.G½zwŠ¾ê÷\ZåÅö‰;.¥.Ä¸\'¨>µp¥?bªÃpvæ³<+ÂV²ÚüO´½´Ó/ „êq˜£‘tŒ¾à$þµÔøçAñ>$¾idÖ–ö×(òÜË÷n*à·ÎzŒ`W¤?Ã‹í*Húi¸F\ZybÁÀ\\œžÝ³ÍXñg%¹¶… ·H¨aÕ°OfÈ8Î+*ŠòjÖkDÏÛÅmgm\rÄ+\ZÇ\Z‡Ž&Àí3^ˆÞ-ðÞ…¦Zßèú\0ò¤.ÿ\0ë~hÜ|¹ã=FkÉõ/izuÊ[]L!YTì’hÊ©Ç`pk‹ø½û\\þÏŸàdñ¿í¥»HË®•`ÆY¤ d.îçÔ+:2«ò-YM®§¸ø£Å6:å¬W:º£_.ttýìŒ‹v0GÔ¥yOÆ_‹¿>Ø\rwãÄk]&ÌüË¦[ÎLÓØ*üÏ× Å|Gñëþ\nßñSÆË üÑSÃ6ûtÛe»qê?…?ŸzùOÄ¾)ñÇÄMn_xÏÄWÚ¥ä§2\\ßÜ4Žß‹ÅjèÊsæžþB×¦ÇØ´çüË\\ñ>›uðóö`ð]¿…´¦/šü°+jä€S9ä`ñ–ÏB+âýbç\\ñ§>±­ê·—.^{‹‰Yä‘RÌÙ$×gð£à‡Ä‹ž\"ƒÂþð}æ§}pØŽ+X²:g,ÇåQ€NI¾Òø!ÿ\0÷øIðªØMñá ñ\'ˆ¥S·H´¼amdàn\nÅ29éýÐ{w­jÖQJ1_%úÿ\0Á*v¹ùéjúâÏi<ÖÓÃ exØ££àŒE{gÂÚbmM‡¾*ùsOp1¾ÃkLÃ‘à,ÊOIÈ2¡Á%Õv©?kÙ3Føëž5>“BÕQŒqj1ZY‡ð$Ê\0Þz€ÿ\0{8¾ øð_ÇŸõa¥xßE’Ùd­.Â“ÊFäls‚0GQÜ\nP’’ó	EÜúSöwøi\'Åöþ¿ÒRxeIµ4@ŒCƒa#8ûã¡ àHÁ¯ |5ðá´:%ï†uÿ\0\\ZßéÒµå´ò&ŽÖåÆå“’¨É8×ÊŸ°ÿ\0í-?ÂÏé·Ð´mªiÒ´6ñÞNDwöŽ 5¸$ádÊçï}Ü‚©_£> Öü#ñCáÝ§Ä¿ÞÛ›Ä/uÑ)d%J¼dëÏËÆ}¸ªåN\r¾w¡ñïÇ/ž6ø\rð|oÒGRººµÒLG\r*vK!Àý•ÀÇ|šø×Tð­ä6Sš¥i²ÆGÔû×ØÞýž<Cûo~Ó·3j,~ðœ©o;1PÈ—‚2:3¹sÇÝSŸLýmñ÷á\'‡ÁÛiž\rÒ&Ñ­-<˜­ÞÝÙ…>Öç¯¿ZºqQ’ÙKä)_ã{¿Èø{þñð«Hñ_ÇÙ~\"x…¢ŽÏÂv2Í“È}²A¶0ûÛc¿6ƒ^ÁñÓâˆÿ\0hÏKàµÄ~>Ôÿ\0³­ˆs‹mÑ˜IpWøFÔgÒÜ©$lÅÍ/àï‚c¿Ùÿ\0[Óô]iPñž«pm¯o`UšÇNE)3±!V0ù`ã à\ZïàŸ<7âm3Pøíâˆe²ºÖmVÇÂÂR?Ðt¸NHÇß•ó+žäç½eR£/wG-¿Oóÿ\0‡Š›×eýÀÿ\0†=›á÷†´¿†~Ó|áÛHãÒ´»e‚ÖÑ—r\0\\¬O$úó\\Çí!ðÀÿ\0<9™ñ#Ãš~­R~å.cXî±÷S.XžÙç<ç¥zsø\\Ê·\rm«A;D…áŽI‘AÁ8ÇW9ãoK©èðjÂv\ZõŸ•$WVW“­»ÛKŒ%ÌRÉÄbDç$,ŒýÖ\nÃŽ«JÉì6ÔÙùÑûLÿ\0Á.|[á\rZKß„sÏ<hçí\Z¸VÛSÉÆãµ_þ¹)ë_2x×á7Ž¾\Zk- øïÂz†•v\0aõ£ÄY{0Ü9±È¯Ù)_IÖ¼]§é·ðŽøjêöŠÛB·˜L’[Ä™”Æ¾\\aßsoÄqÆŠ…P¿|%ðÿ\0Žü+ƒµ7F×´Ÿ,G…íºÌ±rÁ]IC‘÷†>õÔª»^×»ê~ý‰ã#·àoˆþ=øi©[Àž-¿ÒçVµ¥Ã lv ìkô{ãWü\'áç‹-Þÿ\0á‡üS—’ÆÏóÞ{&l‚­—Lã=+â~È_\Z<ªOx[û^œµh¯ç£Ü(ñUªRMj­ê$ÏWøEÿ\0?øƒ¥ÁŸñKÂÖZÚ«s{nµÁûFÌÿ\0Àkè†µ‡‡¿hOéŸ~ZNº†¬Y®¡ÕY#TTRîóóªÄc“Óù»%¬ú}ÛÚ_é’ÂÑœ2<d2ŸBJî~	|MÔ¾üCÑ> xm6ÝhÚ”WPŒã%§ØŒ‚;‚j•\ZM7°ºŸ­sè)¢ÛG£Û[4+l6ˆX’W^i·ÿ\0üOãòÇJG·š@P;)qŒðqyS¾.üeÐ®­tyô.(ŸUµŽæy\'2ªÛî@l¥oè.¾¹¶ðÍÕ–¯+#<ªÈ²n\nC©ÁÒ¸Ü)B¦®ëÈ­v±Ì| {ÿ\0xÏIð~·)¼K¥š[å‰ƒ!ò÷\\d†\\¨*N_lPø»ÿ\0½¯‹eOÅik±?š×ök$JB«\061SÈïšî~ øëRôOiZ,Löž=V½w|Ÿ³³<nHÇ\rïT¾+xÏáçŠ/ü[àû««=Cí–¢/.;„Ê†wc+–Ï=kÓÂ8Î“‹zM;¦Ëoø(Ïì¿¤ü#ø†|gà£\Z^£±Ák¤ŠéµÃ#€¯×x__ü%Óu³)2=¢ƒŽ»Ô\0Q_Qø£áÖ¬žÓü tñw£Üi÷	5ä—?:³¦XômÇ\'Ô×Îÿ\0²ý•þ£àKMë¢ø’âIÔSÎ~Ç¯ ñE)©Nÿ\0\"–‘·ÌÂÕ\ZágYK3Æ	\'¹¨¦Ñû }ñWüu¨ÿ\0êeŸ-¡41ÉÀn*‚c`Äb¹ä¬ìhž‡Dßéÿ\0¶ä6×ß¾ŽÚÈ›xæù–#ŽªÝü+Üiùç_Ãd³8†=\nÀÇcµI‹$ÐfŠ+Õ«ñKÑ~†?a÷Ã9æ½ñl™¦ò´¤hüÖ-°ð23ÐàŸÎ½x žåDð£\nà:ƒEãÏø · ðË2ù¥XßãƒÛ\rY3šSá[›s+ykp¬©»€}qëE¡Ô£ø{usmñÇR’ÞâHÚ;òÙ‚¹#8ÇJúÃW·—®\'»•þq÷ä\'øG­WfádÏâ:y€’\rAd€³|Ïðš~‡§i÷\Zx¼žÆ˜é[Œ¯,O’§9<ç4Q[â†ˆŽÿ\0#åÿ\0ÛãXÕôo„\"}#T¹µ}ÒüöÓ´gîŽêE~`jw77—swpòÈÒÒHå˜Ÿ©¢Šá§þîi‰‰\n®OºOÃÚÍ¤RÄ¬­p•— Ý\rP¾z¬:¦‡¢xcá§„ì|5£ÚéÐÿ\0dòlmÖÜÊ™8@OZç!šhõKGIYJÜeHlp¼ÑEpPþ¼þ#Ó>K&±ã-+JÕ¤k«YÖãÎ¶¹;ã“h%w+dFz\Zçÿ\0à >ðSþÉ^2ü!¥—´GšÑÎŸ`“ÌOß•¹<Žy4Q]0øQ‘ùjLz´eßßvã½~ˆüº¹zµ°¸q¸´có·sÙ[»œz³»1õ,Iäš(«­ð‰ì{‡ìkkoû8Ëqom\ZI<÷’Nè€Íq¹ˆêxŸJîf$ø}ª« `däŸá¢ŠÑ|tþbžïúì|û~O1·ŠÔÌÞWü\":*ù{ŽÜ=Ð.1èØõÇ5ôìÛû­\r­\"ùbŠÄ¼*aÐQErb6^ŸäT>	zÿ\0™éöSMo¨¤–ó4l@db9ô®ÞÃ÷ÚmÚÍó†‚Á¹É(sŸ­VØ/„Î[—ÿ\0ðSmWTÓ¿i½´ýJâi¥Ã%©†f_%üéäÁùO‘è+í¯„·—sZhWÝHÒK§ÄÒ»9%ÉŒIîsE–#â¥è‚—Á/Wù‹/o\'ÓíÄ×r¿ïHOq^Gñ¦ÒÖÆ]9¬­£„âs˜/?/§ÔÑEg_ýàÒ]ûdx?ÂW?³*øŠãÂÚtš„0D°ß=Œfd†@r7ô5ð>cÄöñ×k\\ÆqÁ†EWFøhûËÄ÷—Ø–ßéR~è7•óŸ“ÓÒ½çö-º¹¾øgæÞÜ<Ì.\ZW,G\'ÖŠ*\'ü%èøÙ7íÏÃkbyÿ\0Šòý^â$?¯â21PŽBç€~ÍŒþ\\QE]á?ë©ŸÚþ»¥â›‰ÆƒáxÏ±£}É¸àþèö¯¾\r“¦‰Õ>#Ÿ*8ý%è¢º(|+äJÝú‘“ã2áaø€g¬ËøÓc\'`äô¢ŠSøØ×ÂÿÙ','image/jpeg');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newscategory`
--

DROP TABLE IF EXISTS `newscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newscategory`
--

LOCK TABLES `newscategory` WRITE;
/*!40000 ALTER TABLE `newscategory` DISABLE KEYS */;
INSERT INTO `newscategory` VALUES (3,'PHP'),(4,'C#'),(5,'Others'),(6,'Ð Ð¾Ð±Ð¾Ñ‚Ð°'),(7,'HR'),(12,'C/C++'),(13,'ÐŸÐ¾Ð»Ñ–Ñ‚Ð¸ÐºÐ°');
/*!40000 ALTER TABLE `newscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `USER_ID` int(10) unsigned NOT NULL,
  `AUTHORITY` varchar(45) NOT NULL DEFAULT 'ROLE_USER',
  PRIMARY KEY (`USER_ID`),
  KEY `FK_user_roles` (`USER_ID`),
  CONSTRAINT `FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'ROLE_ADMIN'),(16,'ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `USER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `PASSWORD2` varchar(45) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `USERFULLNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sa','1@s','c4ca4238a0b923820dcc509a6f75849b','1',1,'dassa'),(16,'andrey','q@a','c4ca4238a0b923820dcc509a6f75849b','1',1,'RR');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-10 16:46:27
