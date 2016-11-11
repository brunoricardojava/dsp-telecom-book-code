function [ rx_enc ] = deinterleave(rx_data_matrix)
%
% deinterleave:  
%           This function does deinterleaving of de-multiplexed GSM
%           information bursts, eg. 114 sequential bits as extracted 
%           from a GSM burst. The input is 8 x 114 bit, and the output 
%           is a single 456 bit information block, as deinterleaved from the
%           input.
%
% SYNTAX:   [ rx_enc ] = deinterleave(rx_data_matrix)
%
% INPUT:    rx_data_matrix:
%                 The 'latest' 8 instances of rx_data, which are 114 bit
%                 long, and must be stored in the rows of rx_data_matrix. If
%                 the bursts in the matrix are numbered as they sre
%                 received, the burst in row one has number one, etc.
%
% OUTPUT:   rx_enc: 
%                 A 456 bit datablock, as demultiplexed from the 8 input 
%                 bursts.
%
% WARNINGS: Observe that not all 8 x 114 bits are contained in the output.
%
% TEST(S):  interleave -> deinterleave = 0 Errors.
%
% AUTHOR:   Jan H. Mikkelsen / Arne Norre Ekstr�m
% EMAIL:    hmi@kom.auc.dk / aneks@kom.auc.dk
%
% $Id: deinterleave.m,v 1.4 1997/11/20 11:12:27 aneks Exp $
rx_enc(1)=rx_data_matrix(1,1);
rx_enc(2)=rx_data_matrix(2,99);
rx_enc(3)=rx_data_matrix(3,83);
rx_enc(4)=rx_data_matrix(4,67);
rx_enc(5)=rx_data_matrix(5,52);
rx_enc(6)=rx_data_matrix(6,36);
rx_enc(7)=rx_data_matrix(7,20);
rx_enc(8)=rx_data_matrix(8,4);
rx_enc(9)=rx_data_matrix(1,101);
rx_enc(10)=rx_data_matrix(2,85);
rx_enc(11)=rx_data_matrix(3,69);
rx_enc(12)=rx_data_matrix(4,53);
rx_enc(13)=rx_data_matrix(5,38);
rx_enc(14)=rx_data_matrix(6,22);
rx_enc(15)=rx_data_matrix(7,6);
rx_enc(16)=rx_data_matrix(8,104);
rx_enc(17)=rx_data_matrix(1,87);
rx_enc(18)=rx_data_matrix(2,71);
rx_enc(19)=rx_data_matrix(3,55);
rx_enc(20)=rx_data_matrix(4,39);
rx_enc(21)=rx_data_matrix(5,24);
rx_enc(22)=rx_data_matrix(6,8);
rx_enc(23)=rx_data_matrix(7,106);
rx_enc(24)=rx_data_matrix(8,90);
rx_enc(25)=rx_data_matrix(1,73);
rx_enc(26)=rx_data_matrix(2,57);
rx_enc(27)=rx_data_matrix(3,41);
rx_enc(28)=rx_data_matrix(4,25);
rx_enc(29)=rx_data_matrix(5,10);
rx_enc(30)=rx_data_matrix(6,108);
rx_enc(31)=rx_data_matrix(7,92);
rx_enc(32)=rx_data_matrix(8,76);
rx_enc(33)=rx_data_matrix(1,59);
rx_enc(34)=rx_data_matrix(2,43);
rx_enc(35)=rx_data_matrix(3,27);
rx_enc(36)=rx_data_matrix(4,11);
rx_enc(37)=rx_data_matrix(5,110);
rx_enc(38)=rx_data_matrix(6,94);
rx_enc(39)=rx_data_matrix(7,78);
rx_enc(40)=rx_data_matrix(8,62);
rx_enc(41)=rx_data_matrix(1,45);
rx_enc(42)=rx_data_matrix(2,29);
rx_enc(43)=rx_data_matrix(3,13);
rx_enc(44)=rx_data_matrix(4,111);
rx_enc(45)=rx_data_matrix(5,96);
rx_enc(46)=rx_data_matrix(6,80);
rx_enc(47)=rx_data_matrix(7,64);
rx_enc(48)=rx_data_matrix(8,48);
rx_enc(49)=rx_data_matrix(1,31);
rx_enc(50)=rx_data_matrix(2,15);
rx_enc(51)=rx_data_matrix(3,113);
rx_enc(52)=rx_data_matrix(4,97);
rx_enc(53)=rx_data_matrix(5,82);
rx_enc(54)=rx_data_matrix(6,66);
rx_enc(55)=rx_data_matrix(7,50);
rx_enc(56)=rx_data_matrix(8,34);
rx_enc(57)=rx_data_matrix(1,17);
rx_enc(58)=rx_data_matrix(2,1);
rx_enc(59)=rx_data_matrix(3,99);
rx_enc(60)=rx_data_matrix(4,83);
rx_enc(61)=rx_data_matrix(5,68);
rx_enc(62)=rx_data_matrix(6,52);
rx_enc(63)=rx_data_matrix(7,36);
rx_enc(64)=rx_data_matrix(8,20);
rx_enc(65)=rx_data_matrix(1,3);
rx_enc(66)=rx_data_matrix(2,101);
rx_enc(67)=rx_data_matrix(3,85);
rx_enc(68)=rx_data_matrix(4,69);
rx_enc(69)=rx_data_matrix(5,54);
rx_enc(70)=rx_data_matrix(6,38);
rx_enc(71)=rx_data_matrix(7,22);
rx_enc(72)=rx_data_matrix(8,6);
rx_enc(73)=rx_data_matrix(1,103);
rx_enc(74)=rx_data_matrix(2,87);
rx_enc(75)=rx_data_matrix(3,71);
rx_enc(76)=rx_data_matrix(4,55);
rx_enc(77)=rx_data_matrix(5,40);
rx_enc(78)=rx_data_matrix(6,24);
rx_enc(79)=rx_data_matrix(7,8);
rx_enc(80)=rx_data_matrix(8,106);
rx_enc(81)=rx_data_matrix(1,89);
rx_enc(82)=rx_data_matrix(2,73);
rx_enc(83)=rx_data_matrix(3,57);
rx_enc(84)=rx_data_matrix(4,41);
rx_enc(85)=rx_data_matrix(5,26);
rx_enc(86)=rx_data_matrix(6,10);
rx_enc(87)=rx_data_matrix(7,108);
rx_enc(88)=rx_data_matrix(8,92);
rx_enc(89)=rx_data_matrix(1,75);
rx_enc(90)=rx_data_matrix(2,59);
rx_enc(91)=rx_data_matrix(3,43);
rx_enc(92)=rx_data_matrix(4,27);
rx_enc(93)=rx_data_matrix(5,12);
rx_enc(94)=rx_data_matrix(6,110);
rx_enc(95)=rx_data_matrix(7,94);
rx_enc(96)=rx_data_matrix(8,78);
rx_enc(97)=rx_data_matrix(1,61);
rx_enc(98)=rx_data_matrix(2,45);
rx_enc(99)=rx_data_matrix(3,29);
rx_enc(100)=rx_data_matrix(4,13);
rx_enc(101)=rx_data_matrix(5,112);
rx_enc(102)=rx_data_matrix(6,96);
rx_enc(103)=rx_data_matrix(7,80);
rx_enc(104)=rx_data_matrix(8,64);
rx_enc(105)=rx_data_matrix(1,47);
rx_enc(106)=rx_data_matrix(2,31);
rx_enc(107)=rx_data_matrix(3,15);
rx_enc(108)=rx_data_matrix(4,113);
rx_enc(109)=rx_data_matrix(5,98);
rx_enc(110)=rx_data_matrix(6,82);
rx_enc(111)=rx_data_matrix(7,66);
rx_enc(112)=rx_data_matrix(8,50);
rx_enc(113)=rx_data_matrix(1,33);
rx_enc(114)=rx_data_matrix(2,17);
rx_enc(115)=rx_data_matrix(3,1);
rx_enc(116)=rx_data_matrix(4,99);
rx_enc(117)=rx_data_matrix(5,84);
rx_enc(118)=rx_data_matrix(6,68);
rx_enc(119)=rx_data_matrix(7,52);
rx_enc(120)=rx_data_matrix(8,36);
rx_enc(121)=rx_data_matrix(1,19);
rx_enc(122)=rx_data_matrix(2,3);
rx_enc(123)=rx_data_matrix(3,101);
rx_enc(124)=rx_data_matrix(4,85);
rx_enc(125)=rx_data_matrix(5,70);
rx_enc(126)=rx_data_matrix(6,54);
rx_enc(127)=rx_data_matrix(7,38);
rx_enc(128)=rx_data_matrix(8,22);
rx_enc(129)=rx_data_matrix(1,5);
rx_enc(130)=rx_data_matrix(2,103);
rx_enc(131)=rx_data_matrix(3,87);
rx_enc(132)=rx_data_matrix(4,71);
rx_enc(133)=rx_data_matrix(5,56);
rx_enc(134)=rx_data_matrix(6,40);
rx_enc(135)=rx_data_matrix(7,24);
rx_enc(136)=rx_data_matrix(8,8);
rx_enc(137)=rx_data_matrix(1,105);
rx_enc(138)=rx_data_matrix(2,89);
rx_enc(139)=rx_data_matrix(3,73);
rx_enc(140)=rx_data_matrix(4,57);
rx_enc(141)=rx_data_matrix(5,42);
rx_enc(142)=rx_data_matrix(6,26);
rx_enc(143)=rx_data_matrix(7,10);
rx_enc(144)=rx_data_matrix(8,108);
rx_enc(145)=rx_data_matrix(1,91);
rx_enc(146)=rx_data_matrix(2,75);
rx_enc(147)=rx_data_matrix(3,59);
rx_enc(148)=rx_data_matrix(4,43);
rx_enc(149)=rx_data_matrix(5,28);
rx_enc(150)=rx_data_matrix(6,12);
rx_enc(151)=rx_data_matrix(7,110);
rx_enc(152)=rx_data_matrix(8,94);
rx_enc(153)=rx_data_matrix(1,77);
rx_enc(154)=rx_data_matrix(2,61);
rx_enc(155)=rx_data_matrix(3,45);
rx_enc(156)=rx_data_matrix(4,29);
rx_enc(157)=rx_data_matrix(5,14);
rx_enc(158)=rx_data_matrix(6,112);
rx_enc(159)=rx_data_matrix(7,96);
rx_enc(160)=rx_data_matrix(8,80);
rx_enc(161)=rx_data_matrix(1,63);
rx_enc(162)=rx_data_matrix(2,47);
rx_enc(163)=rx_data_matrix(3,31);
rx_enc(164)=rx_data_matrix(4,15);
rx_enc(165)=rx_data_matrix(5,114);
rx_enc(166)=rx_data_matrix(6,98);
rx_enc(167)=rx_data_matrix(7,82);
rx_enc(168)=rx_data_matrix(8,66);
rx_enc(169)=rx_data_matrix(1,49);
rx_enc(170)=rx_data_matrix(2,33);
rx_enc(171)=rx_data_matrix(3,17);
rx_enc(172)=rx_data_matrix(4,1);
rx_enc(173)=rx_data_matrix(5,100);
rx_enc(174)=rx_data_matrix(6,84);
rx_enc(175)=rx_data_matrix(7,68);
rx_enc(176)=rx_data_matrix(8,52);
rx_enc(177)=rx_data_matrix(1,35);
rx_enc(178)=rx_data_matrix(2,19);
rx_enc(179)=rx_data_matrix(3,3);
rx_enc(180)=rx_data_matrix(4,101);
rx_enc(181)=rx_data_matrix(5,86);
rx_enc(182)=rx_data_matrix(6,70);
rx_enc(183)=rx_data_matrix(7,54);
rx_enc(184)=rx_data_matrix(8,38);
rx_enc(185)=rx_data_matrix(1,21);
rx_enc(186)=rx_data_matrix(2,5);
rx_enc(187)=rx_data_matrix(3,103);
rx_enc(188)=rx_data_matrix(4,87);
rx_enc(189)=rx_data_matrix(5,72);
rx_enc(190)=rx_data_matrix(6,56);
rx_enc(191)=rx_data_matrix(7,40);
rx_enc(192)=rx_data_matrix(8,24);
rx_enc(193)=rx_data_matrix(1,7);
rx_enc(194)=rx_data_matrix(2,105);
rx_enc(195)=rx_data_matrix(3,89);
rx_enc(196)=rx_data_matrix(4,73);
rx_enc(197)=rx_data_matrix(5,58);
rx_enc(198)=rx_data_matrix(6,42);
rx_enc(199)=rx_data_matrix(7,26);
rx_enc(200)=rx_data_matrix(8,10);
rx_enc(201)=rx_data_matrix(1,107);
rx_enc(202)=rx_data_matrix(2,91);
rx_enc(203)=rx_data_matrix(3,75);
rx_enc(204)=rx_data_matrix(4,59);
rx_enc(205)=rx_data_matrix(5,44);
rx_enc(206)=rx_data_matrix(6,28);
rx_enc(207)=rx_data_matrix(7,12);
rx_enc(208)=rx_data_matrix(8,110);
rx_enc(209)=rx_data_matrix(1,93);
rx_enc(210)=rx_data_matrix(2,77);
rx_enc(211)=rx_data_matrix(3,61);
rx_enc(212)=rx_data_matrix(4,45);
rx_enc(213)=rx_data_matrix(5,30);
rx_enc(214)=rx_data_matrix(6,14);
rx_enc(215)=rx_data_matrix(7,112);
rx_enc(216)=rx_data_matrix(8,96);
rx_enc(217)=rx_data_matrix(1,79);
rx_enc(218)=rx_data_matrix(2,63);
rx_enc(219)=rx_data_matrix(3,47);
rx_enc(220)=rx_data_matrix(4,31);
rx_enc(221)=rx_data_matrix(5,16);
rx_enc(222)=rx_data_matrix(6,114);
rx_enc(223)=rx_data_matrix(7,98);
rx_enc(224)=rx_data_matrix(8,82);
rx_enc(225)=rx_data_matrix(1,65);
rx_enc(226)=rx_data_matrix(2,49);
rx_enc(227)=rx_data_matrix(3,33);
rx_enc(228)=rx_data_matrix(4,17);
rx_enc(229)=rx_data_matrix(5,2);
rx_enc(230)=rx_data_matrix(6,100);
rx_enc(231)=rx_data_matrix(7,84);
rx_enc(232)=rx_data_matrix(8,68);
rx_enc(233)=rx_data_matrix(1,51);
rx_enc(234)=rx_data_matrix(2,35);
rx_enc(235)=rx_data_matrix(3,19);
rx_enc(236)=rx_data_matrix(4,3);
rx_enc(237)=rx_data_matrix(5,102);
rx_enc(238)=rx_data_matrix(6,86);
rx_enc(239)=rx_data_matrix(7,70);
rx_enc(240)=rx_data_matrix(8,54);
rx_enc(241)=rx_data_matrix(1,37);
rx_enc(242)=rx_data_matrix(2,21);
rx_enc(243)=rx_data_matrix(3,5);
rx_enc(244)=rx_data_matrix(4,103);
rx_enc(245)=rx_data_matrix(5,88);
rx_enc(246)=rx_data_matrix(6,72);
rx_enc(247)=rx_data_matrix(7,56);
rx_enc(248)=rx_data_matrix(8,40);
rx_enc(249)=rx_data_matrix(1,23);
rx_enc(250)=rx_data_matrix(2,7);
rx_enc(251)=rx_data_matrix(3,105);
rx_enc(252)=rx_data_matrix(4,89);
rx_enc(253)=rx_data_matrix(5,74);
rx_enc(254)=rx_data_matrix(6,58);
rx_enc(255)=rx_data_matrix(7,42);
rx_enc(256)=rx_data_matrix(8,26);
rx_enc(257)=rx_data_matrix(1,9);
rx_enc(258)=rx_data_matrix(2,107);
rx_enc(259)=rx_data_matrix(3,91);
rx_enc(260)=rx_data_matrix(4,75);
rx_enc(261)=rx_data_matrix(5,60);
rx_enc(262)=rx_data_matrix(6,44);
rx_enc(263)=rx_data_matrix(7,28);
rx_enc(264)=rx_data_matrix(8,12);
rx_enc(265)=rx_data_matrix(1,109);
rx_enc(266)=rx_data_matrix(2,93);
rx_enc(267)=rx_data_matrix(3,77);
rx_enc(268)=rx_data_matrix(4,61);
rx_enc(269)=rx_data_matrix(5,46);
rx_enc(270)=rx_data_matrix(6,30);
rx_enc(271)=rx_data_matrix(7,14);
rx_enc(272)=rx_data_matrix(8,112);
rx_enc(273)=rx_data_matrix(1,95);
rx_enc(274)=rx_data_matrix(2,79);
rx_enc(275)=rx_data_matrix(3,63);
rx_enc(276)=rx_data_matrix(4,47);
rx_enc(277)=rx_data_matrix(5,32);
rx_enc(278)=rx_data_matrix(6,16);
rx_enc(279)=rx_data_matrix(7,114);
rx_enc(280)=rx_data_matrix(8,98);
rx_enc(281)=rx_data_matrix(1,81);
rx_enc(282)=rx_data_matrix(2,65);
rx_enc(283)=rx_data_matrix(3,49);
rx_enc(284)=rx_data_matrix(4,33);
rx_enc(285)=rx_data_matrix(5,18);
rx_enc(286)=rx_data_matrix(6,2);
rx_enc(287)=rx_data_matrix(7,100);
rx_enc(288)=rx_data_matrix(8,84);
rx_enc(289)=rx_data_matrix(1,67);
rx_enc(290)=rx_data_matrix(2,51);
rx_enc(291)=rx_data_matrix(3,35);
rx_enc(292)=rx_data_matrix(4,19);
rx_enc(293)=rx_data_matrix(5,4);
rx_enc(294)=rx_data_matrix(6,102);
rx_enc(295)=rx_data_matrix(7,86);
rx_enc(296)=rx_data_matrix(8,70);
rx_enc(297)=rx_data_matrix(1,53);
rx_enc(298)=rx_data_matrix(2,37);
rx_enc(299)=rx_data_matrix(3,21);
rx_enc(300)=rx_data_matrix(4,5);
rx_enc(301)=rx_data_matrix(5,104);
rx_enc(302)=rx_data_matrix(6,88);
rx_enc(303)=rx_data_matrix(7,72);
rx_enc(304)=rx_data_matrix(8,56);
rx_enc(305)=rx_data_matrix(1,39);
rx_enc(306)=rx_data_matrix(2,23);
rx_enc(307)=rx_data_matrix(3,7);
rx_enc(308)=rx_data_matrix(4,105);
rx_enc(309)=rx_data_matrix(5,90);
rx_enc(310)=rx_data_matrix(6,74);
rx_enc(311)=rx_data_matrix(7,58);
rx_enc(312)=rx_data_matrix(8,42);
rx_enc(313)=rx_data_matrix(1,25);
rx_enc(314)=rx_data_matrix(2,9);
rx_enc(315)=rx_data_matrix(3,107);
rx_enc(316)=rx_data_matrix(4,91);
rx_enc(317)=rx_data_matrix(5,76);
rx_enc(318)=rx_data_matrix(6,60);
rx_enc(319)=rx_data_matrix(7,44);
rx_enc(320)=rx_data_matrix(8,28);
rx_enc(321)=rx_data_matrix(1,11);
rx_enc(322)=rx_data_matrix(2,109);
rx_enc(323)=rx_data_matrix(3,93);
rx_enc(324)=rx_data_matrix(4,77);
rx_enc(325)=rx_data_matrix(5,62);
rx_enc(326)=rx_data_matrix(6,46);
rx_enc(327)=rx_data_matrix(7,30);
rx_enc(328)=rx_data_matrix(8,14);
rx_enc(329)=rx_data_matrix(1,111);
rx_enc(330)=rx_data_matrix(2,95);
rx_enc(331)=rx_data_matrix(3,79);
rx_enc(332)=rx_data_matrix(4,63);
rx_enc(333)=rx_data_matrix(5,48);
rx_enc(334)=rx_data_matrix(6,32);
rx_enc(335)=rx_data_matrix(7,16);
rx_enc(336)=rx_data_matrix(8,114);
rx_enc(337)=rx_data_matrix(1,97);
rx_enc(338)=rx_data_matrix(2,81);
rx_enc(339)=rx_data_matrix(3,65);
rx_enc(340)=rx_data_matrix(4,49);
rx_enc(341)=rx_data_matrix(5,34);
rx_enc(342)=rx_data_matrix(6,18);
rx_enc(343)=rx_data_matrix(7,2);
rx_enc(344)=rx_data_matrix(8,100);
rx_enc(345)=rx_data_matrix(1,83);
rx_enc(346)=rx_data_matrix(2,67);
rx_enc(347)=rx_data_matrix(3,51);
rx_enc(348)=rx_data_matrix(4,35);
rx_enc(349)=rx_data_matrix(5,20);
rx_enc(350)=rx_data_matrix(6,4);
rx_enc(351)=rx_data_matrix(7,102);
rx_enc(352)=rx_data_matrix(8,86);
rx_enc(353)=rx_data_matrix(1,69);
rx_enc(354)=rx_data_matrix(2,53);
rx_enc(355)=rx_data_matrix(3,37);
rx_enc(356)=rx_data_matrix(4,21);
rx_enc(357)=rx_data_matrix(5,6);
rx_enc(358)=rx_data_matrix(6,104);
rx_enc(359)=rx_data_matrix(7,88);
rx_enc(360)=rx_data_matrix(8,72);
rx_enc(361)=rx_data_matrix(1,55);
rx_enc(362)=rx_data_matrix(2,39);
rx_enc(363)=rx_data_matrix(3,23);
rx_enc(364)=rx_data_matrix(4,7);
rx_enc(365)=rx_data_matrix(5,106);
rx_enc(366)=rx_data_matrix(6,90);
rx_enc(367)=rx_data_matrix(7,74);
rx_enc(368)=rx_data_matrix(8,58);
rx_enc(369)=rx_data_matrix(1,41);
rx_enc(370)=rx_data_matrix(2,25);
rx_enc(371)=rx_data_matrix(3,9);
rx_enc(372)=rx_data_matrix(4,107);
rx_enc(373)=rx_data_matrix(5,92);
rx_enc(374)=rx_data_matrix(6,76);
rx_enc(375)=rx_data_matrix(7,60);
rx_enc(376)=rx_data_matrix(8,44);
rx_enc(377)=rx_data_matrix(1,27);
rx_enc(378)=rx_data_matrix(2,11);
rx_enc(379)=rx_data_matrix(3,109);
rx_enc(380)=rx_data_matrix(4,93);
rx_enc(381)=rx_data_matrix(5,78);
rx_enc(382)=rx_data_matrix(6,62);
rx_enc(383)=rx_data_matrix(7,46);
rx_enc(384)=rx_data_matrix(8,30);
rx_enc(385)=rx_data_matrix(1,13);
rx_enc(386)=rx_data_matrix(2,111);
rx_enc(387)=rx_data_matrix(3,95);
rx_enc(388)=rx_data_matrix(4,79);
rx_enc(389)=rx_data_matrix(5,64);
rx_enc(390)=rx_data_matrix(6,48);
rx_enc(391)=rx_data_matrix(7,32);
rx_enc(392)=rx_data_matrix(8,16);
rx_enc(393)=rx_data_matrix(1,113);
rx_enc(394)=rx_data_matrix(2,97);
rx_enc(395)=rx_data_matrix(3,81);
rx_enc(396)=rx_data_matrix(4,65);
rx_enc(397)=rx_data_matrix(5,50);
rx_enc(398)=rx_data_matrix(6,34);
rx_enc(399)=rx_data_matrix(7,18);
rx_enc(400)=rx_data_matrix(8,2);
rx_enc(401)=rx_data_matrix(1,99);
rx_enc(402)=rx_data_matrix(2,83);
rx_enc(403)=rx_data_matrix(3,67);
rx_enc(404)=rx_data_matrix(4,51);
rx_enc(405)=rx_data_matrix(5,36);
rx_enc(406)=rx_data_matrix(6,20);
rx_enc(407)=rx_data_matrix(7,4);
rx_enc(408)=rx_data_matrix(8,102);
rx_enc(409)=rx_data_matrix(1,85);
rx_enc(410)=rx_data_matrix(2,69);
rx_enc(411)=rx_data_matrix(3,53);
rx_enc(412)=rx_data_matrix(4,37);
rx_enc(413)=rx_data_matrix(5,22);
rx_enc(414)=rx_data_matrix(6,6);
rx_enc(415)=rx_data_matrix(7,104);
rx_enc(416)=rx_data_matrix(8,88);
rx_enc(417)=rx_data_matrix(1,71);
rx_enc(418)=rx_data_matrix(2,55);
rx_enc(419)=rx_data_matrix(3,39);
rx_enc(420)=rx_data_matrix(4,23);
rx_enc(421)=rx_data_matrix(5,8);
rx_enc(422)=rx_data_matrix(6,106);
rx_enc(423)=rx_data_matrix(7,90);
rx_enc(424)=rx_data_matrix(8,74);
rx_enc(425)=rx_data_matrix(1,57);
rx_enc(426)=rx_data_matrix(2,41);
rx_enc(427)=rx_data_matrix(3,25);
rx_enc(428)=rx_data_matrix(4,9);
rx_enc(429)=rx_data_matrix(5,108);
rx_enc(430)=rx_data_matrix(6,92);
rx_enc(431)=rx_data_matrix(7,76);
rx_enc(432)=rx_data_matrix(8,60);
rx_enc(433)=rx_data_matrix(1,43);
rx_enc(434)=rx_data_matrix(2,27);
rx_enc(435)=rx_data_matrix(3,11);
rx_enc(436)=rx_data_matrix(4,109);
rx_enc(437)=rx_data_matrix(5,94);
rx_enc(438)=rx_data_matrix(6,78);
rx_enc(439)=rx_data_matrix(7,62);
rx_enc(440)=rx_data_matrix(8,46);
rx_enc(441)=rx_data_matrix(1,29);
rx_enc(442)=rx_data_matrix(2,13);
rx_enc(443)=rx_data_matrix(3,111);
rx_enc(444)=rx_data_matrix(4,95);
rx_enc(445)=rx_data_matrix(5,80);
rx_enc(446)=rx_data_matrix(6,64);
rx_enc(447)=rx_data_matrix(7,48);
rx_enc(448)=rx_data_matrix(8,32);
rx_enc(449)=rx_data_matrix(1,15);
rx_enc(450)=rx_data_matrix(2,113);
rx_enc(451)=rx_data_matrix(3,97);
rx_enc(452)=rx_data_matrix(4,81);
rx_enc(453)=rx_data_matrix(5,66);
rx_enc(454)=rx_data_matrix(6,50);
rx_enc(455)=rx_data_matrix(7,34);
rx_enc(456)=rx_data_matrix(8,18);