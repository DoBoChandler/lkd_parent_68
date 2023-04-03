/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : lkd_new

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

*/
create database if not exists `lkd`;
use `lkd`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父Id',
  `area_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '区域名称',
  `ad_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '地区编码',
  `city_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市区号',
  `area_level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3726 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES (1, 0, '河南省', '410000', '', 'province');
INSERT INTO `tb_area` VALUES (2, 1, '洛阳市', '410300', '0379', 'city');
INSERT INTO `tb_area` VALUES (3, 2, '新安县', '410323', '0379', 'district');
INSERT INTO `tb_area` VALUES (4, 2, '栾川县', '410324', '0379', 'district');
INSERT INTO `tb_area` VALUES (5, 2, '汝阳县', '410326', '0379', 'district');
INSERT INTO `tb_area` VALUES (6, 2, '涧西区', '410305', '0379', 'district');
INSERT INTO `tb_area` VALUES (7, 2, '伊川县', '410329', '0379', 'district');
INSERT INTO `tb_area` VALUES (8, 2, '吉利区', '410306', '0379', 'district');
INSERT INTO `tb_area` VALUES (9, 2, '宜阳县', '410327', '0379', 'district');
INSERT INTO `tb_area` VALUES (10, 2, '洛宁县', '410328', '0379', 'district');
INSERT INTO `tb_area` VALUES (11, 2, '偃师市', '410381', '0379', 'district');
INSERT INTO `tb_area` VALUES (12, 2, '瀍河回族区', '410304', '0379', 'district');
INSERT INTO `tb_area` VALUES (13, 2, '洛龙区', '410311', '0379', 'district');
INSERT INTO `tb_area` VALUES (14, 2, '老城区', '410302', '0379', 'district');
INSERT INTO `tb_area` VALUES (15, 2, '西工区', '410303', '0379', 'district');
INSERT INTO `tb_area` VALUES (16, 2, '嵩县', '410325', '0379', 'district');
INSERT INTO `tb_area` VALUES (17, 2, '孟津县', '410322', '0379', 'district');
INSERT INTO `tb_area` VALUES (18, 1, '三门峡市', '411200', '0398', 'city');
INSERT INTO `tb_area` VALUES (19, 18, '渑池县', '411221', '0398', 'district');
INSERT INTO `tb_area` VALUES (20, 18, '义马市', '411281', '0398', 'district');
INSERT INTO `tb_area` VALUES (21, 18, '卢氏县', '411224', '0398', 'district');
INSERT INTO `tb_area` VALUES (22, 18, '湖滨区', '411202', '0398', 'district');
INSERT INTO `tb_area` VALUES (23, 18, '灵宝市', '411282', '0398', 'district');
INSERT INTO `tb_area` VALUES (24, 18, '陕州区', '411203', '0398', 'district');
INSERT INTO `tb_area` VALUES (25, 1, '漯河市', '411100', '0395', 'city');
INSERT INTO `tb_area` VALUES (26, 25, '临颍县', '411122', '0395', 'district');
INSERT INTO `tb_area` VALUES (27, 25, '舞阳县', '411121', '0395', 'district');
INSERT INTO `tb_area` VALUES (28, 25, '召陵区', '411104', '0395', 'district');
INSERT INTO `tb_area` VALUES (29, 25, '源汇区', '411102', '0395', 'district');
INSERT INTO `tb_area` VALUES (30, 25, '郾城区', '411103', '0395', 'district');
INSERT INTO `tb_area` VALUES (31, 1, '许昌市', '411000', '0374', 'city');
INSERT INTO `tb_area` VALUES (32, 31, '建安区', '411003', '0374', 'district');
INSERT INTO `tb_area` VALUES (33, 31, '魏都区', '411002', '0374', 'district');
INSERT INTO `tb_area` VALUES (34, 31, '长葛市', '411082', '0374', 'district');
INSERT INTO `tb_area` VALUES (35, 31, '禹州市', '411081', '0374', 'district');
INSERT INTO `tb_area` VALUES (36, 31, '鄢陵县', '411024', '0374', 'district');
INSERT INTO `tb_area` VALUES (37, 31, '襄城县', '411025', '0374', 'district');
INSERT INTO `tb_area` VALUES (38, 1, '南阳市', '411300', '0377', 'city');
INSERT INTO `tb_area` VALUES (39, 38, '西峡县', '411323', '0377', 'district');
INSERT INTO `tb_area` VALUES (40, 38, '卧龙区', '411303', '0377', 'district');
INSERT INTO `tb_area` VALUES (41, 38, '南召县', '411321', '0377', 'district');
INSERT INTO `tb_area` VALUES (42, 38, '淅川县', '411326', '0377', 'district');
INSERT INTO `tb_area` VALUES (43, 38, '社旗县', '411327', '0377', 'district');
INSERT INTO `tb_area` VALUES (44, 38, '唐河县', '411328', '0377', 'district');
INSERT INTO `tb_area` VALUES (45, 38, '桐柏县', '411330', '0377', 'district');
INSERT INTO `tb_area` VALUES (46, 38, '内乡县', '411325', '0377', 'district');
INSERT INTO `tb_area` VALUES (47, 38, '镇平县', '411324', '0377', 'district');
INSERT INTO `tb_area` VALUES (48, 38, '新野县', '411329', '0377', 'district');
INSERT INTO `tb_area` VALUES (49, 38, '方城县', '411322', '0377', 'district');
INSERT INTO `tb_area` VALUES (50, 38, '邓州市', '411381', '0377', 'district');
INSERT INTO `tb_area` VALUES (51, 38, '宛城区', '411302', '0377', 'district');
INSERT INTO `tb_area` VALUES (52, 1, '信阳市', '411500', '0376', 'city');
INSERT INTO `tb_area` VALUES (53, 52, '淮滨县', '411527', '0376', 'district');
INSERT INTO `tb_area` VALUES (54, 52, '罗山县', '411521', '0376', 'district');
INSERT INTO `tb_area` VALUES (55, 52, '光山县', '411522', '0376', 'district');
INSERT INTO `tb_area` VALUES (56, 52, '潢川县', '411526', '0376', 'district');
INSERT INTO `tb_area` VALUES (57, 52, '浉河区', '411502', '0376', 'district');
INSERT INTO `tb_area` VALUES (58, 52, '固始县', '411525', '0376', 'district');
INSERT INTO `tb_area` VALUES (59, 52, '商城县', '411524', '0376', 'district');
INSERT INTO `tb_area` VALUES (60, 52, '新县', '411523', '0376', 'district');
INSERT INTO `tb_area` VALUES (61, 52, '息县', '411528', '0376', 'district');
INSERT INTO `tb_area` VALUES (62, 52, '平桥区', '411503', '0376', 'district');
INSERT INTO `tb_area` VALUES (63, 1, '济源市', '419001', '1391', 'city');
INSERT INTO `tb_area` VALUES (64, 63, '济源市坡头镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (65, 63, '济源市梨林镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (66, 63, '济源市思礼镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (67, 63, '济源市大峪镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (68, 63, '济源市五龙口镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (69, 63, '济源市王屋镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (70, 63, '济源市玉泉街道', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (71, 63, '济源市轵城镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (72, 63, '济源市济水街道', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (73, 63, '济源市沁园街道', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (74, 63, '济源市下冶镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (75, 63, '济源市克井镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (76, 63, '济源市天坛街道', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (77, 63, '济源市邵原镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (78, 63, '济源市北海街道', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (79, 63, '济源市承留镇', '419001', '1391', 'street');
INSERT INTO `tb_area` VALUES (80, 1, '驻马店市', '411700', '0396', 'city');
INSERT INTO `tb_area` VALUES (81, 80, '上蔡县', '411722', '0396', 'district');
INSERT INTO `tb_area` VALUES (82, 80, '汝南县', '411727', '0396', 'district');
INSERT INTO `tb_area` VALUES (83, 80, '西平县', '411721', '0396', 'district');
INSERT INTO `tb_area` VALUES (84, 80, '平舆县', '411723', '0396', 'district');
INSERT INTO `tb_area` VALUES (85, 80, '新蔡县', '411729', '0396', 'district');
INSERT INTO `tb_area` VALUES (86, 80, '遂平县', '411728', '0396', 'district');
INSERT INTO `tb_area` VALUES (87, 80, '泌阳县', '411726', '0396', 'district');
INSERT INTO `tb_area` VALUES (88, 80, '确山县', '411725', '0396', 'district');
INSERT INTO `tb_area` VALUES (89, 80, '驿城区', '411702', '0396', 'district');
INSERT INTO `tb_area` VALUES (90, 80, '正阳县', '411724', '0396', 'district');
INSERT INTO `tb_area` VALUES (91, 1, '濮阳市', '410900', '0393', 'city');
INSERT INTO `tb_area` VALUES (92, 91, '南乐县', '410923', '0393', 'district');
INSERT INTO `tb_area` VALUES (93, 91, '台前县', '410927', '0393', 'district');
INSERT INTO `tb_area` VALUES (94, 91, '范县', '410926', '0393', 'district');
INSERT INTO `tb_area` VALUES (95, 91, '濮阳县', '410928', '0393', 'district');
INSERT INTO `tb_area` VALUES (96, 91, '华龙区', '410902', '0393', 'district');
INSERT INTO `tb_area` VALUES (97, 91, '清丰县', '410922', '0393', 'district');
INSERT INTO `tb_area` VALUES (98, 1, '焦作市', '410800', '0391', 'city');
INSERT INTO `tb_area` VALUES (99, 98, '沁阳市', '410882', '0391', 'district');
INSERT INTO `tb_area` VALUES (100, 98, '马村区', '410804', '0391', 'district');
INSERT INTO `tb_area` VALUES (101, 98, '孟州市', '410883', '0391', 'district');
INSERT INTO `tb_area` VALUES (102, 98, '温县', '410825', '0391', 'district');
INSERT INTO `tb_area` VALUES (103, 98, '博爱县', '410822', '0391', 'district');
INSERT INTO `tb_area` VALUES (104, 98, '武陟县', '410823', '0391', 'district');
INSERT INTO `tb_area` VALUES (105, 98, '修武县', '410821', '0391', 'district');
INSERT INTO `tb_area` VALUES (106, 98, '山阳区', '410811', '0391', 'district');
INSERT INTO `tb_area` VALUES (107, 98, '中站区', '410803', '0391', 'district');
INSERT INTO `tb_area` VALUES (108, 98, '解放区', '410802', '0391', 'district');
INSERT INTO `tb_area` VALUES (109, 1, '鹤壁市', '410600', '0392', 'city');
INSERT INTO `tb_area` VALUES (110, 109, '鹤山区', '410602', '0392', 'district');
INSERT INTO `tb_area` VALUES (111, 109, '淇县', '410622', '0392', 'district');
INSERT INTO `tb_area` VALUES (112, 109, '山城区', '410603', '0392', 'district');
INSERT INTO `tb_area` VALUES (113, 109, '淇滨区', '410611', '0392', 'district');
INSERT INTO `tb_area` VALUES (114, 109, '浚县', '410621', '0392', 'district');
INSERT INTO `tb_area` VALUES (115, 1, '新乡市', '410700', '0373', 'city');
INSERT INTO `tb_area` VALUES (116, 115, '辉县市', '410782', '0373', 'district');
INSERT INTO `tb_area` VALUES (117, 115, '凤泉区', '410704', '0373', 'district');
INSERT INTO `tb_area` VALUES (118, 115, '获嘉县', '410724', '0373', 'district');
INSERT INTO `tb_area` VALUES (119, 115, '延津县', '410726', '0373', 'district');
INSERT INTO `tb_area` VALUES (120, 115, '封丘县', '410727', '0373', 'district');
INSERT INTO `tb_area` VALUES (121, 115, '长垣县', '410728', '0373', 'district');
INSERT INTO `tb_area` VALUES (122, 115, '原阳县', '410725', '0373', 'district');
INSERT INTO `tb_area` VALUES (123, 115, '卫辉市', '410781', '0373', 'district');
INSERT INTO `tb_area` VALUES (124, 115, '牧野区', '410711', '0373', 'district');
INSERT INTO `tb_area` VALUES (125, 115, '新乡县', '410721', '0373', 'district');
INSERT INTO `tb_area` VALUES (126, 115, '卫滨区', '410703', '0373', 'district');
INSERT INTO `tb_area` VALUES (127, 115, '红旗区', '410702', '0373', 'district');
INSERT INTO `tb_area` VALUES (128, 1, '平顶山市', '410400', '0375', 'city');
INSERT INTO `tb_area` VALUES (129, 128, '石龙区', '410404', '0375', 'district');
INSERT INTO `tb_area` VALUES (130, 128, '卫东区', '410403', '0375', 'district');
INSERT INTO `tb_area` VALUES (131, 128, '湛河区', '410411', '0375', 'district');
INSERT INTO `tb_area` VALUES (132, 128, '鲁山县', '410423', '0375', 'district');
INSERT INTO `tb_area` VALUES (133, 128, '舞钢市', '410481', '0375', 'district');
INSERT INTO `tb_area` VALUES (134, 128, '叶县', '410422', '0375', 'district');
INSERT INTO `tb_area` VALUES (135, 128, '新华区', '410402', '0375', 'district');
INSERT INTO `tb_area` VALUES (136, 128, '宝丰县', '410421', '0375', 'district');
INSERT INTO `tb_area` VALUES (137, 128, '汝州市', '410482', '0375', 'district');
INSERT INTO `tb_area` VALUES (138, 128, '郏县', '410425', '0375', 'district');
INSERT INTO `tb_area` VALUES (139, 1, '周口市', '411600', '0394', 'city');
INSERT INTO `tb_area` VALUES (140, 139, '鹿邑县', '411628', '0394', 'district');
INSERT INTO `tb_area` VALUES (141, 139, '郸城县', '411625', '0394', 'district');
INSERT INTO `tb_area` VALUES (142, 139, '沈丘县', '411624', '0394', 'district');
INSERT INTO `tb_area` VALUES (143, 139, '扶沟县', '411621', '0394', 'district');
INSERT INTO `tb_area` VALUES (144, 139, '淮阳县', '411626', '0394', 'district');
INSERT INTO `tb_area` VALUES (145, 139, '项城市', '411681', '0394', 'district');
INSERT INTO `tb_area` VALUES (146, 139, '太康县', '411627', '0394', 'district');
INSERT INTO `tb_area` VALUES (147, 139, '商水县', '411623', '0394', 'district');
INSERT INTO `tb_area` VALUES (148, 139, '川汇区', '411602', '0394', 'district');
INSERT INTO `tb_area` VALUES (149, 139, '西华县', '411622', '0394', 'district');
INSERT INTO `tb_area` VALUES (150, 1, '商丘市', '411400', '0370', 'city');
INSERT INTO `tb_area` VALUES (151, 150, '宁陵县', '411423', '0370', 'district');
INSERT INTO `tb_area` VALUES (152, 150, '柘城县', '411424', '0370', 'district');
INSERT INTO `tb_area` VALUES (153, 150, '梁园区', '411402', '0370', 'district');
INSERT INTO `tb_area` VALUES (154, 150, '睢阳区', '411403', '0370', 'district');
INSERT INTO `tb_area` VALUES (155, 150, '夏邑县', '411426', '0370', 'district');
INSERT INTO `tb_area` VALUES (156, 150, '永城市', '411481', '0370', 'district');
INSERT INTO `tb_area` VALUES (157, 150, '民权县', '411421', '0370', 'district');
INSERT INTO `tb_area` VALUES (158, 150, '睢县', '411422', '0370', 'district');
INSERT INTO `tb_area` VALUES (159, 150, '虞城县', '411425', '0370', 'district');
INSERT INTO `tb_area` VALUES (160, 1, '开封市', '410200', '0378', 'city');
INSERT INTO `tb_area` VALUES (161, 160, '兰考县', '410225', '0378', 'district');
INSERT INTO `tb_area` VALUES (162, 160, '祥符区', '410212', '0378', 'district');
INSERT INTO `tb_area` VALUES (163, 160, '顺河回族区', '410203', '0378', 'district');
INSERT INTO `tb_area` VALUES (164, 160, '禹王台区', '410205', '0378', 'district');
INSERT INTO `tb_area` VALUES (165, 160, '通许县', '410222', '0378', 'district');
INSERT INTO `tb_area` VALUES (166, 160, '鼓楼区', '410204', '0378', 'district');
INSERT INTO `tb_area` VALUES (167, 160, '龙亭区', '410202', '0378', 'district');
INSERT INTO `tb_area` VALUES (168, 160, '杞县', '410221', '0378', 'district');
INSERT INTO `tb_area` VALUES (169, 160, '尉氏县', '410223', '0378', 'district');
INSERT INTO `tb_area` VALUES (170, 1, '郑州市', '410100', '0371', 'city');
INSERT INTO `tb_area` VALUES (171, 170, '巩义市', '410181', '0371', 'district');
INSERT INTO `tb_area` VALUES (172, 170, '登封市', '410185', '0371', 'district');
INSERT INTO `tb_area` VALUES (173, 170, '金水区', '410105', '0371', 'district');
INSERT INTO `tb_area` VALUES (174, 170, '荥阳市', '410182', '0371', 'district');
INSERT INTO `tb_area` VALUES (175, 170, '惠济区', '410108', '0371', 'district');
INSERT INTO `tb_area` VALUES (176, 170, '上街区', '410106', '0371', 'district');
INSERT INTO `tb_area` VALUES (177, 170, '二七区', '410103', '0371', 'district');
INSERT INTO `tb_area` VALUES (178, 170, '中原区', '410102', '0371', 'district');
INSERT INTO `tb_area` VALUES (179, 170, '新密市', '410183', '0371', 'district');
INSERT INTO `tb_area` VALUES (180, 170, '管城回族区', '410104', '0371', 'district');
INSERT INTO `tb_area` VALUES (181, 170, '新郑市', '410184', '0371', 'district');
INSERT INTO `tb_area` VALUES (182, 170, '中牟县', '410122', '0371', 'district');
INSERT INTO `tb_area` VALUES (183, 1, '安阳市', '410500', '0372', 'city');
INSERT INTO `tb_area` VALUES (184, 183, '殷都区', '410505', '0372', 'district');
INSERT INTO `tb_area` VALUES (185, 183, '汤阴县', '410523', '0372', 'district');
INSERT INTO `tb_area` VALUES (186, 183, '滑县', '410526', '0372', 'district');
INSERT INTO `tb_area` VALUES (187, 183, '文峰区', '410502', '0372', 'district');
INSERT INTO `tb_area` VALUES (188, 183, '北关区', '410503', '0372', 'district');
INSERT INTO `tb_area` VALUES (189, 183, '林州市', '410581', '0372', 'district');
INSERT INTO `tb_area` VALUES (190, 183, '龙安区', '410506', '0372', 'district');
INSERT INTO `tb_area` VALUES (191, 183, '安阳县', '410522', '0372', 'district');
INSERT INTO `tb_area` VALUES (192, 183, '内黄县', '410527', '0372', 'district');
INSERT INTO `tb_area` VALUES (193, 0, '广东省', '440000', '', 'province');
INSERT INTO `tb_area` VALUES (194, 193, '汕头市', '440500', '0754', 'city');
INSERT INTO `tb_area` VALUES (195, 194, '潮阳区', '440513', '0754', 'district');
INSERT INTO `tb_area` VALUES (196, 194, '澄海区', '440515', '0754', 'district');
INSERT INTO `tb_area` VALUES (197, 194, '南澳县', '440523', '0754', 'district');
INSERT INTO `tb_area` VALUES (198, 194, '濠江区', '440512', '0754', 'district');
INSERT INTO `tb_area` VALUES (199, 194, '潮南区', '440514', '0754', 'district');
INSERT INTO `tb_area` VALUES (200, 194, '龙湖区', '440507', '0754', 'district');
INSERT INTO `tb_area` VALUES (201, 194, '金平区', '440511', '0754', 'district');
INSERT INTO `tb_area` VALUES (202, 193, '佛山市', '440600', '0757', 'city');
INSERT INTO `tb_area` VALUES (203, 202, '三水区', '440607', '0757', 'district');
INSERT INTO `tb_area` VALUES (204, 202, '高明区', '440608', '0757', 'district');
INSERT INTO `tb_area` VALUES (205, 202, '顺德区', '440606', '0757', 'district');
INSERT INTO `tb_area` VALUES (206, 202, '南海区', '440605', '0757', 'district');
INSERT INTO `tb_area` VALUES (207, 202, '禅城区', '440604', '0757', 'district');
INSERT INTO `tb_area` VALUES (208, 193, '肇庆市', '441200', '0758', 'city');
INSERT INTO `tb_area` VALUES (209, 208, '怀集县', '441224', '0758', 'district');
INSERT INTO `tb_area` VALUES (210, 208, '封开县', '441225', '0758', 'district');
INSERT INTO `tb_area` VALUES (211, 208, '广宁县', '441223', '0758', 'district');
INSERT INTO `tb_area` VALUES (212, 208, '四会市', '441284', '0758', 'district');
INSERT INTO `tb_area` VALUES (213, 208, '德庆县', '441226', '0758', 'district');
INSERT INTO `tb_area` VALUES (214, 208, '鼎湖区', '441203', '0758', 'district');
INSERT INTO `tb_area` VALUES (215, 208, '端州区', '441202', '0758', 'district');
INSERT INTO `tb_area` VALUES (216, 208, '高要区', '441204', '0758', 'district');
INSERT INTO `tb_area` VALUES (217, 193, '惠州市', '441300', '0752', 'city');
INSERT INTO `tb_area` VALUES (218, 217, '龙门县', '441324', '0752', 'district');
INSERT INTO `tb_area` VALUES (219, 217, '博罗县', '441322', '0752', 'district');
INSERT INTO `tb_area` VALUES (220, 217, '惠东县', '441323', '0752', 'district');
INSERT INTO `tb_area` VALUES (221, 217, '惠阳区', '441303', '0752', 'district');
INSERT INTO `tb_area` VALUES (222, 217, '惠城区', '441302', '0752', 'district');
INSERT INTO `tb_area` VALUES (223, 193, '深圳市', '440300', '0755', 'city');
INSERT INTO `tb_area` VALUES (224, 223, '南山区', '440305', '0755', 'district');
INSERT INTO `tb_area` VALUES (225, 223, '宝安区', '440306', '0755', 'district');
INSERT INTO `tb_area` VALUES (226, 223, '福田区', '440304', '0755', 'district');
INSERT INTO `tb_area` VALUES (227, 223, '盐田区', '440308', '0755', 'district');
INSERT INTO `tb_area` VALUES (228, 223, '罗湖区', '440303', '0755', 'district');
INSERT INTO `tb_area` VALUES (229, 223, '龙岗区', '440307', '0755', 'district');
INSERT INTO `tb_area` VALUES (230, 223, '坪山区', '440310', '0755', 'district');
INSERT INTO `tb_area` VALUES (231, 223, '龙华区', '440309', '0755', 'district');
INSERT INTO `tb_area` VALUES (232, 223, '光明区', '440311', '0755', 'district');
INSERT INTO `tb_area` VALUES (233, 193, '珠海市', '440400', '0756', 'city');
INSERT INTO `tb_area` VALUES (234, 233, '金湾区', '440404', '0756', 'district');
INSERT INTO `tb_area` VALUES (235, 233, '香洲区', '440402', '0756', 'district');
INSERT INTO `tb_area` VALUES (236, 233, '斗门区', '440403', '0756', 'district');
INSERT INTO `tb_area` VALUES (237, 193, '湛江市', '440800', '0759', 'city');
INSERT INTO `tb_area` VALUES (238, 237, '廉江市', '440881', '0759', 'district');
INSERT INTO `tb_area` VALUES (239, 237, '吴川市', '440883', '0759', 'district');
INSERT INTO `tb_area` VALUES (240, 237, '霞山区', '440803', '0759', 'district');
INSERT INTO `tb_area` VALUES (241, 237, '雷州市', '440882', '0759', 'district');
INSERT INTO `tb_area` VALUES (242, 237, '麻章区', '440811', '0759', 'district');
INSERT INTO `tb_area` VALUES (243, 237, '徐闻县', '440825', '0759', 'district');
INSERT INTO `tb_area` VALUES (244, 237, '坡头区', '440804', '0759', 'district');
INSERT INTO `tb_area` VALUES (245, 237, '赤坎区', '440802', '0759', 'district');
INSERT INTO `tb_area` VALUES (246, 237, '遂溪县', '440823', '0759', 'district');
INSERT INTO `tb_area` VALUES (247, 193, '江门市', '440700', '0750', 'city');
INSERT INTO `tb_area` VALUES (248, 247, '鹤山市', '440784', '0750', 'district');
INSERT INTO `tb_area` VALUES (249, 247, '开平市', '440783', '0750', 'district');
INSERT INTO `tb_area` VALUES (250, 247, '江海区', '440704', '0750', 'district');
INSERT INTO `tb_area` VALUES (251, 247, '台山市', '440781', '0750', 'district');
INSERT INTO `tb_area` VALUES (252, 247, '恩平市', '440785', '0750', 'district');
INSERT INTO `tb_area` VALUES (253, 247, '新会区', '440705', '0750', 'district');
INSERT INTO `tb_area` VALUES (254, 247, '蓬江区', '440703', '0750', 'district');
INSERT INTO `tb_area` VALUES (255, 193, '阳江市', '441700', '0662', 'city');
INSERT INTO `tb_area` VALUES (256, 255, '阳春市', '441781', '0662', 'district');
INSERT INTO `tb_area` VALUES (257, 255, '江城区', '441702', '0662', 'district');
INSERT INTO `tb_area` VALUES (258, 255, '阳西县', '441721', '0662', 'district');
INSERT INTO `tb_area` VALUES (259, 255, '阳东区', '441704', '0662', 'district');
INSERT INTO `tb_area` VALUES (260, 193, '茂名市', '440900', '0668', 'city');
INSERT INTO `tb_area` VALUES (261, 260, '信宜市', '440983', '0668', 'district');
INSERT INTO `tb_area` VALUES (262, 260, '高州市', '440981', '0668', 'district');
INSERT INTO `tb_area` VALUES (263, 260, '化州市', '440982', '0668', 'district');
INSERT INTO `tb_area` VALUES (264, 260, '电白区', '440904', '0668', 'district');
INSERT INTO `tb_area` VALUES (265, 260, '茂南区', '440902', '0668', 'district');
INSERT INTO `tb_area` VALUES (266, 193, '东沙群岛', '442100', '0767', 'city');
INSERT INTO `tb_area` VALUES (267, 193, '汕尾市', '441500', '0660', 'city');
INSERT INTO `tb_area` VALUES (268, 267, '陆河县', '441523', '0660', 'district');
INSERT INTO `tb_area` VALUES (269, 267, '海丰县', '441521', '0660', 'district');
INSERT INTO `tb_area` VALUES (270, 267, '陆丰市', '441581', '0660', 'district');
INSERT INTO `tb_area` VALUES (271, 267, '城区', '441502', '0660', 'district');
INSERT INTO `tb_area` VALUES (272, 193, '潮州市', '445100', '0768', 'city');
INSERT INTO `tb_area` VALUES (273, 272, '饶平县', '445122', '0768', 'district');
INSERT INTO `tb_area` VALUES (274, 272, '潮安区', '445103', '0768', 'district');
INSERT INTO `tb_area` VALUES (275, 272, '湘桥区', '445102', '0768', 'district');
INSERT INTO `tb_area` VALUES (276, 193, '云浮市', '445300', '0766', 'city');
INSERT INTO `tb_area` VALUES (277, 276, '郁南县', '445322', '0766', 'district');
INSERT INTO `tb_area` VALUES (278, 276, '罗定市', '445381', '0766', 'district');
INSERT INTO `tb_area` VALUES (279, 276, '新兴县', '445321', '0766', 'district');
INSERT INTO `tb_area` VALUES (280, 276, '云城区', '445302', '0766', 'district');
INSERT INTO `tb_area` VALUES (281, 276, '云安区', '445303', '0766', 'district');
INSERT INTO `tb_area` VALUES (282, 193, '河源市', '441600', '0762', 'city');
INSERT INTO `tb_area` VALUES (283, 282, '和平县', '441624', '0762', 'district');
INSERT INTO `tb_area` VALUES (284, 282, '连平县', '441623', '0762', 'district');
INSERT INTO `tb_area` VALUES (285, 282, '龙川县', '441622', '0762', 'district');
INSERT INTO `tb_area` VALUES (286, 282, '东源县', '441625', '0762', 'district');
INSERT INTO `tb_area` VALUES (287, 282, '源城区', '441602', '0762', 'district');
INSERT INTO `tb_area` VALUES (288, 282, '紫金县', '441621', '0762', 'district');
INSERT INTO `tb_area` VALUES (289, 193, '梅州市', '441400', '0753', 'city');
INSERT INTO `tb_area` VALUES (290, 289, '平远县', '441426', '0753', 'district');
INSERT INTO `tb_area` VALUES (291, 289, '蕉岭县', '441427', '0753', 'district');
INSERT INTO `tb_area` VALUES (292, 289, '兴宁市', '441481', '0753', 'district');
INSERT INTO `tb_area` VALUES (293, 289, '五华县', '441424', '0753', 'district');
INSERT INTO `tb_area` VALUES (294, 289, '丰顺县', '441423', '0753', 'district');
INSERT INTO `tb_area` VALUES (295, 289, '大埔县', '441422', '0753', 'district');
INSERT INTO `tb_area` VALUES (296, 289, '梅县区', '441403', '0753', 'district');
INSERT INTO `tb_area` VALUES (297, 289, '梅江区', '441402', '0753', 'district');
INSERT INTO `tb_area` VALUES (298, 193, '东莞市', '441900', '0769', 'city');
INSERT INTO `tb_area` VALUES (299, 298, '莞城街道', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (300, 298, '常平镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (301, 298, '望牛墩镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (302, 298, '大朗镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (303, 298, '麻涌镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (304, 298, '黄江镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (305, 298, '桥头镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (306, 298, '东莞生态园', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (307, 298, '凤岗镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (308, 298, '樟木头镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (309, 298, '松山湖管委会', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (310, 298, '石龙镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (311, 298, '寮步镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (312, 298, '高埗镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (313, 298, '塘厦镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (314, 298, '谢岗镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (315, 298, '厚街镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (316, 298, '虎门镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (317, 298, '南城街道', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (318, 298, '虎门港管委会', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (319, 298, '横沥镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (320, 298, '企石镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (321, 298, '东坑镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (322, 298, '东城街道', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (323, 298, '石排镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (324, 298, '洪梅镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (325, 298, '长安镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (326, 298, '沙田镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (327, 298, '道滘镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (328, 298, '大岭山镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (329, 298, '茶山镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (330, 298, '清溪镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (331, 298, '中堂镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (332, 298, '万江街道', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (333, 298, '石碣镇', '441900', '0769', 'street');
INSERT INTO `tb_area` VALUES (334, 193, '清远市', '441800', '0763', 'city');
INSERT INTO `tb_area` VALUES (335, 334, '连州市', '441882', '0763', 'district');
INSERT INTO `tb_area` VALUES (336, 334, '连南瑶族自治县', '441826', '0763', 'district');
INSERT INTO `tb_area` VALUES (337, 334, '连山壮族瑶族自治县', '441825', '0763', 'district');
INSERT INTO `tb_area` VALUES (338, 334, '英德市', '441881', '0763', 'district');
INSERT INTO `tb_area` VALUES (339, 334, '佛冈县', '441821', '0763', 'district');
INSERT INTO `tb_area` VALUES (340, 334, '阳山县', '441823', '0763', 'district');
INSERT INTO `tb_area` VALUES (341, 334, '清新区', '441803', '0763', 'district');
INSERT INTO `tb_area` VALUES (342, 334, '清城区', '441802', '0763', 'district');
INSERT INTO `tb_area` VALUES (343, 193, '广州市', '440100', '020', 'city');
INSERT INTO `tb_area` VALUES (344, 343, '从化区', '440117', '020', 'district');
INSERT INTO `tb_area` VALUES (345, 343, '南沙区', '440115', '020', 'district');
INSERT INTO `tb_area` VALUES (346, 343, '花都区', '440114', '020', 'district');
INSERT INTO `tb_area` VALUES (347, 343, '天河区', '440106', '020', 'district');
INSERT INTO `tb_area` VALUES (348, 343, '白云区', '440111', '020', 'district');
INSERT INTO `tb_area` VALUES (349, 343, '海珠区', '440105', '020', 'district');
INSERT INTO `tb_area` VALUES (350, 343, '番禺区', '440113', '020', 'district');
INSERT INTO `tb_area` VALUES (351, 343, '越秀区', '440104', '020', 'district');
INSERT INTO `tb_area` VALUES (352, 343, '荔湾区', '440103', '020', 'district');
INSERT INTO `tb_area` VALUES (353, 343, '增城区', '440118', '020', 'district');
INSERT INTO `tb_area` VALUES (354, 343, '黄埔区', '440112', '020', 'district');
INSERT INTO `tb_area` VALUES (355, 193, '揭阳市', '445200', '0663', 'city');
INSERT INTO `tb_area` VALUES (356, 355, '揭西县', '445222', '0663', 'district');
INSERT INTO `tb_area` VALUES (357, 355, '普宁市', '445281', '0663', 'district');
INSERT INTO `tb_area` VALUES (358, 355, '惠来县', '445224', '0663', 'district');
INSERT INTO `tb_area` VALUES (359, 355, '榕城区', '445202', '0663', 'district');
INSERT INTO `tb_area` VALUES (360, 355, '揭东区', '445203', '0663', 'district');
INSERT INTO `tb_area` VALUES (361, 193, '韶关市', '440200', '0751', 'city');
INSERT INTO `tb_area` VALUES (362, 361, '仁化县', '440224', '0751', 'district');
INSERT INTO `tb_area` VALUES (363, 361, '南雄市', '440282', '0751', 'district');
INSERT INTO `tb_area` VALUES (364, 361, '始兴县', '440222', '0751', 'district');
INSERT INTO `tb_area` VALUES (365, 361, '浈江区', '440204', '0751', 'district');
INSERT INTO `tb_area` VALUES (366, 361, '乳源瑶族自治县', '440232', '0751', 'district');
INSERT INTO `tb_area` VALUES (367, 361, '武江区', '440203', '0751', 'district');
INSERT INTO `tb_area` VALUES (368, 361, '曲江区', '440205', '0751', 'district');
INSERT INTO `tb_area` VALUES (369, 361, '翁源县', '440229', '0751', 'district');
INSERT INTO `tb_area` VALUES (370, 361, '新丰县', '440233', '0751', 'district');
INSERT INTO `tb_area` VALUES (371, 361, '乐昌市', '440281', '0751', 'district');
INSERT INTO `tb_area` VALUES (372, 193, '中山市', '442000', '0760', 'city');
INSERT INTO `tb_area` VALUES (373, 372, '三角镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (374, 372, '横栏镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (375, 372, '五桂山街道', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (376, 372, '东升镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (377, 372, '神湾镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (378, 372, '火炬开发区街道', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (379, 372, '小榄镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (380, 372, '南朗镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (381, 372, '古镇镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (382, 372, '民众镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (383, 372, '港口镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (384, 372, '三乡镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (385, 372, '石岐区街道', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (386, 372, '大涌镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (387, 372, '南头镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (388, 372, '黄圃镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (389, 372, '东区街道', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (390, 372, '阜沙镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (391, 372, '坦洲镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (392, 372, '西区街道', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (393, 372, '板芙镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (394, 372, '南区街道', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (395, 372, '沙溪镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (396, 372, '东凤镇', '442000', '0760', 'street');
INSERT INTO `tb_area` VALUES (397, 0, '内蒙古自治区', '150000', '', 'province');
INSERT INTO `tb_area` VALUES (398, 397, '包头市', '150200', '0472', 'city');
INSERT INTO `tb_area` VALUES (399, 398, '土默特右旗', '150221', '0472', 'district');
INSERT INTO `tb_area` VALUES (400, 398, '达尔罕茂明安联合旗', '150223', '0472', 'district');
INSERT INTO `tb_area` VALUES (401, 398, '白云鄂博矿区', '150206', '0472', 'district');
INSERT INTO `tb_area` VALUES (402, 398, '九原区', '150207', '0472', 'district');
INSERT INTO `tb_area` VALUES (403, 398, '昆都仑区', '150203', '0472', 'district');
INSERT INTO `tb_area` VALUES (404, 398, '东河区', '150202', '0472', 'district');
INSERT INTO `tb_area` VALUES (405, 398, '青山区', '150204', '0472', 'district');
INSERT INTO `tb_area` VALUES (406, 398, '固阳县', '150222', '0472', 'district');
INSERT INTO `tb_area` VALUES (407, 398, '石拐区', '150205', '0472', 'district');
INSERT INTO `tb_area` VALUES (408, 397, '乌海市', '150300', '0473', 'city');
INSERT INTO `tb_area` VALUES (409, 408, '海勃湾区', '150302', '0473', 'district');
INSERT INTO `tb_area` VALUES (410, 408, '乌达区', '150304', '0473', 'district');
INSERT INTO `tb_area` VALUES (411, 408, '海南区', '150303', '0473', 'district');
INSERT INTO `tb_area` VALUES (412, 397, '巴彦淖尔市', '150800', '0478', 'city');
INSERT INTO `tb_area` VALUES (413, 412, '乌拉特中旗', '150824', '0478', 'district');
INSERT INTO `tb_area` VALUES (414, 412, '临河区', '150802', '0478', 'district');
INSERT INTO `tb_area` VALUES (415, 412, '五原县', '150821', '0478', 'district');
INSERT INTO `tb_area` VALUES (416, 412, '杭锦后旗', '150826', '0478', 'district');
INSERT INTO `tb_area` VALUES (417, 412, '磴口县', '150822', '0478', 'district');
INSERT INTO `tb_area` VALUES (418, 412, '乌拉特前旗', '150823', '0478', 'district');
INSERT INTO `tb_area` VALUES (419, 412, '乌拉特后旗', '150825', '0478', 'district');
INSERT INTO `tb_area` VALUES (420, 397, '呼伦贝尔市', '150700', '0470', 'city');
INSERT INTO `tb_area` VALUES (421, 420, '额尔古纳市', '150784', '0470', 'district');
INSERT INTO `tb_area` VALUES (422, 420, '根河市', '150785', '0470', 'district');
INSERT INTO `tb_area` VALUES (423, 420, '牙克石市', '150782', '0470', 'district');
INSERT INTO `tb_area` VALUES (424, 420, '陈巴尔虎旗', '150725', '0470', 'district');
INSERT INTO `tb_area` VALUES (425, 420, '莫力达瓦达斡尔族自治旗', '150722', '0470', 'district');
INSERT INTO `tb_area` VALUES (426, 420, '海拉尔区', '150702', '0470', 'district');
INSERT INTO `tb_area` VALUES (427, 420, '鄂温克族自治旗', '150724', '0470', 'district');
INSERT INTO `tb_area` VALUES (428, 420, '阿荣旗', '150721', '0470', 'district');
INSERT INTO `tb_area` VALUES (429, 420, '扎兰屯市', '150783', '0470', 'district');
INSERT INTO `tb_area` VALUES (430, 420, '扎赉诺尔区', '150703', '0470', 'district');
INSERT INTO `tb_area` VALUES (431, 420, '满洲里市', '150781', '0470', 'district');
INSERT INTO `tb_area` VALUES (432, 420, '新巴尔虎右旗', '150727', '0470', 'district');
INSERT INTO `tb_area` VALUES (433, 420, '新巴尔虎左旗', '150726', '0470', 'district');
INSERT INTO `tb_area` VALUES (434, 420, '鄂伦春自治旗', '150723', '0470', 'district');
INSERT INTO `tb_area` VALUES (435, 397, '鄂尔多斯市', '150600', '0477', 'city');
INSERT INTO `tb_area` VALUES (436, 435, '杭锦旗', '150625', '0477', 'district');
INSERT INTO `tb_area` VALUES (437, 435, '达拉特旗', '150621', '0477', 'district');
INSERT INTO `tb_area` VALUES (438, 435, '准格尔旗', '150622', '0477', 'district');
INSERT INTO `tb_area` VALUES (439, 435, '鄂托克旗', '150624', '0477', 'district');
INSERT INTO `tb_area` VALUES (440, 435, '乌审旗', '150626', '0477', 'district');
INSERT INTO `tb_area` VALUES (441, 435, '鄂托克前旗', '150623', '0477', 'district');
INSERT INTO `tb_area` VALUES (442, 435, '伊金霍洛旗', '150627', '0477', 'district');
INSERT INTO `tb_area` VALUES (443, 435, '康巴什区', '150603', '0477', 'district');
INSERT INTO `tb_area` VALUES (444, 435, '东胜区', '150602', '0477', 'district');
INSERT INTO `tb_area` VALUES (445, 397, '阿拉善盟', '152900', '0483', 'city');
INSERT INTO `tb_area` VALUES (446, 445, '额济纳旗', '152923', '0483', 'district');
INSERT INTO `tb_area` VALUES (447, 445, '阿拉善右旗', '152922', '0483', 'district');
INSERT INTO `tb_area` VALUES (448, 445, '阿拉善左旗', '152921', '0483', 'district');
INSERT INTO `tb_area` VALUES (449, 397, '赤峰市', '150400', '0476', 'city');
INSERT INTO `tb_area` VALUES (450, 449, '阿鲁科尔沁旗', '150421', '0476', 'district');
INSERT INTO `tb_area` VALUES (451, 449, '巴林左旗', '150422', '0476', 'district');
INSERT INTO `tb_area` VALUES (452, 449, '巴林右旗', '150423', '0476', 'district');
INSERT INTO `tb_area` VALUES (453, 449, '克什克腾旗', '150425', '0476', 'district');
INSERT INTO `tb_area` VALUES (454, 449, '林西县', '150424', '0476', 'district');
INSERT INTO `tb_area` VALUES (455, 449, '翁牛特旗', '150426', '0476', 'district');
INSERT INTO `tb_area` VALUES (456, 449, '松山区', '150404', '0476', 'district');
INSERT INTO `tb_area` VALUES (457, 449, '宁城县', '150429', '0476', 'district');
INSERT INTO `tb_area` VALUES (458, 449, '红山区', '150402', '0476', 'district');
INSERT INTO `tb_area` VALUES (459, 449, '元宝山区', '150403', '0476', 'district');
INSERT INTO `tb_area` VALUES (460, 449, '喀喇沁旗', '150428', '0476', 'district');
INSERT INTO `tb_area` VALUES (461, 449, '敖汉旗', '150430', '0476', 'district');
INSERT INTO `tb_area` VALUES (462, 397, '通辽市', '150500', '0475', 'city');
INSERT INTO `tb_area` VALUES (463, 462, '扎鲁特旗', '150526', '0475', 'district');
INSERT INTO `tb_area` VALUES (464, 462, '霍林郭勒市', '150581', '0475', 'district');
INSERT INTO `tb_area` VALUES (465, 462, '科尔沁左翼中旗', '150521', '0475', 'district');
INSERT INTO `tb_area` VALUES (466, 462, '开鲁县', '150523', '0475', 'district');
INSERT INTO `tb_area` VALUES (467, 462, '科尔沁区', '150502', '0475', 'district');
INSERT INTO `tb_area` VALUES (468, 462, '奈曼旗', '150525', '0475', 'district');
INSERT INTO `tb_area` VALUES (469, 462, '库伦旗', '150524', '0475', 'district');
INSERT INTO `tb_area` VALUES (470, 462, '科尔沁左翼后旗', '150522', '0475', 'district');
INSERT INTO `tb_area` VALUES (471, 397, '兴安盟', '152200', '0482', 'city');
INSERT INTO `tb_area` VALUES (472, 471, '阿尔山市', '152202', '0482', 'district');
INSERT INTO `tb_area` VALUES (473, 471, '扎赉特旗', '152223', '0482', 'district');
INSERT INTO `tb_area` VALUES (474, 471, '科尔沁右翼中旗', '152222', '0482', 'district');
INSERT INTO `tb_area` VALUES (475, 471, '突泉县', '152224', '0482', 'district');
INSERT INTO `tb_area` VALUES (476, 471, '乌兰浩特市', '152201', '0482', 'district');
INSERT INTO `tb_area` VALUES (477, 471, '科尔沁右翼前旗', '152221', '0482', 'district');
INSERT INTO `tb_area` VALUES (478, 397, '乌兰察布市', '150900', '0474', 'city');
INSERT INTO `tb_area` VALUES (479, 478, '四子王旗', '150929', '0474', 'district');
INSERT INTO `tb_area` VALUES (480, 478, '化德县', '150922', '0474', 'district');
INSERT INTO `tb_area` VALUES (481, 478, '商都县', '150923', '0474', 'district');
INSERT INTO `tb_area` VALUES (482, 478, '察哈尔右翼后旗', '150928', '0474', 'district');
INSERT INTO `tb_area` VALUES (483, 478, '察哈尔右翼中旗', '150927', '0474', 'district');
INSERT INTO `tb_area` VALUES (484, 478, '兴和县', '150924', '0474', 'district');
INSERT INTO `tb_area` VALUES (485, 478, '卓资县', '150921', '0474', 'district');
INSERT INTO `tb_area` VALUES (486, 478, '凉城县', '150925', '0474', 'district');
INSERT INTO `tb_area` VALUES (487, 478, '丰镇市', '150981', '0474', 'district');
INSERT INTO `tb_area` VALUES (488, 478, '集宁区', '150902', '0474', 'district');
INSERT INTO `tb_area` VALUES (489, 478, '察哈尔右翼前旗', '150926', '0474', 'district');
INSERT INTO `tb_area` VALUES (490, 397, '锡林郭勒盟', '152500', '0479', 'city');
INSERT INTO `tb_area` VALUES (491, 490, '东乌珠穆沁旗', '152525', '0479', 'district');
INSERT INTO `tb_area` VALUES (492, 490, '阿巴嘎旗', '152522', '0479', 'district');
INSERT INTO `tb_area` VALUES (493, 490, '苏尼特左旗', '152523', '0479', 'district');
INSERT INTO `tb_area` VALUES (494, 490, '西乌珠穆沁旗', '152526', '0479', 'district');
INSERT INTO `tb_area` VALUES (495, 490, '锡林浩特市', '152502', '0479', 'district');
INSERT INTO `tb_area` VALUES (496, 490, '二连浩特市', '152501', '0479', 'district');
INSERT INTO `tb_area` VALUES (497, 490, '苏尼特右旗', '152524', '0479', 'district');
INSERT INTO `tb_area` VALUES (498, 490, '正镶白旗', '152529', '0479', 'district');
INSERT INTO `tb_area` VALUES (499, 490, '正蓝旗', '152530', '0479', 'district');
INSERT INTO `tb_area` VALUES (500, 490, '镶黄旗', '152528', '0479', 'district');
INSERT INTO `tb_area` VALUES (501, 490, '多伦县', '152531', '0479', 'district');
INSERT INTO `tb_area` VALUES (502, 490, '太仆寺旗', '152527', '0479', 'district');
INSERT INTO `tb_area` VALUES (503, 397, '呼和浩特市', '150100', '0471', 'city');
INSERT INTO `tb_area` VALUES (504, 503, '和林格尔县', '150123', '0471', 'district');
INSERT INTO `tb_area` VALUES (505, 503, '玉泉区', '150104', '0471', 'district');
INSERT INTO `tb_area` VALUES (506, 503, '回民区', '150103', '0471', 'district');
INSERT INTO `tb_area` VALUES (507, 503, '武川县', '150125', '0471', 'district');
INSERT INTO `tb_area` VALUES (508, 503, '托克托县', '150122', '0471', 'district');
INSERT INTO `tb_area` VALUES (509, 503, '土默特左旗', '150121', '0471', 'district');
INSERT INTO `tb_area` VALUES (510, 503, '新城区', '150102', '0471', 'district');
INSERT INTO `tb_area` VALUES (511, 503, '赛罕区', '150105', '0471', 'district');
INSERT INTO `tb_area` VALUES (512, 503, '清水河县', '150124', '0471', 'district');
INSERT INTO `tb_area` VALUES (513, 0, '黑龙江省', '230000', '', 'province');
INSERT INTO `tb_area` VALUES (514, 513, '大兴安岭地区', '232700', '0457', 'city');
INSERT INTO `tb_area` VALUES (515, 514, '漠河市', '232701', '0457', 'district');
INSERT INTO `tb_area` VALUES (516, 514, '塔河县', '232722', '0457', 'district');
INSERT INTO `tb_area` VALUES (517, 514, '呼玛县', '232721', '0457', 'district');
INSERT INTO `tb_area` VALUES (518, 514, '加格达奇区', '232718', '0457', 'district');
INSERT INTO `tb_area` VALUES (519, 513, '七台河市', '230900', '0464', 'city');
INSERT INTO `tb_area` VALUES (520, 519, '桃山区', '230903', '0464', 'district');
INSERT INTO `tb_area` VALUES (521, 519, '勃利县', '230921', '0464', 'district');
INSERT INTO `tb_area` VALUES (522, 519, '茄子河区', '230904', '0464', 'district');
INSERT INTO `tb_area` VALUES (523, 519, '新兴区', '230902', '0464', 'district');
INSERT INTO `tb_area` VALUES (524, 513, '鹤岗市', '230400', '0468', 'city');
INSERT INTO `tb_area` VALUES (525, 524, '绥滨县', '230422', '0468', 'district');
INSERT INTO `tb_area` VALUES (526, 524, '工农区', '230403', '0468', 'district');
INSERT INTO `tb_area` VALUES (527, 524, '向阳区', '230402', '0468', 'district');
INSERT INTO `tb_area` VALUES (528, 524, '兴安区', '230405', '0468', 'district');
INSERT INTO `tb_area` VALUES (529, 524, '南山区', '230404', '0468', 'district');
INSERT INTO `tb_area` VALUES (530, 524, '兴山区', '230407', '0468', 'district');
INSERT INTO `tb_area` VALUES (531, 524, '东山区', '230406', '0468', 'district');
INSERT INTO `tb_area` VALUES (532, 524, '萝北县', '230421', '0468', 'district');
INSERT INTO `tb_area` VALUES (533, 513, '伊春市', '230700', '0458', 'city');
INSERT INTO `tb_area` VALUES (534, 533, '嘉荫县', '230722', '0458', 'district');
INSERT INTO `tb_area` VALUES (535, 533, '乌伊岭区', '230714', '0458', 'district');
INSERT INTO `tb_area` VALUES (536, 533, '新青区', '230707', '0458', 'district');
INSERT INTO `tb_area` VALUES (537, 533, '红星区', '230715', '0458', 'district');
INSERT INTO `tb_area` VALUES (538, 533, '汤旺河区', '230712', '0458', 'district');
INSERT INTO `tb_area` VALUES (539, 533, '友好区', '230704', '0458', 'district');
INSERT INTO `tb_area` VALUES (540, 533, '五营区', '230710', '0458', 'district');
INSERT INTO `tb_area` VALUES (541, 533, '上甘岭区', '230716', '0458', 'district');
INSERT INTO `tb_area` VALUES (542, 533, '美溪区', '230708', '0458', 'district');
INSERT INTO `tb_area` VALUES (543, 533, '翠峦区', '230706', '0458', 'district');
INSERT INTO `tb_area` VALUES (544, 533, '乌马河区', '230711', '0458', 'district');
INSERT INTO `tb_area` VALUES (545, 533, '金山屯区', '230709', '0458', 'district');
INSERT INTO `tb_area` VALUES (546, 533, '伊春区', '230702', '0458', 'district');
INSERT INTO `tb_area` VALUES (547, 533, '西林区', '230705', '0458', 'district');
INSERT INTO `tb_area` VALUES (548, 533, '铁力市', '230781', '0458', 'district');
INSERT INTO `tb_area` VALUES (549, 533, '南岔区', '230703', '0458', 'district');
INSERT INTO `tb_area` VALUES (550, 533, '带岭区', '230713', '0458', 'district');
INSERT INTO `tb_area` VALUES (551, 513, '绥化市', '231200', '0455', 'city');
INSERT INTO `tb_area` VALUES (552, 551, '绥棱县', '231226', '0455', 'district');
INSERT INTO `tb_area` VALUES (553, 551, '海伦市', '231283', '0455', 'district');
INSERT INTO `tb_area` VALUES (554, 551, '庆安县', '231224', '0455', 'district');
INSERT INTO `tb_area` VALUES (555, 551, '北林区', '231202', '0455', 'district');
INSERT INTO `tb_area` VALUES (556, 551, '望奎县', '231221', '0455', 'district');
INSERT INTO `tb_area` VALUES (557, 551, '青冈县', '231223', '0455', 'district');
INSERT INTO `tb_area` VALUES (558, 551, '明水县', '231225', '0455', 'district');
INSERT INTO `tb_area` VALUES (559, 551, '兰西县', '231222', '0455', 'district');
INSERT INTO `tb_area` VALUES (560, 551, '肇东市', '231282', '0455', 'district');
INSERT INTO `tb_area` VALUES (561, 551, '安达市', '231281', '0455', 'district');
INSERT INTO `tb_area` VALUES (562, 513, '哈尔滨市', '230100', '0451', 'city');
INSERT INTO `tb_area` VALUES (563, 562, '巴彦县', '230126', '0451', 'district');
INSERT INTO `tb_area` VALUES (564, 562, '依兰县', '230123', '0451', 'district');
INSERT INTO `tb_area` VALUES (565, 562, '通河县', '230128', '0451', 'district');
INSERT INTO `tb_area` VALUES (566, 562, '木兰县', '230127', '0451', 'district');
INSERT INTO `tb_area` VALUES (567, 562, '方正县', '230124', '0451', 'district');
INSERT INTO `tb_area` VALUES (568, 562, '宾县', '230125', '0451', 'district');
INSERT INTO `tb_area` VALUES (569, 562, '延寿县', '230129', '0451', 'district');
INSERT INTO `tb_area` VALUES (570, 562, '双城区', '230113', '0451', 'district');
INSERT INTO `tb_area` VALUES (571, 562, '平房区', '230108', '0451', 'district');
INSERT INTO `tb_area` VALUES (572, 562, '尚志市', '230183', '0451', 'district');
INSERT INTO `tb_area` VALUES (573, 562, '香坊区', '230110', '0451', 'district');
INSERT INTO `tb_area` VALUES (574, 562, '道里区', '230102', '0451', 'district');
INSERT INTO `tb_area` VALUES (575, 562, '五常市', '230184', '0451', 'district');
INSERT INTO `tb_area` VALUES (576, 562, '阿城区', '230112', '0451', 'district');
INSERT INTO `tb_area` VALUES (577, 562, '南岗区', '230103', '0451', 'district');
INSERT INTO `tb_area` VALUES (578, 562, '道外区', '230104', '0451', 'district');
INSERT INTO `tb_area` VALUES (579, 562, '呼兰区', '230111', '0451', 'district');
INSERT INTO `tb_area` VALUES (580, 562, '松北区', '230109', '0451', 'district');
INSERT INTO `tb_area` VALUES (581, 513, '黑河市', '231100', '0456', 'city');
INSERT INTO `tb_area` VALUES (582, 581, '嫩江县', '231121', '0456', 'district');
INSERT INTO `tb_area` VALUES (583, 581, '爱辉区', '231102', '0456', 'district');
INSERT INTO `tb_area` VALUES (584, 581, '北安市', '231181', '0456', 'district');
INSERT INTO `tb_area` VALUES (585, 581, '孙吴县', '231124', '0456', 'district');
INSERT INTO `tb_area` VALUES (586, 581, '逊克县', '231123', '0456', 'district');
INSERT INTO `tb_area` VALUES (587, 581, '五大连池市', '231182', '0456', 'district');
INSERT INTO `tb_area` VALUES (588, 513, '齐齐哈尔市', '230200', '0452', 'city');
INSERT INTO `tb_area` VALUES (589, 588, '讷河市', '230281', '0452', 'district');
INSERT INTO `tb_area` VALUES (590, 588, '克山县', '230229', '0452', 'district');
INSERT INTO `tb_area` VALUES (591, 588, '甘南县', '230225', '0452', 'district');
INSERT INTO `tb_area` VALUES (592, 588, '克东县', '230230', '0452', 'district');
INSERT INTO `tb_area` VALUES (593, 588, '富裕县', '230227', '0452', 'district');
INSERT INTO `tb_area` VALUES (594, 588, '依安县', '230223', '0452', 'district');
INSERT INTO `tb_area` VALUES (595, 588, '梅里斯达斡尔族区', '230208', '0452', 'district');
INSERT INTO `tb_area` VALUES (596, 588, '碾子山区', '230207', '0452', 'district');
INSERT INTO `tb_area` VALUES (597, 588, '龙江县', '230221', '0452', 'district');
INSERT INTO `tb_area` VALUES (598, 588, '铁锋区', '230204', '0452', 'district');
INSERT INTO `tb_area` VALUES (599, 588, '建华区', '230203', '0452', 'district');
INSERT INTO `tb_area` VALUES (600, 588, '龙沙区', '230202', '0452', 'district');
INSERT INTO `tb_area` VALUES (601, 588, '昂昂溪区', '230205', '0452', 'district');
INSERT INTO `tb_area` VALUES (602, 588, '富拉尔基区', '230206', '0452', 'district');
INSERT INTO `tb_area` VALUES (603, 588, '泰来县', '230224', '0452', 'district');
INSERT INTO `tb_area` VALUES (604, 588, '拜泉县', '230231', '0452', 'district');
INSERT INTO `tb_area` VALUES (605, 513, '牡丹江市', '231000', '0453', 'city');
INSERT INTO `tb_area` VALUES (606, 605, '东安区', '231002', '0453', 'district');
INSERT INTO `tb_area` VALUES (607, 605, '爱民区', '231004', '0453', 'district');
INSERT INTO `tb_area` VALUES (608, 605, '绥芬河市', '231081', '0453', 'district');
INSERT INTO `tb_area` VALUES (609, 605, '宁安市', '231084', '0453', 'district');
INSERT INTO `tb_area` VALUES (610, 605, '东宁市', '231086', '0453', 'district');
INSERT INTO `tb_area` VALUES (611, 605, '阳明区', '231003', '0453', 'district');
INSERT INTO `tb_area` VALUES (612, 605, '穆棱市', '231085', '0453', 'district');
INSERT INTO `tb_area` VALUES (613, 605, '林口县', '231025', '0453', 'district');
INSERT INTO `tb_area` VALUES (614, 605, '西安区', '231005', '0453', 'district');
INSERT INTO `tb_area` VALUES (615, 605, '海林市', '231083', '0453', 'district');
INSERT INTO `tb_area` VALUES (616, 513, '鸡西市', '230300', '0467', 'city');
INSERT INTO `tb_area` VALUES (617, 616, '滴道区', '230304', '0467', 'district');
INSERT INTO `tb_area` VALUES (618, 616, '城子河区', '230306', '0467', 'district');
INSERT INTO `tb_area` VALUES (619, 616, '麻山区', '230307', '0467', 'district');
INSERT INTO `tb_area` VALUES (620, 616, '鸡冠区', '230302', '0467', 'district');
INSERT INTO `tb_area` VALUES (621, 616, '恒山区', '230303', '0467', 'district');
INSERT INTO `tb_area` VALUES (622, 616, '梨树区', '230305', '0467', 'district');
INSERT INTO `tb_area` VALUES (623, 616, '密山市', '230382', '0467', 'district');
INSERT INTO `tb_area` VALUES (624, 616, '鸡东县', '230321', '0467', 'district');
INSERT INTO `tb_area` VALUES (625, 616, '虎林市', '230381', '0467', 'district');
INSERT INTO `tb_area` VALUES (626, 513, '大庆市', '230600', '0459', 'city');
INSERT INTO `tb_area` VALUES (627, 626, '让胡路区', '230604', '0459', 'district');
INSERT INTO `tb_area` VALUES (628, 626, '红岗区', '230605', '0459', 'district');
INSERT INTO `tb_area` VALUES (629, 626, '肇源县', '230622', '0459', 'district');
INSERT INTO `tb_area` VALUES (630, 626, '大同区', '230606', '0459', 'district');
INSERT INTO `tb_area` VALUES (631, 626, '杜尔伯特蒙古族自治县', '230624', '0459', 'district');
INSERT INTO `tb_area` VALUES (632, 626, '林甸县', '230623', '0459', 'district');
INSERT INTO `tb_area` VALUES (633, 626, '萨尔图区', '230602', '0459', 'district');
INSERT INTO `tb_area` VALUES (634, 626, '龙凤区', '230603', '0459', 'district');
INSERT INTO `tb_area` VALUES (635, 626, '肇州县', '230621', '0459', 'district');
INSERT INTO `tb_area` VALUES (636, 513, '双鸭山市', '230500', '0469', 'city');
INSERT INTO `tb_area` VALUES (637, 636, '友谊县', '230522', '0469', 'district');
INSERT INTO `tb_area` VALUES (638, 636, '四方台区', '230505', '0469', 'district');
INSERT INTO `tb_area` VALUES (639, 636, '尖山区', '230502', '0469', 'district');
INSERT INTO `tb_area` VALUES (640, 636, '岭东区', '230503', '0469', 'district');
INSERT INTO `tb_area` VALUES (641, 636, '宝山区', '230506', '0469', 'district');
INSERT INTO `tb_area` VALUES (642, 636, '宝清县', '230523', '0469', 'district');
INSERT INTO `tb_area` VALUES (643, 636, '饶河县', '230524', '0469', 'district');
INSERT INTO `tb_area` VALUES (644, 636, '集贤县', '230521', '0469', 'district');
INSERT INTO `tb_area` VALUES (645, 513, '佳木斯市', '230800', '0454', 'city');
INSERT INTO `tb_area` VALUES (646, 645, '同江市', '230881', '0454', 'district');
INSERT INTO `tb_area` VALUES (647, 645, '桦川县', '230826', '0454', 'district');
INSERT INTO `tb_area` VALUES (648, 645, '汤原县', '230828', '0454', 'district');
INSERT INTO `tb_area` VALUES (649, 645, '前进区', '230804', '0454', 'district');
INSERT INTO `tb_area` VALUES (650, 645, '东风区', '230805', '0454', 'district');
INSERT INTO `tb_area` VALUES (651, 645, '向阳区', '230803', '0454', 'district');
INSERT INTO `tb_area` VALUES (652, 645, '郊区', '230811', '0454', 'district');
INSERT INTO `tb_area` VALUES (653, 645, '抚远市', '230883', '0454', 'district');
INSERT INTO `tb_area` VALUES (654, 645, '富锦市', '230882', '0454', 'district');
INSERT INTO `tb_area` VALUES (655, 645, '桦南县', '230822', '0454', 'district');
INSERT INTO `tb_area` VALUES (656, 0, '新疆维吾尔自治区', '650000', '', 'province');
INSERT INTO `tb_area` VALUES (657, 656, '北屯市', '659005', '1906', 'city');
INSERT INTO `tb_area` VALUES (658, 657, '兵团一八七团', '659005', '1906', 'street');
INSERT INTO `tb_area` VALUES (659, 657, '北屯镇', '659005', '1906', 'street');
INSERT INTO `tb_area` VALUES (660, 657, '兵团一八八团', '659005', '1906', 'street');
INSERT INTO `tb_area` VALUES (661, 657, '兵团一八三团', '659005', '1906', 'street');
INSERT INTO `tb_area` VALUES (662, 656, '铁门关市', '659006', '1996', 'city');
INSERT INTO `tb_area` VALUES (663, 662, '农二师三十团', '659006', '1996', 'street');
INSERT INTO `tb_area` VALUES (664, 662, '兵团二十九团', '659006', '1996', 'street');
INSERT INTO `tb_area` VALUES (665, 656, '双河市', '659007', '1909', 'city');
INSERT INTO `tb_area` VALUES (666, 665, '兵团八十九团', '659007', '1909', 'street');
INSERT INTO `tb_area` VALUES (667, 665, '兵团八十六团', '659007', '1909', 'street');
INSERT INTO `tb_area` VALUES (668, 665, '兵团八十四团', '659007', '1909', 'street');
INSERT INTO `tb_area` VALUES (669, 665, '兵团九十团', '659007', '1909', 'street');
INSERT INTO `tb_area` VALUES (670, 665, '兵团八十一团', '659007', '1909', 'street');
INSERT INTO `tb_area` VALUES (671, 656, '可克达拉市', '659008', '1999', 'city');
INSERT INTO `tb_area` VALUES (672, 671, '兵团六十八团', '659008', '1999', 'street');
INSERT INTO `tb_area` VALUES (673, 671, '都拉塔口岸', '659008', '1999', 'street');
INSERT INTO `tb_area` VALUES (674, 671, '兵团六十七团', '659008', '1999', 'street');
INSERT INTO `tb_area` VALUES (675, 671, '兵团六十六团', '659008', '1999', 'street');
INSERT INTO `tb_area` VALUES (676, 671, '兵团六十三团', '659008', '1999', 'street');
INSERT INTO `tb_area` VALUES (677, 671, '兵团六十四团', '659008', '1999', 'street');
INSERT INTO `tb_area` VALUES (678, 656, '博尔塔拉蒙古自治州', '652700', '0909', 'city');
INSERT INTO `tb_area` VALUES (679, 678, '温泉县', '652723', '0909', 'district');
INSERT INTO `tb_area` VALUES (680, 678, '阿拉山口市', '652702', '0909', 'district');
INSERT INTO `tb_area` VALUES (681, 678, '博乐市', '652701', '0909', 'district');
INSERT INTO `tb_area` VALUES (682, 678, '精河县', '652722', '0909', 'district');
INSERT INTO `tb_area` VALUES (683, 656, '塔城地区', '654200', '0901', 'city');
INSERT INTO `tb_area` VALUES (684, 683, '塔城市', '654201', '0901', 'district');
INSERT INTO `tb_area` VALUES (685, 683, '额敏县', '654221', '0901', 'district');
INSERT INTO `tb_area` VALUES (686, 683, '和布克赛尔蒙古自治县', '654226', '0901', 'district');
INSERT INTO `tb_area` VALUES (687, 683, '裕民县', '654225', '0901', 'district');
INSERT INTO `tb_area` VALUES (688, 683, '托里县', '654224', '0901', 'district');
INSERT INTO `tb_area` VALUES (689, 683, '沙湾县', '654223', '0901', 'district');
INSERT INTO `tb_area` VALUES (690, 683, '乌苏市', '654202', '0901', 'district');
INSERT INTO `tb_area` VALUES (691, 656, '和田地区', '653200', '0903', 'city');
INSERT INTO `tb_area` VALUES (692, 691, '于田县', '653226', '0903', 'district');
INSERT INTO `tb_area` VALUES (693, 691, '民丰县', '653227', '0903', 'district');
INSERT INTO `tb_area` VALUES (694, 691, '和田市', '653201', '0903', 'district');
INSERT INTO `tb_area` VALUES (695, 691, '和田县', '653221', '0903', 'district');
INSERT INTO `tb_area` VALUES (696, 691, '洛浦县', '653224', '0903', 'district');
INSERT INTO `tb_area` VALUES (697, 691, '皮山县', '653223', '0903', 'district');
INSERT INTO `tb_area` VALUES (698, 691, '墨玉县', '653222', '0903', 'district');
INSERT INTO `tb_area` VALUES (699, 691, '策勒县', '653225', '0903', 'district');
INSERT INTO `tb_area` VALUES (700, 656, '阿勒泰地区', '654300', '0906', 'city');
INSERT INTO `tb_area` VALUES (701, 700, '布尔津县', '654321', '0906', 'district');
INSERT INTO `tb_area` VALUES (702, 700, '哈巴河县', '654324', '0906', 'district');
INSERT INTO `tb_area` VALUES (703, 700, '富蕴县', '654322', '0906', 'district');
INSERT INTO `tb_area` VALUES (704, 700, '吉木乃县', '654326', '0906', 'district');
INSERT INTO `tb_area` VALUES (705, 700, '青河县', '654325', '0906', 'district');
INSERT INTO `tb_area` VALUES (706, 700, '阿勒泰市', '654301', '0906', 'district');
INSERT INTO `tb_area` VALUES (707, 700, '福海县', '654323', '0906', 'district');
INSERT INTO `tb_area` VALUES (708, 656, '昆玉市', '659009', '1903', 'city');
INSERT INTO `tb_area` VALUES (709, 708, '阔依其乡', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (710, 708, '兵团一牧场', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (711, 708, '兵团二二四团', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (712, 708, '乌尔其乡', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (713, 708, '兵团四十七团', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (714, 708, '博斯坦乡', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (715, 708, '普恰克其乡', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (716, 708, '奴尔乡', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (717, 708, '兵团皮山农场', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (718, 708, '喀拉喀什镇', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (719, 708, '乌鲁克萨依乡', '659009', '1903', 'street');
INSERT INTO `tb_area` VALUES (720, 656, '克拉玛依市', '650200', '0990', 'city');
INSERT INTO `tb_area` VALUES (721, 720, '乌尔禾区', '650205', '0990', 'district');
INSERT INTO `tb_area` VALUES (722, 720, '白碱滩区', '650204', '0990', 'district');
INSERT INTO `tb_area` VALUES (723, 720, '克拉玛依区', '650203', '0990', 'district');
INSERT INTO `tb_area` VALUES (724, 720, '独山子区', '650202', '0990', 'district');
INSERT INTO `tb_area` VALUES (725, 656, '石河子市', '659001', '0993', 'city');
INSERT INTO `tb_area` VALUES (726, 725, '兵团一五二团', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (727, 725, '向阳街道', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (728, 725, '红山街道', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (729, 725, '东城街道', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (730, 725, '石河子乡', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (731, 725, '老街街道', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (732, 725, '新城街道', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (733, 725, '北泉镇', '659001', '0993', 'street');
INSERT INTO `tb_area` VALUES (734, 656, '昌吉回族自治州', '652300', '0994', 'city');
INSERT INTO `tb_area` VALUES (735, 734, '奇台县', '652325', '0994', 'district');
INSERT INTO `tb_area` VALUES (736, 734, '玛纳斯县', '652324', '0994', 'district');
INSERT INTO `tb_area` VALUES (737, 734, '呼图壁县', '652323', '0994', 'district');
INSERT INTO `tb_area` VALUES (738, 734, '木垒哈萨克自治县', '652328', '0994', 'district');
INSERT INTO `tb_area` VALUES (739, 734, '阜康市', '652302', '0994', 'district');
INSERT INTO `tb_area` VALUES (740, 734, '昌吉市', '652301', '0994', 'district');
INSERT INTO `tb_area` VALUES (741, 734, '吉木萨尔县', '652327', '0994', 'district');
INSERT INTO `tb_area` VALUES (742, 656, '五家渠市', '659004', '1994', 'city');
INSERT INTO `tb_area` VALUES (743, 742, '兵团一零二团', '659004', '1994', 'street');
INSERT INTO `tb_area` VALUES (744, 742, '军垦路街道', '659004', '1994', 'street');
INSERT INTO `tb_area` VALUES (745, 742, '人民路街道', '659004', '1994', 'street');
INSERT INTO `tb_area` VALUES (746, 742, '兵团一零一团', '659004', '1994', 'street');
INSERT INTO `tb_area` VALUES (747, 742, '兵团一零三团', '659004', '1994', 'street');
INSERT INTO `tb_area` VALUES (748, 742, '青湖路街道', '659004', '1994', 'street');
INSERT INTO `tb_area` VALUES (749, 656, '巴音郭楞蒙古自治州', '652800', '0996', 'city');
INSERT INTO `tb_area` VALUES (750, 749, '和静县', '652827', '0996', 'district');
INSERT INTO `tb_area` VALUES (751, 749, '和硕县', '652828', '0996', 'district');
INSERT INTO `tb_area` VALUES (752, 749, '焉耆回族自治县', '652826', '0996', 'district');
INSERT INTO `tb_area` VALUES (753, 749, '博湖县', '652829', '0996', 'district');
INSERT INTO `tb_area` VALUES (754, 749, '若羌县', '652824', '0996', 'district');
INSERT INTO `tb_area` VALUES (755, 749, '且末县', '652825', '0996', 'district');
INSERT INTO `tb_area` VALUES (756, 749, '库尔勒市', '652801', '0996', 'district');
INSERT INTO `tb_area` VALUES (757, 749, '轮台县', '652822', '0996', 'district');
INSERT INTO `tb_area` VALUES (758, 749, '尉犁县', '652823', '0996', 'district');
INSERT INTO `tb_area` VALUES (759, 656, '乌鲁木齐市', '650100', '0991', 'city');
INSERT INTO `tb_area` VALUES (760, 759, '达坂城区', '650107', '0991', 'district');
INSERT INTO `tb_area` VALUES (761, 759, '天山区', '650102', '0991', 'district');
INSERT INTO `tb_area` VALUES (762, 759, '沙依巴克区', '650103', '0991', 'district');
INSERT INTO `tb_area` VALUES (763, 759, '水磨沟区', '650105', '0991', 'district');
INSERT INTO `tb_area` VALUES (764, 759, '米东区', '650109', '0991', 'district');
INSERT INTO `tb_area` VALUES (765, 759, '新市区', '650104', '0991', 'district');
INSERT INTO `tb_area` VALUES (766, 759, '乌鲁木齐县', '650121', '0991', 'district');
INSERT INTO `tb_area` VALUES (767, 759, '头屯河区', '650106', '0991', 'district');
INSERT INTO `tb_area` VALUES (768, 656, '伊犁哈萨克自治州', '654000', '0999', 'city');
INSERT INTO `tb_area` VALUES (769, 768, '奎屯市', '654003', '0999', 'district');
INSERT INTO `tb_area` VALUES (770, 768, '伊宁县', '654021', '0999', 'district');
INSERT INTO `tb_area` VALUES (771, 768, '尼勒克县', '654028', '0999', 'district');
INSERT INTO `tb_area` VALUES (772, 768, '巩留县', '654024', '0999', 'district');
INSERT INTO `tb_area` VALUES (773, 768, '新源县', '654025', '0999', 'district');
INSERT INTO `tb_area` VALUES (774, 768, '特克斯县', '654027', '0999', 'district');
INSERT INTO `tb_area` VALUES (775, 768, '昭苏县', '654026', '0999', 'district');
INSERT INTO `tb_area` VALUES (776, 768, '霍城县', '654023', '0999', 'district');
INSERT INTO `tb_area` VALUES (777, 768, '伊宁市', '654002', '0999', 'district');
INSERT INTO `tb_area` VALUES (778, 768, '察布查尔锡伯自治县', '654022', '0999', 'district');
INSERT INTO `tb_area` VALUES (779, 768, '霍尔果斯市', '654004', '0999', 'district');
INSERT INTO `tb_area` VALUES (780, 656, '阿克苏地区', '652900', '0997', 'city');
INSERT INTO `tb_area` VALUES (781, 780, '拜城县', '652926', '0997', 'district');
INSERT INTO `tb_area` VALUES (782, 780, '库车县', '652923', '0997', 'district');
INSERT INTO `tb_area` VALUES (783, 780, '温宿县', '652922', '0997', 'district');
INSERT INTO `tb_area` VALUES (784, 780, '新和县', '652925', '0997', 'district');
INSERT INTO `tb_area` VALUES (785, 780, '沙雅县', '652924', '0997', 'district');
INSERT INTO `tb_area` VALUES (786, 780, '阿克苏市', '652901', '0997', 'district');
INSERT INTO `tb_area` VALUES (787, 780, '柯坪县', '652929', '0997', 'district');
INSERT INTO `tb_area` VALUES (788, 780, '阿瓦提县', '652928', '0997', 'district');
INSERT INTO `tb_area` VALUES (789, 780, '乌什县', '652927', '0997', 'district');
INSERT INTO `tb_area` VALUES (790, 656, '阿拉尔市', '659002', '1997', 'city');
INSERT INTO `tb_area` VALUES (791, 790, '幸福路街道', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (792, 790, '阿拉尔农场', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (793, 790, '兵团第一师幸福农场', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (794, 790, '工业园区', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (795, 790, '兵团七团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (796, 790, '兵团十一团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (797, 790, '青松路街道', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (798, 790, '托喀依乡', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (799, 790, '兵团第一师水利水电工程处', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (800, 790, '兵团八团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (801, 790, '中心监狱', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (802, 790, '兵团第一师塔里木灌区水利管理处', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (803, 790, '兵团十四团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (804, 790, '兵团十六团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (805, 790, '兵团十二团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (806, 790, '金银川路街道', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (807, 790, '兵团十团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (808, 790, '兵团十三团', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (809, 790, '南口街道', '659002', '1997', 'street');
INSERT INTO `tb_area` VALUES (810, 656, '图木舒克市', '659003', '1998', 'city');
INSERT INTO `tb_area` VALUES (811, 810, '兵团四十九团', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (812, 810, '兵团图木舒克市永安坝', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (813, 810, '兵团五十一团', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (814, 810, '前海街道', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (815, 810, '兵团图木舒克市喀拉拜勒镇', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (816, 810, '永安坝街道', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (817, 810, '齐干却勒街道', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (818, 810, '兵团五十三团', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (819, 810, '兵团五十团', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (820, 810, '兵团四十四团', '659003', '1998', 'street');
INSERT INTO `tb_area` VALUES (821, 656, '喀什地区', '653100', '0998', 'city');
INSERT INTO `tb_area` VALUES (822, 821, '伽师县', '653129', '0998', 'district');
INSERT INTO `tb_area` VALUES (823, 821, '疏勒县', '653122', '0998', 'district');
INSERT INTO `tb_area` VALUES (824, 821, '麦盖提县', '653127', '0998', 'district');
INSERT INTO `tb_area` VALUES (825, 821, '岳普湖县', '653128', '0998', 'district');
INSERT INTO `tb_area` VALUES (826, 821, '莎车县', '653125', '0998', 'district');
INSERT INTO `tb_area` VALUES (827, 821, '叶城县', '653126', '0998', 'district');
INSERT INTO `tb_area` VALUES (828, 821, '塔什库尔干塔吉克自治县', '653131', '0998', 'district');
INSERT INTO `tb_area` VALUES (829, 821, '泽普县', '653124', '0998', 'district');
INSERT INTO `tb_area` VALUES (830, 821, '巴楚县', '653130', '0998', 'district');
INSERT INTO `tb_area` VALUES (831, 821, '疏附县', '653121', '0998', 'district');
INSERT INTO `tb_area` VALUES (832, 821, '英吉沙县', '653123', '0998', 'district');
INSERT INTO `tb_area` VALUES (833, 821, '喀什市', '653101', '0998', 'district');
INSERT INTO `tb_area` VALUES (834, 656, '克孜勒苏柯尔克孜自治州', '653000', '0908', 'city');
INSERT INTO `tb_area` VALUES (835, 834, '阿图什市', '653001', '0908', 'district');
INSERT INTO `tb_area` VALUES (836, 834, '乌恰县', '653024', '0908', 'district');
INSERT INTO `tb_area` VALUES (837, 834, '阿合奇县', '653023', '0908', 'district');
INSERT INTO `tb_area` VALUES (838, 834, '阿克陶县', '653022', '0908', 'district');
INSERT INTO `tb_area` VALUES (839, 656, '哈密市', '650500', '0902', 'city');
INSERT INTO `tb_area` VALUES (840, 839, '伊吾县', '650522', '0902', 'district');
INSERT INTO `tb_area` VALUES (841, 839, '巴里坤哈萨克自治县', '650521', '0902', 'district');
INSERT INTO `tb_area` VALUES (842, 839, '伊州区', '650502', '0902', 'district');
INSERT INTO `tb_area` VALUES (843, 656, '吐鲁番市', '650400', '0995', 'city');
INSERT INTO `tb_area` VALUES (844, 843, '高昌区', '650402', '0995', 'district');
INSERT INTO `tb_area` VALUES (845, 843, '鄯善县', '650421', '0995', 'district');
INSERT INTO `tb_area` VALUES (846, 843, '托克逊县', '650422', '0995', 'district');
INSERT INTO `tb_area` VALUES (847, 0, '湖北省', '420000', '', 'province');
INSERT INTO `tb_area` VALUES (848, 847, '十堰市', '420300', '0719', 'city');
INSERT INTO `tb_area` VALUES (849, 848, '郧阳区', '420304', '0719', 'district');
INSERT INTO `tb_area` VALUES (850, 848, '丹江口市', '420381', '0719', 'district');
INSERT INTO `tb_area` VALUES (851, 848, '张湾区', '420303', '0719', 'district');
INSERT INTO `tb_area` VALUES (852, 848, '茅箭区', '420302', '0719', 'district');
INSERT INTO `tb_area` VALUES (853, 848, '竹山县', '420323', '0719', 'district');
INSERT INTO `tb_area` VALUES (854, 848, '竹溪县', '420324', '0719', 'district');
INSERT INTO `tb_area` VALUES (855, 848, '房县', '420325', '0719', 'district');
INSERT INTO `tb_area` VALUES (856, 848, '郧西县', '420322', '0719', 'district');
INSERT INTO `tb_area` VALUES (857, 847, '襄阳市', '420600', '0710', 'city');
INSERT INTO `tb_area` VALUES (858, 857, '老河口市', '420682', '0710', 'district');
INSERT INTO `tb_area` VALUES (859, 857, '谷城县', '420625', '0710', 'district');
INSERT INTO `tb_area` VALUES (860, 857, '枣阳市', '420683', '0710', 'district');
INSERT INTO `tb_area` VALUES (861, 857, '保康县', '420626', '0710', 'district');
INSERT INTO `tb_area` VALUES (862, 857, '南漳县', '420624', '0710', 'district');
INSERT INTO `tb_area` VALUES (863, 857, '宜城市', '420684', '0710', 'district');
INSERT INTO `tb_area` VALUES (864, 857, '襄城区', '420602', '0710', 'district');
INSERT INTO `tb_area` VALUES (865, 857, '襄州区', '420607', '0710', 'district');
INSERT INTO `tb_area` VALUES (866, 857, '樊城区', '420606', '0710', 'district');
INSERT INTO `tb_area` VALUES (867, 847, '荆门市', '420800', '0724', 'city');
INSERT INTO `tb_area` VALUES (868, 867, '东宝区', '420802', '0724', 'district');
INSERT INTO `tb_area` VALUES (869, 867, '钟祥市', '420881', '0724', 'district');
INSERT INTO `tb_area` VALUES (870, 867, '京山市', '420882', '0724', 'district');
INSERT INTO `tb_area` VALUES (871, 867, '掇刀区', '420804', '0724', 'district');
INSERT INTO `tb_area` VALUES (872, 867, '沙洋县', '420822', '0724', 'district');
INSERT INTO `tb_area` VALUES (873, 847, '宜昌市', '420500', '0717', 'city');
INSERT INTO `tb_area` VALUES (874, 873, '兴山县', '420526', '0717', 'district');
INSERT INTO `tb_area` VALUES (875, 873, '远安县', '420525', '0717', 'district');
INSERT INTO `tb_area` VALUES (876, 873, '秭归县', '420527', '0717', 'district');
INSERT INTO `tb_area` VALUES (877, 873, '当阳市', '420582', '0717', 'district');
INSERT INTO `tb_area` VALUES (878, 873, '长阳土家族自治县', '420528', '0717', 'district');
INSERT INTO `tb_area` VALUES (879, 873, '点军区', '420504', '0717', 'district');
INSERT INTO `tb_area` VALUES (880, 873, '伍家岗区', '420503', '0717', 'district');
INSERT INTO `tb_area` VALUES (881, 873, '枝江市', '420583', '0717', 'district');
INSERT INTO `tb_area` VALUES (882, 873, '宜都市', '420581', '0717', 'district');
INSERT INTO `tb_area` VALUES (883, 873, '猇亭区', '420505', '0717', 'district');
INSERT INTO `tb_area` VALUES (884, 873, '五峰土家族自治县', '420529', '0717', 'district');
INSERT INTO `tb_area` VALUES (885, 873, '西陵区', '420502', '0717', 'district');
INSERT INTO `tb_area` VALUES (886, 873, '夷陵区', '420506', '0717', 'district');
INSERT INTO `tb_area` VALUES (887, 847, '武汉市', '420100', '027', 'city');
INSERT INTO `tb_area` VALUES (888, 887, '黄陂区', '420116', '027', 'district');
INSERT INTO `tb_area` VALUES (889, 887, '新洲区', '420117', '027', 'district');
INSERT INTO `tb_area` VALUES (890, 887, '江岸区', '420102', '027', 'district');
INSERT INTO `tb_area` VALUES (891, 887, '汉南区', '420113', '027', 'district');
INSERT INTO `tb_area` VALUES (892, 887, '蔡甸区', '420114', '027', 'district');
INSERT INTO `tb_area` VALUES (893, 887, '江汉区', '420103', '027', 'district');
INSERT INTO `tb_area` VALUES (894, 887, '青山区', '420107', '027', 'district');
INSERT INTO `tb_area` VALUES (895, 887, '江夏区', '420115', '027', 'district');
INSERT INTO `tb_area` VALUES (896, 887, '武昌区', '420106', '027', 'district');
INSERT INTO `tb_area` VALUES (897, 887, '洪山区', '420111', '027', 'district');
INSERT INTO `tb_area` VALUES (898, 887, '硚口区', '420104', '027', 'district');
INSERT INTO `tb_area` VALUES (899, 887, '东西湖区', '420112', '027', 'district');
INSERT INTO `tb_area` VALUES (900, 887, '汉阳区', '420105', '027', 'district');
INSERT INTO `tb_area` VALUES (901, 847, '黄冈市', '421100', '0713', 'city');
INSERT INTO `tb_area` VALUES (902, 901, '红安县', '421122', '0713', 'district');
INSERT INTO `tb_area` VALUES (903, 901, '罗田县', '421123', '0713', 'district');
INSERT INTO `tb_area` VALUES (904, 901, '英山县', '421124', '0713', 'district');
INSERT INTO `tb_area` VALUES (905, 901, '麻城市', '421181', '0713', 'district');
INSERT INTO `tb_area` VALUES (906, 901, '团风县', '421121', '0713', 'district');
INSERT INTO `tb_area` VALUES (907, 901, '浠水县', '421125', '0713', 'district');
INSERT INTO `tb_area` VALUES (908, 901, '蕲春县', '421126', '0713', 'district');
INSERT INTO `tb_area` VALUES (909, 901, '黄州区', '421102', '0713', 'district');
INSERT INTO `tb_area` VALUES (910, 901, '黄梅县', '421127', '0713', 'district');
INSERT INTO `tb_area` VALUES (911, 901, '武穴市', '421182', '0713', 'district');
INSERT INTO `tb_area` VALUES (912, 847, '天门市', '429006', '1728', 'city');
INSERT INTO `tb_area` VALUES (913, 912, '胡市镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (914, 912, '黄潭镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (915, 912, '多祥镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (916, 912, '沉湖管委会', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (917, 912, '干驿镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (918, 912, '横林镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (919, 912, '马湾镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (920, 912, '蒋湖农场', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (921, 912, '小板镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (922, 912, '岳口镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (923, 912, '多宝镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (924, 912, '蒋场镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (925, 912, '石家河镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (926, 912, '彭市镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (927, 912, '佛子山镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (928, 912, '九真镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (929, 912, '竟陵街道', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (930, 912, '侨乡街道开发区', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (931, 912, '麻洋镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (932, 912, '杨林街道', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (933, 912, '汪场镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (934, 912, '白茅湖农场', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (935, 912, '张港镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (936, 912, '渔薪镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (937, 912, '皂市镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (938, 912, '拖市镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (939, 912, '净潭乡', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (940, 912, '卢市镇', '429006', '1728', 'street');
INSERT INTO `tb_area` VALUES (941, 847, '孝感市', '420900', '0712', 'city');
INSERT INTO `tb_area` VALUES (942, 941, '大悟县', '420922', '0712', 'district');
INSERT INTO `tb_area` VALUES (943, 941, '安陆市', '420982', '0712', 'district');
INSERT INTO `tb_area` VALUES (944, 941, '云梦县', '420923', '0712', 'district');
INSERT INTO `tb_area` VALUES (945, 941, '应城市', '420981', '0712', 'district');
INSERT INTO `tb_area` VALUES (946, 941, '孝南区', '420902', '0712', 'district');
INSERT INTO `tb_area` VALUES (947, 941, '汉川市', '420984', '0712', 'district');
INSERT INTO `tb_area` VALUES (948, 941, '孝昌县', '420921', '0712', 'district');
INSERT INTO `tb_area` VALUES (949, 847, '潜江市', '429005', '2728', 'city');
INSERT INTO `tb_area` VALUES (950, 949, '积玉口镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (951, 949, '泰丰街道', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (952, 949, '广华街道', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (953, 949, '周矶管理区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (954, 949, '潜江经济开发区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (955, 949, '高场街道', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (956, 949, '周矶街道', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (957, 949, '总口管理区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (958, 949, '运粮湖管理区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (959, 949, '王场镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (960, 949, '园林街道', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (961, 949, '白鹭湖管理区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (962, 949, '竹根滩镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (963, 949, '渔洋镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (964, 949, '熊口镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (965, 949, '熊口管理区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (966, 949, '后湖管理区', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (967, 949, '江汉石油管理局', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (968, 949, '张金镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (969, 949, '杨市街道', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (970, 949, '老新镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (971, 949, '龙湾镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (972, 949, '浩口镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (973, 949, '高石碑镇', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (974, 949, '浩口原种场', '429005', '2728', 'street');
INSERT INTO `tb_area` VALUES (975, 847, '恩施土家族苗族自治州', '422800', '0718', 'city');
INSERT INTO `tb_area` VALUES (976, 975, '建始县', '422822', '0718', 'district');
INSERT INTO `tb_area` VALUES (977, 975, '恩施市', '422801', '0718', 'district');
INSERT INTO `tb_area` VALUES (978, 975, '利川市', '422802', '0718', 'district');
INSERT INTO `tb_area` VALUES (979, 975, '鹤峰县', '422828', '0718', 'district');
INSERT INTO `tb_area` VALUES (980, 975, '来凤县', '422827', '0718', 'district');
INSERT INTO `tb_area` VALUES (981, 975, '宣恩县', '422825', '0718', 'district');
INSERT INTO `tb_area` VALUES (982, 975, '巴东县', '422823', '0718', 'district');
INSERT INTO `tb_area` VALUES (983, 975, '咸丰县', '422826', '0718', 'district');
INSERT INTO `tb_area` VALUES (984, 847, '仙桃市', '429004', '0728', 'city');
INSERT INTO `tb_area` VALUES (985, 984, '畜禽良种场', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (986, 984, '工业园区', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (987, 984, '豆河镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (988, 984, '沙湖镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (989, 984, '通海口镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (990, 984, '胡场镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (991, 984, '长倘口镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (992, 984, '五湖渔场', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (993, 984, '干河街道', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (994, 984, '杨林尾镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (995, 984, '西流河镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (996, 984, '赵西垸林场', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (997, 984, '九合垸原种场', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (998, 984, '彭场镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (999, 984, '沔城回族镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1000, 984, '龙华山街道', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1001, 984, '沙湖原种场', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1002, 984, '陈场镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1003, 984, '郑场镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1004, 984, '郭河镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1005, 984, '排湖风景区', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1006, 984, '沙嘴街道', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1007, 984, '毛嘴镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1008, 984, '张沟镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1009, 984, '三伏潭镇', '429004', '0728', 'street');
INSERT INTO `tb_area` VALUES (1010, 847, '荆州市', '421000', '0716', 'city');
INSERT INTO `tb_area` VALUES (1011, 1010, '荆州区', '421003', '0716', 'district');
INSERT INTO `tb_area` VALUES (1012, 1010, '江陵县', '421024', '0716', 'district');
INSERT INTO `tb_area` VALUES (1013, 1010, '洪湖市', '421083', '0716', 'district');
INSERT INTO `tb_area` VALUES (1014, 1010, '监利县', '421023', '0716', 'district');
INSERT INTO `tb_area` VALUES (1015, 1010, '石首市', '421081', '0716', 'district');
INSERT INTO `tb_area` VALUES (1016, 1010, '松滋市', '421087', '0716', 'district');
INSERT INTO `tb_area` VALUES (1017, 1010, '沙市区', '421002', '0716', 'district');
INSERT INTO `tb_area` VALUES (1018, 1010, '公安县', '421022', '0716', 'district');
INSERT INTO `tb_area` VALUES (1019, 847, '咸宁市', '421200', '0715', 'city');
INSERT INTO `tb_area` VALUES (1020, 1019, '嘉鱼县', '421221', '0715', 'district');
INSERT INTO `tb_area` VALUES (1021, 1019, '咸安区', '421202', '0715', 'district');
INSERT INTO `tb_area` VALUES (1022, 1019, '通山县', '421224', '0715', 'district');
INSERT INTO `tb_area` VALUES (1023, 1019, '崇阳县', '421223', '0715', 'district');
INSERT INTO `tb_area` VALUES (1024, 1019, '赤壁市', '421281', '0715', 'district');
INSERT INTO `tb_area` VALUES (1025, 1019, '通城县', '421222', '0715', 'district');
INSERT INTO `tb_area` VALUES (1026, 847, '神农架林区', '429021', '1719', 'city');
INSERT INTO `tb_area` VALUES (1027, 1026, '木鱼镇', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1028, 1026, '下谷坪土家族乡', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1029, 1026, '新华镇', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1030, 1026, '九湖镇', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1031, 1026, '宋洛乡', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1032, 1026, '松柏镇', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1033, 1026, '红坪镇', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1034, 1026, '阳日镇', '429021', '1719', 'street');
INSERT INTO `tb_area` VALUES (1035, 847, '随州市', '421300', '0722', 'city');
INSERT INTO `tb_area` VALUES (1036, 1035, '广水市', '421381', '0722', 'district');
INSERT INTO `tb_area` VALUES (1037, 1035, '曾都区', '421303', '0722', 'district');
INSERT INTO `tb_area` VALUES (1038, 1035, '随县', '421321', '0722', 'district');
INSERT INTO `tb_area` VALUES (1039, 847, '鄂州市', '420700', '0711', 'city');
INSERT INTO `tb_area` VALUES (1040, 1039, '华容区', '420703', '0711', 'district');
INSERT INTO `tb_area` VALUES (1041, 1039, '梁子湖区', '420702', '0711', 'district');
INSERT INTO `tb_area` VALUES (1042, 1039, '鄂城区', '420704', '0711', 'district');
INSERT INTO `tb_area` VALUES (1043, 847, '黄石市', '420200', '0714', 'city');
INSERT INTO `tb_area` VALUES (1044, 1043, '铁山区', '420205', '0714', 'district');
INSERT INTO `tb_area` VALUES (1045, 1043, '下陆区', '420204', '0714', 'district');
INSERT INTO `tb_area` VALUES (1046, 1043, '西塞山区', '420203', '0714', 'district');
INSERT INTO `tb_area` VALUES (1047, 1043, '大冶市', '420281', '0714', 'district');
INSERT INTO `tb_area` VALUES (1048, 1043, '阳新县', '420222', '0714', 'district');
INSERT INTO `tb_area` VALUES (1049, 1043, '黄石港区', '420202', '0714', 'district');
INSERT INTO `tb_area` VALUES (1050, 0, '辽宁省', '210000', '', 'province');
INSERT INTO `tb_area` VALUES (1051, 1050, '葫芦岛市', '211400', '0429', 'city');
INSERT INTO `tb_area` VALUES (1052, 1051, '建昌县', '211422', '0429', 'district');
INSERT INTO `tb_area` VALUES (1053, 1051, '龙港区', '211403', '0429', 'district');
INSERT INTO `tb_area` VALUES (1054, 1051, '兴城市', '211481', '0429', 'district');
INSERT INTO `tb_area` VALUES (1055, 1051, '绥中县', '211421', '0429', 'district');
INSERT INTO `tb_area` VALUES (1056, 1051, '南票区', '211404', '0429', 'district');
INSERT INTO `tb_area` VALUES (1057, 1051, '连山区', '211402', '0429', 'district');
INSERT INTO `tb_area` VALUES (1058, 1050, '大连市', '210200', '0411', 'city');
INSERT INTO `tb_area` VALUES (1059, 1058, '瓦房店市', '210281', '0411', 'district');
INSERT INTO `tb_area` VALUES (1060, 1058, '庄河市', '210283', '0411', 'district');
INSERT INTO `tb_area` VALUES (1061, 1058, '普兰店区', '210214', '0411', 'district');
INSERT INTO `tb_area` VALUES (1062, 1058, '金州区', '210213', '0411', 'district');
INSERT INTO `tb_area` VALUES (1063, 1058, '长海县', '210224', '0411', 'district');
INSERT INTO `tb_area` VALUES (1064, 1058, '甘井子区', '210211', '0411', 'district');
INSERT INTO `tb_area` VALUES (1065, 1058, '旅顺口区', '210212', '0411', 'district');
INSERT INTO `tb_area` VALUES (1066, 1058, '中山区', '210202', '0411', 'district');
INSERT INTO `tb_area` VALUES (1067, 1058, '西岗区', '210203', '0411', 'district');
INSERT INTO `tb_area` VALUES (1068, 1058, '沙河口区', '210204', '0411', 'district');
INSERT INTO `tb_area` VALUES (1069, 1050, '丹东市', '210600', '0415', 'city');
INSERT INTO `tb_area` VALUES (1070, 1069, '凤城市', '210682', '0415', 'district');
INSERT INTO `tb_area` VALUES (1071, 1069, '振安区', '210604', '0415', 'district');
INSERT INTO `tb_area` VALUES (1072, 1069, '东港市', '210681', '0415', 'district');
INSERT INTO `tb_area` VALUES (1073, 1069, '振兴区', '210603', '0415', 'district');
INSERT INTO `tb_area` VALUES (1074, 1069, '元宝区', '210602', '0415', 'district');
INSERT INTO `tb_area` VALUES (1075, 1069, '宽甸满族自治县', '210624', '0415', 'district');
INSERT INTO `tb_area` VALUES (1076, 1050, '锦州市', '210700', '0416', 'city');
INSERT INTO `tb_area` VALUES (1077, 1076, '黑山县', '210726', '0416', 'district');
INSERT INTO `tb_area` VALUES (1078, 1076, '义县', '210727', '0416', 'district');
INSERT INTO `tb_area` VALUES (1079, 1076, '太和区', '210711', '0416', 'district');
INSERT INTO `tb_area` VALUES (1080, 1076, '凌海市', '210781', '0416', 'district');
INSERT INTO `tb_area` VALUES (1081, 1076, '北镇市', '210782', '0416', 'district');
INSERT INTO `tb_area` VALUES (1082, 1076, '古塔区', '210702', '0416', 'district');
INSERT INTO `tb_area` VALUES (1083, 1076, '凌河区', '210703', '0416', 'district');
INSERT INTO `tb_area` VALUES (1084, 1050, '抚顺市', '210400', '0413', 'city');
INSERT INTO `tb_area` VALUES (1085, 1084, '新宾满族自治县', '210422', '0413', 'district');
INSERT INTO `tb_area` VALUES (1086, 1084, '清原满族自治县', '210423', '0413', 'district');
INSERT INTO `tb_area` VALUES (1087, 1084, '顺城区', '210411', '0413', 'district');
INSERT INTO `tb_area` VALUES (1088, 1084, '抚顺县', '210421', '0413', 'district');
INSERT INTO `tb_area` VALUES (1089, 1084, '望花区', '210404', '0413', 'district');
INSERT INTO `tb_area` VALUES (1090, 1084, '新抚区', '210402', '0413', 'district');
INSERT INTO `tb_area` VALUES (1091, 1084, '东洲区', '210403', '0413', 'district');
INSERT INTO `tb_area` VALUES (1092, 1050, '沈阳市', '210100', '024', 'city');
INSERT INTO `tb_area` VALUES (1093, 1092, '新民市', '210181', '024', 'district');
INSERT INTO `tb_area` VALUES (1094, 1092, '沈北新区', '210113', '024', 'district');
INSERT INTO `tb_area` VALUES (1095, 1092, '浑南区', '210112', '024', 'district');
INSERT INTO `tb_area` VALUES (1096, 1092, '于洪区', '210114', '024', 'district');
INSERT INTO `tb_area` VALUES (1097, 1092, '皇姑区', '210105', '024', 'district');
INSERT INTO `tb_area` VALUES (1098, 1092, '和平区', '210102', '024', 'district');
INSERT INTO `tb_area` VALUES (1099, 1092, '苏家屯区', '210111', '024', 'district');
INSERT INTO `tb_area` VALUES (1100, 1092, '康平县', '210123', '024', 'district');
INSERT INTO `tb_area` VALUES (1101, 1092, '法库县', '210124', '024', 'district');
INSERT INTO `tb_area` VALUES (1102, 1092, '沈河区', '210103', '024', 'district');
INSERT INTO `tb_area` VALUES (1103, 1092, '大东区', '210104', '024', 'district');
INSERT INTO `tb_area` VALUES (1104, 1092, '铁西区', '210106', '024', 'district');
INSERT INTO `tb_area` VALUES (1105, 1092, '辽中区', '210115', '024', 'district');
INSERT INTO `tb_area` VALUES (1106, 1050, '铁岭市', '211200', '0410', 'city');
INSERT INTO `tb_area` VALUES (1107, 1106, '开原市', '211282', '0410', 'district');
INSERT INTO `tb_area` VALUES (1108, 1106, '清河区', '211204', '0410', 'district');
INSERT INTO `tb_area` VALUES (1109, 1106, '调兵山市', '211281', '0410', 'district');
INSERT INTO `tb_area` VALUES (1110, 1106, '铁岭县', '211221', '0410', 'district');
INSERT INTO `tb_area` VALUES (1111, 1106, '银州区', '211202', '0410', 'district');
INSERT INTO `tb_area` VALUES (1112, 1106, '西丰县', '211223', '0410', 'district');
INSERT INTO `tb_area` VALUES (1113, 1106, '昌图县', '211224', '0410', 'district');
INSERT INTO `tb_area` VALUES (1114, 1050, '营口市', '210800', '0417', 'city');
INSERT INTO `tb_area` VALUES (1115, 1114, '鲅鱼圈区', '210804', '0417', 'district');
INSERT INTO `tb_area` VALUES (1116, 1114, '大石桥市', '210882', '0417', 'district');
INSERT INTO `tb_area` VALUES (1117, 1114, '西市区', '210803', '0417', 'district');
INSERT INTO `tb_area` VALUES (1118, 1114, '盖州市', '210881', '0417', 'district');
INSERT INTO `tb_area` VALUES (1119, 1114, '老边区', '210811', '0417', 'district');
INSERT INTO `tb_area` VALUES (1120, 1114, '站前区', '210802', '0417', 'district');
INSERT INTO `tb_area` VALUES (1121, 1050, '朝阳市', '211300', '0421', 'city');
INSERT INTO `tb_area` VALUES (1122, 1121, '建平县', '211322', '0421', 'district');
INSERT INTO `tb_area` VALUES (1123, 1121, '北票市', '211381', '0421', 'district');
INSERT INTO `tb_area` VALUES (1124, 1121, '朝阳县', '211321', '0421', 'district');
INSERT INTO `tb_area` VALUES (1125, 1121, '双塔区', '211302', '0421', 'district');
INSERT INTO `tb_area` VALUES (1126, 1121, '龙城区', '211303', '0421', 'district');
INSERT INTO `tb_area` VALUES (1127, 1121, '凌源市', '211382', '0421', 'district');
INSERT INTO `tb_area` VALUES (1128, 1121, '喀喇沁左翼蒙古族自治县', '211324', '0421', 'district');
INSERT INTO `tb_area` VALUES (1129, 1050, '辽阳市', '211000', '0419', 'city');
INSERT INTO `tb_area` VALUES (1130, 1129, '弓长岭区', '211005', '0419', 'district');
INSERT INTO `tb_area` VALUES (1131, 1129, '太子河区', '211011', '0419', 'district');
INSERT INTO `tb_area` VALUES (1132, 1129, '辽阳县', '211021', '0419', 'district');
INSERT INTO `tb_area` VALUES (1133, 1129, '白塔区', '211002', '0419', 'district');
INSERT INTO `tb_area` VALUES (1134, 1129, '文圣区', '211003', '0419', 'district');
INSERT INTO `tb_area` VALUES (1135, 1129, '宏伟区', '211004', '0419', 'district');
INSERT INTO `tb_area` VALUES (1136, 1129, '灯塔市', '211081', '0419', 'district');
INSERT INTO `tb_area` VALUES (1137, 1050, '鞍山市', '210300', '0412', 'city');
INSERT INTO `tb_area` VALUES (1138, 1137, '台安县', '210321', '0412', 'district');
INSERT INTO `tb_area` VALUES (1139, 1137, '岫岩满族自治县', '210323', '0412', 'district');
INSERT INTO `tb_area` VALUES (1140, 1137, '铁东区', '210302', '0412', 'district');
INSERT INTO `tb_area` VALUES (1141, 1137, '千山区', '210311', '0412', 'district');
INSERT INTO `tb_area` VALUES (1142, 1137, '铁西区', '210303', '0412', 'district');
INSERT INTO `tb_area` VALUES (1143, 1137, '立山区', '210304', '0412', 'district');
INSERT INTO `tb_area` VALUES (1144, 1137, '海城市', '210381', '0412', 'district');
INSERT INTO `tb_area` VALUES (1145, 1050, '阜新市', '210900', '0418', 'city');
INSERT INTO `tb_area` VALUES (1146, 1145, '细河区', '210911', '0418', 'district');
INSERT INTO `tb_area` VALUES (1147, 1145, '太平区', '210904', '0418', 'district');
INSERT INTO `tb_area` VALUES (1148, 1145, '海州区', '210902', '0418', 'district');
INSERT INTO `tb_area` VALUES (1149, 1145, '清河门区', '210905', '0418', 'district');
INSERT INTO `tb_area` VALUES (1150, 1145, '阜新蒙古族自治县', '210921', '0418', 'district');
INSERT INTO `tb_area` VALUES (1151, 1145, '新邱区', '210903', '0418', 'district');
INSERT INTO `tb_area` VALUES (1152, 1145, '彰武县', '210922', '0418', 'district');
INSERT INTO `tb_area` VALUES (1153, 1050, '盘锦市', '211100', '0427', 'city');
INSERT INTO `tb_area` VALUES (1154, 1153, '盘山县', '211122', '0427', 'district');
INSERT INTO `tb_area` VALUES (1155, 1153, '大洼区', '211104', '0427', 'district');
INSERT INTO `tb_area` VALUES (1156, 1153, '双台子区', '211102', '0427', 'district');
INSERT INTO `tb_area` VALUES (1157, 1153, '兴隆台区', '211103', '0427', 'district');
INSERT INTO `tb_area` VALUES (1158, 1050, '本溪市', '210500', '0414', 'city');
INSERT INTO `tb_area` VALUES (1159, 1158, '桓仁满族自治县', '210522', '0414', 'district');
INSERT INTO `tb_area` VALUES (1160, 1158, '溪湖区', '210503', '0414', 'district');
INSERT INTO `tb_area` VALUES (1161, 1158, '南芬区', '210505', '0414', 'district');
INSERT INTO `tb_area` VALUES (1162, 1158, '平山区', '210502', '0414', 'district');
INSERT INTO `tb_area` VALUES (1163, 1158, '明山区', '210504', '0414', 'district');
INSERT INTO `tb_area` VALUES (1164, 1158, '本溪满族自治县', '210521', '0414', 'district');
INSERT INTO `tb_area` VALUES (1165, 0, '山东省', '370000', '', 'province');
INSERT INTO `tb_area` VALUES (1166, 1165, '烟台市', '370600', '0535', 'city');
INSERT INTO `tb_area` VALUES (1167, 1166, '长岛县', '370634', '0535', 'district');
INSERT INTO `tb_area` VALUES (1168, 1166, '芝罘区', '370602', '0535', 'district');
INSERT INTO `tb_area` VALUES (1169, 1166, '莱州市', '370683', '0535', 'district');
INSERT INTO `tb_area` VALUES (1170, 1166, '海阳市', '370687', '0535', 'district');
INSERT INTO `tb_area` VALUES (1171, 1166, '牟平区', '370612', '0535', 'district');
INSERT INTO `tb_area` VALUES (1172, 1166, '龙口市', '370681', '0535', 'district');
INSERT INTO `tb_area` VALUES (1173, 1166, '莱阳市', '370682', '0535', 'district');
INSERT INTO `tb_area` VALUES (1174, 1166, '蓬莱市', '370684', '0535', 'district');
INSERT INTO `tb_area` VALUES (1175, 1166, '招远市', '370685', '0535', 'district');
INSERT INTO `tb_area` VALUES (1176, 1166, '福山区', '370611', '0535', 'district');
INSERT INTO `tb_area` VALUES (1177, 1166, '莱山区', '370613', '0535', 'district');
INSERT INTO `tb_area` VALUES (1178, 1166, '栖霞市', '370686', '0535', 'district');
INSERT INTO `tb_area` VALUES (1179, 1165, '威海市', '371000', '0631', 'city');
INSERT INTO `tb_area` VALUES (1180, 1179, '环翠区', '371002', '0631', 'district');
INSERT INTO `tb_area` VALUES (1181, 1179, '荣成市', '371082', '0631', 'district');
INSERT INTO `tb_area` VALUES (1182, 1179, '文登区', '371003', '0631', 'district');
INSERT INTO `tb_area` VALUES (1183, 1179, '乳山市', '371083', '0631', 'district');
INSERT INTO `tb_area` VALUES (1184, 1165, '青岛市', '370200', '0532', 'city');
INSERT INTO `tb_area` VALUES (1185, 1184, '平度市', '370283', '0532', 'district');
INSERT INTO `tb_area` VALUES (1186, 1184, '莱西市', '370285', '0532', 'district');
INSERT INTO `tb_area` VALUES (1187, 1184, '崂山区', '370212', '0532', 'district');
INSERT INTO `tb_area` VALUES (1188, 1184, '即墨区', '370215', '0532', 'district');
INSERT INTO `tb_area` VALUES (1189, 1184, '李沧区', '370213', '0532', 'district');
INSERT INTO `tb_area` VALUES (1190, 1184, '黄岛区', '370211', '0532', 'district');
INSERT INTO `tb_area` VALUES (1191, 1184, '城阳区', '370214', '0532', 'district');
INSERT INTO `tb_area` VALUES (1192, 1184, '胶州市', '370281', '0532', 'district');
INSERT INTO `tb_area` VALUES (1193, 1184, '市北区', '370203', '0532', 'district');
INSERT INTO `tb_area` VALUES (1194, 1184, '市南区', '370202', '0532', 'district');
INSERT INTO `tb_area` VALUES (1195, 1165, '淄博市', '370300', '0533', 'city');
INSERT INTO `tb_area` VALUES (1196, 1195, '高青县', '370322', '0533', 'district');
INSERT INTO `tb_area` VALUES (1197, 1195, '桓台县', '370321', '0533', 'district');
INSERT INTO `tb_area` VALUES (1198, 1195, '临淄区', '370305', '0533', 'district');
INSERT INTO `tb_area` VALUES (1199, 1195, '张店区', '370303', '0533', 'district');
INSERT INTO `tb_area` VALUES (1200, 1195, '博山区', '370304', '0533', 'district');
INSERT INTO `tb_area` VALUES (1201, 1195, '沂源县', '370323', '0533', 'district');
INSERT INTO `tb_area` VALUES (1202, 1195, '淄川区', '370302', '0533', 'district');
INSERT INTO `tb_area` VALUES (1203, 1195, '周村区', '370306', '0533', 'district');
INSERT INTO `tb_area` VALUES (1204, 1165, '聊城市', '371500', '0635', 'city');
INSERT INTO `tb_area` VALUES (1205, 1204, '冠县', '371525', '0635', 'district');
INSERT INTO `tb_area` VALUES (1206, 1204, '东阿县', '371524', '0635', 'district');
INSERT INTO `tb_area` VALUES (1207, 1204, '高唐县', '371526', '0635', 'district');
INSERT INTO `tb_area` VALUES (1208, 1204, '莘县', '371522', '0635', 'district');
INSERT INTO `tb_area` VALUES (1209, 1204, '阳谷县', '371521', '0635', 'district');
INSERT INTO `tb_area` VALUES (1210, 1204, '茌平县', '371523', '0635', 'district');
INSERT INTO `tb_area` VALUES (1211, 1204, '东昌府区', '371502', '0635', 'district');
INSERT INTO `tb_area` VALUES (1212, 1204, '临清市', '371581', '0635', 'district');
INSERT INTO `tb_area` VALUES (1213, 1165, '临沂市', '371300', '0539', 'city');
INSERT INTO `tb_area` VALUES (1214, 1213, '沂水县', '371323', '0539', 'district');
INSERT INTO `tb_area` VALUES (1215, 1213, '蒙阴县', '371328', '0539', 'district');
INSERT INTO `tb_area` VALUES (1216, 1213, '平邑县', '371326', '0539', 'district');
INSERT INTO `tb_area` VALUES (1217, 1213, '兰山区', '371302', '0539', 'district');
INSERT INTO `tb_area` VALUES (1218, 1213, '郯城县', '371322', '0539', 'district');
INSERT INTO `tb_area` VALUES (1219, 1213, '沂南县', '371321', '0539', 'district');
INSERT INTO `tb_area` VALUES (1220, 1213, '莒南县', '371327', '0539', 'district');
INSERT INTO `tb_area` VALUES (1221, 1213, '罗庄区', '371311', '0539', 'district');
INSERT INTO `tb_area` VALUES (1222, 1213, '河东区', '371312', '0539', 'district');
INSERT INTO `tb_area` VALUES (1223, 1213, '临沭县', '371329', '0539', 'district');
INSERT INTO `tb_area` VALUES (1224, 1213, '兰陵县', '371324', '0539', 'district');
INSERT INTO `tb_area` VALUES (1225, 1213, '费县', '371325', '0539', 'district');
INSERT INTO `tb_area` VALUES (1226, 1165, '潍坊市', '370700', '0536', 'city');
INSERT INTO `tb_area` VALUES (1227, 1226, '潍城区', '370702', '0536', 'district');
INSERT INTO `tb_area` VALUES (1228, 1226, '坊子区', '370704', '0536', 'district');
INSERT INTO `tb_area` VALUES (1229, 1226, '奎文区', '370705', '0536', 'district');
INSERT INTO `tb_area` VALUES (1230, 1226, '安丘市', '370784', '0536', 'district');
INSERT INTO `tb_area` VALUES (1231, 1226, '临朐县', '370724', '0536', 'district');
INSERT INTO `tb_area` VALUES (1232, 1226, '高密市', '370785', '0536', 'district');
INSERT INTO `tb_area` VALUES (1233, 1226, '诸城市', '370782', '0536', 'district');
INSERT INTO `tb_area` VALUES (1234, 1226, '寿光市', '370783', '0536', 'district');
INSERT INTO `tb_area` VALUES (1235, 1226, '昌邑市', '370786', '0536', 'district');
INSERT INTO `tb_area` VALUES (1236, 1226, '寒亭区', '370703', '0536', 'district');
INSERT INTO `tb_area` VALUES (1237, 1226, '青州市', '370781', '0536', 'district');
INSERT INTO `tb_area` VALUES (1238, 1226, '昌乐县', '370725', '0536', 'district');
INSERT INTO `tb_area` VALUES (1239, 1165, '东营市', '370500', '0546', 'city');
INSERT INTO `tb_area` VALUES (1240, 1239, '利津县', '370522', '0546', 'district');
INSERT INTO `tb_area` VALUES (1241, 1239, '广饶县', '370523', '0546', 'district');
INSERT INTO `tb_area` VALUES (1242, 1239, '东营区', '370502', '0546', 'district');
INSERT INTO `tb_area` VALUES (1243, 1239, '河口区', '370503', '0546', 'district');
INSERT INTO `tb_area` VALUES (1244, 1239, '垦利区', '370505', '0546', 'district');
INSERT INTO `tb_area` VALUES (1245, 1165, '滨州市', '371600', '0543', 'city');
INSERT INTO `tb_area` VALUES (1246, 1245, '沾化区', '371603', '0543', 'district');
INSERT INTO `tb_area` VALUES (1247, 1245, '滨城区', '371602', '0543', 'district');
INSERT INTO `tb_area` VALUES (1248, 1245, '博兴县', '371625', '0543', 'district');
INSERT INTO `tb_area` VALUES (1249, 1245, '邹平市', '371681', '0543', 'district');
INSERT INTO `tb_area` VALUES (1250, 1245, '无棣县', '371623', '0543', 'district');
INSERT INTO `tb_area` VALUES (1251, 1245, '惠民县', '371621', '0543', 'district');
INSERT INTO `tb_area` VALUES (1252, 1245, '阳信县', '371622', '0543', 'district');
INSERT INTO `tb_area` VALUES (1253, 1165, '枣庄市', '370400', '0632', 'city');
INSERT INTO `tb_area` VALUES (1254, 1253, '台儿庄区', '370405', '0632', 'district');
INSERT INTO `tb_area` VALUES (1255, 1253, '峄城区', '370404', '0632', 'district');
INSERT INTO `tb_area` VALUES (1256, 1253, '山亭区', '370406', '0632', 'district');
INSERT INTO `tb_area` VALUES (1257, 1253, '薛城区', '370403', '0632', 'district');
INSERT INTO `tb_area` VALUES (1258, 1253, '市中区', '370402', '0632', 'district');
INSERT INTO `tb_area` VALUES (1259, 1253, '滕州市', '370481', '0632', 'district');
INSERT INTO `tb_area` VALUES (1260, 1165, '日照市', '371100', '0633', 'city');
INSERT INTO `tb_area` VALUES (1261, 1260, '五莲县', '371121', '0633', 'district');
INSERT INTO `tb_area` VALUES (1262, 1260, '东港区', '371102', '0633', 'district');
INSERT INTO `tb_area` VALUES (1263, 1260, '莒县', '371122', '0633', 'district');
INSERT INTO `tb_area` VALUES (1264, 1260, '岚山区', '371103', '0633', 'district');
INSERT INTO `tb_area` VALUES (1265, 1165, '济宁市', '370800', '0537', 'city');
INSERT INTO `tb_area` VALUES (1266, 1265, '汶上县', '370830', '0537', 'district');
INSERT INTO `tb_area` VALUES (1267, 1265, '曲阜市', '370881', '0537', 'district');
INSERT INTO `tb_area` VALUES (1268, 1265, '泗水县', '370831', '0537', 'district');
INSERT INTO `tb_area` VALUES (1269, 1265, '邹城市', '370883', '0537', 'district');
INSERT INTO `tb_area` VALUES (1270, 1265, '金乡县', '370828', '0537', 'district');
INSERT INTO `tb_area` VALUES (1271, 1265, '鱼台县', '370827', '0537', 'district');
INSERT INTO `tb_area` VALUES (1272, 1265, '任城区', '370811', '0537', 'district');
INSERT INTO `tb_area` VALUES (1273, 1265, '嘉祥县', '370829', '0537', 'district');
INSERT INTO `tb_area` VALUES (1274, 1265, '梁山县', '370832', '0537', 'district');
INSERT INTO `tb_area` VALUES (1275, 1265, '微山县', '370826', '0537', 'district');
INSERT INTO `tb_area` VALUES (1276, 1265, '兖州区', '370812', '0537', 'district');
INSERT INTO `tb_area` VALUES (1277, 1165, '泰安市', '370900', '0538', 'city');
INSERT INTO `tb_area` VALUES (1278, 1277, '新泰市', '370982', '0538', 'district');
INSERT INTO `tb_area` VALUES (1279, 1277, '肥城市', '370983', '0538', 'district');
INSERT INTO `tb_area` VALUES (1280, 1277, '东平县', '370923', '0538', 'district');
INSERT INTO `tb_area` VALUES (1281, 1277, '宁阳县', '370921', '0538', 'district');
INSERT INTO `tb_area` VALUES (1282, 1277, '泰山区', '370902', '0538', 'district');
INSERT INTO `tb_area` VALUES (1283, 1277, '岱岳区', '370911', '0538', 'district');
INSERT INTO `tb_area` VALUES (1284, 1165, '德州市', '371400', '0534', 'city');
INSERT INTO `tb_area` VALUES (1285, 1284, '乐陵市', '371481', '0534', 'district');
INSERT INTO `tb_area` VALUES (1286, 1284, '宁津县', '371422', '0534', 'district');
INSERT INTO `tb_area` VALUES (1287, 1284, '陵城区', '371403', '0534', 'district');
INSERT INTO `tb_area` VALUES (1288, 1284, '德城区', '371402', '0534', 'district');
INSERT INTO `tb_area` VALUES (1289, 1284, '临邑县', '371424', '0534', 'district');
INSERT INTO `tb_area` VALUES (1290, 1284, '平原县', '371426', '0534', 'district');
INSERT INTO `tb_area` VALUES (1291, 1284, '武城县', '371428', '0534', 'district');
INSERT INTO `tb_area` VALUES (1292, 1284, '禹城市', '371482', '0534', 'district');
INSERT INTO `tb_area` VALUES (1293, 1284, '齐河县', '371425', '0534', 'district');
INSERT INTO `tb_area` VALUES (1294, 1284, '庆云县', '371423', '0534', 'district');
INSERT INTO `tb_area` VALUES (1295, 1284, '夏津县', '371427', '0534', 'district');
INSERT INTO `tb_area` VALUES (1296, 1165, '济南市', '370100', '0531', 'city');
INSERT INTO `tb_area` VALUES (1297, 1296, '长清区', '370113', '0531', 'district');
INSERT INTO `tb_area` VALUES (1298, 1296, '莱芜区', '370116', '0531', 'district');
INSERT INTO `tb_area` VALUES (1299, 1296, '钢城区', '370117', '0531', 'district');
INSERT INTO `tb_area` VALUES (1300, 1296, '天桥区', '370105', '0531', 'district');
INSERT INTO `tb_area` VALUES (1301, 1296, '市中区', '370103', '0531', 'district');
INSERT INTO `tb_area` VALUES (1302, 1296, '槐荫区', '370104', '0531', 'district');
INSERT INTO `tb_area` VALUES (1303, 1296, '平阴县', '370124', '0531', 'district');
INSERT INTO `tb_area` VALUES (1304, 1296, '历下区', '370102', '0531', 'district');
INSERT INTO `tb_area` VALUES (1305, 1296, '济阳区', '370115', '0531', 'district');
INSERT INTO `tb_area` VALUES (1306, 1296, '商河县', '370126', '0531', 'district');
INSERT INTO `tb_area` VALUES (1307, 1296, '历城区', '370112', '0531', 'district');
INSERT INTO `tb_area` VALUES (1308, 1296, '章丘区', '370114', '0531', 'district');
INSERT INTO `tb_area` VALUES (1309, 1165, '菏泽市', '371700', '0530', 'city');
INSERT INTO `tb_area` VALUES (1310, 1309, '鄄城县', '371726', '0530', 'district');
INSERT INTO `tb_area` VALUES (1311, 1309, '牡丹区', '371702', '0530', 'district');
INSERT INTO `tb_area` VALUES (1312, 1309, '东明县', '371728', '0530', 'district');
INSERT INTO `tb_area` VALUES (1313, 1309, '巨野县', '371724', '0530', 'district');
INSERT INTO `tb_area` VALUES (1314, 1309, '郓城县', '371725', '0530', 'district');
INSERT INTO `tb_area` VALUES (1315, 1309, '单县', '371722', '0530', 'district');
INSERT INTO `tb_area` VALUES (1316, 1309, '定陶区', '371703', '0530', 'district');
INSERT INTO `tb_area` VALUES (1317, 1309, '成武县', '371723', '0530', 'district');
INSERT INTO `tb_area` VALUES (1318, 1309, '曹县', '371721', '0530', 'district');
INSERT INTO `tb_area` VALUES (1319, 0, '江苏省', '320000', '', 'province');
INSERT INTO `tb_area` VALUES (1320, 1319, '连云港市', '320700', '0518', 'city');
INSERT INTO `tb_area` VALUES (1321, 1320, '赣榆区', '320707', '0518', 'district');
INSERT INTO `tb_area` VALUES (1322, 1320, '东海县', '320722', '0518', 'district');
INSERT INTO `tb_area` VALUES (1323, 1320, '连云区', '320703', '0518', 'district');
INSERT INTO `tb_area` VALUES (1324, 1320, '灌云县', '320723', '0518', 'district');
INSERT INTO `tb_area` VALUES (1325, 1320, '灌南县', '320724', '0518', 'district');
INSERT INTO `tb_area` VALUES (1326, 1320, '海州区', '320706', '0518', 'district');
INSERT INTO `tb_area` VALUES (1327, 1319, '宿迁市', '321300', '0527', 'city');
INSERT INTO `tb_area` VALUES (1328, 1327, '沭阳县', '321322', '0527', 'district');
INSERT INTO `tb_area` VALUES (1329, 1327, '泗阳县', '321323', '0527', 'district');
INSERT INTO `tb_area` VALUES (1330, 1327, '泗洪县', '321324', '0527', 'district');
INSERT INTO `tb_area` VALUES (1331, 1327, '宿豫区', '321311', '0527', 'district');
INSERT INTO `tb_area` VALUES (1332, 1327, '宿城区', '321302', '0527', 'district');
INSERT INTO `tb_area` VALUES (1333, 1319, '南京市', '320100', '025', 'city');
INSERT INTO `tb_area` VALUES (1334, 1333, '浦口区', '320111', '025', 'district');
INSERT INTO `tb_area` VALUES (1335, 1333, '江宁区', '320115', '025', 'district');
INSERT INTO `tb_area` VALUES (1336, 1333, '雨花台区', '320114', '025', 'district');
INSERT INTO `tb_area` VALUES (1337, 1333, '溧水区', '320117', '025', 'district');
INSERT INTO `tb_area` VALUES (1338, 1333, '高淳区', '320118', '025', 'district');
INSERT INTO `tb_area` VALUES (1339, 1333, '六合区', '320116', '025', 'district');
INSERT INTO `tb_area` VALUES (1340, 1333, '鼓楼区', '320106', '025', 'district');
INSERT INTO `tb_area` VALUES (1341, 1333, '建邺区', '320105', '025', 'district');
INSERT INTO `tb_area` VALUES (1342, 1333, '秦淮区', '320104', '025', 'district');
INSERT INTO `tb_area` VALUES (1343, 1333, '玄武区', '320102', '025', 'district');
INSERT INTO `tb_area` VALUES (1344, 1333, '栖霞区', '320113', '025', 'district');
INSERT INTO `tb_area` VALUES (1345, 1319, '镇江市', '321100', '0511', 'city');
INSERT INTO `tb_area` VALUES (1346, 1345, '扬中市', '321182', '0511', 'district');
INSERT INTO `tb_area` VALUES (1347, 1345, '润州区', '321111', '0511', 'district');
INSERT INTO `tb_area` VALUES (1348, 1345, '丹阳市', '321181', '0511', 'district');
INSERT INTO `tb_area` VALUES (1349, 1345, '句容市', '321183', '0511', 'district');
INSERT INTO `tb_area` VALUES (1350, 1345, '丹徒区', '321112', '0511', 'district');
INSERT INTO `tb_area` VALUES (1351, 1345, '京口区', '321102', '0511', 'district');
INSERT INTO `tb_area` VALUES (1352, 1319, '南通市', '320600', '0513', 'city');
INSERT INTO `tb_area` VALUES (1353, 1352, '如皋市', '320682', '0513', 'district');
INSERT INTO `tb_area` VALUES (1354, 1352, '海门市', '320684', '0513', 'district');
INSERT INTO `tb_area` VALUES (1355, 1352, '海安市', '320685', '0513', 'district');
INSERT INTO `tb_area` VALUES (1356, 1352, '启东市', '320681', '0513', 'district');
INSERT INTO `tb_area` VALUES (1357, 1352, '如东县', '320623', '0513', 'district');
INSERT INTO `tb_area` VALUES (1358, 1352, '通州区', '320612', '0513', 'district');
INSERT INTO `tb_area` VALUES (1359, 1352, '港闸区', '320611', '0513', 'district');
INSERT INTO `tb_area` VALUES (1360, 1352, '崇川区', '320602', '0513', 'district');
INSERT INTO `tb_area` VALUES (1361, 1319, '淮安市', '320800', '0517', 'city');
INSERT INTO `tb_area` VALUES (1362, 1361, '涟水县', '320826', '0517', 'district');
INSERT INTO `tb_area` VALUES (1363, 1361, '淮阴区', '320804', '0517', 'district');
INSERT INTO `tb_area` VALUES (1364, 1361, '淮安区', '320803', '0517', 'district');
INSERT INTO `tb_area` VALUES (1365, 1361, '洪泽区', '320813', '0517', 'district');
INSERT INTO `tb_area` VALUES (1366, 1361, '盱眙县', '320830', '0517', 'district');
INSERT INTO `tb_area` VALUES (1367, 1361, '金湖县', '320831', '0517', 'district');
INSERT INTO `tb_area` VALUES (1368, 1361, '清江浦区', '320812', '0517', 'district');
INSERT INTO `tb_area` VALUES (1369, 1319, '徐州市', '320300', '0516', 'city');
INSERT INTO `tb_area` VALUES (1370, 1369, '新沂市', '320381', '0516', 'district');
INSERT INTO `tb_area` VALUES (1371, 1369, '邳州市', '320382', '0516', 'district');
INSERT INTO `tb_area` VALUES (1372, 1369, '铜山区', '320312', '0516', 'district');
INSERT INTO `tb_area` VALUES (1373, 1369, '泉山区', '320311', '0516', 'district');
INSERT INTO `tb_area` VALUES (1374, 1369, '睢宁县', '320324', '0516', 'district');
INSERT INTO `tb_area` VALUES (1375, 1369, '云龙区', '320303', '0516', 'district');
INSERT INTO `tb_area` VALUES (1376, 1369, '贾汪区', '320305', '0516', 'district');
INSERT INTO `tb_area` VALUES (1377, 1369, '鼓楼区', '320302', '0516', 'district');
INSERT INTO `tb_area` VALUES (1378, 1369, '丰县', '320321', '0516', 'district');
INSERT INTO `tb_area` VALUES (1379, 1369, '沛县', '320322', '0516', 'district');
INSERT INTO `tb_area` VALUES (1380, 1319, '盐城市', '320900', '0515', 'city');
INSERT INTO `tb_area` VALUES (1381, 1380, '响水县', '320921', '0515', 'district');
INSERT INTO `tb_area` VALUES (1382, 1380, '滨海县', '320922', '0515', 'district');
INSERT INTO `tb_area` VALUES (1383, 1380, '射阳县', '320924', '0515', 'district');
INSERT INTO `tb_area` VALUES (1384, 1380, '阜宁县', '320923', '0515', 'district');
INSERT INTO `tb_area` VALUES (1385, 1380, '建湖县', '320925', '0515', 'district');
INSERT INTO `tb_area` VALUES (1386, 1380, '亭湖区', '320902', '0515', 'district');
INSERT INTO `tb_area` VALUES (1387, 1380, '盐都区', '320903', '0515', 'district');
INSERT INTO `tb_area` VALUES (1388, 1380, '东台市', '320981', '0515', 'district');
INSERT INTO `tb_area` VALUES (1389, 1380, '大丰区', '320904', '0515', 'district');
INSERT INTO `tb_area` VALUES (1390, 1319, '泰州市', '321200', '0523', 'city');
INSERT INTO `tb_area` VALUES (1391, 1390, '靖江市', '321282', '0523', 'district');
INSERT INTO `tb_area` VALUES (1392, 1390, '高港区', '321203', '0523', 'district');
INSERT INTO `tb_area` VALUES (1393, 1390, '海陵区', '321202', '0523', 'district');
INSERT INTO `tb_area` VALUES (1394, 1390, '兴化市', '321281', '0523', 'district');
INSERT INTO `tb_area` VALUES (1395, 1390, '泰兴市', '321283', '0523', 'district');
INSERT INTO `tb_area` VALUES (1396, 1390, '姜堰区', '321204', '0523', 'district');
INSERT INTO `tb_area` VALUES (1397, 1319, '扬州市', '321000', '0514', 'city');
INSERT INTO `tb_area` VALUES (1398, 1397, '江都区', '321012', '0514', 'district');
INSERT INTO `tb_area` VALUES (1399, 1397, '邗江区', '321003', '0514', 'district');
INSERT INTO `tb_area` VALUES (1400, 1397, '广陵区', '321002', '0514', 'district');
INSERT INTO `tb_area` VALUES (1401, 1397, '仪征市', '321081', '0514', 'district');
INSERT INTO `tb_area` VALUES (1402, 1397, '宝应县', '321023', '0514', 'district');
INSERT INTO `tb_area` VALUES (1403, 1397, '高邮市', '321084', '0514', 'district');
INSERT INTO `tb_area` VALUES (1404, 1319, '无锡市', '320200', '0510', 'city');
INSERT INTO `tb_area` VALUES (1405, 1404, '宜兴市', '320282', '0510', 'district');
INSERT INTO `tb_area` VALUES (1406, 1404, '梁溪区', '320213', '0510', 'district');
INSERT INTO `tb_area` VALUES (1407, 1404, '锡山区', '320205', '0510', 'district');
INSERT INTO `tb_area` VALUES (1408, 1404, '新吴区', '320214', '0510', 'district');
INSERT INTO `tb_area` VALUES (1409, 1404, '惠山区', '320206', '0510', 'district');
INSERT INTO `tb_area` VALUES (1410, 1404, '江阴市', '320281', '0510', 'district');
INSERT INTO `tb_area` VALUES (1411, 1404, '滨湖区', '320211', '0510', 'district');
INSERT INTO `tb_area` VALUES (1412, 1319, '常州市', '320400', '0519', 'city');
INSERT INTO `tb_area` VALUES (1413, 1412, '金坛区', '320413', '0519', 'district');
INSERT INTO `tb_area` VALUES (1414, 1412, '天宁区', '320402', '0519', 'district');
INSERT INTO `tb_area` VALUES (1415, 1412, '钟楼区', '320404', '0519', 'district');
INSERT INTO `tb_area` VALUES (1416, 1412, '溧阳市', '320481', '0519', 'district');
INSERT INTO `tb_area` VALUES (1417, 1412, '新北区', '320411', '0519', 'district');
INSERT INTO `tb_area` VALUES (1418, 1412, '武进区', '320412', '0519', 'district');
INSERT INTO `tb_area` VALUES (1419, 1319, '苏州市', '320500', '0512', 'city');
INSERT INTO `tb_area` VALUES (1420, 1419, '张家港市', '320582', '0512', 'district');
INSERT INTO `tb_area` VALUES (1421, 1419, '常熟市', '320581', '0512', 'district');
INSERT INTO `tb_area` VALUES (1422, 1419, '太仓市', '320585', '0512', 'district');
INSERT INTO `tb_area` VALUES (1423, 1419, '虎丘区', '320505', '0512', 'district');
INSERT INTO `tb_area` VALUES (1424, 1419, '姑苏区', '320508', '0512', 'district');
INSERT INTO `tb_area` VALUES (1425, 1419, '吴江区', '320509', '0512', 'district');
INSERT INTO `tb_area` VALUES (1426, 1419, '昆山市', '320583', '0512', 'district');
INSERT INTO `tb_area` VALUES (1427, 1419, '吴中区', '320506', '0512', 'district');
INSERT INTO `tb_area` VALUES (1428, 1419, '相城区', '320507', '0512', 'district');
INSERT INTO `tb_area` VALUES (1429, 1419, '苏州工业园区', '320571', '0512', 'district');
INSERT INTO `tb_area` VALUES (1430, 0, '陕西省', '610000', '', 'province');
INSERT INTO `tb_area` VALUES (1431, 1430, '商洛市', '611000', '0914', 'city');
INSERT INTO `tb_area` VALUES (1432, 1431, '洛南县', '611021', '0914', 'district');
INSERT INTO `tb_area` VALUES (1433, 1431, '柞水县', '611026', '0914', 'district');
INSERT INTO `tb_area` VALUES (1434, 1431, '丹凤县', '611022', '0914', 'district');
INSERT INTO `tb_area` VALUES (1435, 1431, '商州区', '611002', '0914', 'district');
INSERT INTO `tb_area` VALUES (1436, 1431, '商南县', '611023', '0914', 'district');
INSERT INTO `tb_area` VALUES (1437, 1431, '山阳县', '611024', '0914', 'district');
INSERT INTO `tb_area` VALUES (1438, 1431, '镇安县', '611025', '0914', 'district');
INSERT INTO `tb_area` VALUES (1439, 1430, '西安市', '610100', '029', 'city');
INSERT INTO `tb_area` VALUES (1440, 1439, '阎良区', '610114', '029', 'district');
INSERT INTO `tb_area` VALUES (1441, 1439, '临潼区', '610115', '029', 'district');
INSERT INTO `tb_area` VALUES (1442, 1439, '高陵区', '610117', '029', 'district');
INSERT INTO `tb_area` VALUES (1443, 1439, '鄠邑区', '610118', '029', 'district');
INSERT INTO `tb_area` VALUES (1444, 1439, '蓝田县', '610122', '029', 'district');
INSERT INTO `tb_area` VALUES (1445, 1439, '长安区', '610116', '029', 'district');
INSERT INTO `tb_area` VALUES (1446, 1439, '未央区', '610112', '029', 'district');
INSERT INTO `tb_area` VALUES (1447, 1439, '莲湖区', '610104', '029', 'district');
INSERT INTO `tb_area` VALUES (1448, 1439, '周至县', '610124', '029', 'district');
INSERT INTO `tb_area` VALUES (1449, 1439, '灞桥区', '610111', '029', 'district');
INSERT INTO `tb_area` VALUES (1450, 1439, '新城区', '610102', '029', 'district');
INSERT INTO `tb_area` VALUES (1451, 1439, '碑林区', '610103', '029', 'district');
INSERT INTO `tb_area` VALUES (1452, 1439, '雁塔区', '610113', '029', 'district');
INSERT INTO `tb_area` VALUES (1453, 1430, '汉中市', '610700', '0916', 'city');
INSERT INTO `tb_area` VALUES (1454, 1453, '留坝县', '610729', '0916', 'district');
INSERT INTO `tb_area` VALUES (1455, 1453, '佛坪县', '610730', '0916', 'district');
INSERT INTO `tb_area` VALUES (1456, 1453, '汉台区', '610702', '0916', 'district');
INSERT INTO `tb_area` VALUES (1457, 1453, '略阳县', '610727', '0916', 'district');
INSERT INTO `tb_area` VALUES (1458, 1453, '城固县', '610722', '0916', 'district');
INSERT INTO `tb_area` VALUES (1459, 1453, '洋县', '610723', '0916', 'district');
INSERT INTO `tb_area` VALUES (1460, 1453, '勉县', '610725', '0916', 'district');
INSERT INTO `tb_area` VALUES (1461, 1453, '南郑区', '610703', '0916', 'district');
INSERT INTO `tb_area` VALUES (1462, 1453, '西乡县', '610724', '0916', 'district');
INSERT INTO `tb_area` VALUES (1463, 1453, '宁强县', '610726', '0916', 'district');
INSERT INTO `tb_area` VALUES (1464, 1453, '镇巴县', '610728', '0916', 'district');
INSERT INTO `tb_area` VALUES (1465, 1430, '铜川市', '610200', '0919', 'city');
INSERT INTO `tb_area` VALUES (1466, 1465, '宜君县', '610222', '0919', 'district');
INSERT INTO `tb_area` VALUES (1467, 1465, '印台区', '610203', '0919', 'district');
INSERT INTO `tb_area` VALUES (1468, 1465, '耀州区', '610204', '0919', 'district');
INSERT INTO `tb_area` VALUES (1469, 1465, '王益区', '610202', '0919', 'district');
INSERT INTO `tb_area` VALUES (1470, 1430, '安康市', '610900', '0915', 'city');
INSERT INTO `tb_area` VALUES (1471, 1470, '宁陕县', '610923', '0915', 'district');
INSERT INTO `tb_area` VALUES (1472, 1470, '石泉县', '610922', '0915', 'district');
INSERT INTO `tb_area` VALUES (1473, 1470, '汉滨区', '610902', '0915', 'district');
INSERT INTO `tb_area` VALUES (1474, 1470, '汉阴县', '610921', '0915', 'district');
INSERT INTO `tb_area` VALUES (1475, 1470, '白河县', '610929', '0915', 'district');
INSERT INTO `tb_area` VALUES (1476, 1470, '旬阳县', '610928', '0915', 'district');
INSERT INTO `tb_area` VALUES (1477, 1470, '紫阳县', '610924', '0915', 'district');
INSERT INTO `tb_area` VALUES (1478, 1470, '平利县', '610926', '0915', 'district');
INSERT INTO `tb_area` VALUES (1479, 1470, '岚皋县', '610925', '0915', 'district');
INSERT INTO `tb_area` VALUES (1480, 1470, '镇坪县', '610927', '0915', 'district');
INSERT INTO `tb_area` VALUES (1481, 1430, '榆林市', '610800', '0912', 'city');
INSERT INTO `tb_area` VALUES (1482, 1481, '府谷县', '610822', '0912', 'district');
INSERT INTO `tb_area` VALUES (1483, 1481, '榆阳区', '610802', '0912', 'district');
INSERT INTO `tb_area` VALUES (1484, 1481, '神木市', '610881', '0912', 'district');
INSERT INTO `tb_area` VALUES (1485, 1481, '佳县', '610828', '0912', 'district');
INSERT INTO `tb_area` VALUES (1486, 1481, '横山区', '610803', '0912', 'district');
INSERT INTO `tb_area` VALUES (1487, 1481, '米脂县', '610827', '0912', 'district');
INSERT INTO `tb_area` VALUES (1488, 1481, '靖边县', '610824', '0912', 'district');
INSERT INTO `tb_area` VALUES (1489, 1481, '子洲县', '610831', '0912', 'district');
INSERT INTO `tb_area` VALUES (1490, 1481, '绥德县', '610826', '0912', 'district');
INSERT INTO `tb_area` VALUES (1491, 1481, '吴堡县', '610829', '0912', 'district');
INSERT INTO `tb_area` VALUES (1492, 1481, '清涧县', '610830', '0912', 'district');
INSERT INTO `tb_area` VALUES (1493, 1481, '定边县', '610825', '0912', 'district');
INSERT INTO `tb_area` VALUES (1494, 1430, '延安市', '610600', '0911', 'city');
INSERT INTO `tb_area` VALUES (1495, 1494, '子长县', '610623', '0911', 'district');
INSERT INTO `tb_area` VALUES (1496, 1494, '吴起县', '610626', '0911', 'district');
INSERT INTO `tb_area` VALUES (1497, 1494, '安塞区', '610603', '0911', 'district');
INSERT INTO `tb_area` VALUES (1498, 1494, '志丹县', '610625', '0911', 'district');
INSERT INTO `tb_area` VALUES (1499, 1494, '延川县', '610622', '0911', 'district');
INSERT INTO `tb_area` VALUES (1500, 1494, '宝塔区', '610602', '0911', 'district');
INSERT INTO `tb_area` VALUES (1501, 1494, '延长县', '610621', '0911', 'district');
INSERT INTO `tb_area` VALUES (1502, 1494, '甘泉县', '610627', '0911', 'district');
INSERT INTO `tb_area` VALUES (1503, 1494, '宜川县', '610630', '0911', 'district');
INSERT INTO `tb_area` VALUES (1504, 1494, '富县', '610628', '0911', 'district');
INSERT INTO `tb_area` VALUES (1505, 1494, '洛川县', '610629', '0911', 'district');
INSERT INTO `tb_area` VALUES (1506, 1494, '黄陵县', '610632', '0911', 'district');
INSERT INTO `tb_area` VALUES (1507, 1494, '黄龙县', '610631', '0911', 'district');
INSERT INTO `tb_area` VALUES (1508, 1430, '宝鸡市', '610300', '0917', 'city');
INSERT INTO `tb_area` VALUES (1509, 1508, '陇县', '610327', '0917', 'district');
INSERT INTO `tb_area` VALUES (1510, 1508, '麟游县', '610329', '0917', 'district');
INSERT INTO `tb_area` VALUES (1511, 1508, '千阳县', '610328', '0917', 'district');
INSERT INTO `tb_area` VALUES (1512, 1508, '岐山县', '610323', '0917', 'district');
INSERT INTO `tb_area` VALUES (1513, 1508, '金台区', '610303', '0917', 'district');
INSERT INTO `tb_area` VALUES (1514, 1508, '渭滨区', '610302', '0917', 'district');
INSERT INTO `tb_area` VALUES (1515, 1508, '凤县', '610330', '0917', 'district');
INSERT INTO `tb_area` VALUES (1516, 1508, '眉县', '610326', '0917', 'district');
INSERT INTO `tb_area` VALUES (1517, 1508, '太白县', '610331', '0917', 'district');
INSERT INTO `tb_area` VALUES (1518, 1508, '陈仓区', '610304', '0917', 'district');
INSERT INTO `tb_area` VALUES (1519, 1508, '凤翔县', '610322', '0917', 'district');
INSERT INTO `tb_area` VALUES (1520, 1508, '扶风县', '610324', '0917', 'district');
INSERT INTO `tb_area` VALUES (1521, 1430, '咸阳市', '610400', '0910', 'city');
INSERT INTO `tb_area` VALUES (1522, 1521, '旬邑县', '610429', '0910', 'district');
INSERT INTO `tb_area` VALUES (1523, 1521, '彬州市', '610482', '0910', 'district');
INSERT INTO `tb_area` VALUES (1524, 1521, '淳化县', '610430', '0910', 'district');
INSERT INTO `tb_area` VALUES (1525, 1521, '永寿县', '610426', '0910', 'district');
INSERT INTO `tb_area` VALUES (1526, 1521, '乾县', '610424', '0910', 'district');
INSERT INTO `tb_area` VALUES (1527, 1521, '渭城区', '610404', '0910', 'district');
INSERT INTO `tb_area` VALUES (1528, 1521, '武功县', '610431', '0910', 'district');
INSERT INTO `tb_area` VALUES (1529, 1521, '泾阳县', '610423', '0910', 'district');
INSERT INTO `tb_area` VALUES (1530, 1521, '长武县', '610428', '0910', 'district');
INSERT INTO `tb_area` VALUES (1531, 1521, '秦都区', '610402', '0910', 'district');
INSERT INTO `tb_area` VALUES (1532, 1521, '礼泉县', '610425', '0910', 'district');
INSERT INTO `tb_area` VALUES (1533, 1521, '兴平市', '610481', '0910', 'district');
INSERT INTO `tb_area` VALUES (1534, 1521, '杨陵区', '610403', '0910', 'district');
INSERT INTO `tb_area` VALUES (1535, 1521, '三原县', '610422', '0910', 'district');
INSERT INTO `tb_area` VALUES (1536, 1430, '渭南市', '610500', '0913', 'city');
INSERT INTO `tb_area` VALUES (1537, 1536, '韩城市', '610581', '0913', 'district');
INSERT INTO `tb_area` VALUES (1538, 1536, '白水县', '610527', '0913', 'district');
INSERT INTO `tb_area` VALUES (1539, 1536, '大荔县', '610523', '0913', 'district');
INSERT INTO `tb_area` VALUES (1540, 1536, '华阴市', '610582', '0913', 'district');
INSERT INTO `tb_area` VALUES (1541, 1536, '华州区', '610503', '0913', 'district');
INSERT INTO `tb_area` VALUES (1542, 1536, '潼关县', '610522', '0913', 'district');
INSERT INTO `tb_area` VALUES (1543, 1536, '合阳县', '610524', '0913', 'district');
INSERT INTO `tb_area` VALUES (1544, 1536, '澄城县', '610525', '0913', 'district');
INSERT INTO `tb_area` VALUES (1545, 1536, '蒲城县', '610526', '0913', 'district');
INSERT INTO `tb_area` VALUES (1546, 1536, '临渭区', '610502', '0913', 'district');
INSERT INTO `tb_area` VALUES (1547, 1536, '富平县', '610528', '0913', 'district');
INSERT INTO `tb_area` VALUES (1548, 0, '上海市', '310000', '021', 'province');
INSERT INTO `tb_area` VALUES (1549, 1548, '上海城区', '310100', '021', 'city');
INSERT INTO `tb_area` VALUES (1550, 1549, '浦东新区', '310115', '021', 'district');
INSERT INTO `tb_area` VALUES (1551, 1549, '崇明区', '310151', '021', 'district');
INSERT INTO `tb_area` VALUES (1552, 1549, '奉贤区', '310120', '021', 'district');
INSERT INTO `tb_area` VALUES (1553, 1549, '金山区', '310116', '021', 'district');
INSERT INTO `tb_area` VALUES (1554, 1549, '宝山区', '310113', '021', 'district');
INSERT INTO `tb_area` VALUES (1555, 1549, '嘉定区', '310114', '021', 'district');
INSERT INTO `tb_area` VALUES (1556, 1549, '普陀区', '310107', '021', 'district');
INSERT INTO `tb_area` VALUES (1557, 1549, '黄浦区', '310101', '021', 'district');
INSERT INTO `tb_area` VALUES (1558, 1549, '杨浦区', '310110', '021', 'district');
INSERT INTO `tb_area` VALUES (1559, 1549, '松江区', '310117', '021', 'district');
INSERT INTO `tb_area` VALUES (1560, 1549, '长宁区', '310105', '021', 'district');
INSERT INTO `tb_area` VALUES (1561, 1549, '静安区', '310106', '021', 'district');
INSERT INTO `tb_area` VALUES (1562, 1549, '虹口区', '310109', '021', 'district');
INSERT INTO `tb_area` VALUES (1563, 1549, '闵行区', '310112', '021', 'district');
INSERT INTO `tb_area` VALUES (1564, 1549, '徐汇区', '310104', '021', 'district');
INSERT INTO `tb_area` VALUES (1565, 1549, '青浦区', '310118', '021', 'district');
INSERT INTO `tb_area` VALUES (1566, 0, '贵州省', '520000', '', 'province');
INSERT INTO `tb_area` VALUES (1567, 1566, '遵义市', '520300', '0852', 'city');
INSERT INTO `tb_area` VALUES (1568, 1567, '桐梓县', '520322', '0852', 'district');
INSERT INTO `tb_area` VALUES (1569, 1567, '绥阳县', '520323', '0852', 'district');
INSERT INTO `tb_area` VALUES (1570, 1567, '湄潭县', '520328', '0852', 'district');
INSERT INTO `tb_area` VALUES (1571, 1567, '余庆县', '520329', '0852', 'district');
INSERT INTO `tb_area` VALUES (1572, 1567, '红花岗区', '520302', '0852', 'district');
INSERT INTO `tb_area` VALUES (1573, 1567, '汇川区', '520303', '0852', 'district');
INSERT INTO `tb_area` VALUES (1574, 1567, '凤冈县', '520327', '0852', 'district');
INSERT INTO `tb_area` VALUES (1575, 1567, '务川仡佬族苗族自治县', '520326', '0852', 'district');
INSERT INTO `tb_area` VALUES (1576, 1567, '仁怀市', '520382', '0852', 'district');
INSERT INTO `tb_area` VALUES (1577, 1567, '播州区', '520304', '0852', 'district');
INSERT INTO `tb_area` VALUES (1578, 1567, '赤水市', '520381', '0852', 'district');
INSERT INTO `tb_area` VALUES (1579, 1567, '习水县', '520330', '0852', 'district');
INSERT INTO `tb_area` VALUES (1580, 1567, '正安县', '520324', '0852', 'district');
INSERT INTO `tb_area` VALUES (1581, 1567, '道真仡佬族苗族自治县', '520325', '0852', 'district');
INSERT INTO `tb_area` VALUES (1582, 1566, '铜仁市', '520600', '0856', 'city');
INSERT INTO `tb_area` VALUES (1583, 1582, '印江土家族苗族自治县', '520625', '0856', 'district');
INSERT INTO `tb_area` VALUES (1584, 1582, '玉屏侗族自治县', '520622', '0856', 'district');
INSERT INTO `tb_area` VALUES (1585, 1582, '石阡县', '520623', '0856', 'district');
INSERT INTO `tb_area` VALUES (1586, 1582, '碧江区', '520602', '0856', 'district');
INSERT INTO `tb_area` VALUES (1587, 1582, '德江县', '520626', '0856', 'district');
INSERT INTO `tb_area` VALUES (1588, 1582, '思南县', '520624', '0856', 'district');
INSERT INTO `tb_area` VALUES (1589, 1582, '沿河土家族自治县', '520627', '0856', 'district');
INSERT INTO `tb_area` VALUES (1590, 1582, '江口县', '520621', '0856', 'district');
INSERT INTO `tb_area` VALUES (1591, 1582, '万山区', '520603', '0856', 'district');
INSERT INTO `tb_area` VALUES (1592, 1582, '松桃苗族自治县', '520628', '0856', 'district');
INSERT INTO `tb_area` VALUES (1593, 1566, '六盘水市', '520200', '0858', 'city');
INSERT INTO `tb_area` VALUES (1594, 1593, '钟山区', '520201', '0858', 'district');
INSERT INTO `tb_area` VALUES (1595, 1593, '六枝特区', '520203', '0858', 'district');
INSERT INTO `tb_area` VALUES (1596, 1593, '盘州市', '520281', '0858', 'district');
INSERT INTO `tb_area` VALUES (1597, 1593, '水城县', '520221', '0858', 'district');
INSERT INTO `tb_area` VALUES (1598, 1566, '黔东南苗族侗族自治州', '522600', '0855', 'city');
INSERT INTO `tb_area` VALUES (1599, 1598, '雷山县', '522634', '0855', 'district');
INSERT INTO `tb_area` VALUES (1600, 1598, '锦屏县', '522628', '0855', 'district');
INSERT INTO `tb_area` VALUES (1601, 1598, '三穗县', '522624', '0855', 'district');
INSERT INTO `tb_area` VALUES (1602, 1598, '天柱县', '522627', '0855', 'district');
INSERT INTO `tb_area` VALUES (1603, 1598, '剑河县', '522629', '0855', 'district');
INSERT INTO `tb_area` VALUES (1604, 1598, '黎平县', '522631', '0855', 'district');
INSERT INTO `tb_area` VALUES (1605, 1598, '榕江县', '522632', '0855', 'district');
INSERT INTO `tb_area` VALUES (1606, 1598, '从江县', '522633', '0855', 'district');
INSERT INTO `tb_area` VALUES (1607, 1598, '施秉县', '522623', '0855', 'district');
INSERT INTO `tb_area` VALUES (1608, 1598, '镇远县', '522625', '0855', 'district');
INSERT INTO `tb_area` VALUES (1609, 1598, '麻江县', '522635', '0855', 'district');
INSERT INTO `tb_area` VALUES (1610, 1598, '凯里市', '522601', '0855', 'district');
INSERT INTO `tb_area` VALUES (1611, 1598, '丹寨县', '522636', '0855', 'district');
INSERT INTO `tb_area` VALUES (1612, 1598, '黄平县', '522622', '0855', 'district');
INSERT INTO `tb_area` VALUES (1613, 1598, '台江县', '522630', '0855', 'district');
INSERT INTO `tb_area` VALUES (1614, 1598, '岑巩县', '522626', '0855', 'district');
INSERT INTO `tb_area` VALUES (1615, 1566, '黔南布依族苗族自治州', '522700', '0854', 'city');
INSERT INTO `tb_area` VALUES (1616, 1615, '都匀市', '522701', '0854', 'district');
INSERT INTO `tb_area` VALUES (1617, 1615, '惠水县', '522731', '0854', 'district');
INSERT INTO `tb_area` VALUES (1618, 1615, '平塘县', '522727', '0854', 'district');
INSERT INTO `tb_area` VALUES (1619, 1615, '长顺县', '522729', '0854', 'district');
INSERT INTO `tb_area` VALUES (1620, 1615, '独山县', '522726', '0854', 'district');
INSERT INTO `tb_area` VALUES (1621, 1615, '罗甸县', '522728', '0854', 'district');
INSERT INTO `tb_area` VALUES (1622, 1615, '荔波县', '522722', '0854', 'district');
INSERT INTO `tb_area` VALUES (1623, 1615, '龙里县', '522730', '0854', 'district');
INSERT INTO `tb_area` VALUES (1624, 1615, '贵定县', '522723', '0854', 'district');
INSERT INTO `tb_area` VALUES (1625, 1615, '福泉市', '522702', '0854', 'district');
INSERT INTO `tb_area` VALUES (1626, 1615, '瓮安县', '522725', '0854', 'district');
INSERT INTO `tb_area` VALUES (1627, 1615, '三都水族自治县', '522732', '0854', 'district');
INSERT INTO `tb_area` VALUES (1628, 1566, '安顺市', '520400', '0853', 'city');
INSERT INTO `tb_area` VALUES (1629, 1628, '西秀区', '520402', '0853', 'district');
INSERT INTO `tb_area` VALUES (1630, 1628, '紫云苗族布依族自治县', '520425', '0853', 'district');
INSERT INTO `tb_area` VALUES (1631, 1628, '关岭布依族苗族自治县', '520424', '0853', 'district');
INSERT INTO `tb_area` VALUES (1632, 1628, '镇宁布依族苗族自治县', '520423', '0853', 'district');
INSERT INTO `tb_area` VALUES (1633, 1628, '平坝区', '520403', '0853', 'district');
INSERT INTO `tb_area` VALUES (1634, 1628, '普定县', '520422', '0853', 'district');
INSERT INTO `tb_area` VALUES (1635, 1566, '黔西南布依族苗族自治州', '522300', '0859', 'city');
INSERT INTO `tb_area` VALUES (1636, 1635, '兴仁市', '522302', '0859', 'district');
INSERT INTO `tb_area` VALUES (1637, 1635, '册亨县', '522327', '0859', 'district');
INSERT INTO `tb_area` VALUES (1638, 1635, '安龙县', '522328', '0859', 'district');
INSERT INTO `tb_area` VALUES (1639, 1635, '兴义市', '522301', '0859', 'district');
INSERT INTO `tb_area` VALUES (1640, 1635, '晴隆县', '522324', '0859', 'district');
INSERT INTO `tb_area` VALUES (1641, 1635, '普安县', '522323', '0859', 'district');
INSERT INTO `tb_area` VALUES (1642, 1635, '贞丰县', '522325', '0859', 'district');
INSERT INTO `tb_area` VALUES (1643, 1635, '望谟县', '522326', '0859', 'district');
INSERT INTO `tb_area` VALUES (1644, 1566, '毕节市', '520500', '0857', 'city');
INSERT INTO `tb_area` VALUES (1645, 1644, '七星关区', '520502', '0857', 'district');
INSERT INTO `tb_area` VALUES (1646, 1644, '大方县', '520521', '0857', 'district');
INSERT INTO `tb_area` VALUES (1647, 1644, '黔西县', '520522', '0857', 'district');
INSERT INTO `tb_area` VALUES (1648, 1644, '金沙县', '520523', '0857', 'district');
INSERT INTO `tb_area` VALUES (1649, 1644, '纳雍县', '520525', '0857', 'district');
INSERT INTO `tb_area` VALUES (1650, 1644, '织金县', '520524', '0857', 'district');
INSERT INTO `tb_area` VALUES (1651, 1644, '赫章县', '520527', '0857', 'district');
INSERT INTO `tb_area` VALUES (1652, 1644, '威宁彝族回族苗族自治县', '520526', '0857', 'district');
INSERT INTO `tb_area` VALUES (1653, 1566, '贵阳市', '520100', '0851', 'city');
INSERT INTO `tb_area` VALUES (1654, 1653, '开阳县', '520121', '0851', 'district');
INSERT INTO `tb_area` VALUES (1655, 1653, '白云区', '520113', '0851', 'district');
INSERT INTO `tb_area` VALUES (1656, 1653, '乌当区', '520112', '0851', 'district');
INSERT INTO `tb_area` VALUES (1657, 1653, '观山湖区', '520115', '0851', 'district');
INSERT INTO `tb_area` VALUES (1658, 1653, '修文县', '520123', '0851', 'district');
INSERT INTO `tb_area` VALUES (1659, 1653, '息烽县', '520122', '0851', 'district');
INSERT INTO `tb_area` VALUES (1660, 1653, '清镇市', '520181', '0851', 'district');
INSERT INTO `tb_area` VALUES (1661, 1653, '花溪区', '520111', '0851', 'district');
INSERT INTO `tb_area` VALUES (1662, 1653, '云岩区', '520103', '0851', 'district');
INSERT INTO `tb_area` VALUES (1663, 1653, '南明区', '520102', '0851', 'district');
INSERT INTO `tb_area` VALUES (1664, 0, '重庆市', '500000', '023', 'province');
INSERT INTO `tb_area` VALUES (1665, 1664, '重庆郊县', '500200', '023', 'city');
INSERT INTO `tb_area` VALUES (1666, 1665, '城口县', '500229', '023', 'district');
INSERT INTO `tb_area` VALUES (1667, 1665, '巫溪县', '500238', '023', 'district');
INSERT INTO `tb_area` VALUES (1668, 1665, '奉节县', '500236', '023', 'district');
INSERT INTO `tb_area` VALUES (1669, 1665, '丰都县', '500230', '023', 'district');
INSERT INTO `tb_area` VALUES (1670, 1665, '彭水苗族土家族自治县', '500243', '023', 'district');
INSERT INTO `tb_area` VALUES (1671, 1665, '秀山土家族苗族自治县', '500241', '023', 'district');
INSERT INTO `tb_area` VALUES (1672, 1665, '云阳县', '500235', '023', 'district');
INSERT INTO `tb_area` VALUES (1673, 1665, '巫山县', '500237', '023', 'district');
INSERT INTO `tb_area` VALUES (1674, 1665, '垫江县', '500231', '023', 'district');
INSERT INTO `tb_area` VALUES (1675, 1665, '酉阳土家族苗族自治县', '500242', '023', 'district');
INSERT INTO `tb_area` VALUES (1676, 1665, '石柱土家族自治县', '500240', '023', 'district');
INSERT INTO `tb_area` VALUES (1677, 1665, '忠县', '500233', '023', 'district');
INSERT INTO `tb_area` VALUES (1678, 1664, '重庆城区', '500100', '023', 'city');
INSERT INTO `tb_area` VALUES (1679, 1678, '合川区', '500117', '023', 'district');
INSERT INTO `tb_area` VALUES (1680, 1678, '璧山区', '500120', '023', 'district');
INSERT INTO `tb_area` VALUES (1681, 1678, '潼南区', '500152', '023', 'district');
INSERT INTO `tb_area` VALUES (1682, 1678, '长寿区', '500115', '023', 'district');
INSERT INTO `tb_area` VALUES (1683, 1678, '铜梁区', '500151', '023', 'district');
INSERT INTO `tb_area` VALUES (1684, 1678, '大足区', '500111', '023', 'district');
INSERT INTO `tb_area` VALUES (1685, 1678, '荣昌区', '500153', '023', 'district');
INSERT INTO `tb_area` VALUES (1686, 1678, '永川区', '500118', '023', 'district');
INSERT INTO `tb_area` VALUES (1687, 1678, '南川区', '500119', '023', 'district');
INSERT INTO `tb_area` VALUES (1688, 1678, '渝中区', '500103', '023', 'district');
INSERT INTO `tb_area` VALUES (1689, 1678, '大渡口区', '500104', '023', 'district');
INSERT INTO `tb_area` VALUES (1690, 1678, '江北区', '500105', '023', 'district');
INSERT INTO `tb_area` VALUES (1691, 1678, '武隆区', '500156', '023', 'district');
INSERT INTO `tb_area` VALUES (1692, 1678, '九龙坡区', '500107', '023', 'district');
INSERT INTO `tb_area` VALUES (1693, 1678, '万州区', '500101', '023', 'district');
INSERT INTO `tb_area` VALUES (1694, 1678, '涪陵区', '500102', '023', 'district');
INSERT INTO `tb_area` VALUES (1695, 1678, '綦江区', '500110', '023', 'district');
INSERT INTO `tb_area` VALUES (1696, 1678, '渝北区', '500112', '023', 'district');
INSERT INTO `tb_area` VALUES (1697, 1678, '梁平区', '500155', '023', 'district');
INSERT INTO `tb_area` VALUES (1698, 1678, '开州区', '500154', '023', 'district');
INSERT INTO `tb_area` VALUES (1699, 1678, '黔江区', '500114', '023', 'district');
INSERT INTO `tb_area` VALUES (1700, 1678, '江津区', '500116', '023', 'district');
INSERT INTO `tb_area` VALUES (1701, 1678, '南岸区', '500108', '023', 'district');
INSERT INTO `tb_area` VALUES (1702, 1678, '巴南区', '500113', '023', 'district');
INSERT INTO `tb_area` VALUES (1703, 1678, '沙坪坝区', '500106', '023', 'district');
INSERT INTO `tb_area` VALUES (1704, 1678, '北碚区', '500109', '023', 'district');
INSERT INTO `tb_area` VALUES (1705, 0, '西藏自治区', '540000', '', 'province');
INSERT INTO `tb_area` VALUES (1706, 1705, '昌都市', '540300', '0895', 'city');
INSERT INTO `tb_area` VALUES (1707, 1706, '江达县', '540321', '0895', 'district');
INSERT INTO `tb_area` VALUES (1708, 1706, '丁青县', '540324', '0895', 'district');
INSERT INTO `tb_area` VALUES (1709, 1706, '卡若区', '540302', '0895', 'district');
INSERT INTO `tb_area` VALUES (1710, 1706, '类乌齐县', '540323', '0895', 'district');
INSERT INTO `tb_area` VALUES (1711, 1706, '边坝县', '540330', '0895', 'district');
INSERT INTO `tb_area` VALUES (1712, 1706, '贡觉县', '540322', '0895', 'district');
INSERT INTO `tb_area` VALUES (1713, 1706, '洛隆县', '540329', '0895', 'district');
INSERT INTO `tb_area` VALUES (1714, 1706, '八宿县', '540326', '0895', 'district');
INSERT INTO `tb_area` VALUES (1715, 1706, '察雅县', '540325', '0895', 'district');
INSERT INTO `tb_area` VALUES (1716, 1706, '左贡县', '540327', '0895', 'district');
INSERT INTO `tb_area` VALUES (1717, 1706, '芒康县', '540328', '0895', 'district');
INSERT INTO `tb_area` VALUES (1718, 1705, '那曲市', '540600', '0896', 'city');
INSERT INTO `tb_area` VALUES (1719, 1718, '安多县', '540624', '0896', 'district');
INSERT INTO `tb_area` VALUES (1720, 1718, '聂荣县', '540623', '0896', 'district');
INSERT INTO `tb_area` VALUES (1721, 1718, '巴青县', '540628', '0896', 'district');
INSERT INTO `tb_area` VALUES (1722, 1718, '申扎县', '540625', '0896', 'district');
INSERT INTO `tb_area` VALUES (1723, 1718, '班戈县', '540627', '0896', 'district');
INSERT INTO `tb_area` VALUES (1724, 1718, '比如县', '540622', '0896', 'district');
INSERT INTO `tb_area` VALUES (1725, 1718, '索县', '540626', '0896', 'district');
INSERT INTO `tb_area` VALUES (1726, 1718, '色尼区', '540602', '0896', 'district');
INSERT INTO `tb_area` VALUES (1727, 1718, '嘉黎县', '540621', '0896', 'district');
INSERT INTO `tb_area` VALUES (1728, 1718, '尼玛县', '540629', '0896', 'district');
INSERT INTO `tb_area` VALUES (1729, 1718, '双湖县', '540630', '0896', 'district');
INSERT INTO `tb_area` VALUES (1730, 1705, '拉萨市', '540100', '0891', 'city');
INSERT INTO `tb_area` VALUES (1731, 1730, '当雄县', '540122', '0891', 'district');
INSERT INTO `tb_area` VALUES (1732, 1730, '林周县', '540121', '0891', 'district');
INSERT INTO `tb_area` VALUES (1733, 1730, '达孜区', '540104', '0891', 'district');
INSERT INTO `tb_area` VALUES (1734, 1730, '墨竹工卡县', '540127', '0891', 'district');
INSERT INTO `tb_area` VALUES (1735, 1730, '堆龙德庆区', '540103', '0891', 'district');
INSERT INTO `tb_area` VALUES (1736, 1730, '尼木县', '540123', '0891', 'district');
INSERT INTO `tb_area` VALUES (1737, 1730, '曲水县', '540124', '0891', 'district');
INSERT INTO `tb_area` VALUES (1738, 1730, '城关区', '540102', '0891', 'district');
INSERT INTO `tb_area` VALUES (1739, 1705, '日喀则市', '540200', '0892', 'city');
INSERT INTO `tb_area` VALUES (1740, 1739, '仲巴县', '540232', '0892', 'district');
INSERT INTO `tb_area` VALUES (1741, 1739, '昂仁县', '540226', '0892', 'district');
INSERT INTO `tb_area` VALUES (1742, 1739, '谢通门县', '540227', '0892', 'district');
INSERT INTO `tb_area` VALUES (1743, 1739, '南木林县', '540221', '0892', 'district');
INSERT INTO `tb_area` VALUES (1744, 1739, '萨嘎县', '540236', '0892', 'district');
INSERT INTO `tb_area` VALUES (1745, 1739, '拉孜县', '540225', '0892', 'district');
INSERT INTO `tb_area` VALUES (1746, 1739, '桑珠孜区', '540202', '0892', 'district');
INSERT INTO `tb_area` VALUES (1747, 1739, '仁布县', '540229', '0892', 'district');
INSERT INTO `tb_area` VALUES (1748, 1739, '江孜县', '540222', '0892', 'district');
INSERT INTO `tb_area` VALUES (1749, 1739, '白朗县', '540228', '0892', 'district');
INSERT INTO `tb_area` VALUES (1750, 1739, '萨迦县', '540224', '0892', 'district');
INSERT INTO `tb_area` VALUES (1751, 1739, '吉隆县', '540234', '0892', 'district');
INSERT INTO `tb_area` VALUES (1752, 1739, '聂拉木县', '540235', '0892', 'district');
INSERT INTO `tb_area` VALUES (1753, 1739, '康马县', '540230', '0892', 'district');
INSERT INTO `tb_area` VALUES (1754, 1739, '岗巴县', '540237', '0892', 'district');
INSERT INTO `tb_area` VALUES (1755, 1739, '定日县', '540223', '0892', 'district');
INSERT INTO `tb_area` VALUES (1756, 1739, '定结县', '540231', '0892', 'district');
INSERT INTO `tb_area` VALUES (1757, 1739, '亚东县', '540233', '0892', 'district');
INSERT INTO `tb_area` VALUES (1758, 1705, '山南市', '540500', '0893', 'city');
INSERT INTO `tb_area` VALUES (1759, 1758, '扎囊县', '540521', '0893', 'district');
INSERT INTO `tb_area` VALUES (1760, 1758, '加查县', '540528', '0893', 'district');
INSERT INTO `tb_area` VALUES (1761, 1758, '乃东区', '540502', '0893', 'district');
INSERT INTO `tb_area` VALUES (1762, 1758, '桑日县', '540523', '0893', 'district');
INSERT INTO `tb_area` VALUES (1763, 1758, '贡嘎县', '540522', '0893', 'district');
INSERT INTO `tb_area` VALUES (1764, 1758, '浪卡子县', '540531', '0893', 'district');
INSERT INTO `tb_area` VALUES (1765, 1758, '曲松县', '540525', '0893', 'district');
INSERT INTO `tb_area` VALUES (1766, 1758, '琼结县', '540524', '0893', 'district');
INSERT INTO `tb_area` VALUES (1767, 1758, '措美县', '540526', '0893', 'district');
INSERT INTO `tb_area` VALUES (1768, 1758, '隆子县', '540529', '0893', 'district');
INSERT INTO `tb_area` VALUES (1769, 1758, '洛扎县', '540527', '0893', 'district');
INSERT INTO `tb_area` VALUES (1770, 1758, '错那县', '540530', '0893', 'district');
INSERT INTO `tb_area` VALUES (1771, 1705, '林芝市', '540400', '0894', 'city');
INSERT INTO `tb_area` VALUES (1772, 1771, '波密县', '540424', '0894', 'district');
INSERT INTO `tb_area` VALUES (1773, 1771, '工布江达县', '540421', '0894', 'district');
INSERT INTO `tb_area` VALUES (1774, 1771, '巴宜区', '540402', '0894', 'district');
INSERT INTO `tb_area` VALUES (1775, 1771, '墨脱县', '540423', '0894', 'district');
INSERT INTO `tb_area` VALUES (1776, 1771, '米林县', '540422', '0894', 'district');
INSERT INTO `tb_area` VALUES (1777, 1771, '察隅县', '540425', '0894', 'district');
INSERT INTO `tb_area` VALUES (1778, 1771, '朗县', '540426', '0894', 'district');
INSERT INTO `tb_area` VALUES (1779, 1705, '阿里地区', '542500', '0897', 'city');
INSERT INTO `tb_area` VALUES (1780, 1779, '改则县', '542526', '0897', 'district');
INSERT INTO `tb_area` VALUES (1781, 1779, '札达县', '542522', '0897', 'district');
INSERT INTO `tb_area` VALUES (1782, 1779, '措勤县', '542527', '0897', 'district');
INSERT INTO `tb_area` VALUES (1783, 1779, '普兰县', '542521', '0897', 'district');
INSERT INTO `tb_area` VALUES (1784, 1779, '日土县', '542524', '0897', 'district');
INSERT INTO `tb_area` VALUES (1785, 1779, '噶尔县', '542523', '0897', 'district');
INSERT INTO `tb_area` VALUES (1786, 1779, '革吉县', '542525', '0897', 'district');
INSERT INTO `tb_area` VALUES (1787, 0, '安徽省', '340000', '', 'province');
INSERT INTO `tb_area` VALUES (1788, 1787, '淮北市', '340600', '0561', 'city');
INSERT INTO `tb_area` VALUES (1789, 1788, '杜集区', '340602', '0561', 'district');
INSERT INTO `tb_area` VALUES (1790, 1788, '相山区', '340603', '0561', 'district');
INSERT INTO `tb_area` VALUES (1791, 1788, '濉溪县', '340621', '0561', 'district');
INSERT INTO `tb_area` VALUES (1792, 1788, '烈山区', '340604', '0561', 'district');
INSERT INTO `tb_area` VALUES (1793, 1787, '阜阳市', '341200', '1558', 'city');
INSERT INTO `tb_area` VALUES (1794, 1793, '颍泉区', '341204', '1558', 'district');
INSERT INTO `tb_area` VALUES (1795, 1793, '太和县', '341222', '1558', 'district');
INSERT INTO `tb_area` VALUES (1796, 1793, '临泉县', '341221', '1558', 'district');
INSERT INTO `tb_area` VALUES (1797, 1793, '颍东区', '341203', '1558', 'district');
INSERT INTO `tb_area` VALUES (1798, 1793, '颍州区', '341202', '1558', 'district');
INSERT INTO `tb_area` VALUES (1799, 1793, '阜南县', '341225', '1558', 'district');
INSERT INTO `tb_area` VALUES (1800, 1793, '颍上县', '341226', '1558', 'district');
INSERT INTO `tb_area` VALUES (1801, 1793, '界首市', '341282', '1558', 'district');
INSERT INTO `tb_area` VALUES (1802, 1787, '马鞍山市', '340500', '0555', 'city');
INSERT INTO `tb_area` VALUES (1803, 1802, '博望区', '340506', '0555', 'district');
INSERT INTO `tb_area` VALUES (1804, 1802, '当涂县', '340521', '0555', 'district');
INSERT INTO `tb_area` VALUES (1805, 1802, '雨山区', '340504', '0555', 'district');
INSERT INTO `tb_area` VALUES (1806, 1802, '花山区', '340503', '0555', 'district');
INSERT INTO `tb_area` VALUES (1807, 1802, '和县', '340523', '0555', 'district');
INSERT INTO `tb_area` VALUES (1808, 1802, '含山县', '340522', '0555', 'district');
INSERT INTO `tb_area` VALUES (1809, 1787, '铜陵市', '340700', '0562', 'city');
INSERT INTO `tb_area` VALUES (1810, 1809, '郊区', '340711', '0562', 'district');
INSERT INTO `tb_area` VALUES (1811, 1809, '铜官区', '340705', '0562', 'district');
INSERT INTO `tb_area` VALUES (1812, 1809, '义安区', '340706', '0562', 'district');
INSERT INTO `tb_area` VALUES (1813, 1809, '枞阳县', '340722', '0562', 'district');
INSERT INTO `tb_area` VALUES (1814, 1787, '池州市', '341700', '0566', 'city');
INSERT INTO `tb_area` VALUES (1815, 1814, '青阳县', '341723', '0566', 'district');
INSERT INTO `tb_area` VALUES (1816, 1814, '东至县', '341721', '0566', 'district');
INSERT INTO `tb_area` VALUES (1817, 1814, '贵池区', '341702', '0566', 'district');
INSERT INTO `tb_area` VALUES (1818, 1814, '石台县', '341722', '0566', 'district');
INSERT INTO `tb_area` VALUES (1819, 1787, '亳州市', '341600', '0558', 'city');
INSERT INTO `tb_area` VALUES (1820, 1819, '谯城区', '341602', '0558', 'district');
INSERT INTO `tb_area` VALUES (1821, 1819, '涡阳县', '341621', '0558', 'district');
INSERT INTO `tb_area` VALUES (1822, 1819, '蒙城县', '341622', '0558', 'district');
INSERT INTO `tb_area` VALUES (1823, 1819, '利辛县', '341623', '0558', 'district');
INSERT INTO `tb_area` VALUES (1824, 1787, '蚌埠市', '340300', '0552', 'city');
INSERT INTO `tb_area` VALUES (1825, 1824, '五河县', '340322', '0552', 'district');
INSERT INTO `tb_area` VALUES (1826, 1824, '淮上区', '340311', '0552', 'district');
INSERT INTO `tb_area` VALUES (1827, 1824, '固镇县', '340323', '0552', 'district');
INSERT INTO `tb_area` VALUES (1828, 1824, '怀远县', '340321', '0552', 'district');
INSERT INTO `tb_area` VALUES (1829, 1824, '禹会区', '340304', '0552', 'district');
INSERT INTO `tb_area` VALUES (1830, 1824, '龙子湖区', '340302', '0552', 'district');
INSERT INTO `tb_area` VALUES (1831, 1824, '蚌山区', '340303', '0552', 'district');
INSERT INTO `tb_area` VALUES (1832, 1787, '滁州市', '341100', '0550', 'city');
INSERT INTO `tb_area` VALUES (1833, 1832, '明光市', '341182', '0550', 'district');
INSERT INTO `tb_area` VALUES (1834, 1832, '天长市', '341181', '0550', 'district');
INSERT INTO `tb_area` VALUES (1835, 1832, '全椒县', '341124', '0550', 'district');
INSERT INTO `tb_area` VALUES (1836, 1832, '凤阳县', '341126', '0550', 'district');
INSERT INTO `tb_area` VALUES (1837, 1832, '来安县', '341122', '0550', 'district');
INSERT INTO `tb_area` VALUES (1838, 1832, '定远县', '341125', '0550', 'district');
INSERT INTO `tb_area` VALUES (1839, 1832, '南谯区', '341103', '0550', 'district');
INSERT INTO `tb_area` VALUES (1840, 1832, '琅琊区', '341102', '0550', 'district');
INSERT INTO `tb_area` VALUES (1841, 1787, '六安市', '341500', '0564', 'city');
INSERT INTO `tb_area` VALUES (1842, 1841, '霍山县', '341525', '0564', 'district');
INSERT INTO `tb_area` VALUES (1843, 1841, '裕安区', '341503', '0564', 'district');
INSERT INTO `tb_area` VALUES (1844, 1841, '金寨县', '341524', '0564', 'district');
INSERT INTO `tb_area` VALUES (1845, 1841, '金安区', '341502', '0564', 'district');
INSERT INTO `tb_area` VALUES (1846, 1841, '舒城县', '341523', '0564', 'district');
INSERT INTO `tb_area` VALUES (1847, 1841, '叶集区', '341504', '0564', 'district');
INSERT INTO `tb_area` VALUES (1848, 1841, '霍邱县', '341522', '0564', 'district');
INSERT INTO `tb_area` VALUES (1849, 1787, '安庆市', '340800', '0556', 'city');
INSERT INTO `tb_area` VALUES (1850, 1849, '潜山市', '340882', '0556', 'district');
INSERT INTO `tb_area` VALUES (1851, 1849, '岳西县', '340828', '0556', 'district');
INSERT INTO `tb_area` VALUES (1852, 1849, '太湖县', '340825', '0556', 'district');
INSERT INTO `tb_area` VALUES (1853, 1849, '宜秀区', '340811', '0556', 'district');
INSERT INTO `tb_area` VALUES (1854, 1849, '迎江区', '340802', '0556', 'district');
INSERT INTO `tb_area` VALUES (1855, 1849, '桐城市', '340881', '0556', 'district');
INSERT INTO `tb_area` VALUES (1856, 1849, '宿松县', '340826', '0556', 'district');
INSERT INTO `tb_area` VALUES (1857, 1849, '望江县', '340827', '0556', 'district');
INSERT INTO `tb_area` VALUES (1858, 1849, '大观区', '340803', '0556', 'district');
INSERT INTO `tb_area` VALUES (1859, 1849, '怀宁县', '340822', '0556', 'district');
INSERT INTO `tb_area` VALUES (1860, 1787, '黄山市', '341000', '0559', 'city');
INSERT INTO `tb_area` VALUES (1861, 1860, '黄山区', '341003', '0559', 'district');
INSERT INTO `tb_area` VALUES (1862, 1860, '黟县', '341023', '0559', 'district');
INSERT INTO `tb_area` VALUES (1863, 1860, '祁门县', '341024', '0559', 'district');
INSERT INTO `tb_area` VALUES (1864, 1860, '歙县', '341021', '0559', 'district');
INSERT INTO `tb_area` VALUES (1865, 1860, '屯溪区', '341002', '0559', 'district');
INSERT INTO `tb_area` VALUES (1866, 1860, '徽州区', '341004', '0559', 'district');
INSERT INTO `tb_area` VALUES (1867, 1860, '休宁县', '341022', '0559', 'district');
INSERT INTO `tb_area` VALUES (1868, 1787, '宣城市', '341800', '0563', 'city');
INSERT INTO `tb_area` VALUES (1869, 1868, '广德县', '341822', '0563', 'district');
INSERT INTO `tb_area` VALUES (1870, 1868, '泾县', '341823', '0563', 'district');
INSERT INTO `tb_area` VALUES (1871, 1868, '旌德县', '341825', '0563', 'district');
INSERT INTO `tb_area` VALUES (1872, 1868, '绩溪县', '341824', '0563', 'district');
INSERT INTO `tb_area` VALUES (1873, 1868, '宣州区', '341802', '0563', 'district');
INSERT INTO `tb_area` VALUES (1874, 1868, '宁国市', '341881', '0563', 'district');
INSERT INTO `tb_area` VALUES (1875, 1868, '郎溪县', '341821', '0563', 'district');
INSERT INTO `tb_area` VALUES (1876, 1787, '淮南市', '340400', '0554', 'city');
INSERT INTO `tb_area` VALUES (1877, 1876, '凤台县', '340421', '0554', 'district');
INSERT INTO `tb_area` VALUES (1878, 1876, '潘集区', '340406', '0554', 'district');
INSERT INTO `tb_area` VALUES (1879, 1876, '八公山区', '340405', '0554', 'district');
INSERT INTO `tb_area` VALUES (1880, 1876, '大通区', '340402', '0554', 'district');
INSERT INTO `tb_area` VALUES (1881, 1876, '寿县', '340422', '0554', 'district');
INSERT INTO `tb_area` VALUES (1882, 1876, '田家庵区', '340403', '0554', 'district');
INSERT INTO `tb_area` VALUES (1883, 1876, '谢家集区', '340404', '0554', 'district');
INSERT INTO `tb_area` VALUES (1884, 1787, '合肥市', '340100', '0551', 'city');
INSERT INTO `tb_area` VALUES (1885, 1884, '庐阳区', '340103', '0551', 'district');
INSERT INTO `tb_area` VALUES (1886, 1884, '肥东县', '340122', '0551', 'district');
INSERT INTO `tb_area` VALUES (1887, 1884, '庐江县', '340124', '0551', 'district');
INSERT INTO `tb_area` VALUES (1888, 1884, '瑶海区', '340102', '0551', 'district');
INSERT INTO `tb_area` VALUES (1889, 1884, '长丰县', '340121', '0551', 'district');
INSERT INTO `tb_area` VALUES (1890, 1884, '包河区', '340111', '0551', 'district');
INSERT INTO `tb_area` VALUES (1891, 1884, '巢湖市', '340181', '0551', 'district');
INSERT INTO `tb_area` VALUES (1892, 1884, '肥西县', '340123', '0551', 'district');
INSERT INTO `tb_area` VALUES (1893, 1884, '蜀山区', '340104', '0551', 'district');
INSERT INTO `tb_area` VALUES (1894, 1787, '宿州市', '341300', '0557', 'city');
INSERT INTO `tb_area` VALUES (1895, 1894, '砀山县', '341321', '0557', 'district');
INSERT INTO `tb_area` VALUES (1896, 1894, '埇桥区', '341302', '0557', 'district');
INSERT INTO `tb_area` VALUES (1897, 1894, '灵璧县', '341323', '0557', 'district');
INSERT INTO `tb_area` VALUES (1898, 1894, '泗县', '341324', '0557', 'district');
INSERT INTO `tb_area` VALUES (1899, 1894, '萧县', '341322', '0557', 'district');
INSERT INTO `tb_area` VALUES (1900, 1787, '芜湖市', '340200', '0553', 'city');
INSERT INTO `tb_area` VALUES (1901, 1900, '繁昌县', '340222', '0553', 'district');
INSERT INTO `tb_area` VALUES (1902, 1900, '弋江区', '340203', '0553', 'district');
INSERT INTO `tb_area` VALUES (1903, 1900, '镜湖区', '340202', '0553', 'district');
INSERT INTO `tb_area` VALUES (1904, 1900, '无为县', '340225', '0553', 'district');
INSERT INTO `tb_area` VALUES (1905, 1900, '南陵县', '340223', '0553', 'district');
INSERT INTO `tb_area` VALUES (1906, 1900, '三山区', '340208', '0553', 'district');
INSERT INTO `tb_area` VALUES (1907, 1900, '鸠江区', '340207', '0553', 'district');
INSERT INTO `tb_area` VALUES (1908, 1900, '芜湖县', '340221', '0553', 'district');
INSERT INTO `tb_area` VALUES (1909, 0, '福建省', '350000', '', 'province');
INSERT INTO `tb_area` VALUES (1910, 1909, '宁德市', '350900', '0593', 'city');
INSERT INTO `tb_area` VALUES (1911, 1910, '寿宁县', '350924', '0593', 'district');
INSERT INTO `tb_area` VALUES (1912, 1910, '福安市', '350981', '0593', 'district');
INSERT INTO `tb_area` VALUES (1913, 1910, '柘荣县', '350926', '0593', 'district');
INSERT INTO `tb_area` VALUES (1914, 1910, '周宁县', '350925', '0593', 'district');
INSERT INTO `tb_area` VALUES (1915, 1910, '屏南县', '350923', '0593', 'district');
INSERT INTO `tb_area` VALUES (1916, 1910, '古田县', '350922', '0593', 'district');
INSERT INTO `tb_area` VALUES (1917, 1910, '福鼎市', '350982', '0593', 'district');
INSERT INTO `tb_area` VALUES (1918, 1910, '蕉城区', '350902', '0593', 'district');
INSERT INTO `tb_area` VALUES (1919, 1910, '霞浦县', '350921', '0593', 'district');
INSERT INTO `tb_area` VALUES (1920, 1909, '福州市', '350100', '0591', 'city');
INSERT INTO `tb_area` VALUES (1921, 1920, '闽侯县', '350121', '0591', 'district');
INSERT INTO `tb_area` VALUES (1922, 1920, '罗源县', '350123', '0591', 'district');
INSERT INTO `tb_area` VALUES (1923, 1920, '闽清县', '350124', '0591', 'district');
INSERT INTO `tb_area` VALUES (1924, 1920, '长乐区', '350112', '0591', 'district');
INSERT INTO `tb_area` VALUES (1925, 1920, '连江县', '350122', '0591', 'district');
INSERT INTO `tb_area` VALUES (1926, 1920, '永泰县', '350125', '0591', 'district');
INSERT INTO `tb_area` VALUES (1927, 1920, '仓山区', '350104', '0591', 'district');
INSERT INTO `tb_area` VALUES (1928, 1920, '平潭县', '350128', '0591', 'district');
INSERT INTO `tb_area` VALUES (1929, 1920, '福清市', '350181', '0591', 'district');
INSERT INTO `tb_area` VALUES (1930, 1920, '台江区', '350103', '0591', 'district');
INSERT INTO `tb_area` VALUES (1931, 1920, '鼓楼区', '350102', '0591', 'district');
INSERT INTO `tb_area` VALUES (1932, 1920, '马尾区', '350105', '0591', 'district');
INSERT INTO `tb_area` VALUES (1933, 1920, '晋安区', '350111', '0591', 'district');
INSERT INTO `tb_area` VALUES (1934, 1909, '龙岩市', '350800', '0597', 'city');
INSERT INTO `tb_area` VALUES (1935, 1934, '长汀县', '350821', '0597', 'district');
INSERT INTO `tb_area` VALUES (1936, 1934, '连城县', '350825', '0597', 'district');
INSERT INTO `tb_area` VALUES (1937, 1934, '漳平市', '350881', '0597', 'district');
INSERT INTO `tb_area` VALUES (1938, 1934, '新罗区', '350802', '0597', 'district');
INSERT INTO `tb_area` VALUES (1939, 1934, '武平县', '350824', '0597', 'district');
INSERT INTO `tb_area` VALUES (1940, 1934, '上杭县', '350823', '0597', 'district');
INSERT INTO `tb_area` VALUES (1941, 1934, '永定区', '350803', '0597', 'district');
INSERT INTO `tb_area` VALUES (1942, 1909, '莆田市', '350300', '0594', 'city');
INSERT INTO `tb_area` VALUES (1943, 1942, '仙游县', '350322', '0594', 'district');
INSERT INTO `tb_area` VALUES (1944, 1942, '城厢区', '350302', '0594', 'district');
INSERT INTO `tb_area` VALUES (1945, 1942, '秀屿区', '350305', '0594', 'district');
INSERT INTO `tb_area` VALUES (1946, 1942, '荔城区', '350304', '0594', 'district');
INSERT INTO `tb_area` VALUES (1947, 1942, '涵江区', '350303', '0594', 'district');
INSERT INTO `tb_area` VALUES (1948, 1909, '泉州市', '350500', '0595', 'city');
INSERT INTO `tb_area` VALUES (1949, 1948, '德化县', '350526', '0595', 'district');
INSERT INTO `tb_area` VALUES (1950, 1948, '永春县', '350525', '0595', 'district');
INSERT INTO `tb_area` VALUES (1951, 1948, '安溪县', '350524', '0595', 'district');
INSERT INTO `tb_area` VALUES (1952, 1948, '南安市', '350583', '0595', 'district');
INSERT INTO `tb_area` VALUES (1953, 1948, '洛江区', '350504', '0595', 'district');
INSERT INTO `tb_area` VALUES (1954, 1948, '泉港区', '350505', '0595', 'district');
INSERT INTO `tb_area` VALUES (1955, 1948, '惠安县', '350521', '0595', 'district');
INSERT INTO `tb_area` VALUES (1956, 1948, '丰泽区', '350503', '0595', 'district');
INSERT INTO `tb_area` VALUES (1957, 1948, '石狮市', '350581', '0595', 'district');
INSERT INTO `tb_area` VALUES (1958, 1948, '晋江市', '350582', '0595', 'district');
INSERT INTO `tb_area` VALUES (1959, 1948, '金门县', '350527', '0595', 'district');
INSERT INTO `tb_area` VALUES (1960, 1948, '鲤城区', '350502', '0595', 'district');
INSERT INTO `tb_area` VALUES (1961, 1909, '厦门市', '350200', '0592', 'city');
INSERT INTO `tb_area` VALUES (1962, 1961, '思明区', '350203', '0592', 'district');
INSERT INTO `tb_area` VALUES (1963, 1961, '同安区', '350212', '0592', 'district');
INSERT INTO `tb_area` VALUES (1964, 1961, '湖里区', '350206', '0592', 'district');
INSERT INTO `tb_area` VALUES (1965, 1961, '翔安区', '350213', '0592', 'district');
INSERT INTO `tb_area` VALUES (1966, 1961, '集美区', '350211', '0592', 'district');
INSERT INTO `tb_area` VALUES (1967, 1961, '海沧区', '350205', '0592', 'district');
INSERT INTO `tb_area` VALUES (1968, 1909, '漳州市', '350600', '0596', 'city');
INSERT INTO `tb_area` VALUES (1969, 1968, '华安县', '350629', '0596', 'district');
INSERT INTO `tb_area` VALUES (1970, 1968, '龙海市', '350681', '0596', 'district');
INSERT INTO `tb_area` VALUES (1971, 1968, '南靖县', '350627', '0596', 'district');
INSERT INTO `tb_area` VALUES (1972, 1968, '诏安县', '350624', '0596', 'district');
INSERT INTO `tb_area` VALUES (1973, 1968, '漳浦县', '350623', '0596', 'district');
INSERT INTO `tb_area` VALUES (1974, 1968, '东山县', '350626', '0596', 'district');
INSERT INTO `tb_area` VALUES (1975, 1968, '芗城区', '350602', '0596', 'district');
INSERT INTO `tb_area` VALUES (1976, 1968, '龙文区', '350603', '0596', 'district');
INSERT INTO `tb_area` VALUES (1977, 1968, '云霄县', '350622', '0596', 'district');
INSERT INTO `tb_area` VALUES (1978, 1968, '平和县', '350628', '0596', 'district');
INSERT INTO `tb_area` VALUES (1979, 1968, '长泰县', '350625', '0596', 'district');
INSERT INTO `tb_area` VALUES (1980, 1909, '南平市', '350700', '0599', 'city');
INSERT INTO `tb_area` VALUES (1981, 1980, '浦城县', '350722', '0599', 'district');
INSERT INTO `tb_area` VALUES (1982, 1980, '光泽县', '350723', '0599', 'district');
INSERT INTO `tb_area` VALUES (1983, 1980, '武夷山市', '350782', '0599', 'district');
INSERT INTO `tb_area` VALUES (1984, 1980, '松溪县', '350724', '0599', 'district');
INSERT INTO `tb_area` VALUES (1985, 1980, '建阳区', '350703', '0599', 'district');
INSERT INTO `tb_area` VALUES (1986, 1980, '政和县', '350725', '0599', 'district');
INSERT INTO `tb_area` VALUES (1987, 1980, '邵武市', '350781', '0599', 'district');
INSERT INTO `tb_area` VALUES (1988, 1980, '顺昌县', '350721', '0599', 'district');
INSERT INTO `tb_area` VALUES (1989, 1980, '建瓯市', '350783', '0599', 'district');
INSERT INTO `tb_area` VALUES (1990, 1980, '延平区', '350702', '0599', 'district');
INSERT INTO `tb_area` VALUES (1991, 1909, '三明市', '350400', '0598', 'city');
INSERT INTO `tb_area` VALUES (1992, 1991, '泰宁县', '350429', '0598', 'district');
INSERT INTO `tb_area` VALUES (1993, 1991, '宁化县', '350424', '0598', 'district');
INSERT INTO `tb_area` VALUES (1994, 1991, '梅列区', '350402', '0598', 'district');
INSERT INTO `tb_area` VALUES (1995, 1991, '清流县', '350423', '0598', 'district');
INSERT INTO `tb_area` VALUES (1996, 1991, '三元区', '350403', '0598', 'district');
INSERT INTO `tb_area` VALUES (1997, 1991, '永安市', '350481', '0598', 'district');
INSERT INTO `tb_area` VALUES (1998, 1991, '大田县', '350425', '0598', 'district');
INSERT INTO `tb_area` VALUES (1999, 1991, '沙县', '350427', '0598', 'district');
INSERT INTO `tb_area` VALUES (2000, 1991, '尤溪县', '350426', '0598', 'district');
INSERT INTO `tb_area` VALUES (2001, 1991, '建宁县', '350430', '0598', 'district');
INSERT INTO `tb_area` VALUES (2002, 1991, '明溪县', '350421', '0598', 'district');
INSERT INTO `tb_area` VALUES (2003, 1991, '将乐县', '350428', '0598', 'district');
INSERT INTO `tb_area` VALUES (2004, 0, '湖南省', '430000', '', 'province');
INSERT INTO `tb_area` VALUES (2005, 2004, '岳阳市', '430600', '0730', 'city');
INSERT INTO `tb_area` VALUES (2006, 2005, '云溪区', '430603', '0730', 'district');
INSERT INTO `tb_area` VALUES (2007, 2005, '华容县', '430623', '0730', 'district');
INSERT INTO `tb_area` VALUES (2008, 2005, '岳阳楼区', '430602', '0730', 'district');
INSERT INTO `tb_area` VALUES (2009, 2005, '君山区', '430611', '0730', 'district');
INSERT INTO `tb_area` VALUES (2010, 2005, '汨罗市', '430681', '0730', 'district');
INSERT INTO `tb_area` VALUES (2011, 2005, '湘阴县', '430624', '0730', 'district');
INSERT INTO `tb_area` VALUES (2012, 2005, '岳阳县', '430621', '0730', 'district');
INSERT INTO `tb_area` VALUES (2013, 2005, '临湘市', '430682', '0730', 'district');
INSERT INTO `tb_area` VALUES (2014, 2005, '平江县', '430626', '0730', 'district');
INSERT INTO `tb_area` VALUES (2015, 2004, '益阳市', '430900', '0737', 'city');
INSERT INTO `tb_area` VALUES (2016, 2015, '南县', '430921', '0737', 'district');
INSERT INTO `tb_area` VALUES (2017, 2015, '沅江市', '430981', '0737', 'district');
INSERT INTO `tb_area` VALUES (2018, 2015, '资阳区', '430902', '0737', 'district');
INSERT INTO `tb_area` VALUES (2019, 2015, '桃江县', '430922', '0737', 'district');
INSERT INTO `tb_area` VALUES (2020, 2015, '赫山区', '430903', '0737', 'district');
INSERT INTO `tb_area` VALUES (2021, 2015, '安化县', '430923', '0737', 'district');
INSERT INTO `tb_area` VALUES (2022, 2004, '衡阳市', '430400', '0734', 'city');
INSERT INTO `tb_area` VALUES (2023, 2022, '衡山县', '430423', '0734', 'district');
INSERT INTO `tb_area` VALUES (2024, 2022, '衡东县', '430424', '0734', 'district');
INSERT INTO `tb_area` VALUES (2025, 2022, '衡阳县', '430421', '0734', 'district');
INSERT INTO `tb_area` VALUES (2026, 2022, '南岳区', '430412', '0734', 'district');
INSERT INTO `tb_area` VALUES (2027, 2022, '祁东县', '430426', '0734', 'district');
INSERT INTO `tb_area` VALUES (2028, 2022, '珠晖区', '430405', '0734', 'district');
INSERT INTO `tb_area` VALUES (2029, 2022, '石鼓区', '430407', '0734', 'district');
INSERT INTO `tb_area` VALUES (2030, 2022, '衡南县', '430422', '0734', 'district');
INSERT INTO `tb_area` VALUES (2031, 2022, '雁峰区', '430406', '0734', 'district');
INSERT INTO `tb_area` VALUES (2032, 2022, '耒阳市', '430481', '0734', 'district');
INSERT INTO `tb_area` VALUES (2033, 2022, '蒸湘区', '430408', '0734', 'district');
INSERT INTO `tb_area` VALUES (2034, 2022, '常宁市', '430482', '0734', 'district');
INSERT INTO `tb_area` VALUES (2035, 2004, '娄底市', '431300', '0738', 'city');
INSERT INTO `tb_area` VALUES (2036, 2035, '冷水江市', '431381', '0738', 'district');
INSERT INTO `tb_area` VALUES (2037, 2035, '新化县', '431322', '0738', 'district');
INSERT INTO `tb_area` VALUES (2038, 2035, '涟源市', '431382', '0738', 'district');
INSERT INTO `tb_area` VALUES (2039, 2035, '双峰县', '431321', '0738', 'district');
INSERT INTO `tb_area` VALUES (2040, 2035, '娄星区', '431302', '0738', 'district');
INSERT INTO `tb_area` VALUES (2041, 2004, '长沙市', '430100', '0731', 'city');
INSERT INTO `tb_area` VALUES (2042, 2041, '开福区', '430105', '0731', 'district');
INSERT INTO `tb_area` VALUES (2043, 2041, '岳麓区', '430104', '0731', 'district');
INSERT INTO `tb_area` VALUES (2044, 2041, '浏阳市', '430181', '0731', 'district');
INSERT INTO `tb_area` VALUES (2045, 2041, '天心区', '430103', '0731', 'district');
INSERT INTO `tb_area` VALUES (2046, 2041, '雨花区', '430111', '0731', 'district');
INSERT INTO `tb_area` VALUES (2047, 2041, '长沙县', '430121', '0731', 'district');
INSERT INTO `tb_area` VALUES (2048, 2041, '芙蓉区', '430102', '0731', 'district');
INSERT INTO `tb_area` VALUES (2049, 2041, '宁乡市', '430182', '0731', 'district');
INSERT INTO `tb_area` VALUES (2050, 2041, '望城区', '430112', '0731', 'district');
INSERT INTO `tb_area` VALUES (2051, 2004, '张家界市', '430800', '0744', 'city');
INSERT INTO `tb_area` VALUES (2052, 2051, '慈利县', '430821', '0744', 'district');
INSERT INTO `tb_area` VALUES (2053, 2051, '武陵源区', '430811', '0744', 'district');
INSERT INTO `tb_area` VALUES (2054, 2051, '桑植县', '430822', '0744', 'district');
INSERT INTO `tb_area` VALUES (2055, 2051, '永定区', '430802', '0744', 'district');
INSERT INTO `tb_area` VALUES (2056, 2004, '怀化市', '431200', '0745', 'city');
INSERT INTO `tb_area` VALUES (2057, 2056, '芷江侗族自治县', '431228', '0745', 'district');
INSERT INTO `tb_area` VALUES (2058, 2056, '洪江市', '431281', '0745', 'district');
INSERT INTO `tb_area` VALUES (2059, 2056, '通道侗族自治县', '431230', '0745', 'district');
INSERT INTO `tb_area` VALUES (2060, 2056, '沅陵县', '431222', '0745', 'district');
INSERT INTO `tb_area` VALUES (2061, 2056, '辰溪县', '431223', '0745', 'district');
INSERT INTO `tb_area` VALUES (2062, 2056, '溆浦县', '431224', '0745', 'district');
INSERT INTO `tb_area` VALUES (2063, 2056, '会同县', '431225', '0745', 'district');
INSERT INTO `tb_area` VALUES (2064, 2056, '靖州苗族侗族自治县', '431229', '0745', 'district');
INSERT INTO `tb_area` VALUES (2065, 2056, '麻阳苗族自治县', '431226', '0745', 'district');
INSERT INTO `tb_area` VALUES (2066, 2056, '新晃侗族自治县', '431227', '0745', 'district');
INSERT INTO `tb_area` VALUES (2067, 2056, '中方县', '431221', '0745', 'district');
INSERT INTO `tb_area` VALUES (2068, 2056, '鹤城区', '431202', '0745', 'district');
INSERT INTO `tb_area` VALUES (2069, 2004, '湘西土家族苗族自治州', '433100', '0743', 'city');
INSERT INTO `tb_area` VALUES (2070, 2069, '永顺县', '433127', '0743', 'district');
INSERT INTO `tb_area` VALUES (2071, 2069, '保靖县', '433125', '0743', 'district');
INSERT INTO `tb_area` VALUES (2072, 2069, '花垣县', '433124', '0743', 'district');
INSERT INTO `tb_area` VALUES (2073, 2069, '吉首市', '433101', '0743', 'district');
INSERT INTO `tb_area` VALUES (2074, 2069, '古丈县', '433126', '0743', 'district');
INSERT INTO `tb_area` VALUES (2075, 2069, '泸溪县', '433122', '0743', 'district');
INSERT INTO `tb_area` VALUES (2076, 2069, '龙山县', '433130', '0743', 'district');
INSERT INTO `tb_area` VALUES (2077, 2069, '凤凰县', '433123', '0743', 'district');
INSERT INTO `tb_area` VALUES (2078, 2004, '常德市', '430700', '0736', 'city');
INSERT INTO `tb_area` VALUES (2079, 2078, '石门县', '430726', '0736', 'district');
INSERT INTO `tb_area` VALUES (2080, 2078, '澧县', '430723', '0736', 'district');
INSERT INTO `tb_area` VALUES (2081, 2078, '临澧县', '430724', '0736', 'district');
INSERT INTO `tb_area` VALUES (2082, 2078, '津市市', '430781', '0736', 'district');
INSERT INTO `tb_area` VALUES (2083, 2078, '武陵区', '430702', '0736', 'district');
INSERT INTO `tb_area` VALUES (2084, 2078, '汉寿县', '430722', '0736', 'district');
INSERT INTO `tb_area` VALUES (2085, 2078, '鼎城区', '430703', '0736', 'district');
INSERT INTO `tb_area` VALUES (2086, 2078, '桃源县', '430725', '0736', 'district');
INSERT INTO `tb_area` VALUES (2087, 2078, '安乡县', '430721', '0736', 'district');
INSERT INTO `tb_area` VALUES (2088, 2004, '株洲市', '430200', '0733', 'city');
INSERT INTO `tb_area` VALUES (2089, 2088, '荷塘区', '430202', '0733', 'district');
INSERT INTO `tb_area` VALUES (2090, 2088, '攸县', '430223', '0733', 'district');
INSERT INTO `tb_area` VALUES (2091, 2088, '茶陵县', '430224', '0733', 'district');
INSERT INTO `tb_area` VALUES (2092, 2088, '炎陵县', '430225', '0733', 'district');
INSERT INTO `tb_area` VALUES (2093, 2088, '天元区', '430211', '0733', 'district');
INSERT INTO `tb_area` VALUES (2094, 2088, '芦淞区', '430203', '0733', 'district');
INSERT INTO `tb_area` VALUES (2095, 2088, '渌口区', '430212', '0733', 'district');
INSERT INTO `tb_area` VALUES (2096, 2088, '石峰区', '430204', '0733', 'district');
INSERT INTO `tb_area` VALUES (2097, 2088, '醴陵市', '430281', '0733', 'district');
INSERT INTO `tb_area` VALUES (2098, 2004, '邵阳市', '430500', '0739', 'city');
INSERT INTO `tb_area` VALUES (2099, 2098, '隆回县', '430524', '0739', 'district');
INSERT INTO `tb_area` VALUES (2100, 2098, '双清区', '430502', '0739', 'district');
INSERT INTO `tb_area` VALUES (2101, 2098, '北塔区', '430511', '0739', 'district');
INSERT INTO `tb_area` VALUES (2102, 2098, '邵阳县', '430523', '0739', 'district');
INSERT INTO `tb_area` VALUES (2103, 2098, '大祥区', '430503', '0739', 'district');
INSERT INTO `tb_area` VALUES (2104, 2098, '绥宁县', '430527', '0739', 'district');
INSERT INTO `tb_area` VALUES (2105, 2098, '新宁县', '430528', '0739', 'district');
INSERT INTO `tb_area` VALUES (2106, 2098, '城步苗族自治县', '430529', '0739', 'district');
INSERT INTO `tb_area` VALUES (2107, 2098, '武冈市', '430581', '0739', 'district');
INSERT INTO `tb_area` VALUES (2108, 2098, '洞口县', '430525', '0739', 'district');
INSERT INTO `tb_area` VALUES (2109, 2098, '新邵县', '430522', '0739', 'district');
INSERT INTO `tb_area` VALUES (2110, 2098, '邵东县', '430521', '0739', 'district');
INSERT INTO `tb_area` VALUES (2111, 2004, '湘潭市', '430300', '0732', 'city');
INSERT INTO `tb_area` VALUES (2112, 2111, '岳塘区', '430304', '0732', 'district');
INSERT INTO `tb_area` VALUES (2113, 2111, '雨湖区', '430302', '0732', 'district');
INSERT INTO `tb_area` VALUES (2114, 2111, '湘潭县', '430321', '0732', 'district');
INSERT INTO `tb_area` VALUES (2115, 2111, '韶山市', '430382', '0732', 'district');
INSERT INTO `tb_area` VALUES (2116, 2111, '湘乡市', '430381', '0732', 'district');
INSERT INTO `tb_area` VALUES (2117, 2004, '永州市', '431100', '0746', 'city');
INSERT INTO `tb_area` VALUES (2118, 2117, '东安县', '431122', '0746', 'district');
INSERT INTO `tb_area` VALUES (2119, 2117, '祁阳县', '431121', '0746', 'district');
INSERT INTO `tb_area` VALUES (2120, 2117, '冷水滩区', '431103', '0746', 'district');
INSERT INTO `tb_area` VALUES (2121, 2117, '零陵区', '431102', '0746', 'district');
INSERT INTO `tb_area` VALUES (2122, 2117, '新田县', '431128', '0746', 'district');
INSERT INTO `tb_area` VALUES (2123, 2117, '宁远县', '431126', '0746', 'district');
INSERT INTO `tb_area` VALUES (2124, 2117, '江永县', '431125', '0746', 'district');
INSERT INTO `tb_area` VALUES (2125, 2117, '江华瑶族自治县', '431129', '0746', 'district');
INSERT INTO `tb_area` VALUES (2126, 2117, '道县', '431124', '0746', 'district');
INSERT INTO `tb_area` VALUES (2127, 2117, '双牌县', '431123', '0746', 'district');
INSERT INTO `tb_area` VALUES (2128, 2117, '蓝山县', '431127', '0746', 'district');
INSERT INTO `tb_area` VALUES (2129, 2004, '郴州市', '431000', '0735', 'city');
INSERT INTO `tb_area` VALUES (2130, 2129, '安仁县', '431028', '0735', 'district');
INSERT INTO `tb_area` VALUES (2131, 2129, '永兴县', '431023', '0735', 'district');
INSERT INTO `tb_area` VALUES (2132, 2129, '资兴市', '431081', '0735', 'district');
INSERT INTO `tb_area` VALUES (2133, 2129, '桂东县', '431027', '0735', 'district');
INSERT INTO `tb_area` VALUES (2134, 2129, '苏仙区', '431003', '0735', 'district');
INSERT INTO `tb_area` VALUES (2135, 2129, '汝城县', '431026', '0735', 'district');
INSERT INTO `tb_area` VALUES (2136, 2129, '北湖区', '431002', '0735', 'district');
INSERT INTO `tb_area` VALUES (2137, 2129, '临武县', '431025', '0735', 'district');
INSERT INTO `tb_area` VALUES (2138, 2129, '桂阳县', '431021', '0735', 'district');
INSERT INTO `tb_area` VALUES (2139, 2129, '宜章县', '431022', '0735', 'district');
INSERT INTO `tb_area` VALUES (2140, 2129, '嘉禾县', '431024', '0735', 'district');
INSERT INTO `tb_area` VALUES (2141, 0, '海南省', '460000', '', 'province');
INSERT INTO `tb_area` VALUES (2142, 2141, '临高县', '469024', '1896', 'city');
INSERT INTO `tb_area` VALUES (2143, 2142, '博厚镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2144, 2142, '南宝镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2145, 2142, '和舍镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2146, 2142, '调楼镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2147, 2142, '东英镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2148, 2142, '多文镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2149, 2142, '波莲镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2150, 2142, '国营加来农场', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2151, 2142, '新盈镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2152, 2142, '临城镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2153, 2142, '国营红华农场', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2154, 2142, '皇桐镇', '469024', '1896', 'street');
INSERT INTO `tb_area` VALUES (2155, 2141, '定安县', '469021', '0806', 'city');
INSERT INTO `tb_area` VALUES (2156, 2155, '黄竹镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2157, 2155, '新竹镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2158, 2155, '国营中瑞农场', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2159, 2155, '富文镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2160, 2155, '定城镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2161, 2155, '岭口镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2162, 2155, '雷鸣镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2163, 2155, '国营南海农场', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2164, 2155, '翰林镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2165, 2155, '龙门镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2166, 2155, '国营金鸡岭农场', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2167, 2155, '龙河镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2168, 2155, '龙湖镇', '469021', '0806', 'street');
INSERT INTO `tb_area` VALUES (2169, 2141, '屯昌县', '469022', '1892', 'city');
INSERT INTO `tb_area` VALUES (2170, 2169, '国营中建农场', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2171, 2169, '屯城镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2172, 2169, '新兴镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2173, 2169, '南吕镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2174, 2169, '坡心镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2175, 2169, '西昌镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2176, 2169, '国营中坤农场', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2177, 2169, '枫木镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2178, 2169, '南坤镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2179, 2169, '乌坡镇', '469022', '1892', 'street');
INSERT INTO `tb_area` VALUES (2180, 2141, '昌江黎族自治县', '469026', '0803', 'city');
INSERT INTO `tb_area` VALUES (2181, 2180, '十月田镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2182, 2180, '国营霸王岭林场', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2183, 2180, '乌烈镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2184, 2180, '七叉镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2185, 2180, '海南矿业联合有限公司', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2186, 2180, '叉河镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2187, 2180, '石碌镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2188, 2180, '海尾镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2189, 2180, '王下乡', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2190, 2180, '昌化镇', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2191, 2180, '国营红林农场', '469026', '0803', 'street');
INSERT INTO `tb_area` VALUES (2192, 2141, '白沙黎族自治县', '469025', '0802', 'city');
INSERT INTO `tb_area` VALUES (2193, 2192, '七坊镇', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2194, 2192, '金波乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2195, 2192, '南开乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2196, 2192, '荣邦乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2197, 2192, '邦溪镇', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2198, 2192, '青松乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2199, 2192, '国营龙江农场', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2200, 2192, '细水乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2201, 2192, '元门乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2202, 2192, '牙叉镇', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2203, 2192, '国营白沙农场', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2204, 2192, '打安镇', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2205, 2192, '阜龙乡', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2206, 2192, '国营邦溪农场', '469025', '0802', 'street');
INSERT INTO `tb_area` VALUES (2207, 2141, '琼海市', '469002', '1894', 'city');
INSERT INTO `tb_area` VALUES (2208, 2207, '嘉积镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2209, 2207, '会山镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2210, 2207, '国营东升农场', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2211, 2207, '国营东太农场', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2212, 2207, '万泉镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2213, 2207, '国营东红农场', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2214, 2207, '彬村山华侨农场', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2215, 2207, '大路镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2216, 2207, '塔洋镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2217, 2207, '潭门镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2218, 2207, '龙江镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2219, 2207, '中原镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2220, 2207, '博鳌镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2221, 2207, '阳江镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2222, 2207, '石壁镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2223, 2207, '长坡镇', '469002', '1894', 'street');
INSERT INTO `tb_area` VALUES (2224, 2141, '琼中黎族苗族自治县', '469030', '1899', 'city');
INSERT INTO `tb_area` VALUES (2225, 2224, '吊罗山乡', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2226, 2224, '什运乡', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2227, 2224, '和平镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2228, 2224, '湾岭镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2229, 2224, '国营加钗农场', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2230, 2224, '国营乌石农场', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2231, 2224, '国营阳江农场', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2232, 2224, '营根镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2233, 2224, '上安乡', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2234, 2224, '国营黎母山林业公司', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2235, 2224, '中平镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2236, 2224, '国营长征农场', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2237, 2224, '黎母山镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2238, 2224, '红毛镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2239, 2224, '长征镇', '469030', '1899', 'street');
INSERT INTO `tb_area` VALUES (2240, 2141, '东方市', '469007', '0807', 'city');
INSERT INTO `tb_area` VALUES (2241, 2240, '东方华侨农场', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2242, 2240, '江边乡', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2243, 2240, '东河镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2244, 2240, '新龙镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2245, 2240, '天安乡', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2246, 2240, '国营广坝农场', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2247, 2240, '感城镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2248, 2240, '三家镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2249, 2240, '四更镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2250, 2240, '板桥镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2251, 2240, '八所镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2252, 2240, '大田镇', '469007', '0807', 'street');
INSERT INTO `tb_area` VALUES (2253, 2141, '万宁市', '469006', '1898', 'city');
INSERT INTO `tb_area` VALUES (2254, 2253, '礼纪镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2255, 2253, '国营东和农场', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2256, 2253, '后安镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2257, 2253, '万城镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2258, 2253, '国营东兴农场', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2259, 2253, '山根镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2260, 2253, '大茂镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2261, 2253, '龙滚镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2262, 2253, '和乐镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2263, 2253, '兴隆华侨农场', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2264, 2253, '三更罗镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2265, 2253, '长丰镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2266, 2253, '国营新中农场', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2267, 2253, '地方国营六连林场', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2268, 2253, '北大镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2269, 2253, '南桥镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2270, 2253, '东澳镇', '469006', '1898', 'street');
INSERT INTO `tb_area` VALUES (2271, 2141, '五指山市', '469001', '1897', 'city');
INSERT INTO `tb_area` VALUES (2272, 2271, '南圣镇', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2273, 2271, '毛阳镇', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2274, 2271, '国营畅好农场', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2275, 2271, '水满乡', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2276, 2271, '通什镇', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2277, 2271, '番阳镇', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2278, 2271, '畅好乡', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2279, 2271, '毛道乡', '469001', '1897', 'street');
INSERT INTO `tb_area` VALUES (2280, 2141, '乐东黎族自治县', '469027', '2802', 'city');
INSERT INTO `tb_area` VALUES (2281, 2280, '国营山荣农场', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2282, 2280, '国营保国农场', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2283, 2280, '莺歌海镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2284, 2280, '万冲镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2285, 2280, '利国镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2286, 2280, '抱由镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2287, 2280, '国营乐光农场', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2288, 2280, '大安镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2289, 2280, '佛罗镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2290, 2280, '九所镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2291, 2280, '国营莺歌海盐场', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2292, 2280, '黄流镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2293, 2280, '国营尖峰岭林业公司', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2294, 2280, '千家镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2295, 2280, '尖峰镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2296, 2280, '志仲镇', '469027', '2802', 'street');
INSERT INTO `tb_area` VALUES (2297, 2141, '保亭黎族苗族自治县', '469029', '0801', 'city');
INSERT INTO `tb_area` VALUES (2298, 2297, '海南保亭热带作物研究所', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2299, 2297, '新政镇', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2300, 2297, '加茂镇', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2301, 2297, '国营金江农场', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2302, 2297, '国营新星农场', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2303, 2297, '保城镇', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2304, 2297, '南林乡', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2305, 2297, '国营三道农场', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2306, 2297, '毛感乡', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2307, 2297, '什玲镇', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2308, 2297, '六弓乡', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2309, 2297, '响水镇', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2310, 2297, '三道镇', '469029', '0801', 'street');
INSERT INTO `tb_area` VALUES (2311, 2141, '陵水黎族自治县', '469028', '0809', 'city');
INSERT INTO `tb_area` VALUES (2312, 2311, '椰林镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2313, 2311, '黎安镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2314, 2311, '新村镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2315, 2311, '文罗镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2316, 2311, '国营吊罗山林业公司', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2317, 2311, '国营南平农场', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2318, 2311, '本号镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2319, 2311, '光坡镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2320, 2311, '群英乡', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2321, 2311, '提蒙乡', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2322, 2311, '三才镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2323, 2311, '隆广镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2324, 2311, '国营岭门农场', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2325, 2311, '英州镇', '469028', '0809', 'street');
INSERT INTO `tb_area` VALUES (2326, 2141, '三沙市', '460300', '2898', 'city');
INSERT INTO `tb_area` VALUES (2327, 2326, '中沙群岛的岛礁及其海域', '460323', '2801', 'district');
INSERT INTO `tb_area` VALUES (2328, 2326, '南沙群岛', '460322', '1891', 'district');
INSERT INTO `tb_area` VALUES (2329, 2326, '西沙群岛', '460321', '1895', 'district');
INSERT INTO `tb_area` VALUES (2330, 2141, '文昌市', '469005', '1893', 'city');
INSERT INTO `tb_area` VALUES (2331, 2330, '东阁镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2332, 2330, '国营罗豆农场', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2333, 2330, '文教镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2334, 2330, '会文镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2335, 2330, '国营东路农场', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2336, 2330, '铺前镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2337, 2330, '锦山镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2338, 2330, '东郊镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2339, 2330, '翁田镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2340, 2330, '龙楼镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2341, 2330, '冯坡镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2342, 2330, '国营南阳农场', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2343, 2330, '昌洒镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2344, 2330, '公坡镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2345, 2330, '抱罗镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2346, 2330, '东路镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2347, 2330, '潭牛镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2348, 2330, '文城镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2349, 2330, '蓬莱镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2350, 2330, '重兴镇', '469005', '1893', 'street');
INSERT INTO `tb_area` VALUES (2351, 2141, '儋州市', '460400', '0805', 'city');
INSERT INTO `tb_area` VALUES (2352, 2351, '洋浦经济开发区', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2353, 2351, '光村镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2354, 2351, '兰洋镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2355, 2351, '东成镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2356, 2351, '和庆镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2357, 2351, '国营蓝洋农场', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2358, 2351, '海头镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2359, 2351, '王五镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2360, 2351, '华南热作学院', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2361, 2351, '木棠镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2362, 2351, '中和镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2363, 2351, '新州镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2364, 2351, '排浦镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2365, 2351, '雅星镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2366, 2351, '国营西联农场', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2367, 2351, '国营八一农场', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2368, 2351, '南丰镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2369, 2351, '国营西培农场', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2370, 2351, '白马井镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2371, 2351, '那大镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2372, 2351, '大成镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2373, 2351, '峨蔓镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2374, 2351, '三都镇', '460400', '0805', 'street');
INSERT INTO `tb_area` VALUES (2375, 2141, '澄迈县', '469023', '0804', 'city');
INSERT INTO `tb_area` VALUES (2376, 2375, '福山镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2377, 2375, '永发镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2378, 2375, '桥头镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2379, 2375, '金江镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2380, 2375, '中兴镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2381, 2375, '文儒镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2382, 2375, '老城镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2383, 2375, '国营红岗农场', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2384, 2375, '瑞溪镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2385, 2375, '国营红光农场', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2386, 2375, '大丰镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2387, 2375, '加乐镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2388, 2375, '国营金安农场', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2389, 2375, '国营和岭农场', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2390, 2375, '仁兴镇', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2391, 2375, '国营昆仑农场', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2392, 2375, '国营西达农场', '469023', '0804', 'street');
INSERT INTO `tb_area` VALUES (2393, 2141, '三亚市', '460200', '0899', 'city');
INSERT INTO `tb_area` VALUES (2394, 2393, '崖州区', '460205', '0899', 'district');
INSERT INTO `tb_area` VALUES (2395, 2393, '天涯区', '460204', '0899', 'district');
INSERT INTO `tb_area` VALUES (2396, 2393, '吉阳区', '460203', '0899', 'district');
INSERT INTO `tb_area` VALUES (2397, 2393, '海棠区', '460202', '0899', 'district');
INSERT INTO `tb_area` VALUES (2398, 2141, '海口市', '460100', '0898', 'city');
INSERT INTO `tb_area` VALUES (2399, 2398, '美兰区', '460108', '0898', 'district');
INSERT INTO `tb_area` VALUES (2400, 2398, '龙华区', '460106', '0898', 'district');
INSERT INTO `tb_area` VALUES (2401, 2398, '琼山区', '460107', '0898', 'district');
INSERT INTO `tb_area` VALUES (2402, 2398, '秀英区', '460105', '0898', 'district');
INSERT INTO `tb_area` VALUES (2403, 0, '青海省', '630000', '', 'province');
INSERT INTO `tb_area` VALUES (2404, 2403, '海东市', '630200', '0972', 'city');
INSERT INTO `tb_area` VALUES (2405, 2404, '乐都区', '630202', '0972', 'district');
INSERT INTO `tb_area` VALUES (2406, 2404, '民和回族土族自治县', '630222', '0972', 'district');
INSERT INTO `tb_area` VALUES (2407, 2404, '化隆回族自治县', '630224', '0972', 'district');
INSERT INTO `tb_area` VALUES (2408, 2404, '循化撒拉族自治县', '630225', '0972', 'district');
INSERT INTO `tb_area` VALUES (2409, 2404, '平安区', '630203', '0972', 'district');
INSERT INTO `tb_area` VALUES (2410, 2404, '互助土族自治县', '630223', '0972', 'district');
INSERT INTO `tb_area` VALUES (2411, 2403, '海南藏族自治州', '632500', '0974', 'city');
INSERT INTO `tb_area` VALUES (2412, 2411, '共和县', '632521', '0974', 'district');
INSERT INTO `tb_area` VALUES (2413, 2411, '贵德县', '632523', '0974', 'district');
INSERT INTO `tb_area` VALUES (2414, 2411, '贵南县', '632525', '0974', 'district');
INSERT INTO `tb_area` VALUES (2415, 2411, '同德县', '632522', '0974', 'district');
INSERT INTO `tb_area` VALUES (2416, 2411, '兴海县', '632524', '0974', 'district');
INSERT INTO `tb_area` VALUES (2417, 2403, '海西蒙古族藏族自治州', '632800', '0977', 'city');
INSERT INTO `tb_area` VALUES (2418, 2417, '天峻县', '632823', '0977', 'district');
INSERT INTO `tb_area` VALUES (2419, 2417, '德令哈市', '632802', '0977', 'district');
INSERT INTO `tb_area` VALUES (2420, 2417, '格尔木市', '632801', '0977', 'district');
INSERT INTO `tb_area` VALUES (2421, 2417, '都兰县', '632822', '0977', 'district');
INSERT INTO `tb_area` VALUES (2422, 2417, '乌兰县', '632821', '0977', 'district');
INSERT INTO `tb_area` VALUES (2423, 2417, '海西蒙古族藏族自治州直辖', '632825', '0977', 'district');
INSERT INTO `tb_area` VALUES (2424, 2417, '茫崖市', '632803', '0977', 'district');
INSERT INTO `tb_area` VALUES (2425, 2403, '玉树藏族自治州', '632700', '0976', 'city');
INSERT INTO `tb_area` VALUES (2426, 2425, '治多县', '632724', '0976', 'district');
INSERT INTO `tb_area` VALUES (2427, 2425, '曲麻莱县', '632726', '0976', 'district');
INSERT INTO `tb_area` VALUES (2428, 2425, '称多县', '632723', '0976', 'district');
INSERT INTO `tb_area` VALUES (2429, 2425, '杂多县', '632722', '0976', 'district');
INSERT INTO `tb_area` VALUES (2430, 2425, '玉树市', '632701', '0976', 'district');
INSERT INTO `tb_area` VALUES (2431, 2425, '囊谦县', '632725', '0976', 'district');
INSERT INTO `tb_area` VALUES (2432, 2403, '黄南藏族自治州', '632300', '0973', 'city');
INSERT INTO `tb_area` VALUES (2433, 2432, '尖扎县', '632322', '0973', 'district');
INSERT INTO `tb_area` VALUES (2434, 2432, '同仁县', '632321', '0973', 'district');
INSERT INTO `tb_area` VALUES (2435, 2432, '泽库县', '632323', '0973', 'district');
INSERT INTO `tb_area` VALUES (2436, 2432, '河南蒙古族自治县', '632324', '0973', 'district');
INSERT INTO `tb_area` VALUES (2437, 2403, '果洛藏族自治州', '632600', '0975', 'city');
INSERT INTO `tb_area` VALUES (2438, 2437, '玛沁县', '632621', '0975', 'district');
INSERT INTO `tb_area` VALUES (2439, 2437, '甘德县', '632623', '0975', 'district');
INSERT INTO `tb_area` VALUES (2440, 2437, '达日县', '632624', '0975', 'district');
INSERT INTO `tb_area` VALUES (2441, 2437, '久治县', '632625', '0975', 'district');
INSERT INTO `tb_area` VALUES (2442, 2437, '班玛县', '632622', '0975', 'district');
INSERT INTO `tb_area` VALUES (2443, 2437, '玛多县', '632626', '0975', 'district');
INSERT INTO `tb_area` VALUES (2444, 2403, '西宁市', '630100', '0971', 'city');
INSERT INTO `tb_area` VALUES (2445, 2444, '湟源县', '630123', '0971', 'district');
INSERT INTO `tb_area` VALUES (2446, 2444, '大通回族土族自治县', '630121', '0971', 'district');
INSERT INTO `tb_area` VALUES (2447, 2444, '城东区', '630102', '0971', 'district');
INSERT INTO `tb_area` VALUES (2448, 2444, '城中区', '630103', '0971', 'district');
INSERT INTO `tb_area` VALUES (2449, 2444, '湟中县', '630122', '0971', 'district');
INSERT INTO `tb_area` VALUES (2450, 2444, '城西区', '630104', '0971', 'district');
INSERT INTO `tb_area` VALUES (2451, 2444, '城北区', '630105', '0971', 'district');
INSERT INTO `tb_area` VALUES (2452, 2403, '海北藏族自治州', '632200', '0970', 'city');
INSERT INTO `tb_area` VALUES (2453, 2452, '海晏县', '632223', '0970', 'district');
INSERT INTO `tb_area` VALUES (2454, 2452, '门源回族自治县', '632221', '0970', 'district');
INSERT INTO `tb_area` VALUES (2455, 2452, '刚察县', '632224', '0970', 'district');
INSERT INTO `tb_area` VALUES (2456, 2452, '祁连县', '632222', '0970', 'district');
INSERT INTO `tb_area` VALUES (2457, 0, '广西壮族自治区', '450000', '', 'province');
INSERT INTO `tb_area` VALUES (2458, 2457, '百色市', '451000', '0776', 'city');
INSERT INTO `tb_area` VALUES (2459, 2458, '乐业县', '451028', '0776', 'district');
INSERT INTO `tb_area` VALUES (2460, 2458, '隆林各族自治县', '451031', '0776', 'district');
INSERT INTO `tb_area` VALUES (2461, 2458, '西林县', '451030', '0776', 'district');
INSERT INTO `tb_area` VALUES (2462, 2458, '凌云县', '451027', '0776', 'district');
INSERT INTO `tb_area` VALUES (2463, 2458, '田阳县', '451021', '0776', 'district');
INSERT INTO `tb_area` VALUES (2464, 2458, '右江区', '451002', '0776', 'district');
INSERT INTO `tb_area` VALUES (2465, 2458, '田东县', '451022', '0776', 'district');
INSERT INTO `tb_area` VALUES (2466, 2458, '德保县', '451024', '0776', 'district');
INSERT INTO `tb_area` VALUES (2467, 2458, '靖西市', '451081', '0776', 'district');
INSERT INTO `tb_area` VALUES (2468, 2458, '平果县', '451023', '0776', 'district');
INSERT INTO `tb_area` VALUES (2469, 2458, '那坡县', '451026', '0776', 'district');
INSERT INTO `tb_area` VALUES (2470, 2458, '田林县', '451029', '0776', 'district');
INSERT INTO `tb_area` VALUES (2471, 2457, '钦州市', '450700', '0777', 'city');
INSERT INTO `tb_area` VALUES (2472, 2471, '灵山县', '450721', '0777', 'district');
INSERT INTO `tb_area` VALUES (2473, 2471, '钦南区', '450702', '0777', 'district');
INSERT INTO `tb_area` VALUES (2474, 2471, '浦北县', '450722', '0777', 'district');
INSERT INTO `tb_area` VALUES (2475, 2471, '钦北区', '450703', '0777', 'district');
INSERT INTO `tb_area` VALUES (2476, 2457, '北海市', '450500', '0779', 'city');
INSERT INTO `tb_area` VALUES (2477, 2476, '银海区', '450503', '0779', 'district');
INSERT INTO `tb_area` VALUES (2478, 2476, '铁山港区', '450512', '0779', 'district');
INSERT INTO `tb_area` VALUES (2479, 2476, '海城区', '450502', '0779', 'district');
INSERT INTO `tb_area` VALUES (2480, 2476, '合浦县', '450521', '0779', 'district');
INSERT INTO `tb_area` VALUES (2481, 2457, '桂林市', '450300', '0773', 'city');
INSERT INTO `tb_area` VALUES (2482, 2481, '资源县', '450329', '0773', 'district');
INSERT INTO `tb_area` VALUES (2483, 2481, '兴安县', '450325', '0773', 'district');
INSERT INTO `tb_area` VALUES (2484, 2481, '临桂区', '450312', '0773', 'district');
INSERT INTO `tb_area` VALUES (2485, 2481, '恭城瑶族自治县', '450332', '0773', 'district');
INSERT INTO `tb_area` VALUES (2486, 2481, '永福县', '450326', '0773', 'district');
INSERT INTO `tb_area` VALUES (2487, 2481, '七星区', '450305', '0773', 'district');
INSERT INTO `tb_area` VALUES (2488, 2481, '雁山区', '450311', '0773', 'district');
INSERT INTO `tb_area` VALUES (2489, 2481, '阳朔县', '450321', '0773', 'district');
INSERT INTO `tb_area` VALUES (2490, 2481, '荔浦市', '450381', '0773', 'district');
INSERT INTO `tb_area` VALUES (2491, 2481, '平乐县', '450330', '0773', 'district');
INSERT INTO `tb_area` VALUES (2492, 2481, '龙胜各族自治县', '450328', '0773', 'district');
INSERT INTO `tb_area` VALUES (2493, 2481, '象山区', '450304', '0773', 'district');
INSERT INTO `tb_area` VALUES (2494, 2481, '秀峰区', '450302', '0773', 'district');
INSERT INTO `tb_area` VALUES (2495, 2481, '灌阳县', '450327', '0773', 'district');
INSERT INTO `tb_area` VALUES (2496, 2481, '全州县', '450324', '0773', 'district');
INSERT INTO `tb_area` VALUES (2497, 2481, '灵川县', '450323', '0773', 'district');
INSERT INTO `tb_area` VALUES (2498, 2481, '叠彩区', '450303', '0773', 'district');
INSERT INTO `tb_area` VALUES (2499, 2457, '河池市', '451200', '0778', 'city');
INSERT INTO `tb_area` VALUES (2500, 2499, '南丹县', '451221', '0778', 'district');
INSERT INTO `tb_area` VALUES (2501, 2499, '环江毛南族自治县', '451226', '0778', 'district');
INSERT INTO `tb_area` VALUES (2502, 2499, '天峨县', '451222', '0778', 'district');
INSERT INTO `tb_area` VALUES (2503, 2499, '罗城仫佬族自治县', '451225', '0778', 'district');
INSERT INTO `tb_area` VALUES (2504, 2499, '金城江区', '451202', '0778', 'district');
INSERT INTO `tb_area` VALUES (2505, 2499, '宜州区', '451203', '0778', 'district');
INSERT INTO `tb_area` VALUES (2506, 2499, '都安瑶族自治县', '451228', '0778', 'district');
INSERT INTO `tb_area` VALUES (2507, 2499, '凤山县', '451223', '0778', 'district');
INSERT INTO `tb_area` VALUES (2508, 2499, '巴马瑶族自治县', '451227', '0778', 'district');
INSERT INTO `tb_area` VALUES (2509, 2499, '大化瑶族自治县', '451229', '0778', 'district');
INSERT INTO `tb_area` VALUES (2510, 2499, '东兰县', '451224', '0778', 'district');
INSERT INTO `tb_area` VALUES (2511, 2457, '柳州市', '450200', '0772', 'city');
INSERT INTO `tb_area` VALUES (2512, 2511, '三江侗族自治县', '450226', '0772', 'district');
INSERT INTO `tb_area` VALUES (2513, 2511, '融安县', '450224', '0772', 'district');
INSERT INTO `tb_area` VALUES (2514, 2511, '融水苗族自治县', '450225', '0772', 'district');
INSERT INTO `tb_area` VALUES (2515, 2511, '鹿寨县', '450223', '0772', 'district');
INSERT INTO `tb_area` VALUES (2516, 2511, '城中区', '450202', '0772', 'district');
INSERT INTO `tb_area` VALUES (2517, 2511, '柳城县', '450222', '0772', 'district');
INSERT INTO `tb_area` VALUES (2518, 2511, '柳北区', '450205', '0772', 'district');
INSERT INTO `tb_area` VALUES (2519, 2511, '鱼峰区', '450203', '0772', 'district');
INSERT INTO `tb_area` VALUES (2520, 2511, '柳南区', '450204', '0772', 'district');
INSERT INTO `tb_area` VALUES (2521, 2511, '柳江区', '450206', '0772', 'district');
INSERT INTO `tb_area` VALUES (2522, 2457, '来宾市', '451300', '1772', 'city');
INSERT INTO `tb_area` VALUES (2523, 2522, '金秀瑶族自治县', '451324', '1772', 'district');
INSERT INTO `tb_area` VALUES (2524, 2522, '忻城县', '451321', '1772', 'district');
INSERT INTO `tb_area` VALUES (2525, 2522, '象州县', '451322', '1772', 'district');
INSERT INTO `tb_area` VALUES (2526, 2522, '兴宾区', '451302', '1772', 'district');
INSERT INTO `tb_area` VALUES (2527, 2522, '合山市', '451381', '1772', 'district');
INSERT INTO `tb_area` VALUES (2528, 2522, '武宣县', '451323', '1772', 'district');
INSERT INTO `tb_area` VALUES (2529, 2457, '南宁市', '450100', '0771', 'city');
INSERT INTO `tb_area` VALUES (2530, 2529, '马山县', '450124', '0771', 'district');
INSERT INTO `tb_area` VALUES (2531, 2529, '武鸣区', '450110', '0771', 'district');
INSERT INTO `tb_area` VALUES (2532, 2529, '上林县', '450125', '0771', 'district');
INSERT INTO `tb_area` VALUES (2533, 2529, '宾阳县', '450126', '0771', 'district');
INSERT INTO `tb_area` VALUES (2534, 2529, '横县', '450127', '0771', 'district');
INSERT INTO `tb_area` VALUES (2535, 2529, '良庆区', '450108', '0771', 'district');
INSERT INTO `tb_area` VALUES (2536, 2529, '江南区', '450105', '0771', 'district');
INSERT INTO `tb_area` VALUES (2537, 2529, '邕宁区', '450109', '0771', 'district');
INSERT INTO `tb_area` VALUES (2538, 2529, '西乡塘区', '450107', '0771', 'district');
INSERT INTO `tb_area` VALUES (2539, 2529, '兴宁区', '450102', '0771', 'district');
INSERT INTO `tb_area` VALUES (2540, 2529, '青秀区', '450103', '0771', 'district');
INSERT INTO `tb_area` VALUES (2541, 2529, '隆安县', '450123', '0771', 'district');
INSERT INTO `tb_area` VALUES (2542, 2457, '崇左市', '451400', '1771', 'city');
INSERT INTO `tb_area` VALUES (2543, 2542, '天等县', '451425', '1771', 'district');
INSERT INTO `tb_area` VALUES (2544, 2542, '大新县', '451424', '1771', 'district');
INSERT INTO `tb_area` VALUES (2545, 2542, '扶绥县', '451421', '1771', 'district');
INSERT INTO `tb_area` VALUES (2546, 2542, '江州区', '451402', '1771', 'district');
INSERT INTO `tb_area` VALUES (2547, 2542, '龙州县', '451423', '1771', 'district');
INSERT INTO `tb_area` VALUES (2548, 2542, '宁明县', '451422', '1771', 'district');
INSERT INTO `tb_area` VALUES (2549, 2542, '凭祥市', '451481', '1771', 'district');
INSERT INTO `tb_area` VALUES (2550, 2457, '防城港市', '450600', '0770', 'city');
INSERT INTO `tb_area` VALUES (2551, 2550, '上思县', '450621', '0770', 'district');
INSERT INTO `tb_area` VALUES (2552, 2550, '防城区', '450603', '0770', 'district');
INSERT INTO `tb_area` VALUES (2553, 2550, '港口区', '450602', '0770', 'district');
INSERT INTO `tb_area` VALUES (2554, 2550, '东兴市', '450681', '0770', 'district');
INSERT INTO `tb_area` VALUES (2555, 2457, '贺州市', '451100', '1774', 'city');
INSERT INTO `tb_area` VALUES (2556, 2555, '富川瑶族自治县', '451123', '1774', 'district');
INSERT INTO `tb_area` VALUES (2557, 2555, '昭平县', '451121', '1774', 'district');
INSERT INTO `tb_area` VALUES (2558, 2555, '平桂区', '451103', '1774', 'district');
INSERT INTO `tb_area` VALUES (2559, 2555, '八步区', '451102', '1774', 'district');
INSERT INTO `tb_area` VALUES (2560, 2555, '钟山县', '451122', '1774', 'district');
INSERT INTO `tb_area` VALUES (2561, 2457, '玉林市', '450900', '0775', 'city');
INSERT INTO `tb_area` VALUES (2562, 2561, '兴业县', '450924', '0775', 'district');
INSERT INTO `tb_area` VALUES (2563, 2561, '福绵区', '450903', '0775', 'district');
INSERT INTO `tb_area` VALUES (2564, 2561, '玉州区', '450902', '0775', 'district');
INSERT INTO `tb_area` VALUES (2565, 2561, '陆川县', '450922', '0775', 'district');
INSERT INTO `tb_area` VALUES (2566, 2561, '博白县', '450923', '0775', 'district');
INSERT INTO `tb_area` VALUES (2567, 2561, '北流市', '450981', '0775', 'district');
INSERT INTO `tb_area` VALUES (2568, 2561, '容县', '450921', '0775', 'district');
INSERT INTO `tb_area` VALUES (2569, 2457, '贵港市', '450800', '1755', 'city');
INSERT INTO `tb_area` VALUES (2570, 2569, '港北区', '450802', '1755', 'district');
INSERT INTO `tb_area` VALUES (2571, 2569, '覃塘区', '450804', '1755', 'district');
INSERT INTO `tb_area` VALUES (2572, 2569, '港南区', '450803', '1755', 'district');
INSERT INTO `tb_area` VALUES (2573, 2569, '平南县', '450821', '1755', 'district');
INSERT INTO `tb_area` VALUES (2574, 2569, '桂平市', '450881', '1755', 'district');
INSERT INTO `tb_area` VALUES (2575, 2457, '梧州市', '450400', '0774', 'city');
INSERT INTO `tb_area` VALUES (2576, 2575, '蒙山县', '450423', '0774', 'district');
INSERT INTO `tb_area` VALUES (2577, 2575, '长洲区', '450405', '0774', 'district');
INSERT INTO `tb_area` VALUES (2578, 2575, '龙圩区', '450406', '0774', 'district');
INSERT INTO `tb_area` VALUES (2579, 2575, '岑溪市', '450481', '0774', 'district');
INSERT INTO `tb_area` VALUES (2580, 2575, '万秀区', '450403', '0774', 'district');
INSERT INTO `tb_area` VALUES (2581, 2575, '苍梧县', '450421', '0774', 'district');
INSERT INTO `tb_area` VALUES (2582, 2575, '藤县', '450422', '0774', 'district');
INSERT INTO `tb_area` VALUES (2583, 0, '宁夏回族自治区', '640000', '', 'province');
INSERT INTO `tb_area` VALUES (2584, 2583, '固原市', '640400', '0954', 'city');
INSERT INTO `tb_area` VALUES (2585, 2584, '隆德县', '640423', '0954', 'district');
INSERT INTO `tb_area` VALUES (2586, 2584, '泾源县', '640424', '0954', 'district');
INSERT INTO `tb_area` VALUES (2587, 2584, '彭阳县', '640425', '0954', 'district');
INSERT INTO `tb_area` VALUES (2588, 2584, '原州区', '640402', '0954', 'district');
INSERT INTO `tb_area` VALUES (2589, 2584, '西吉县', '640422', '0954', 'district');
INSERT INTO `tb_area` VALUES (2590, 2583, '中卫市', '640500', '1953', 'city');
INSERT INTO `tb_area` VALUES (2591, 2590, '海原县', '640522', '1953', 'district');
INSERT INTO `tb_area` VALUES (2592, 2590, '中宁县', '640521', '1953', 'district');
INSERT INTO `tb_area` VALUES (2593, 2590, '沙坡头区', '640502', '1953', 'district');
INSERT INTO `tb_area` VALUES (2594, 2583, '银川市', '640100', '0951', 'city');
INSERT INTO `tb_area` VALUES (2595, 2594, '兴庆区', '640104', '0951', 'district');
INSERT INTO `tb_area` VALUES (2596, 2594, '贺兰县', '640122', '0951', 'district');
INSERT INTO `tb_area` VALUES (2597, 2594, '西夏区', '640105', '0951', 'district');
INSERT INTO `tb_area` VALUES (2598, 2594, '永宁县', '640121', '0951', 'district');
INSERT INTO `tb_area` VALUES (2599, 2594, '金凤区', '640106', '0951', 'district');
INSERT INTO `tb_area` VALUES (2600, 2594, '灵武市', '640181', '0951', 'district');
INSERT INTO `tb_area` VALUES (2601, 2583, '石嘴山市', '640200', '0952', 'city');
INSERT INTO `tb_area` VALUES (2602, 2601, '惠农区', '640205', '0952', 'district');
INSERT INTO `tb_area` VALUES (2603, 2601, '大武口区', '640202', '0952', 'district');
INSERT INTO `tb_area` VALUES (2604, 2601, '平罗县', '640221', '0952', 'district');
INSERT INTO `tb_area` VALUES (2605, 2583, '吴忠市', '640300', '0953', 'city');
INSERT INTO `tb_area` VALUES (2606, 2605, '青铜峡市', '640381', '0953', 'district');
INSERT INTO `tb_area` VALUES (2607, 2605, '同心县', '640324', '0953', 'district');
INSERT INTO `tb_area` VALUES (2608, 2605, '盐池县', '640323', '0953', 'district');
INSERT INTO `tb_area` VALUES (2609, 2605, '利通区', '640302', '0953', 'district');
INSERT INTO `tb_area` VALUES (2610, 2605, '红寺堡区', '640303', '0953', 'district');
INSERT INTO `tb_area` VALUES (2611, 0, '江西省', '360000', '', 'province');
INSERT INTO `tb_area` VALUES (2612, 2611, '九江市', '360400', '0792', 'city');
INSERT INTO `tb_area` VALUES (2613, 2612, '湖口县', '360429', '0792', 'district');
INSERT INTO `tb_area` VALUES (2614, 2612, '彭泽县', '360430', '0792', 'district');
INSERT INTO `tb_area` VALUES (2615, 2612, '瑞昌市', '360481', '0792', 'district');
INSERT INTO `tb_area` VALUES (2616, 2612, '都昌县', '360428', '0792', 'district');
INSERT INTO `tb_area` VALUES (2617, 2612, '柴桑区', '360404', '0792', 'district');
INSERT INTO `tb_area` VALUES (2618, 2612, '武宁县', '360423', '0792', 'district');
INSERT INTO `tb_area` VALUES (2619, 2612, '修水县', '360424', '0792', 'district');
INSERT INTO `tb_area` VALUES (2620, 2612, '庐山市', '360483', '0792', 'district');
INSERT INTO `tb_area` VALUES (2621, 2612, '濂溪区', '360402', '0792', 'district');
INSERT INTO `tb_area` VALUES (2622, 2612, '浔阳区', '360403', '0792', 'district');
INSERT INTO `tb_area` VALUES (2623, 2612, '德安县', '360426', '0792', 'district');
INSERT INTO `tb_area` VALUES (2624, 2612, '永修县', '360425', '0792', 'district');
INSERT INTO `tb_area` VALUES (2625, 2612, '共青城市', '360482', '0792', 'district');
INSERT INTO `tb_area` VALUES (2626, 2611, '新余市', '360500', '0790', 'city');
INSERT INTO `tb_area` VALUES (2627, 2626, '分宜县', '360521', '0790', 'district');
INSERT INTO `tb_area` VALUES (2628, 2626, '渝水区', '360502', '0790', 'district');
INSERT INTO `tb_area` VALUES (2629, 2611, '抚州市', '361000', '0794', 'city');
INSERT INTO `tb_area` VALUES (2630, 2629, '东乡区', '361003', '0794', 'district');
INSERT INTO `tb_area` VALUES (2631, 2629, '金溪县', '361027', '0794', 'district');
INSERT INTO `tb_area` VALUES (2632, 2629, '临川区', '361002', '0794', 'district');
INSERT INTO `tb_area` VALUES (2633, 2629, '资溪县', '361028', '0794', 'district');
INSERT INTO `tb_area` VALUES (2634, 2629, '崇仁县', '361024', '0794', 'district');
INSERT INTO `tb_area` VALUES (2635, 2629, '南城县', '361021', '0794', 'district');
INSERT INTO `tb_area` VALUES (2636, 2629, '乐安县', '361025', '0794', 'district');
INSERT INTO `tb_area` VALUES (2637, 2629, '宜黄县', '361026', '0794', 'district');
INSERT INTO `tb_area` VALUES (2638, 2629, '黎川县', '361022', '0794', 'district');
INSERT INTO `tb_area` VALUES (2639, 2629, '南丰县', '361023', '0794', 'district');
INSERT INTO `tb_area` VALUES (2640, 2629, '广昌县', '361030', '0794', 'district');
INSERT INTO `tb_area` VALUES (2641, 2611, '鹰潭市', '360600', '0701', 'city');
INSERT INTO `tb_area` VALUES (2642, 2641, '余江区', '360603', '0701', 'district');
INSERT INTO `tb_area` VALUES (2643, 2641, '贵溪市', '360681', '0701', 'district');
INSERT INTO `tb_area` VALUES (2644, 2641, '月湖区', '360602', '0701', 'district');
INSERT INTO `tb_area` VALUES (2645, 2611, '赣州市', '360700', '0797', 'city');
INSERT INTO `tb_area` VALUES (2646, 2645, '宁都县', '360730', '0797', 'district');
INSERT INTO `tb_area` VALUES (2647, 2645, '兴国县', '360732', '0797', 'district');
INSERT INTO `tb_area` VALUES (2648, 2645, '石城县', '360735', '0797', 'district');
INSERT INTO `tb_area` VALUES (2649, 2645, '于都县', '360731', '0797', 'district');
INSERT INTO `tb_area` VALUES (2650, 2645, '瑞金市', '360781', '0797', 'district');
INSERT INTO `tb_area` VALUES (2651, 2645, '上犹县', '360724', '0797', 'district');
INSERT INTO `tb_area` VALUES (2652, 2645, '会昌县', '360733', '0797', 'district');
INSERT INTO `tb_area` VALUES (2653, 2645, '崇义县', '360725', '0797', 'district');
INSERT INTO `tb_area` VALUES (2654, 2645, '安远县', '360726', '0797', 'district');
INSERT INTO `tb_area` VALUES (2655, 2645, '大余县', '360723', '0797', 'district');
INSERT INTO `tb_area` VALUES (2656, 2645, '信丰县', '360722', '0797', 'district');
INSERT INTO `tb_area` VALUES (2657, 2645, '寻乌县', '360734', '0797', 'district');
INSERT INTO `tb_area` VALUES (2658, 2645, '全南县', '360729', '0797', 'district');
INSERT INTO `tb_area` VALUES (2659, 2645, '定南县', '360728', '0797', 'district');
INSERT INTO `tb_area` VALUES (2660, 2645, '龙南县', '360727', '0797', 'district');
INSERT INTO `tb_area` VALUES (2661, 2645, '章贡区', '360702', '0797', 'district');
INSERT INTO `tb_area` VALUES (2662, 2645, '南康区', '360703', '0797', 'district');
INSERT INTO `tb_area` VALUES (2663, 2645, '赣县区', '360704', '0797', 'district');
INSERT INTO `tb_area` VALUES (2664, 2611, '南昌市', '360100', '0791', 'city');
INSERT INTO `tb_area` VALUES (2665, 2664, '安义县', '360123', '0791', 'district');
INSERT INTO `tb_area` VALUES (2666, 2664, '进贤县', '360124', '0791', 'district');
INSERT INTO `tb_area` VALUES (2667, 2664, '青云谱区', '360104', '0791', 'district');
INSERT INTO `tb_area` VALUES (2668, 2664, '南昌县', '360121', '0791', 'district');
INSERT INTO `tb_area` VALUES (2669, 2664, '新建区', '360112', '0791', 'district');
INSERT INTO `tb_area` VALUES (2670, 2664, '湾里区', '360105', '0791', 'district');
INSERT INTO `tb_area` VALUES (2671, 2664, '西湖区', '360103', '0791', 'district');
INSERT INTO `tb_area` VALUES (2672, 2664, '东湖区', '360102', '0791', 'district');
INSERT INTO `tb_area` VALUES (2673, 2664, '青山湖区', '360111', '0791', 'district');
INSERT INTO `tb_area` VALUES (2674, 2611, '宜春市', '360900', '0795', 'city');
INSERT INTO `tb_area` VALUES (2675, 2674, '奉新县', '360921', '0795', 'district');
INSERT INTO `tb_area` VALUES (2676, 2674, '靖安县', '360925', '0795', 'district');
INSERT INTO `tb_area` VALUES (2677, 2674, '宜丰县', '360924', '0795', 'district');
INSERT INTO `tb_area` VALUES (2678, 2674, '高安市', '360983', '0795', 'district');
INSERT INTO `tb_area` VALUES (2679, 2674, '上高县', '360923', '0795', 'district');
INSERT INTO `tb_area` VALUES (2680, 2674, '丰城市', '360981', '0795', 'district');
INSERT INTO `tb_area` VALUES (2681, 2674, '铜鼓县', '360926', '0795', 'district');
INSERT INTO `tb_area` VALUES (2682, 2674, '万载县', '360922', '0795', 'district');
INSERT INTO `tb_area` VALUES (2683, 2674, '袁州区', '360902', '0795', 'district');
INSERT INTO `tb_area` VALUES (2684, 2674, '樟树市', '360982', '0795', 'district');
INSERT INTO `tb_area` VALUES (2685, 2611, '萍乡市', '360300', '0799', 'city');
INSERT INTO `tb_area` VALUES (2686, 2685, '湘东区', '360313', '0799', 'district');
INSERT INTO `tb_area` VALUES (2687, 2685, '安源区', '360302', '0799', 'district');
INSERT INTO `tb_area` VALUES (2688, 2685, '上栗县', '360322', '0799', 'district');
INSERT INTO `tb_area` VALUES (2689, 2685, '莲花县', '360321', '0799', 'district');
INSERT INTO `tb_area` VALUES (2690, 2685, '芦溪县', '360323', '0799', 'district');
INSERT INTO `tb_area` VALUES (2691, 2611, '吉安市', '360800', '0796', 'city');
INSERT INTO `tb_area` VALUES (2692, 2691, '峡江县', '360823', '0796', 'district');
INSERT INTO `tb_area` VALUES (2693, 2691, '吉安县', '360821', '0796', 'district');
INSERT INTO `tb_area` VALUES (2694, 2691, '永新县', '360830', '0796', 'district');
INSERT INTO `tb_area` VALUES (2695, 2691, '吉州区', '360802', '0796', 'district');
INSERT INTO `tb_area` VALUES (2696, 2691, '吉水县', '360822', '0796', 'district');
INSERT INTO `tb_area` VALUES (2697, 2691, '永丰县', '360825', '0796', 'district');
INSERT INTO `tb_area` VALUES (2698, 2691, '青原区', '360803', '0796', 'district');
INSERT INTO `tb_area` VALUES (2699, 2691, '泰和县', '360826', '0796', 'district');
INSERT INTO `tb_area` VALUES (2700, 2691, '井冈山市', '360881', '0796', 'district');
INSERT INTO `tb_area` VALUES (2701, 2691, '遂川县', '360827', '0796', 'district');
INSERT INTO `tb_area` VALUES (2702, 2691, '万安县', '360828', '0796', 'district');
INSERT INTO `tb_area` VALUES (2703, 2691, '新干县', '360824', '0796', 'district');
INSERT INTO `tb_area` VALUES (2704, 2691, '安福县', '360829', '0796', 'district');
INSERT INTO `tb_area` VALUES (2705, 2611, '景德镇市', '360200', '0798', 'city');
INSERT INTO `tb_area` VALUES (2706, 2705, '昌江区', '360202', '0798', 'district');
INSERT INTO `tb_area` VALUES (2707, 2705, '浮梁县', '360222', '0798', 'district');
INSERT INTO `tb_area` VALUES (2708, 2705, '珠山区', '360203', '0798', 'district');
INSERT INTO `tb_area` VALUES (2709, 2705, '乐平市', '360281', '0798', 'district');
INSERT INTO `tb_area` VALUES (2710, 2611, '上饶市', '361100', '0793', 'city');
INSERT INTO `tb_area` VALUES (2711, 2710, '信州区', '361102', '0793', 'district');
INSERT INTO `tb_area` VALUES (2712, 2710, '婺源县', '361130', '0793', 'district');
INSERT INTO `tb_area` VALUES (2713, 2710, '弋阳县', '361126', '0793', 'district');
INSERT INTO `tb_area` VALUES (2714, 2710, '德兴市', '361181', '0793', 'district');
INSERT INTO `tb_area` VALUES (2715, 2710, '上饶县', '361121', '0793', 'district');
INSERT INTO `tb_area` VALUES (2716, 2710, '余干县', '361127', '0793', 'district');
INSERT INTO `tb_area` VALUES (2717, 2710, '横峰县', '361125', '0793', 'district');
INSERT INTO `tb_area` VALUES (2718, 2710, '广丰区', '361103', '0793', 'district');
INSERT INTO `tb_area` VALUES (2719, 2710, '铅山县', '361124', '0793', 'district');
INSERT INTO `tb_area` VALUES (2720, 2710, '玉山县', '361123', '0793', 'district');
INSERT INTO `tb_area` VALUES (2721, 2710, '鄱阳县', '361128', '0793', 'district');
INSERT INTO `tb_area` VALUES (2722, 2710, '万年县', '361129', '0793', 'district');
INSERT INTO `tb_area` VALUES (2723, 0, '浙江省', '330000', '', 'province');
INSERT INTO `tb_area` VALUES (2724, 2723, '舟山市', '330900', '0580', 'city');
INSERT INTO `tb_area` VALUES (2725, 2724, '嵊泗县', '330922', '0580', 'district');
INSERT INTO `tb_area` VALUES (2726, 2724, '岱山县', '330921', '0580', 'district');
INSERT INTO `tb_area` VALUES (2727, 2724, '定海区', '330902', '0580', 'district');
INSERT INTO `tb_area` VALUES (2728, 2724, '普陀区', '330903', '0580', 'district');
INSERT INTO `tb_area` VALUES (2729, 2723, '嘉兴市', '330400', '0573', 'city');
INSERT INTO `tb_area` VALUES (2730, 2729, '平湖市', '330482', '0573', 'district');
INSERT INTO `tb_area` VALUES (2731, 2729, '海宁市', '330481', '0573', 'district');
INSERT INTO `tb_area` VALUES (2732, 2729, '秀洲区', '330411', '0573', 'district');
INSERT INTO `tb_area` VALUES (2733, 2729, '南湖区', '330402', '0573', 'district');
INSERT INTO `tb_area` VALUES (2734, 2729, '嘉善县', '330421', '0573', 'district');
INSERT INTO `tb_area` VALUES (2735, 2729, '海盐县', '330424', '0573', 'district');
INSERT INTO `tb_area` VALUES (2736, 2729, '桐乡市', '330483', '0573', 'district');
INSERT INTO `tb_area` VALUES (2737, 2723, '宁波市', '330200', '0574', 'city');
INSERT INTO `tb_area` VALUES (2738, 2737, '北仑区', '330206', '0574', 'district');
INSERT INTO `tb_area` VALUES (2739, 2737, '象山县', '330225', '0574', 'district');
INSERT INTO `tb_area` VALUES (2740, 2737, '镇海区', '330211', '0574', 'district');
INSERT INTO `tb_area` VALUES (2741, 2737, '江北区', '330205', '0574', 'district');
INSERT INTO `tb_area` VALUES (2742, 2737, '奉化区', '330213', '0574', 'district');
INSERT INTO `tb_area` VALUES (2743, 2737, '宁海县', '330226', '0574', 'district');
INSERT INTO `tb_area` VALUES (2744, 2737, '余姚市', '330281', '0574', 'district');
INSERT INTO `tb_area` VALUES (2745, 2737, '鄞州区', '330212', '0574', 'district');
INSERT INTO `tb_area` VALUES (2746, 2737, '海曙区', '330203', '0574', 'district');
INSERT INTO `tb_area` VALUES (2747, 2737, '慈溪市', '330282', '0574', 'district');
INSERT INTO `tb_area` VALUES (2748, 2723, '台州市', '331000', '0576', 'city');
INSERT INTO `tb_area` VALUES (2749, 2748, '临海市', '331082', '0576', 'district');
INSERT INTO `tb_area` VALUES (2750, 2748, '椒江区', '331002', '0576', 'district');
INSERT INTO `tb_area` VALUES (2751, 2748, '路桥区', '331004', '0576', 'district');
INSERT INTO `tb_area` VALUES (2752, 2748, '玉环市', '331083', '0576', 'district');
INSERT INTO `tb_area` VALUES (2753, 2748, '温岭市', '331081', '0576', 'district');
INSERT INTO `tb_area` VALUES (2754, 2748, '三门县', '331022', '0576', 'district');
INSERT INTO `tb_area` VALUES (2755, 2748, '天台县', '331023', '0576', 'district');
INSERT INTO `tb_area` VALUES (2756, 2748, '黄岩区', '331003', '0576', 'district');
INSERT INTO `tb_area` VALUES (2757, 2748, '仙居县', '331024', '0576', 'district');
INSERT INTO `tb_area` VALUES (2758, 2723, '温州市', '330300', '0577', 'city');
INSERT INTO `tb_area` VALUES (2759, 2758, '洞头区', '330305', '0577', 'district');
INSERT INTO `tb_area` VALUES (2760, 2758, '平阳县', '330326', '0577', 'district');
INSERT INTO `tb_area` VALUES (2761, 2758, '苍南县', '330327', '0577', 'district');
INSERT INTO `tb_area` VALUES (2762, 2758, '瑞安市', '330381', '0577', 'district');
INSERT INTO `tb_area` VALUES (2763, 2758, '泰顺县', '330329', '0577', 'district');
INSERT INTO `tb_area` VALUES (2764, 2758, '文成县', '330328', '0577', 'district');
INSERT INTO `tb_area` VALUES (2765, 2758, '永嘉县', '330324', '0577', 'district');
INSERT INTO `tb_area` VALUES (2766, 2758, '乐清市', '330382', '0577', 'district');
INSERT INTO `tb_area` VALUES (2767, 2758, '鹿城区', '330302', '0577', 'district');
INSERT INTO `tb_area` VALUES (2768, 2758, '瓯海区', '330304', '0577', 'district');
INSERT INTO `tb_area` VALUES (2769, 2758, '龙湾区', '330303', '0577', 'district');
INSERT INTO `tb_area` VALUES (2770, 2723, '丽水市', '331100', '0578', 'city');
INSERT INTO `tb_area` VALUES (2771, 2770, '莲都区', '331102', '0578', 'district');
INSERT INTO `tb_area` VALUES (2772, 2770, '松阳县', '331124', '0578', 'district');
INSERT INTO `tb_area` VALUES (2773, 2770, '龙泉市', '331181', '0578', 'district');
INSERT INTO `tb_area` VALUES (2774, 2770, '云和县', '331125', '0578', 'district');
INSERT INTO `tb_area` VALUES (2775, 2770, '遂昌县', '331123', '0578', 'district');
INSERT INTO `tb_area` VALUES (2776, 2770, '景宁畲族自治县', '331127', '0578', 'district');
INSERT INTO `tb_area` VALUES (2777, 2770, '青田县', '331121', '0578', 'district');
INSERT INTO `tb_area` VALUES (2778, 2770, '缙云县', '331122', '0578', 'district');
INSERT INTO `tb_area` VALUES (2779, 2770, '庆元县', '331126', '0578', 'district');
INSERT INTO `tb_area` VALUES (2780, 2723, '杭州市', '330100', '0571', 'city');
INSERT INTO `tb_area` VALUES (2781, 2780, '上城区', '330102', '0571', 'district');
INSERT INTO `tb_area` VALUES (2782, 2780, '西湖区', '330106', '0571', 'district');
INSERT INTO `tb_area` VALUES (2783, 2780, '富阳区', '330111', '0571', 'district');
INSERT INTO `tb_area` VALUES (2784, 2780, '桐庐县', '330122', '0571', 'district');
INSERT INTO `tb_area` VALUES (2785, 2780, '建德市', '330182', '0571', 'district');
INSERT INTO `tb_area` VALUES (2786, 2780, '淳安县', '330127', '0571', 'district');
INSERT INTO `tb_area` VALUES (2787, 2780, '江干区', '330104', '0571', 'district');
INSERT INTO `tb_area` VALUES (2788, 2780, '下城区', '330103', '0571', 'district');
INSERT INTO `tb_area` VALUES (2789, 2780, '临安区', '330112', '0571', 'district');
INSERT INTO `tb_area` VALUES (2790, 2780, '滨江区', '330108', '0571', 'district');
INSERT INTO `tb_area` VALUES (2791, 2780, '萧山区', '330109', '0571', 'district');
INSERT INTO `tb_area` VALUES (2792, 2780, '余杭区', '330110', '0571', 'district');
INSERT INTO `tb_area` VALUES (2793, 2780, '拱墅区', '330105', '0571', 'district');
INSERT INTO `tb_area` VALUES (2794, 2723, '绍兴市', '330600', '0575', 'city');
INSERT INTO `tb_area` VALUES (2795, 2794, '嵊州市', '330683', '0575', 'district');
INSERT INTO `tb_area` VALUES (2796, 2794, '上虞区', '330604', '0575', 'district');
INSERT INTO `tb_area` VALUES (2797, 2794, '越城区', '330602', '0575', 'district');
INSERT INTO `tb_area` VALUES (2798, 2794, '柯桥区', '330603', '0575', 'district');
INSERT INTO `tb_area` VALUES (2799, 2794, '诸暨市', '330681', '0575', 'district');
INSERT INTO `tb_area` VALUES (2800, 2794, '新昌县', '330624', '0575', 'district');
INSERT INTO `tb_area` VALUES (2801, 2723, '湖州市', '330500', '0572', 'city');
INSERT INTO `tb_area` VALUES (2802, 2801, '德清县', '330521', '0572', 'district');
INSERT INTO `tb_area` VALUES (2803, 2801, '安吉县', '330523', '0572', 'district');
INSERT INTO `tb_area` VALUES (2804, 2801, '长兴县', '330522', '0572', 'district');
INSERT INTO `tb_area` VALUES (2805, 2801, '吴兴区', '330502', '0572', 'district');
INSERT INTO `tb_area` VALUES (2806, 2801, '南浔区', '330503', '0572', 'district');
INSERT INTO `tb_area` VALUES (2807, 2723, '衢州市', '330800', '0570', 'city');
INSERT INTO `tb_area` VALUES (2808, 2807, '开化县', '330824', '0570', 'district');
INSERT INTO `tb_area` VALUES (2809, 2807, '柯城区', '330802', '0570', 'district');
INSERT INTO `tb_area` VALUES (2810, 2807, '衢江区', '330803', '0570', 'district');
INSERT INTO `tb_area` VALUES (2811, 2807, '常山县', '330822', '0570', 'district');
INSERT INTO `tb_area` VALUES (2812, 2807, '江山市', '330881', '0570', 'district');
INSERT INTO `tb_area` VALUES (2813, 2807, '龙游县', '330825', '0570', 'district');
INSERT INTO `tb_area` VALUES (2814, 2723, '金华市', '330700', '0579', 'city');
INSERT INTO `tb_area` VALUES (2815, 2814, '浦江县', '330726', '0579', 'district');
INSERT INTO `tb_area` VALUES (2816, 2814, '永康市', '330784', '0579', 'district');
INSERT INTO `tb_area` VALUES (2817, 2814, '磐安县', '330727', '0579', 'district');
INSERT INTO `tb_area` VALUES (2818, 2814, '东阳市', '330783', '0579', 'district');
INSERT INTO `tb_area` VALUES (2819, 2814, '兰溪市', '330781', '0579', 'district');
INSERT INTO `tb_area` VALUES (2820, 2814, '武义县', '330723', '0579', 'district');
INSERT INTO `tb_area` VALUES (2821, 2814, '义乌市', '330782', '0579', 'district');
INSERT INTO `tb_area` VALUES (2822, 2814, '金东区', '330703', '0579', 'district');
INSERT INTO `tb_area` VALUES (2823, 2814, '婺城区', '330702', '0579', 'district');
INSERT INTO `tb_area` VALUES (2824, 0, '河北省', '130000', '', 'province');
INSERT INTO `tb_area` VALUES (2825, 2824, '唐山市', '130200', '0315', 'city');
INSERT INTO `tb_area` VALUES (2826, 2825, '遵化市', '130281', '0315', 'district');
INSERT INTO `tb_area` VALUES (2827, 2825, '迁西县', '130227', '0315', 'district');
INSERT INTO `tb_area` VALUES (2828, 2825, '迁安市', '130283', '0315', 'district');
INSERT INTO `tb_area` VALUES (2829, 2825, '滦州市', '130284', '0315', 'district');
INSERT INTO `tb_area` VALUES (2830, 2825, '滦南县', '130224', '0315', 'district');
INSERT INTO `tb_area` VALUES (2831, 2825, '乐亭县', '130225', '0315', 'district');
INSERT INTO `tb_area` VALUES (2832, 2825, '曹妃甸区', '130209', '0315', 'district');
INSERT INTO `tb_area` VALUES (2833, 2825, '玉田县', '130229', '0315', 'district');
INSERT INTO `tb_area` VALUES (2834, 2825, '路南区', '130202', '0315', 'district');
INSERT INTO `tb_area` VALUES (2835, 2825, '路北区', '130203', '0315', 'district');
INSERT INTO `tb_area` VALUES (2836, 2825, '丰南区', '130207', '0315', 'district');
INSERT INTO `tb_area` VALUES (2837, 2825, '丰润区', '130208', '0315', 'district');
INSERT INTO `tb_area` VALUES (2838, 2825, '开平区', '130205', '0315', 'district');
INSERT INTO `tb_area` VALUES (2839, 2825, '古冶区', '130204', '0315', 'district');
INSERT INTO `tb_area` VALUES (2840, 2824, '承德市', '130800', '0314', 'city');
INSERT INTO `tb_area` VALUES (2841, 2840, '围场满族蒙古族自治县', '130828', '0314', 'district');
INSERT INTO `tb_area` VALUES (2842, 2840, '隆化县', '130825', '0314', 'district');
INSERT INTO `tb_area` VALUES (2843, 2840, '丰宁满族自治县', '130826', '0314', 'district');
INSERT INTO `tb_area` VALUES (2844, 2840, '鹰手营子矿区', '130804', '0314', 'district');
INSERT INTO `tb_area` VALUES (2845, 2840, '宽城满族自治县', '130827', '0314', 'district');
INSERT INTO `tb_area` VALUES (2846, 2840, '兴隆县', '130822', '0314', 'district');
INSERT INTO `tb_area` VALUES (2847, 2840, '平泉市', '130881', '0314', 'district');
INSERT INTO `tb_area` VALUES (2848, 2840, '滦平县', '130824', '0314', 'district');
INSERT INTO `tb_area` VALUES (2849, 2840, '双滦区', '130803', '0314', 'district');
INSERT INTO `tb_area` VALUES (2850, 2840, '承德县', '130821', '0314', 'district');
INSERT INTO `tb_area` VALUES (2851, 2840, '双桥区', '130802', '0314', 'district');
INSERT INTO `tb_area` VALUES (2852, 2824, '廊坊市', '131000', '0316', 'city');
INSERT INTO `tb_area` VALUES (2853, 2852, '大厂回族自治县', '131028', '0316', 'district');
INSERT INTO `tb_area` VALUES (2854, 2852, '霸州市', '131081', '0316', 'district');
INSERT INTO `tb_area` VALUES (2855, 2852, '大城县', '131025', '0316', 'district');
INSERT INTO `tb_area` VALUES (2856, 2852, '固安县', '131022', '0316', 'district');
INSERT INTO `tb_area` VALUES (2857, 2852, '永清县', '131023', '0316', 'district');
INSERT INTO `tb_area` VALUES (2858, 2852, '香河县', '131024', '0316', 'district');
INSERT INTO `tb_area` VALUES (2859, 2852, '文安县', '131026', '0316', 'district');
INSERT INTO `tb_area` VALUES (2860, 2852, '广阳区', '131003', '0316', 'district');
INSERT INTO `tb_area` VALUES (2861, 2852, '三河市', '131082', '0316', 'district');
INSERT INTO `tb_area` VALUES (2862, 2852, '安次区', '131002', '0316', 'district');
INSERT INTO `tb_area` VALUES (2863, 2824, '秦皇岛市', '130300', '0335', 'city');
INSERT INTO `tb_area` VALUES (2864, 2863, '青龙满族自治县', '130321', '0335', 'district');
INSERT INTO `tb_area` VALUES (2865, 2863, '山海关区', '130303', '0335', 'district');
INSERT INTO `tb_area` VALUES (2866, 2863, '卢龙县', '130324', '0335', 'district');
INSERT INTO `tb_area` VALUES (2867, 2863, '抚宁区', '130306', '0335', 'district');
INSERT INTO `tb_area` VALUES (2868, 2863, '海港区', '130302', '0335', 'district');
INSERT INTO `tb_area` VALUES (2869, 2863, '北戴河区', '130304', '0335', 'district');
INSERT INTO `tb_area` VALUES (2870, 2863, '昌黎县', '130322', '0335', 'district');
INSERT INTO `tb_area` VALUES (2871, 2824, '保定市', '130600', '0312', 'city');
INSERT INTO `tb_area` VALUES (2872, 2871, '涞源县', '130630', '0312', 'district');
INSERT INTO `tb_area` VALUES (2873, 2871, '易县', '130633', '0312', 'district');
INSERT INTO `tb_area` VALUES (2874, 2871, '定兴县', '130626', '0312', 'district');
INSERT INTO `tb_area` VALUES (2875, 2871, '徐水区', '130609', '0312', 'district');
INSERT INTO `tb_area` VALUES (2876, 2871, '雄县', '130638', '0312', 'district');
INSERT INTO `tb_area` VALUES (2877, 2871, '阜平县', '130624', '0312', 'district');
INSERT INTO `tb_area` VALUES (2878, 2871, '容城县', '130629', '0312', 'district');
INSERT INTO `tb_area` VALUES (2879, 2871, '顺平县', '130636', '0312', 'district');
INSERT INTO `tb_area` VALUES (2880, 2871, '安新县', '130632', '0312', 'district');
INSERT INTO `tb_area` VALUES (2881, 2871, '望都县', '130631', '0312', 'district');
INSERT INTO `tb_area` VALUES (2882, 2871, '高阳县', '130628', '0312', 'district');
INSERT INTO `tb_area` VALUES (2883, 2871, '竞秀区', '130602', '0312', 'district');
INSERT INTO `tb_area` VALUES (2884, 2871, '曲阳县', '130634', '0312', 'district');
INSERT INTO `tb_area` VALUES (2885, 2871, '唐县', '130627', '0312', 'district');
INSERT INTO `tb_area` VALUES (2886, 2871, '满城区', '130607', '0312', 'district');
INSERT INTO `tb_area` VALUES (2887, 2871, '安国市', '130683', '0312', 'district');
INSERT INTO `tb_area` VALUES (2888, 2871, '定州市', '130682', '0312', 'district');
INSERT INTO `tb_area` VALUES (2889, 2871, '莲池区', '130606', '0312', 'district');
INSERT INTO `tb_area` VALUES (2890, 2871, '清苑区', '130608', '0312', 'district');
INSERT INTO `tb_area` VALUES (2891, 2871, '涞水县', '130623', '0312', 'district');
INSERT INTO `tb_area` VALUES (2892, 2871, '涿州市', '130681', '0312', 'district');
INSERT INTO `tb_area` VALUES (2893, 2871, '高碑店市', '130684', '0312', 'district');
INSERT INTO `tb_area` VALUES (2894, 2871, '博野县', '130637', '0312', 'district');
INSERT INTO `tb_area` VALUES (2895, 2871, '蠡县', '130635', '0312', 'district');
INSERT INTO `tb_area` VALUES (2896, 2824, '石家庄市', '130100', '0311', 'city');
INSERT INTO `tb_area` VALUES (2897, 2896, '行唐县', '130125', '0311', 'district');
INSERT INTO `tb_area` VALUES (2898, 2896, '平山县', '130131', '0311', 'district');
INSERT INTO `tb_area` VALUES (2899, 2896, '灵寿县', '130126', '0311', 'district');
INSERT INTO `tb_area` VALUES (2900, 2896, '鹿泉区', '130110', '0311', 'district');
INSERT INTO `tb_area` VALUES (2901, 2896, '无极县', '130130', '0311', 'district');
INSERT INTO `tb_area` VALUES (2902, 2896, '正定县', '130123', '0311', 'district');
INSERT INTO `tb_area` VALUES (2903, 2896, '藁城区', '130109', '0311', 'district');
INSERT INTO `tb_area` VALUES (2904, 2896, '晋州市', '130183', '0311', 'district');
INSERT INTO `tb_area` VALUES (2905, 2896, '元氏县', '130132', '0311', 'district');
INSERT INTO `tb_area` VALUES (2906, 2896, '赞皇县', '130129', '0311', 'district');
INSERT INTO `tb_area` VALUES (2907, 2896, '赵县', '130133', '0311', 'district');
INSERT INTO `tb_area` VALUES (2908, 2896, '高邑县', '130127', '0311', 'district');
INSERT INTO `tb_area` VALUES (2909, 2896, '栾城区', '130111', '0311', 'district');
INSERT INTO `tb_area` VALUES (2910, 2896, '裕华区', '130108', '0311', 'district');
INSERT INTO `tb_area` VALUES (2911, 2896, '辛集市', '130181', '0311', 'district');
INSERT INTO `tb_area` VALUES (2912, 2896, '新乐市', '130184', '0311', 'district');
INSERT INTO `tb_area` VALUES (2913, 2896, '新华区', '130105', '0311', 'district');
INSERT INTO `tb_area` VALUES (2914, 2896, '长安区', '130102', '0311', 'district');
INSERT INTO `tb_area` VALUES (2915, 2896, '井陉矿区', '130107', '0311', 'district');
INSERT INTO `tb_area` VALUES (2916, 2896, '井陉县', '130121', '0311', 'district');
INSERT INTO `tb_area` VALUES (2917, 2896, '桥西区', '130104', '0311', 'district');
INSERT INTO `tb_area` VALUES (2918, 2896, '深泽县', '130128', '0311', 'district');
INSERT INTO `tb_area` VALUES (2919, 2824, '邢台市', '130500', '0319', 'city');
INSERT INTO `tb_area` VALUES (2920, 2919, '宁晋县', '130528', '0319', 'district');
INSERT INTO `tb_area` VALUES (2921, 2919, '柏乡县', '130524', '0319', 'district');
INSERT INTO `tb_area` VALUES (2922, 2919, '临城县', '130522', '0319', 'district');
INSERT INTO `tb_area` VALUES (2923, 2919, '南宫市', '130581', '0319', 'district');
INSERT INTO `tb_area` VALUES (2924, 2919, '广宗县', '130531', '0319', 'district');
INSERT INTO `tb_area` VALUES (2925, 2919, '新河县', '130530', '0319', 'district');
INSERT INTO `tb_area` VALUES (2926, 2919, '平乡县', '130532', '0319', 'district');
INSERT INTO `tb_area` VALUES (2927, 2919, '巨鹿县', '130529', '0319', 'district');
INSERT INTO `tb_area` VALUES (2928, 2919, '隆尧县', '130525', '0319', 'district');
INSERT INTO `tb_area` VALUES (2929, 2919, '内丘县', '130523', '0319', 'district');
INSERT INTO `tb_area` VALUES (2930, 2919, '清河县', '130534', '0319', 'district');
INSERT INTO `tb_area` VALUES (2931, 2919, '南和县', '130527', '0319', 'district');
INSERT INTO `tb_area` VALUES (2932, 2919, '沙河市', '130582', '0319', 'district');
INSERT INTO `tb_area` VALUES (2933, 2919, '桥西区', '130503', '0319', 'district');
INSERT INTO `tb_area` VALUES (2934, 2919, '任县', '130526', '0319', 'district');
INSERT INTO `tb_area` VALUES (2935, 2919, '桥东区', '130502', '0319', 'district');
INSERT INTO `tb_area` VALUES (2936, 2919, '邢台县', '130521', '0319', 'district');
INSERT INTO `tb_area` VALUES (2937, 2919, '威县', '130533', '0319', 'district');
INSERT INTO `tb_area` VALUES (2938, 2919, '临西县', '130535', '0319', 'district');
INSERT INTO `tb_area` VALUES (2939, 2824, '邯郸市', '130400', '0310', 'city');
INSERT INTO `tb_area` VALUES (2940, 2939, '武安市', '130481', '0310', 'district');
INSERT INTO `tb_area` VALUES (2941, 2939, '魏县', '130434', '0310', 'district');
INSERT INTO `tb_area` VALUES (2942, 2939, '肥乡区', '130407', '0310', 'district');
INSERT INTO `tb_area` VALUES (2943, 2939, '广平县', '130432', '0310', 'district');
INSERT INTO `tb_area` VALUES (2944, 2939, '大名县', '130425', '0310', 'district');
INSERT INTO `tb_area` VALUES (2945, 2939, '峰峰矿区', '130406', '0310', 'district');
INSERT INTO `tb_area` VALUES (2946, 2939, '涉县', '130426', '0310', 'district');
INSERT INTO `tb_area` VALUES (2947, 2939, '临漳县', '130423', '0310', 'district');
INSERT INTO `tb_area` VALUES (2948, 2939, '曲周县', '130435', '0310', 'district');
INSERT INTO `tb_area` VALUES (2949, 2939, '鸡泽县', '130431', '0310', 'district');
INSERT INTO `tb_area` VALUES (2950, 2939, '永年区', '130408', '0310', 'district');
INSERT INTO `tb_area` VALUES (2951, 2939, '复兴区', '130404', '0310', 'district');
INSERT INTO `tb_area` VALUES (2952, 2939, '丛台区', '130403', '0310', 'district');
INSERT INTO `tb_area` VALUES (2953, 2939, '磁县', '130427', '0310', 'district');
INSERT INTO `tb_area` VALUES (2954, 2939, '成安县', '130424', '0310', 'district');
INSERT INTO `tb_area` VALUES (2955, 2939, '邯山区', '130402', '0310', 'district');
INSERT INTO `tb_area` VALUES (2956, 2939, '馆陶县', '130433', '0310', 'district');
INSERT INTO `tb_area` VALUES (2957, 2939, '邱县', '130430', '0310', 'district');
INSERT INTO `tb_area` VALUES (2958, 2824, '张家口市', '130700', '0313', 'city');
INSERT INTO `tb_area` VALUES (2959, 2958, '康保县', '130723', '0313', 'district');
INSERT INTO `tb_area` VALUES (2960, 2958, '沽源县', '130724', '0313', 'district');
INSERT INTO `tb_area` VALUES (2961, 2958, '张北县', '130722', '0313', 'district');
INSERT INTO `tb_area` VALUES (2962, 2958, '尚义县', '130725', '0313', 'district');
INSERT INTO `tb_area` VALUES (2963, 2958, '赤城县', '130732', '0313', 'district');
INSERT INTO `tb_area` VALUES (2964, 2958, '崇礼区', '130709', '0313', 'district');
INSERT INTO `tb_area` VALUES (2965, 2958, '万全区', '130708', '0313', 'district');
INSERT INTO `tb_area` VALUES (2966, 2958, '下花园区', '130706', '0313', 'district');
INSERT INTO `tb_area` VALUES (2967, 2958, '怀来县', '130730', '0313', 'district');
INSERT INTO `tb_area` VALUES (2968, 2958, '涿鹿县', '130731', '0313', 'district');
INSERT INTO `tb_area` VALUES (2969, 2958, '阳原县', '130727', '0313', 'district');
INSERT INTO `tb_area` VALUES (2970, 2958, '蔚县', '130726', '0313', 'district');
INSERT INTO `tb_area` VALUES (2971, 2958, '桥西区', '130703', '0313', 'district');
INSERT INTO `tb_area` VALUES (2972, 2958, '桥东区', '130702', '0313', 'district');
INSERT INTO `tb_area` VALUES (2973, 2958, '宣化区', '130705', '0313', 'district');
INSERT INTO `tb_area` VALUES (2974, 2958, '怀安县', '130728', '0313', 'district');
INSERT INTO `tb_area` VALUES (2975, 2824, '沧州市', '130900', '0317', 'city');
INSERT INTO `tb_area` VALUES (2976, 2975, '任丘市', '130982', '0317', 'district');
INSERT INTO `tb_area` VALUES (2977, 2975, '河间市', '130984', '0317', 'district');
INSERT INTO `tb_area` VALUES (2978, 2975, '肃宁县', '130926', '0317', 'district');
INSERT INTO `tb_area` VALUES (2979, 2975, '运河区', '130903', '0317', 'district');
INSERT INTO `tb_area` VALUES (2980, 2975, '献县', '130929', '0317', 'district');
INSERT INTO `tb_area` VALUES (2981, 2975, '新华区', '130902', '0317', 'district');
INSERT INTO `tb_area` VALUES (2982, 2975, '海兴县', '130924', '0317', 'district');
INSERT INTO `tb_area` VALUES (2983, 2975, '孟村回族自治县', '130930', '0317', 'district');
INSERT INTO `tb_area` VALUES (2984, 2975, '南皮县', '130927', '0317', 'district');
INSERT INTO `tb_area` VALUES (2985, 2975, '盐山县', '130925', '0317', 'district');
INSERT INTO `tb_area` VALUES (2986, 2975, '东光县', '130923', '0317', 'district');
INSERT INTO `tb_area` VALUES (2987, 2975, '吴桥县', '130928', '0317', 'district');
INSERT INTO `tb_area` VALUES (2988, 2975, '黄骅市', '130983', '0317', 'district');
INSERT INTO `tb_area` VALUES (2989, 2975, '青县', '130922', '0317', 'district');
INSERT INTO `tb_area` VALUES (2990, 2975, '沧县', '130921', '0317', 'district');
INSERT INTO `tb_area` VALUES (2991, 2975, '泊头市', '130981', '0317', 'district');
INSERT INTO `tb_area` VALUES (2992, 2824, '衡水市', '131100', '0318', 'city');
INSERT INTO `tb_area` VALUES (2993, 2992, '武强县', '131123', '0318', 'district');
INSERT INTO `tb_area` VALUES (2994, 2992, '武邑县', '131122', '0318', 'district');
INSERT INTO `tb_area` VALUES (2995, 2992, '桃城区', '131102', '0318', 'district');
INSERT INTO `tb_area` VALUES (2996, 2992, '枣强县', '131121', '0318', 'district');
INSERT INTO `tb_area` VALUES (2997, 2992, '冀州区', '131103', '0318', 'district');
INSERT INTO `tb_area` VALUES (2998, 2992, '景县', '131127', '0318', 'district');
INSERT INTO `tb_area` VALUES (2999, 2992, '故城县', '131126', '0318', 'district');
INSERT INTO `tb_area` VALUES (3000, 2992, '深州市', '131182', '0318', 'district');
INSERT INTO `tb_area` VALUES (3001, 2992, '阜城县', '131128', '0318', 'district');
INSERT INTO `tb_area` VALUES (3002, 2992, '饶阳县', '131124', '0318', 'district');
INSERT INTO `tb_area` VALUES (3003, 2992, '安平县', '131125', '0318', 'district');
INSERT INTO `tb_area` VALUES (3004, 0, '香港特别行政区', '810000', '1852', 'province');
INSERT INTO `tb_area` VALUES (3005, 3004, '北区', '810013', '1852', 'district');
INSERT INTO `tb_area` VALUES (3006, 3004, '大埔区', '810014', '1852', 'district');
INSERT INTO `tb_area` VALUES (3007, 3004, '西贡区', '810015', '1852', 'district');
INSERT INTO `tb_area` VALUES (3008, 3004, '沙田区', '810016', '1852', 'district');
INSERT INTO `tb_area` VALUES (3009, 3004, '屯门区', '810011', '1852', 'district');
INSERT INTO `tb_area` VALUES (3010, 3004, '黄大仙区', '810008', '1852', 'district');
INSERT INTO `tb_area` VALUES (3011, 3004, '九龙城区', '810007', '1852', 'district');
INSERT INTO `tb_area` VALUES (3012, 3004, '深水埗区', '810006', '1852', 'district');
INSERT INTO `tb_area` VALUES (3013, 3004, '观塘区', '810009', '1852', 'district');
INSERT INTO `tb_area` VALUES (3014, 3004, '油尖旺区', '810005', '1852', 'district');
INSERT INTO `tb_area` VALUES (3015, 3004, '离岛区', '810018', '1852', 'district');
INSERT INTO `tb_area` VALUES (3016, 3004, '东区', '810003', '1852', 'district');
INSERT INTO `tb_area` VALUES (3017, 3004, '中西区', '810001', '1852', 'district');
INSERT INTO `tb_area` VALUES (3018, 3004, '湾仔区', '810002', '1852', 'district');
INSERT INTO `tb_area` VALUES (3019, 3004, '南区', '810004', '1852', 'district');
INSERT INTO `tb_area` VALUES (3020, 3004, '元朗区', '810012', '1852', 'district');
INSERT INTO `tb_area` VALUES (3021, 3004, '荃湾区', '810010', '1852', 'district');
INSERT INTO `tb_area` VALUES (3022, 3004, '葵青区', '810017', '1852', 'district');
INSERT INTO `tb_area` VALUES (3023, 0, '台湾省', '710000', '1886', 'province');
INSERT INTO `tb_area` VALUES (3024, 0, '澳门特别行政区', '820000', '1853', 'province');
INSERT INTO `tb_area` VALUES (3025, 3024, '风顺堂区', '820005', '1853', 'district');
INSERT INTO `tb_area` VALUES (3026, 3024, '路凼填海区', '820007', '1853', 'district');
INSERT INTO `tb_area` VALUES (3027, 3024, '望德堂区', '820003', '1853', 'district');
INSERT INTO `tb_area` VALUES (3028, 3024, '嘉模堂区', '820006', '1853', 'district');
INSERT INTO `tb_area` VALUES (3029, 3024, '花地玛堂区', '820001', '1853', 'district');
INSERT INTO `tb_area` VALUES (3030, 3024, '花王堂区', '820002', '1853', 'district');
INSERT INTO `tb_area` VALUES (3031, 3024, '圣方济各堂区', '820008', '1853', 'district');
INSERT INTO `tb_area` VALUES (3032, 3024, '大堂区', '820004', '1853', 'district');
INSERT INTO `tb_area` VALUES (3033, 0, '甘肃省', '620000', '', 'province');
INSERT INTO `tb_area` VALUES (3034, 3033, '嘉峪关市', '620200', '1937', 'city');
INSERT INTO `tb_area` VALUES (3035, 3034, '峪泉镇', '620200', '1937', 'street');
INSERT INTO `tb_area` VALUES (3036, 3034, '新城镇', '620200', '1937', 'street');
INSERT INTO `tb_area` VALUES (3037, 3034, '文殊镇', '620200', '1937', 'street');
INSERT INTO `tb_area` VALUES (3038, 3034, '雄关区', '620200', '1937', 'street');
INSERT INTO `tb_area` VALUES (3039, 3034, '镜铁区', '620200', '1937', 'street');
INSERT INTO `tb_area` VALUES (3040, 3034, '长城区', '620200', '1937', 'street');
INSERT INTO `tb_area` VALUES (3041, 3033, '酒泉市', '620900', '0937', 'city');
INSERT INTO `tb_area` VALUES (3042, 3041, '肃北蒙古族自治县', '620923', '0937', 'district');
INSERT INTO `tb_area` VALUES (3043, 3041, '敦煌市', '620982', '0937', 'district');
INSERT INTO `tb_area` VALUES (3044, 3041, '玉门市', '620981', '0937', 'district');
INSERT INTO `tb_area` VALUES (3045, 3041, '肃州区', '620902', '0937', 'district');
INSERT INTO `tb_area` VALUES (3046, 3041, '金塔县', '620921', '0937', 'district');
INSERT INTO `tb_area` VALUES (3047, 3041, '瓜州县', '620922', '0937', 'district');
INSERT INTO `tb_area` VALUES (3048, 3041, '阿克塞哈萨克族自治县', '620924', '0937', 'district');
INSERT INTO `tb_area` VALUES (3049, 3033, '金昌市', '620300', '0935', 'city');
INSERT INTO `tb_area` VALUES (3050, 3049, '金川区', '620302', '0935', 'district');
INSERT INTO `tb_area` VALUES (3051, 3049, '永昌县', '620321', '0935', 'district');
INSERT INTO `tb_area` VALUES (3052, 3033, '兰州市', '620100', '0931', 'city');
INSERT INTO `tb_area` VALUES (3053, 3052, '永登县', '620121', '0931', 'district');
INSERT INTO `tb_area` VALUES (3054, 3052, '西固区', '620104', '0931', 'district');
INSERT INTO `tb_area` VALUES (3055, 3052, '皋兰县', '620122', '0931', 'district');
INSERT INTO `tb_area` VALUES (3056, 3052, '红古区', '620111', '0931', 'district');
INSERT INTO `tb_area` VALUES (3057, 3052, '安宁区', '620105', '0931', 'district');
INSERT INTO `tb_area` VALUES (3058, 3052, '城关区', '620102', '0931', 'district');
INSERT INTO `tb_area` VALUES (3059, 3052, '七里河区', '620103', '0931', 'district');
INSERT INTO `tb_area` VALUES (3060, 3052, '榆中县', '620123', '0931', 'district');
INSERT INTO `tb_area` VALUES (3061, 3033, '平凉市', '620800', '0933', 'city');
INSERT INTO `tb_area` VALUES (3062, 3061, '庄浪县', '620825', '0933', 'district');
INSERT INTO `tb_area` VALUES (3063, 3061, '崆峒区', '620802', '0933', 'district');
INSERT INTO `tb_area` VALUES (3064, 3061, '崇信县', '620823', '0933', 'district');
INSERT INTO `tb_area` VALUES (3065, 3061, '灵台县', '620822', '0933', 'district');
INSERT INTO `tb_area` VALUES (3066, 3061, '华亭市', '620881', '0933', 'district');
INSERT INTO `tb_area` VALUES (3067, 3061, '静宁县', '620826', '0933', 'district');
INSERT INTO `tb_area` VALUES (3068, 3061, '泾川县', '620821', '0933', 'district');
INSERT INTO `tb_area` VALUES (3069, 3033, '白银市', '620400', '0943', 'city');
INSERT INTO `tb_area` VALUES (3070, 3069, '平川区', '620403', '0943', 'district');
INSERT INTO `tb_area` VALUES (3071, 3069, '靖远县', '620421', '0943', 'district');
INSERT INTO `tb_area` VALUES (3072, 3069, '白银区', '620402', '0943', 'district');
INSERT INTO `tb_area` VALUES (3073, 3069, '会宁县', '620422', '0943', 'district');
INSERT INTO `tb_area` VALUES (3074, 3069, '景泰县', '620423', '0943', 'district');
INSERT INTO `tb_area` VALUES (3075, 3033, '天水市', '620500', '0938', 'city');
INSERT INTO `tb_area` VALUES (3076, 3075, '秦安县', '620522', '0938', 'district');
INSERT INTO `tb_area` VALUES (3077, 3075, '张家川回族自治县', '620525', '0938', 'district');
INSERT INTO `tb_area` VALUES (3078, 3075, '甘谷县', '620523', '0938', 'district');
INSERT INTO `tb_area` VALUES (3079, 3075, '清水县', '620521', '0938', 'district');
INSERT INTO `tb_area` VALUES (3080, 3075, '秦州区', '620502', '0938', 'district');
INSERT INTO `tb_area` VALUES (3081, 3075, '武山县', '620524', '0938', 'district');
INSERT INTO `tb_area` VALUES (3082, 3075, '麦积区', '620503', '0938', 'district');
INSERT INTO `tb_area` VALUES (3083, 3033, '武威市', '620600', '1935', 'city');
INSERT INTO `tb_area` VALUES (3084, 3083, '古浪县', '620622', '1935', 'district');
INSERT INTO `tb_area` VALUES (3085, 3083, '凉州区', '620602', '1935', 'district');
INSERT INTO `tb_area` VALUES (3086, 3083, '天祝藏族自治县', '620623', '1935', 'district');
INSERT INTO `tb_area` VALUES (3087, 3083, '民勤县', '620621', '1935', 'district');
INSERT INTO `tb_area` VALUES (3088, 3033, '陇南市', '621200', '2935', 'city');
INSERT INTO `tb_area` VALUES (3089, 3088, '礼县', '621226', '2935', 'district');
INSERT INTO `tb_area` VALUES (3090, 3088, '宕昌县', '621223', '2935', 'district');
INSERT INTO `tb_area` VALUES (3091, 3088, '徽县', '621227', '2935', 'district');
INSERT INTO `tb_area` VALUES (3092, 3088, '成县', '621221', '2935', 'district');
INSERT INTO `tb_area` VALUES (3093, 3088, '武都区', '621202', '2935', 'district');
INSERT INTO `tb_area` VALUES (3094, 3088, '两当县', '621228', '2935', 'district');
INSERT INTO `tb_area` VALUES (3095, 3088, '康县', '621224', '2935', 'district');
INSERT INTO `tb_area` VALUES (3096, 3088, '文县', '621222', '2935', 'district');
INSERT INTO `tb_area` VALUES (3097, 3088, '西和县', '621225', '2935', 'district');
INSERT INTO `tb_area` VALUES (3098, 3033, '甘南藏族自治州', '623000', '0941', 'city');
INSERT INTO `tb_area` VALUES (3099, 3098, '夏河县', '623027', '0941', 'district');
INSERT INTO `tb_area` VALUES (3100, 3098, '合作市', '623001', '0941', 'district');
INSERT INTO `tb_area` VALUES (3101, 3098, '临潭县', '623021', '0941', 'district');
INSERT INTO `tb_area` VALUES (3102, 3098, '卓尼县', '623022', '0941', 'district');
INSERT INTO `tb_area` VALUES (3103, 3098, '玛曲县', '623025', '0941', 'district');
INSERT INTO `tb_area` VALUES (3104, 3098, '迭部县', '623024', '0941', 'district');
INSERT INTO `tb_area` VALUES (3105, 3098, '舟曲县', '623023', '0941', 'district');
INSERT INTO `tb_area` VALUES (3106, 3098, '碌曲县', '623026', '0941', 'district');
INSERT INTO `tb_area` VALUES (3107, 3033, '临夏回族自治州', '622900', '0930', 'city');
INSERT INTO `tb_area` VALUES (3108, 3107, '永靖县', '622923', '0930', 'district');
INSERT INTO `tb_area` VALUES (3109, 3107, '东乡族自治县', '622926', '0930', 'district');
INSERT INTO `tb_area` VALUES (3110, 3107, '积石山保安族东乡族撒拉族自治县', '622927', '0930', 'district');
INSERT INTO `tb_area` VALUES (3111, 3107, '临夏县', '622921', '0930', 'district');
INSERT INTO `tb_area` VALUES (3112, 3107, '临夏市', '622901', '0930', 'district');
INSERT INTO `tb_area` VALUES (3113, 3107, '广河县', '622924', '0930', 'district');
INSERT INTO `tb_area` VALUES (3114, 3107, '和政县', '622925', '0930', 'district');
INSERT INTO `tb_area` VALUES (3115, 3107, '康乐县', '622922', '0930', 'district');
INSERT INTO `tb_area` VALUES (3116, 3033, '张掖市', '620700', '0936', 'city');
INSERT INTO `tb_area` VALUES (3117, 3116, '高台县', '620724', '0936', 'district');
INSERT INTO `tb_area` VALUES (3118, 3116, '肃南裕固族自治县', '620721', '0936', 'district');
INSERT INTO `tb_area` VALUES (3119, 3116, '山丹县', '620725', '0936', 'district');
INSERT INTO `tb_area` VALUES (3120, 3116, '民乐县', '620722', '0936', 'district');
INSERT INTO `tb_area` VALUES (3121, 3116, '甘州区', '620702', '0936', 'district');
INSERT INTO `tb_area` VALUES (3122, 3116, '临泽县', '620723', '0936', 'district');
INSERT INTO `tb_area` VALUES (3123, 3033, '庆阳市', '621000', '0934', 'city');
INSERT INTO `tb_area` VALUES (3124, 3123, '合水县', '621024', '0934', 'district');
INSERT INTO `tb_area` VALUES (3125, 3123, '庆城县', '621021', '0934', 'district');
INSERT INTO `tb_area` VALUES (3126, 3123, '正宁县', '621025', '0934', 'district');
INSERT INTO `tb_area` VALUES (3127, 3123, '西峰区', '621002', '0934', 'district');
INSERT INTO `tb_area` VALUES (3128, 3123, '镇原县', '621027', '0934', 'district');
INSERT INTO `tb_area` VALUES (3129, 3123, '环县', '621022', '0934', 'district');
INSERT INTO `tb_area` VALUES (3130, 3123, '华池县', '621023', '0934', 'district');
INSERT INTO `tb_area` VALUES (3131, 3123, '宁县', '621026', '0934', 'district');
INSERT INTO `tb_area` VALUES (3132, 3033, '定西市', '621100', '0932', 'city');
INSERT INTO `tb_area` VALUES (3133, 3132, '临洮县', '621124', '0932', 'district');
INSERT INTO `tb_area` VALUES (3134, 3132, '渭源县', '621123', '0932', 'district');
INSERT INTO `tb_area` VALUES (3135, 3132, '陇西县', '621122', '0932', 'district');
INSERT INTO `tb_area` VALUES (3136, 3132, '岷县', '621126', '0932', 'district');
INSERT INTO `tb_area` VALUES (3137, 3132, '通渭县', '621121', '0932', 'district');
INSERT INTO `tb_area` VALUES (3138, 3132, '漳县', '621125', '0932', 'district');
INSERT INTO `tb_area` VALUES (3139, 3132, '安定区', '621102', '0932', 'district');
INSERT INTO `tb_area` VALUES (3140, 0, '四川省', '510000', '', 'province');
INSERT INTO `tb_area` VALUES (3141, 3140, '广元市', '510800', '0839', 'city');
INSERT INTO `tb_area` VALUES (3142, 3141, '朝天区', '510812', '0839', 'district');
INSERT INTO `tb_area` VALUES (3143, 3141, '昭化区', '510811', '0839', 'district');
INSERT INTO `tb_area` VALUES (3144, 3141, '剑阁县', '510823', '0839', 'district');
INSERT INTO `tb_area` VALUES (3145, 3141, '苍溪县', '510824', '0839', 'district');
INSERT INTO `tb_area` VALUES (3146, 3141, '旺苍县', '510821', '0839', 'district');
INSERT INTO `tb_area` VALUES (3147, 3141, '青川县', '510822', '0839', 'district');
INSERT INTO `tb_area` VALUES (3148, 3141, '利州区', '510802', '0839', 'district');
INSERT INTO `tb_area` VALUES (3149, 3140, '南充市', '511300', '0817', 'city');
INSERT INTO `tb_area` VALUES (3150, 3149, '南部县', '511321', '0817', 'district');
INSERT INTO `tb_area` VALUES (3151, 3149, '营山县', '511322', '0817', 'district');
INSERT INTO `tb_area` VALUES (3152, 3149, '蓬安县', '511323', '0817', 'district');
INSERT INTO `tb_area` VALUES (3153, 3149, '顺庆区', '511302', '0817', 'district');
INSERT INTO `tb_area` VALUES (3154, 3149, '嘉陵区', '511304', '0817', 'district');
INSERT INTO `tb_area` VALUES (3155, 3149, '西充县', '511325', '0817', 'district');
INSERT INTO `tb_area` VALUES (3156, 3149, '仪陇县', '511324', '0817', 'district');
INSERT INTO `tb_area` VALUES (3157, 3149, '阆中市', '511381', '0817', 'district');
INSERT INTO `tb_area` VALUES (3158, 3149, '高坪区', '511303', '0817', 'district');
INSERT INTO `tb_area` VALUES (3159, 3140, '巴中市', '511900', '0827', 'city');
INSERT INTO `tb_area` VALUES (3160, 3159, '通江县', '511921', '0827', 'district');
INSERT INTO `tb_area` VALUES (3161, 3159, '巴州区', '511902', '0827', 'district');
INSERT INTO `tb_area` VALUES (3162, 3159, '平昌县', '511923', '0827', 'district');
INSERT INTO `tb_area` VALUES (3163, 3159, '南江县', '511922', '0827', 'district');
INSERT INTO `tb_area` VALUES (3164, 3159, '恩阳区', '511903', '0827', 'district');
INSERT INTO `tb_area` VALUES (3165, 3140, '德阳市', '510600', '0838', 'city');
INSERT INTO `tb_area` VALUES (3166, 3165, '旌阳区', '510603', '0838', 'district');
INSERT INTO `tb_area` VALUES (3167, 3165, '广汉市', '510681', '0838', 'district');
INSERT INTO `tb_area` VALUES (3168, 3165, '中江县', '510623', '0838', 'district');
INSERT INTO `tb_area` VALUES (3169, 3165, '什邡市', '510682', '0838', 'district');
INSERT INTO `tb_area` VALUES (3170, 3165, '罗江区', '510604', '0838', 'district');
INSERT INTO `tb_area` VALUES (3171, 3165, '绵竹市', '510683', '0838', 'district');
INSERT INTO `tb_area` VALUES (3172, 3140, '绵阳市', '510700', '0816', 'city');
INSERT INTO `tb_area` VALUES (3173, 3172, '江油市', '510781', '0816', 'district');
INSERT INTO `tb_area` VALUES (3174, 3172, '梓潼县', '510725', '0816', 'district');
INSERT INTO `tb_area` VALUES (3175, 3172, '游仙区', '510704', '0816', 'district');
INSERT INTO `tb_area` VALUES (3176, 3172, '三台县', '510722', '0816', 'district');
INSERT INTO `tb_area` VALUES (3177, 3172, '盐亭县', '510723', '0816', 'district');
INSERT INTO `tb_area` VALUES (3178, 3172, '北川羌族自治县', '510726', '0816', 'district');
INSERT INTO `tb_area` VALUES (3179, 3172, '安州区', '510705', '0816', 'district');
INSERT INTO `tb_area` VALUES (3180, 3172, '涪城区', '510703', '0816', 'district');
INSERT INTO `tb_area` VALUES (3181, 3172, '平武县', '510727', '0816', 'district');
INSERT INTO `tb_area` VALUES (3182, 3140, '成都市', '510100', '028', 'city');
INSERT INTO `tb_area` VALUES (3183, 3182, '彭州市', '510182', '028', 'district');
INSERT INTO `tb_area` VALUES (3184, 3182, '都江堰市', '510181', '028', 'district');
INSERT INTO `tb_area` VALUES (3185, 3182, '青白江区', '510113', '028', 'district');
INSERT INTO `tb_area` VALUES (3186, 3182, '大邑县', '510129', '028', 'district');
INSERT INTO `tb_area` VALUES (3187, 3182, '蒲江县', '510131', '028', 'district');
INSERT INTO `tb_area` VALUES (3188, 3182, '崇州市', '510184', '028', 'district');
INSERT INTO `tb_area` VALUES (3189, 3182, '简阳市', '510185', '028', 'district');
INSERT INTO `tb_area` VALUES (3190, 3182, '金堂县', '510121', '028', 'district');
INSERT INTO `tb_area` VALUES (3191, 3182, '邛崃市', '510183', '028', 'district');
INSERT INTO `tb_area` VALUES (3192, 3182, '新津县', '510132', '028', 'district');
INSERT INTO `tb_area` VALUES (3193, 3182, '青羊区', '510105', '028', 'district');
INSERT INTO `tb_area` VALUES (3194, 3182, '温江区', '510115', '028', 'district');
INSERT INTO `tb_area` VALUES (3195, 3182, '双流区', '510116', '028', 'district');
INSERT INTO `tb_area` VALUES (3196, 3182, '武侯区', '510107', '028', 'district');
INSERT INTO `tb_area` VALUES (3197, 3182, '金牛区', '510106', '028', 'district');
INSERT INTO `tb_area` VALUES (3198, 3182, '郫都区', '510117', '028', 'district');
INSERT INTO `tb_area` VALUES (3199, 3182, '新都区', '510114', '028', 'district');
INSERT INTO `tb_area` VALUES (3200, 3182, '龙泉驿区', '510112', '028', 'district');
INSERT INTO `tb_area` VALUES (3201, 3182, '成华区', '510108', '028', 'district');
INSERT INTO `tb_area` VALUES (3202, 3182, '锦江区', '510104', '028', 'district');
INSERT INTO `tb_area` VALUES (3203, 3140, '广安市', '511600', '0826', 'city');
INSERT INTO `tb_area` VALUES (3204, 3203, '邻水县', '511623', '0826', 'district');
INSERT INTO `tb_area` VALUES (3205, 3203, '武胜县', '511622', '0826', 'district');
INSERT INTO `tb_area` VALUES (3206, 3203, '广安区', '511602', '0826', 'district');
INSERT INTO `tb_area` VALUES (3207, 3203, '岳池县', '511621', '0826', 'district');
INSERT INTO `tb_area` VALUES (3208, 3203, '前锋区', '511603', '0826', 'district');
INSERT INTO `tb_area` VALUES (3209, 3203, '华蓥市', '511681', '0826', 'district');
INSERT INTO `tb_area` VALUES (3210, 3140, '达州市', '511700', '0818', 'city');
INSERT INTO `tb_area` VALUES (3211, 3210, '大竹县', '511724', '0818', 'district');
INSERT INTO `tb_area` VALUES (3212, 3210, '宣汉县', '511722', '0818', 'district');
INSERT INTO `tb_area` VALUES (3213, 3210, '达川区', '511703', '0818', 'district');
INSERT INTO `tb_area` VALUES (3214, 3210, '通川区', '511702', '0818', 'district');
INSERT INTO `tb_area` VALUES (3215, 3210, '渠县', '511725', '0818', 'district');
INSERT INTO `tb_area` VALUES (3216, 3210, '开江县', '511723', '0818', 'district');
INSERT INTO `tb_area` VALUES (3217, 3210, '万源市', '511781', '0818', 'district');
INSERT INTO `tb_area` VALUES (3218, 3140, '遂宁市', '510900', '0825', 'city');
INSERT INTO `tb_area` VALUES (3219, 3218, '大英县', '510923', '0825', 'district');
INSERT INTO `tb_area` VALUES (3220, 3218, '射洪县', '510922', '0825', 'district');
INSERT INTO `tb_area` VALUES (3221, 3218, '蓬溪县', '510921', '0825', 'district');
INSERT INTO `tb_area` VALUES (3222, 3218, '船山区', '510903', '0825', 'district');
INSERT INTO `tb_area` VALUES (3223, 3218, '安居区', '510904', '0825', 'district');
INSERT INTO `tb_area` VALUES (3224, 3140, '资阳市', '512000', '0832', 'city');
INSERT INTO `tb_area` VALUES (3225, 3224, '乐至县', '512022', '0832', 'district');
INSERT INTO `tb_area` VALUES (3226, 3224, '安岳县', '512021', '0832', 'district');
INSERT INTO `tb_area` VALUES (3227, 3224, '雁江区', '512002', '0832', 'district');
INSERT INTO `tb_area` VALUES (3228, 3140, '眉山市', '511400', '1833', 'city');
INSERT INTO `tb_area` VALUES (3229, 3228, '仁寿县', '511421', '1833', 'district');
INSERT INTO `tb_area` VALUES (3230, 3228, '丹棱县', '511424', '1833', 'district');
INSERT INTO `tb_area` VALUES (3231, 3228, '洪雅县', '511423', '1833', 'district');
INSERT INTO `tb_area` VALUES (3232, 3228, '青神县', '511425', '1833', 'district');
INSERT INTO `tb_area` VALUES (3233, 3228, '东坡区', '511402', '1833', 'district');
INSERT INTO `tb_area` VALUES (3234, 3228, '彭山区', '511403', '1833', 'district');
INSERT INTO `tb_area` VALUES (3235, 3140, '内江市', '511000', '1832', 'city');
INSERT INTO `tb_area` VALUES (3236, 3235, '资中县', '511025', '1832', 'district');
INSERT INTO `tb_area` VALUES (3237, 3235, '东兴区', '511011', '1832', 'district');
INSERT INTO `tb_area` VALUES (3238, 3235, '威远县', '511024', '1832', 'district');
INSERT INTO `tb_area` VALUES (3239, 3235, '隆昌市', '511083', '1832', 'district');
INSERT INTO `tb_area` VALUES (3240, 3235, '市中区', '511002', '1832', 'district');
INSERT INTO `tb_area` VALUES (3241, 3140, '乐山市', '511100', '0833', 'city');
INSERT INTO `tb_area` VALUES (3242, 3241, '夹江县', '511126', '0833', 'district');
INSERT INTO `tb_area` VALUES (3243, 3241, '沙湾区', '511111', '0833', 'district');
INSERT INTO `tb_area` VALUES (3244, 3241, '井研县', '511124', '0833', 'district');
INSERT INTO `tb_area` VALUES (3245, 3241, '五通桥区', '511112', '0833', 'district');
INSERT INTO `tb_area` VALUES (3246, 3241, '金口河区', '511113', '0833', 'district');
INSERT INTO `tb_area` VALUES (3247, 3241, '犍为县', '511123', '0833', 'district');
INSERT INTO `tb_area` VALUES (3248, 3241, '峨边彝族自治县', '511132', '0833', 'district');
INSERT INTO `tb_area` VALUES (3249, 3241, '沐川县', '511129', '0833', 'district');
INSERT INTO `tb_area` VALUES (3250, 3241, '马边彝族自治县', '511133', '0833', 'district');
INSERT INTO `tb_area` VALUES (3251, 3241, '市中区', '511102', '0833', 'district');
INSERT INTO `tb_area` VALUES (3252, 3241, '峨眉山市', '511181', '0833', 'district');
INSERT INTO `tb_area` VALUES (3253, 3140, '自贡市', '510300', '0813', 'city');
INSERT INTO `tb_area` VALUES (3254, 3253, '大安区', '510304', '0813', 'district');
INSERT INTO `tb_area` VALUES (3255, 3253, '富顺县', '510322', '0813', 'district');
INSERT INTO `tb_area` VALUES (3256, 3253, '荣县', '510321', '0813', 'district');
INSERT INTO `tb_area` VALUES (3257, 3253, '贡井区', '510303', '0813', 'district');
INSERT INTO `tb_area` VALUES (3258, 3253, '沿滩区', '510311', '0813', 'district');
INSERT INTO `tb_area` VALUES (3259, 3253, '自流井区', '510302', '0813', 'district');
INSERT INTO `tb_area` VALUES (3260, 3140, '泸州市', '510500', '0830', 'city');
INSERT INTO `tb_area` VALUES (3261, 3260, '泸县', '510521', '0830', 'district');
INSERT INTO `tb_area` VALUES (3262, 3260, '纳溪区', '510503', '0830', 'district');
INSERT INTO `tb_area` VALUES (3263, 3260, '龙马潭区', '510504', '0830', 'district');
INSERT INTO `tb_area` VALUES (3264, 3260, '叙永县', '510524', '0830', 'district');
INSERT INTO `tb_area` VALUES (3265, 3260, '古蔺县', '510525', '0830', 'district');
INSERT INTO `tb_area` VALUES (3266, 3260, '江阳区', '510502', '0830', 'district');
INSERT INTO `tb_area` VALUES (3267, 3260, '合江县', '510522', '0830', 'district');
INSERT INTO `tb_area` VALUES (3268, 3140, '宜宾市', '511500', '0831', 'city');
INSERT INTO `tb_area` VALUES (3269, 3268, '高县', '511525', '0831', 'district');
INSERT INTO `tb_area` VALUES (3270, 3268, '长宁县', '511524', '0831', 'district');
INSERT INTO `tb_area` VALUES (3271, 3268, '珙县', '511526', '0831', 'district');
INSERT INTO `tb_area` VALUES (3272, 3268, '南溪区', '511503', '0831', 'district');
INSERT INTO `tb_area` VALUES (3273, 3268, '兴文县', '511528', '0831', 'district');
INSERT INTO `tb_area` VALUES (3274, 3268, '江安县', '511523', '0831', 'district');
INSERT INTO `tb_area` VALUES (3275, 3268, '筠连县', '511527', '0831', 'district');
INSERT INTO `tb_area` VALUES (3276, 3268, '翠屏区', '511502', '0831', 'district');
INSERT INTO `tb_area` VALUES (3277, 3268, '屏山县', '511529', '0831', 'district');
INSERT INTO `tb_area` VALUES (3278, 3268, '叙州区', '511504', '0831', 'district');
INSERT INTO `tb_area` VALUES (3279, 3140, '凉山彝族自治州', '513400', '0834', 'city');
INSERT INTO `tb_area` VALUES (3280, 3279, '甘洛县', '513435', '0834', 'district');
INSERT INTO `tb_area` VALUES (3281, 3279, '木里藏族自治县', '513422', '0834', 'district');
INSERT INTO `tb_area` VALUES (3282, 3279, '普格县', '513428', '0834', 'district');
INSERT INTO `tb_area` VALUES (3283, 3279, '金阳县', '513430', '0834', 'district');
INSERT INTO `tb_area` VALUES (3284, 3279, '冕宁县', '513433', '0834', 'district');
INSERT INTO `tb_area` VALUES (3285, 3279, '会理县', '513425', '0834', 'district');
INSERT INTO `tb_area` VALUES (3286, 3279, '美姑县', '513436', '0834', 'district');
INSERT INTO `tb_area` VALUES (3287, 3279, '昭觉县', '513431', '0834', 'district');
INSERT INTO `tb_area` VALUES (3288, 3279, '盐源县', '513423', '0834', 'district');
INSERT INTO `tb_area` VALUES (3289, 3279, '越西县', '513434', '0834', 'district');
INSERT INTO `tb_area` VALUES (3290, 3279, '雷波县', '513437', '0834', 'district');
INSERT INTO `tb_area` VALUES (3291, 3279, '会东县', '513426', '0834', 'district');
INSERT INTO `tb_area` VALUES (3292, 3279, '西昌市', '513401', '0834', 'district');
INSERT INTO `tb_area` VALUES (3293, 3279, '喜德县', '513432', '0834', 'district');
INSERT INTO `tb_area` VALUES (3294, 3279, '布拖县', '513429', '0834', 'district');
INSERT INTO `tb_area` VALUES (3295, 3279, '德昌县', '513424', '0834', 'district');
INSERT INTO `tb_area` VALUES (3296, 3279, '宁南县', '513427', '0834', 'district');
INSERT INTO `tb_area` VALUES (3297, 3140, '攀枝花市', '510400', '0812', 'city');
INSERT INTO `tb_area` VALUES (3298, 3297, '西区', '510403', '0812', 'district');
INSERT INTO `tb_area` VALUES (3299, 3297, '米易县', '510421', '0812', 'district');
INSERT INTO `tb_area` VALUES (3300, 3297, '东区', '510402', '0812', 'district');
INSERT INTO `tb_area` VALUES (3301, 3297, '仁和区', '510411', '0812', 'district');
INSERT INTO `tb_area` VALUES (3302, 3297, '盐边县', '510422', '0812', 'district');
INSERT INTO `tb_area` VALUES (3303, 3140, '阿坝藏族羌族自治州', '513200', '0837', 'city');
INSERT INTO `tb_area` VALUES (3304, 3303, '若尔盖县', '513232', '0837', 'district');
INSERT INTO `tb_area` VALUES (3305, 3303, '九寨沟县', '513225', '0837', 'district');
INSERT INTO `tb_area` VALUES (3306, 3303, '阿坝县', '513231', '0837', 'district');
INSERT INTO `tb_area` VALUES (3307, 3303, '红原县', '513233', '0837', 'district');
INSERT INTO `tb_area` VALUES (3308, 3303, '黑水县', '513228', '0837', 'district');
INSERT INTO `tb_area` VALUES (3309, 3303, '马尔康市', '513201', '0837', 'district');
INSERT INTO `tb_area` VALUES (3310, 3303, '金川县', '513226', '0837', 'district');
INSERT INTO `tb_area` VALUES (3311, 3303, '理县', '513222', '0837', 'district');
INSERT INTO `tb_area` VALUES (3312, 3303, '汶川县', '513221', '0837', 'district');
INSERT INTO `tb_area` VALUES (3313, 3303, '松潘县', '513224', '0837', 'district');
INSERT INTO `tb_area` VALUES (3314, 3303, '茂县', '513223', '0837', 'district');
INSERT INTO `tb_area` VALUES (3315, 3303, '小金县', '513227', '0837', 'district');
INSERT INTO `tb_area` VALUES (3316, 3303, '壤塘县', '513230', '0837', 'district');
INSERT INTO `tb_area` VALUES (3317, 3140, '雅安市', '511800', '0835', 'city');
INSERT INTO `tb_area` VALUES (3318, 3317, '宝兴县', '511827', '0835', 'district');
INSERT INTO `tb_area` VALUES (3319, 3317, '芦山县', '511826', '0835', 'district');
INSERT INTO `tb_area` VALUES (3320, 3317, '天全县', '511825', '0835', 'district');
INSERT INTO `tb_area` VALUES (3321, 3317, '雨城区', '511802', '0835', 'district');
INSERT INTO `tb_area` VALUES (3322, 3317, '荥经县', '511822', '0835', 'district');
INSERT INTO `tb_area` VALUES (3323, 3317, '汉源县', '511823', '0835', 'district');
INSERT INTO `tb_area` VALUES (3324, 3317, '石棉县', '511824', '0835', 'district');
INSERT INTO `tb_area` VALUES (3325, 3317, '名山区', '511803', '0835', 'district');
INSERT INTO `tb_area` VALUES (3326, 3140, '甘孜藏族自治州', '513300', '0836', 'city');
INSERT INTO `tb_area` VALUES (3327, 3326, '石渠县', '513332', '0836', 'district');
INSERT INTO `tb_area` VALUES (3328, 3326, '甘孜县', '513328', '0836', 'district');
INSERT INTO `tb_area` VALUES (3329, 3326, '德格县', '513330', '0836', 'district');
INSERT INTO `tb_area` VALUES (3330, 3326, '炉霍县', '513327', '0836', 'district');
INSERT INTO `tb_area` VALUES (3331, 3326, '新龙县', '513329', '0836', 'district');
INSERT INTO `tb_area` VALUES (3332, 3326, '白玉县', '513331', '0836', 'district');
INSERT INTO `tb_area` VALUES (3333, 3326, '道孚县', '513326', '0836', 'district');
INSERT INTO `tb_area` VALUES (3334, 3326, '康定市', '513301', '0836', 'district');
INSERT INTO `tb_area` VALUES (3335, 3326, '雅江县', '513325', '0836', 'district');
INSERT INTO `tb_area` VALUES (3336, 3326, '巴塘县', '513335', '0836', 'district');
INSERT INTO `tb_area` VALUES (3337, 3326, '理塘县', '513334', '0836', 'district');
INSERT INTO `tb_area` VALUES (3338, 3326, '乡城县', '513336', '0836', 'district');
INSERT INTO `tb_area` VALUES (3339, 3326, '九龙县', '513324', '0836', 'district');
INSERT INTO `tb_area` VALUES (3340, 3326, '稻城县', '513337', '0836', 'district');
INSERT INTO `tb_area` VALUES (3341, 3326, '得荣县', '513338', '0836', 'district');
INSERT INTO `tb_area` VALUES (3342, 3326, '丹巴县', '513323', '0836', 'district');
INSERT INTO `tb_area` VALUES (3343, 3326, '色达县', '513333', '0836', 'district');
INSERT INTO `tb_area` VALUES (3344, 3326, '泸定县', '513322', '0836', 'district');
INSERT INTO `tb_area` VALUES (3345, 0, '吉林省', '220000', '', 'province');
INSERT INTO `tb_area` VALUES (3346, 3345, '吉林市', '220200', '0432', 'city');
INSERT INTO `tb_area` VALUES (3347, 3346, '舒兰市', '220283', '0432', 'district');
INSERT INTO `tb_area` VALUES (3348, 3346, '船营区', '220204', '0432', 'district');
INSERT INTO `tb_area` VALUES (3349, 3346, '丰满区', '220211', '0432', 'district');
INSERT INTO `tb_area` VALUES (3350, 3346, '桦甸市', '220282', '0432', 'district');
INSERT INTO `tb_area` VALUES (3351, 3346, '龙潭区', '220203', '0432', 'district');
INSERT INTO `tb_area` VALUES (3352, 3346, '蛟河市', '220281', '0432', 'district');
INSERT INTO `tb_area` VALUES (3353, 3346, '昌邑区', '220202', '0432', 'district');
INSERT INTO `tb_area` VALUES (3354, 3346, '永吉县', '220221', '0432', 'district');
INSERT INTO `tb_area` VALUES (3355, 3346, '磐石市', '220284', '0432', 'district');
INSERT INTO `tb_area` VALUES (3356, 3345, '长春市', '220100', '0431', 'city');
INSERT INTO `tb_area` VALUES (3357, 3356, '德惠市', '220183', '0431', 'district');
INSERT INTO `tb_area` VALUES (3358, 3356, '榆树市', '220182', '0431', 'district');
INSERT INTO `tb_area` VALUES (3359, 3356, '双阳区', '220112', '0431', 'district');
INSERT INTO `tb_area` VALUES (3360, 3356, '农安县', '220122', '0431', 'district');
INSERT INTO `tb_area` VALUES (3361, 3356, '朝阳区', '220104', '0431', 'district');
INSERT INTO `tb_area` VALUES (3362, 3356, '绿园区', '220106', '0431', 'district');
INSERT INTO `tb_area` VALUES (3363, 3356, '宽城区', '220103', '0431', 'district');
INSERT INTO `tb_area` VALUES (3364, 3356, '南关区', '220102', '0431', 'district');
INSERT INTO `tb_area` VALUES (3365, 3356, '二道区', '220105', '0431', 'district');
INSERT INTO `tb_area` VALUES (3366, 3356, '九台区', '220113', '0431', 'district');
INSERT INTO `tb_area` VALUES (3367, 3345, '白城市', '220800', '0436', 'city');
INSERT INTO `tb_area` VALUES (3368, 3367, '洮南市', '220881', '0436', 'district');
INSERT INTO `tb_area` VALUES (3369, 3367, '大安市', '220882', '0436', 'district');
INSERT INTO `tb_area` VALUES (3370, 3367, '通榆县', '220822', '0436', 'district');
INSERT INTO `tb_area` VALUES (3371, 3367, '洮北区', '220802', '0436', 'district');
INSERT INTO `tb_area` VALUES (3372, 3367, '镇赉县', '220821', '0436', 'district');
INSERT INTO `tb_area` VALUES (3373, 3345, '松原市', '220700', '0438', 'city');
INSERT INTO `tb_area` VALUES (3374, 3373, '扶余市', '220781', '0438', 'district');
INSERT INTO `tb_area` VALUES (3375, 3373, '宁江区', '220702', '0438', 'district');
INSERT INTO `tb_area` VALUES (3376, 3373, '前郭尔罗斯蒙古族自治县', '220721', '0438', 'district');
INSERT INTO `tb_area` VALUES (3377, 3373, '乾安县', '220723', '0438', 'district');
INSERT INTO `tb_area` VALUES (3378, 3373, '长岭县', '220722', '0438', 'district');
INSERT INTO `tb_area` VALUES (3379, 3345, '辽源市', '220400', '0437', 'city');
INSERT INTO `tb_area` VALUES (3380, 3379, '龙山区', '220402', '0437', 'district');
INSERT INTO `tb_area` VALUES (3381, 3379, '西安区', '220403', '0437', 'district');
INSERT INTO `tb_area` VALUES (3382, 3379, '东辽县', '220422', '0437', 'district');
INSERT INTO `tb_area` VALUES (3383, 3379, '东丰县', '220421', '0437', 'district');
INSERT INTO `tb_area` VALUES (3384, 3345, '四平市', '220300', '0434', 'city');
INSERT INTO `tb_area` VALUES (3385, 3384, '铁东区', '220303', '0434', 'district');
INSERT INTO `tb_area` VALUES (3386, 3384, '双辽市', '220382', '0434', 'district');
INSERT INTO `tb_area` VALUES (3387, 3384, '公主岭市', '220381', '0434', 'district');
INSERT INTO `tb_area` VALUES (3388, 3384, '伊通满族自治县', '220323', '0434', 'district');
INSERT INTO `tb_area` VALUES (3389, 3384, '梨树县', '220322', '0434', 'district');
INSERT INTO `tb_area` VALUES (3390, 3384, '铁西区', '220302', '0434', 'district');
INSERT INTO `tb_area` VALUES (3391, 3345, '延边朝鲜族自治州', '222400', '1433', 'city');
INSERT INTO `tb_area` VALUES (3392, 3391, '敦化市', '222403', '1433', 'district');
INSERT INTO `tb_area` VALUES (3393, 3391, '珲春市', '222404', '1433', 'district');
INSERT INTO `tb_area` VALUES (3394, 3391, '图们市', '222402', '1433', 'district');
INSERT INTO `tb_area` VALUES (3395, 3391, '和龙市', '222406', '1433', 'district');
INSERT INTO `tb_area` VALUES (3396, 3391, '汪清县', '222424', '1433', 'district');
INSERT INTO `tb_area` VALUES (3397, 3391, '延吉市', '222401', '1433', 'district');
INSERT INTO `tb_area` VALUES (3398, 3391, '安图县', '222426', '1433', 'district');
INSERT INTO `tb_area` VALUES (3399, 3391, '龙井市', '222405', '1433', 'district');
INSERT INTO `tb_area` VALUES (3400, 3345, '白山市', '220600', '0439', 'city');
INSERT INTO `tb_area` VALUES (3401, 3400, '靖宇县', '220622', '0439', 'district');
INSERT INTO `tb_area` VALUES (3402, 3400, '江源区', '220605', '0439', 'district');
INSERT INTO `tb_area` VALUES (3403, 3400, '长白朝鲜族自治县', '220623', '0439', 'district');
INSERT INTO `tb_area` VALUES (3404, 3400, '抚松县', '220621', '0439', 'district');
INSERT INTO `tb_area` VALUES (3405, 3400, '浑江区', '220602', '0439', 'district');
INSERT INTO `tb_area` VALUES (3406, 3400, '临江市', '220681', '0439', 'district');
INSERT INTO `tb_area` VALUES (3407, 3345, '通化市', '220500', '0435', 'city');
INSERT INTO `tb_area` VALUES (3408, 3407, '二道江区', '220503', '0435', 'district');
INSERT INTO `tb_area` VALUES (3409, 3407, '东昌区', '220502', '0435', 'district');
INSERT INTO `tb_area` VALUES (3410, 3407, '通化县', '220521', '0435', 'district');
INSERT INTO `tb_area` VALUES (3411, 3407, '柳河县', '220524', '0435', 'district');
INSERT INTO `tb_area` VALUES (3412, 3407, '梅河口市', '220581', '0435', 'district');
INSERT INTO `tb_area` VALUES (3413, 3407, '辉南县', '220523', '0435', 'district');
INSERT INTO `tb_area` VALUES (3414, 3407, '集安市', '220582', '0435', 'district');
INSERT INTO `tb_area` VALUES (3415, 0, '天津市', '120000', '022', 'province');
INSERT INTO `tb_area` VALUES (3416, 3415, '天津城区', '120100', '022', 'city');
INSERT INTO `tb_area` VALUES (3417, 3416, '宝坻区', '120115', '022', 'district');
INSERT INTO `tb_area` VALUES (3418, 3416, '和平区', '120101', '022', 'district');
INSERT INTO `tb_area` VALUES (3419, 3416, '河东区', '120102', '022', 'district');
INSERT INTO `tb_area` VALUES (3420, 3416, '东丽区', '120110', '022', 'district');
INSERT INTO `tb_area` VALUES (3421, 3416, '河北区', '120105', '022', 'district');
INSERT INTO `tb_area` VALUES (3422, 3416, '河西区', '120103', '022', 'district');
INSERT INTO `tb_area` VALUES (3423, 3416, '津南区', '120112', '022', 'district');
INSERT INTO `tb_area` VALUES (3424, 3416, '静海区', '120118', '022', 'district');
INSERT INTO `tb_area` VALUES (3425, 3416, '滨海新区', '120116', '022', 'district');
INSERT INTO `tb_area` VALUES (3426, 3416, '蓟州区', '120119', '022', 'district');
INSERT INTO `tb_area` VALUES (3427, 3416, '武清区', '120114', '022', 'district');
INSERT INTO `tb_area` VALUES (3428, 3416, '南开区', '120104', '022', 'district');
INSERT INTO `tb_area` VALUES (3429, 3416, '西青区', '120111', '022', 'district');
INSERT INTO `tb_area` VALUES (3430, 3416, '宁河区', '120117', '022', 'district');
INSERT INTO `tb_area` VALUES (3431, 3416, '北辰区', '120113', '022', 'district');
INSERT INTO `tb_area` VALUES (3432, 3416, '红桥区', '120106', '022', 'district');
INSERT INTO `tb_area` VALUES (3433, 0, '云南省', '530000', '', 'province');
INSERT INTO `tb_area` VALUES (3434, 3433, '昭通市', '530600', '0870', 'city');
INSERT INTO `tb_area` VALUES (3435, 3434, '绥江县', '530626', '0870', 'district');
INSERT INTO `tb_area` VALUES (3436, 3434, '水富市', '530681', '0870', 'district');
INSERT INTO `tb_area` VALUES (3437, 3434, '永善县', '530625', '0870', 'district');
INSERT INTO `tb_area` VALUES (3438, 3434, '大关县', '530624', '0870', 'district');
INSERT INTO `tb_area` VALUES (3439, 3434, '威信县', '530629', '0870', 'district');
INSERT INTO `tb_area` VALUES (3440, 3434, '巧家县', '530622', '0870', 'district');
INSERT INTO `tb_area` VALUES (3441, 3434, '镇雄县', '530627', '0870', 'district');
INSERT INTO `tb_area` VALUES (3442, 3434, '彝良县', '530628', '0870', 'district');
INSERT INTO `tb_area` VALUES (3443, 3434, '昭阳区', '530602', '0870', 'district');
INSERT INTO `tb_area` VALUES (3444, 3434, '鲁甸县', '530621', '0870', 'district');
INSERT INTO `tb_area` VALUES (3445, 3434, '盐津县', '530623', '0870', 'district');
INSERT INTO `tb_area` VALUES (3446, 3433, '曲靖市', '530300', '0874', 'city');
INSERT INTO `tb_area` VALUES (3447, 3446, '会泽县', '530326', '0874', 'district');
INSERT INTO `tb_area` VALUES (3448, 3446, '沾益区', '530303', '0874', 'district');
INSERT INTO `tb_area` VALUES (3449, 3446, '马龙区', '530304', '0874', 'district');
INSERT INTO `tb_area` VALUES (3450, 3446, '麒麟区', '530302', '0874', 'district');
INSERT INTO `tb_area` VALUES (3451, 3446, '罗平县', '530324', '0874', 'district');
INSERT INTO `tb_area` VALUES (3452, 3446, '陆良县', '530322', '0874', 'district');
INSERT INTO `tb_area` VALUES (3453, 3446, '师宗县', '530323', '0874', 'district');
INSERT INTO `tb_area` VALUES (3454, 3446, '宣威市', '530381', '0874', 'district');
INSERT INTO `tb_area` VALUES (3455, 3446, '富源县', '530325', '0874', 'district');
INSERT INTO `tb_area` VALUES (3456, 3433, '红河哈尼族彝族自治州', '532500', '0873', 'city');
INSERT INTO `tb_area` VALUES (3457, 3456, '泸西县', '532527', '0873', 'district');
INSERT INTO `tb_area` VALUES (3458, 3456, '弥勒市', '532504', '0873', 'district');
INSERT INTO `tb_area` VALUES (3459, 3456, '建水县', '532524', '0873', 'district');
INSERT INTO `tb_area` VALUES (3460, 3456, '石屏县', '532525', '0873', 'district');
INSERT INTO `tb_area` VALUES (3461, 3456, '开远市', '532502', '0873', 'district');
INSERT INTO `tb_area` VALUES (3462, 3456, '个旧市', '532501', '0873', 'district');
INSERT INTO `tb_area` VALUES (3463, 3456, '蒙自市', '532503', '0873', 'district');
INSERT INTO `tb_area` VALUES (3464, 3456, '元阳县', '532528', '0873', 'district');
INSERT INTO `tb_area` VALUES (3465, 3456, '红河县', '532529', '0873', 'district');
INSERT INTO `tb_area` VALUES (3466, 3456, '屏边苗族自治县', '532523', '0873', 'district');
INSERT INTO `tb_area` VALUES (3467, 3456, '绿春县', '532531', '0873', 'district');
INSERT INTO `tb_area` VALUES (3468, 3456, '金平苗族瑶族傣族自治县', '532530', '0873', 'district');
INSERT INTO `tb_area` VALUES (3469, 3456, '河口瑶族自治县', '532532', '0873', 'district');
INSERT INTO `tb_area` VALUES (3470, 3433, '怒江傈僳族自治州', '533300', '0886', 'city');
INSERT INTO `tb_area` VALUES (3471, 3470, '贡山独龙族怒族自治县', '533324', '0886', 'district');
INSERT INTO `tb_area` VALUES (3472, 3470, '福贡县', '533323', '0886', 'district');
INSERT INTO `tb_area` VALUES (3473, 3470, '兰坪白族普米族自治县', '533325', '0886', 'district');
INSERT INTO `tb_area` VALUES (3474, 3470, '泸水市', '533301', '0886', 'district');
INSERT INTO `tb_area` VALUES (3475, 3433, '西双版纳傣族自治州', '532800', '0691', 'city');
INSERT INTO `tb_area` VALUES (3476, 3475, '景洪市', '532801', '0691', 'district');
INSERT INTO `tb_area` VALUES (3477, 3475, '勐腊县', '532823', '0691', 'district');
INSERT INTO `tb_area` VALUES (3478, 3475, '勐海县', '532822', '0691', 'district');
INSERT INTO `tb_area` VALUES (3479, 3433, '玉溪市', '530400', '0877', 'city');
INSERT INTO `tb_area` VALUES (3480, 3479, '易门县', '530425', '0877', 'district');
INSERT INTO `tb_area` VALUES (3481, 3479, '澄江县', '530422', '0877', 'district');
INSERT INTO `tb_area` VALUES (3482, 3479, '红塔区', '530402', '0877', 'district');
INSERT INTO `tb_area` VALUES (3483, 3479, '华宁县', '530424', '0877', 'district');
INSERT INTO `tb_area` VALUES (3484, 3479, '峨山彝族自治县', '530426', '0877', 'district');
INSERT INTO `tb_area` VALUES (3485, 3479, '江川区', '530403', '0877', 'district');
INSERT INTO `tb_area` VALUES (3486, 3479, '新平彝族傣族自治县', '530427', '0877', 'district');
INSERT INTO `tb_area` VALUES (3487, 3479, '通海县', '530423', '0877', 'district');
INSERT INTO `tb_area` VALUES (3488, 3479, '元江哈尼族彝族傣族自治县', '530428', '0877', 'district');
INSERT INTO `tb_area` VALUES (3489, 3433, '大理白族自治州', '532900', '0872', 'city');
INSERT INTO `tb_area` VALUES (3490, 3489, '鹤庆县', '532932', '0872', 'district');
INSERT INTO `tb_area` VALUES (3491, 3489, '剑川县', '532931', '0872', 'district');
INSERT INTO `tb_area` VALUES (3492, 3489, '洱源县', '532930', '0872', 'district');
INSERT INTO `tb_area` VALUES (3493, 3489, '云龙县', '532929', '0872', 'district');
INSERT INTO `tb_area` VALUES (3494, 3489, '宾川县', '532924', '0872', 'district');
INSERT INTO `tb_area` VALUES (3495, 3489, '大理市', '532901', '0872', 'district');
INSERT INTO `tb_area` VALUES (3496, 3489, '漾濞彝族自治县', '532922', '0872', 'district');
INSERT INTO `tb_area` VALUES (3497, 3489, '祥云县', '532923', '0872', 'district');
INSERT INTO `tb_area` VALUES (3498, 3489, '永平县', '532928', '0872', 'district');
INSERT INTO `tb_area` VALUES (3499, 3489, '巍山彝族回族自治县', '532927', '0872', 'district');
INSERT INTO `tb_area` VALUES (3500, 3489, '弥渡县', '532925', '0872', 'district');
INSERT INTO `tb_area` VALUES (3501, 3489, '南涧彝族自治县', '532926', '0872', 'district');
INSERT INTO `tb_area` VALUES (3502, 3433, '丽江市', '530700', '0888', 'city');
INSERT INTO `tb_area` VALUES (3503, 3502, '玉龙纳西族自治县', '530721', '0888', 'district');
INSERT INTO `tb_area` VALUES (3504, 3502, '宁蒗彝族自治县', '530724', '0888', 'district');
INSERT INTO `tb_area` VALUES (3505, 3502, '古城区', '530702', '0888', 'district');
INSERT INTO `tb_area` VALUES (3506, 3502, '永胜县', '530722', '0888', 'district');
INSERT INTO `tb_area` VALUES (3507, 3502, '华坪县', '530723', '0888', 'district');
INSERT INTO `tb_area` VALUES (3508, 3433, '迪庆藏族自治州', '533400', '0887', 'city');
INSERT INTO `tb_area` VALUES (3509, 3508, '德钦县', '533422', '0887', 'district');
INSERT INTO `tb_area` VALUES (3510, 3508, '香格里拉市', '533401', '0887', 'district');
INSERT INTO `tb_area` VALUES (3511, 3508, '维西傈僳族自治县', '533423', '0887', 'district');
INSERT INTO `tb_area` VALUES (3512, 3433, '文山壮族苗族自治州', '532600', '0876', 'city');
INSERT INTO `tb_area` VALUES (3513, 3512, '丘北县', '532626', '0876', 'district');
INSERT INTO `tb_area` VALUES (3514, 3512, '广南县', '532627', '0876', 'district');
INSERT INTO `tb_area` VALUES (3515, 3512, '砚山县', '532622', '0876', 'district');
INSERT INTO `tb_area` VALUES (3516, 3512, '西畴县', '532623', '0876', 'district');
INSERT INTO `tb_area` VALUES (3517, 3512, '文山市', '532601', '0876', 'district');
INSERT INTO `tb_area` VALUES (3518, 3512, '麻栗坡县', '532624', '0876', 'district');
INSERT INTO `tb_area` VALUES (3519, 3512, '马关县', '532625', '0876', 'district');
INSERT INTO `tb_area` VALUES (3520, 3512, '富宁县', '532628', '0876', 'district');
INSERT INTO `tb_area` VALUES (3521, 3433, '保山市', '530500', '0875', 'city');
INSERT INTO `tb_area` VALUES (3522, 3521, '腾冲市', '530581', '0875', 'district');
INSERT INTO `tb_area` VALUES (3523, 3521, '隆阳区', '530502', '0875', 'district');
INSERT INTO `tb_area` VALUES (3524, 3521, '昌宁县', '530524', '0875', 'district');
INSERT INTO `tb_area` VALUES (3525, 3521, '施甸县', '530521', '0875', 'district');
INSERT INTO `tb_area` VALUES (3526, 3521, '龙陵县', '530523', '0875', 'district');
INSERT INTO `tb_area` VALUES (3527, 3433, '普洱市', '530800', '0879', 'city');
INSERT INTO `tb_area` VALUES (3528, 3527, '景东彝族自治县', '530823', '0879', 'district');
INSERT INTO `tb_area` VALUES (3529, 3527, '镇沅彝族哈尼族拉祜族自治县', '530825', '0879', 'district');
INSERT INTO `tb_area` VALUES (3530, 3527, '墨江哈尼族自治县', '530822', '0879', 'district');
INSERT INTO `tb_area` VALUES (3531, 3527, '景谷傣族彝族自治县', '530824', '0879', 'district');
INSERT INTO `tb_area` VALUES (3532, 3527, '宁洱哈尼族彝族自治县', '530821', '0879', 'district');
INSERT INTO `tb_area` VALUES (3533, 3527, '澜沧拉祜族自治县', '530828', '0879', 'district');
INSERT INTO `tb_area` VALUES (3534, 3527, '思茅区', '530802', '0879', 'district');
INSERT INTO `tb_area` VALUES (3535, 3527, '西盟佤族自治县', '530829', '0879', 'district');
INSERT INTO `tb_area` VALUES (3536, 3527, '孟连傣族拉祜族佤族自治县', '530827', '0879', 'district');
INSERT INTO `tb_area` VALUES (3537, 3527, '江城哈尼族彝族自治县', '530826', '0879', 'district');
INSERT INTO `tb_area` VALUES (3538, 3433, '昆明市', '530100', '0871', 'city');
INSERT INTO `tb_area` VALUES (3539, 3538, '东川区', '530113', '0871', 'district');
INSERT INTO `tb_area` VALUES (3540, 3538, '寻甸回族彝族自治县', '530129', '0871', 'district');
INSERT INTO `tb_area` VALUES (3541, 3538, '五华区', '530102', '0871', 'district');
INSERT INTO `tb_area` VALUES (3542, 3538, '石林彝族自治县', '530126', '0871', 'district');
INSERT INTO `tb_area` VALUES (3543, 3538, '西山区', '530112', '0871', 'district');
INSERT INTO `tb_area` VALUES (3544, 3538, '呈贡区', '530114', '0871', 'district');
INSERT INTO `tb_area` VALUES (3545, 3538, '宜良县', '530125', '0871', 'district');
INSERT INTO `tb_area` VALUES (3546, 3538, '晋宁区', '530115', '0871', 'district');
INSERT INTO `tb_area` VALUES (3547, 3538, '安宁市', '530181', '0871', 'district');
INSERT INTO `tb_area` VALUES (3548, 3538, '富民县', '530124', '0871', 'district');
INSERT INTO `tb_area` VALUES (3549, 3538, '禄劝彝族苗族自治县', '530128', '0871', 'district');
INSERT INTO `tb_area` VALUES (3550, 3538, '官渡区', '530111', '0871', 'district');
INSERT INTO `tb_area` VALUES (3551, 3538, '盘龙区', '530103', '0871', 'district');
INSERT INTO `tb_area` VALUES (3552, 3538, '嵩明县', '530127', '0871', 'district');
INSERT INTO `tb_area` VALUES (3553, 3433, '楚雄彝族自治州', '532300', '0878', 'city');
INSERT INTO `tb_area` VALUES (3554, 3553, '大姚县', '532326', '0878', 'district');
INSERT INTO `tb_area` VALUES (3555, 3553, '元谋县', '532328', '0878', 'district');
INSERT INTO `tb_area` VALUES (3556, 3553, '姚安县', '532325', '0878', 'district');
INSERT INTO `tb_area` VALUES (3557, 3553, '牟定县', '532323', '0878', 'district');
INSERT INTO `tb_area` VALUES (3558, 3553, '禄丰县', '532331', '0878', 'district');
INSERT INTO `tb_area` VALUES (3559, 3553, '南华县', '532324', '0878', 'district');
INSERT INTO `tb_area` VALUES (3560, 3553, '楚雄市', '532301', '0878', 'district');
INSERT INTO `tb_area` VALUES (3561, 3553, '双柏县', '532322', '0878', 'district');
INSERT INTO `tb_area` VALUES (3562, 3553, '武定县', '532329', '0878', 'district');
INSERT INTO `tb_area` VALUES (3563, 3553, '永仁县', '532327', '0878', 'district');
INSERT INTO `tb_area` VALUES (3564, 3433, '临沧市', '530900', '0883', 'city');
INSERT INTO `tb_area` VALUES (3565, 3564, '凤庆县', '530921', '0883', 'district');
INSERT INTO `tb_area` VALUES (3566, 3564, '云县', '530922', '0883', 'district');
INSERT INTO `tb_area` VALUES (3567, 3564, '永德县', '530923', '0883', 'district');
INSERT INTO `tb_area` VALUES (3568, 3564, '临翔区', '530902', '0883', 'district');
INSERT INTO `tb_area` VALUES (3569, 3564, '镇康县', '530924', '0883', 'district');
INSERT INTO `tb_area` VALUES (3570, 3564, '耿马傣族佤族自治县', '530926', '0883', 'district');
INSERT INTO `tb_area` VALUES (3571, 3564, '双江拉祜族佤族布朗族傣族自治县', '530925', '0883', 'district');
INSERT INTO `tb_area` VALUES (3572, 3564, '沧源佤族自治县', '530927', '0883', 'district');
INSERT INTO `tb_area` VALUES (3573, 3433, '德宏傣族景颇族自治州', '533100', '0692', 'city');
INSERT INTO `tb_area` VALUES (3574, 3573, '盈江县', '533123', '0692', 'district');
INSERT INTO `tb_area` VALUES (3575, 3573, '梁河县', '533122', '0692', 'district');
INSERT INTO `tb_area` VALUES (3576, 3573, '陇川县', '533124', '0692', 'district');
INSERT INTO `tb_area` VALUES (3577, 3573, '芒市', '533103', '0692', 'district');
INSERT INTO `tb_area` VALUES (3578, 3573, '瑞丽市', '533102', '0692', 'district');
INSERT INTO `tb_area` VALUES (3579, 0, '北京市', '110000', '010', 'province');
INSERT INTO `tb_area` VALUES (3580, 3579, '北京城区', '110100', '010', 'city');
INSERT INTO `tb_area` VALUES (3581, 3580, '怀柔区', '110116', '010', 'district');
INSERT INTO `tb_area` VALUES (3582, 3580, '密云区', '110118', '010', 'district');
INSERT INTO `tb_area` VALUES (3583, 3580, '延庆区', '110119', '010', 'district');
INSERT INTO `tb_area` VALUES (3584, 3580, '丰台区', '110106', '010', 'district');
INSERT INTO `tb_area` VALUES (3585, 3580, '门头沟区', '110109', '010', 'district');
INSERT INTO `tb_area` VALUES (3586, 3580, '顺义区', '110113', '010', 'district');
INSERT INTO `tb_area` VALUES (3587, 3580, '朝阳区', '110105', '010', 'district');
INSERT INTO `tb_area` VALUES (3588, 3580, '石景山区', '110107', '010', 'district');
INSERT INTO `tb_area` VALUES (3589, 3580, '平谷区', '110117', '010', 'district');
INSERT INTO `tb_area` VALUES (3590, 3580, '大兴区', '110115', '010', 'district');
INSERT INTO `tb_area` VALUES (3591, 3580, '通州区', '110112', '010', 'district');
INSERT INTO `tb_area` VALUES (3592, 3580, '昌平区', '110114', '010', 'district');
INSERT INTO `tb_area` VALUES (3593, 3580, '海淀区', '110108', '010', 'district');
INSERT INTO `tb_area` VALUES (3594, 3580, '西城区', '110102', '010', 'district');
INSERT INTO `tb_area` VALUES (3595, 3580, '东城区', '110101', '010', 'district');
INSERT INTO `tb_area` VALUES (3596, 3580, '房山区', '110111', '010', 'district');
INSERT INTO `tb_area` VALUES (3597, 0, '山西省', '140000', '', 'province');
INSERT INTO `tb_area` VALUES (3598, 3597, '阳泉市', '140300', '0353', 'city');
INSERT INTO `tb_area` VALUES (3599, 3598, '平定县', '140321', '0353', 'district');
INSERT INTO `tb_area` VALUES (3600, 3598, '矿区', '140303', '0353', 'district');
INSERT INTO `tb_area` VALUES (3601, 3598, '郊区', '140311', '0353', 'district');
INSERT INTO `tb_area` VALUES (3602, 3598, '城区', '140302', '0353', 'district');
INSERT INTO `tb_area` VALUES (3603, 3598, '盂县', '140322', '0353', 'district');
INSERT INTO `tb_area` VALUES (3604, 3597, '太原市', '140100', '0351', 'city');
INSERT INTO `tb_area` VALUES (3605, 3604, '娄烦县', '140123', '0351', 'district');
INSERT INTO `tb_area` VALUES (3606, 3604, '晋源区', '140110', '0351', 'district');
INSERT INTO `tb_area` VALUES (3607, 3604, '尖草坪区', '140108', '0351', 'district');
INSERT INTO `tb_area` VALUES (3608, 3604, '万柏林区', '140109', '0351', 'district');
INSERT INTO `tb_area` VALUES (3609, 3604, '杏花岭区', '140107', '0351', 'district');
INSERT INTO `tb_area` VALUES (3610, 3604, '小店区', '140105', '0351', 'district');
INSERT INTO `tb_area` VALUES (3611, 3604, '阳曲县', '140122', '0351', 'district');
INSERT INTO `tb_area` VALUES (3612, 3604, '迎泽区', '140106', '0351', 'district');
INSERT INTO `tb_area` VALUES (3613, 3604, '古交市', '140181', '0351', 'district');
INSERT INTO `tb_area` VALUES (3614, 3604, '清徐县', '140121', '0351', 'district');
INSERT INTO `tb_area` VALUES (3615, 3597, '临汾市', '141000', '0357', 'city');
INSERT INTO `tb_area` VALUES (3616, 3615, '汾西县', '141034', '0357', 'district');
INSERT INTO `tb_area` VALUES (3617, 3615, '大宁县', '141030', '0357', 'district');
INSERT INTO `tb_area` VALUES (3618, 3615, '隰县', '141031', '0357', 'district');
INSERT INTO `tb_area` VALUES (3619, 3615, '洪洞县', '141024', '0357', 'district');
INSERT INTO `tb_area` VALUES (3620, 3615, '安泽县', '141026', '0357', 'district');
INSERT INTO `tb_area` VALUES (3621, 3615, '古县', '141025', '0357', 'district');
INSERT INTO `tb_area` VALUES (3622, 3615, '吉县', '141028', '0357', 'district');
INSERT INTO `tb_area` VALUES (3623, 3615, '尧都区', '141002', '0357', 'district');
INSERT INTO `tb_area` VALUES (3624, 3615, '霍州市', '141082', '0357', 'district');
INSERT INTO `tb_area` VALUES (3625, 3615, '永和县', '141032', '0357', 'district');
INSERT INTO `tb_area` VALUES (3626, 3615, '翼城县', '141022', '0357', 'district');
INSERT INTO `tb_area` VALUES (3627, 3615, '浮山县', '141027', '0357', 'district');
INSERT INTO `tb_area` VALUES (3628, 3615, '侯马市', '141081', '0357', 'district');
INSERT INTO `tb_area` VALUES (3629, 3615, '曲沃县', '141021', '0357', 'district');
INSERT INTO `tb_area` VALUES (3630, 3615, '襄汾县', '141023', '0357', 'district');
INSERT INTO `tb_area` VALUES (3631, 3615, '乡宁县', '141029', '0357', 'district');
INSERT INTO `tb_area` VALUES (3632, 3615, '蒲县', '141033', '0357', 'district');
INSERT INTO `tb_area` VALUES (3633, 3597, '运城市', '140800', '0359', 'city');
INSERT INTO `tb_area` VALUES (3634, 3633, '万荣县', '140822', '0359', 'district');
INSERT INTO `tb_area` VALUES (3635, 3633, '闻喜县', '140823', '0359', 'district');
INSERT INTO `tb_area` VALUES (3636, 3633, '盐湖区', '140802', '0359', 'district');
INSERT INTO `tb_area` VALUES (3637, 3633, '永济市', '140881', '0359', 'district');
INSERT INTO `tb_area` VALUES (3638, 3633, '夏县', '140828', '0359', 'district');
INSERT INTO `tb_area` VALUES (3639, 3633, '平陆县', '140829', '0359', 'district');
INSERT INTO `tb_area` VALUES (3640, 3633, '临猗县', '140821', '0359', 'district');
INSERT INTO `tb_area` VALUES (3641, 3633, '芮城县', '140830', '0359', 'district');
INSERT INTO `tb_area` VALUES (3642, 3633, '绛县', '140826', '0359', 'district');
INSERT INTO `tb_area` VALUES (3643, 3633, '垣曲县', '140827', '0359', 'district');
INSERT INTO `tb_area` VALUES (3644, 3633, '新绛县', '140825', '0359', 'district');
INSERT INTO `tb_area` VALUES (3645, 3633, '稷山县', '140824', '0359', 'district');
INSERT INTO `tb_area` VALUES (3646, 3633, '河津市', '140882', '0359', 'district');
INSERT INTO `tb_area` VALUES (3647, 3597, '长治市', '140400', '0355', 'city');
INSERT INTO `tb_area` VALUES (3648, 3647, '黎城县', '140426', '0355', 'district');
INSERT INTO `tb_area` VALUES (3649, 3647, '屯留区', '140405', '0355', 'district');
INSERT INTO `tb_area` VALUES (3650, 3647, '潞城区', '140406', '0355', 'district');
INSERT INTO `tb_area` VALUES (3651, 3647, '壶关县', '140427', '0355', 'district');
INSERT INTO `tb_area` VALUES (3652, 3647, '上党区', '140404', '0355', 'district');
INSERT INTO `tb_area` VALUES (3653, 3647, '长子县', '140428', '0355', 'district');
INSERT INTO `tb_area` VALUES (3654, 3647, '沁源县', '140431', '0355', 'district');
INSERT INTO `tb_area` VALUES (3655, 3647, '平顺县', '140425', '0355', 'district');
INSERT INTO `tb_area` VALUES (3656, 3647, '襄垣县', '140423', '0355', 'district');
INSERT INTO `tb_area` VALUES (3657, 3647, '潞州区', '140403', '0355', 'district');
INSERT INTO `tb_area` VALUES (3658, 3647, '沁县', '140430', '0355', 'district');
INSERT INTO `tb_area` VALUES (3659, 3647, '武乡县', '140429', '0355', 'district');
INSERT INTO `tb_area` VALUES (3660, 3597, '朔州市', '140600', '0349', 'city');
INSERT INTO `tb_area` VALUES (3661, 3660, '右玉县', '140623', '0349', 'district');
INSERT INTO `tb_area` VALUES (3662, 3660, '平鲁区', '140603', '0349', 'district');
INSERT INTO `tb_area` VALUES (3663, 3660, '怀仁市', '140681', '0349', 'district');
INSERT INTO `tb_area` VALUES (3664, 3660, '应县', '140622', '0349', 'district');
INSERT INTO `tb_area` VALUES (3665, 3660, '山阴县', '140621', '0349', 'district');
INSERT INTO `tb_area` VALUES (3666, 3660, '朔城区', '140602', '0349', 'district');
INSERT INTO `tb_area` VALUES (3667, 3597, '忻州市', '140900', '0350', 'city');
INSERT INTO `tb_area` VALUES (3668, 3667, '五寨县', '140928', '0350', 'district');
INSERT INTO `tb_area` VALUES (3669, 3667, '河曲县', '140930', '0350', 'district');
INSERT INTO `tb_area` VALUES (3670, 3667, '偏关县', '140932', '0350', 'district');
INSERT INTO `tb_area` VALUES (3671, 3667, '代县', '140923', '0350', 'district');
INSERT INTO `tb_area` VALUES (3672, 3667, '原平市', '140981', '0350', 'district');
INSERT INTO `tb_area` VALUES (3673, 3667, '静乐县', '140926', '0350', 'district');
INSERT INTO `tb_area` VALUES (3674, 3667, '五台县', '140922', '0350', 'district');
INSERT INTO `tb_area` VALUES (3675, 3667, '宁武县', '140925', '0350', 'district');
INSERT INTO `tb_area` VALUES (3676, 3667, '定襄县', '140921', '0350', 'district');
INSERT INTO `tb_area` VALUES (3677, 3667, '岢岚县', '140929', '0350', 'district');
INSERT INTO `tb_area` VALUES (3678, 3667, '忻府区', '140902', '0350', 'district');
INSERT INTO `tb_area` VALUES (3679, 3667, '神池县', '140927', '0350', 'district');
INSERT INTO `tb_area` VALUES (3680, 3667, '繁峙县', '140924', '0350', 'district');
INSERT INTO `tb_area` VALUES (3681, 3667, '保德县', '140931', '0350', 'district');
INSERT INTO `tb_area` VALUES (3682, 3597, '晋城市', '140500', '0356', 'city');
INSERT INTO `tb_area` VALUES (3683, 3682, '高平市', '140581', '0356', 'district');
INSERT INTO `tb_area` VALUES (3684, 3682, '城区', '140502', '0356', 'district');
INSERT INTO `tb_area` VALUES (3685, 3682, '泽州县', '140525', '0356', 'district');
INSERT INTO `tb_area` VALUES (3686, 3682, '陵川县', '140524', '0356', 'district');
INSERT INTO `tb_area` VALUES (3687, 3682, '沁水县', '140521', '0356', 'district');
INSERT INTO `tb_area` VALUES (3688, 3682, '阳城县', '140522', '0356', 'district');
INSERT INTO `tb_area` VALUES (3689, 3597, '晋中市', '140700', '0354', 'city');
INSERT INTO `tb_area` VALUES (3690, 3689, '昔阳县', '140724', '0354', 'district');
INSERT INTO `tb_area` VALUES (3691, 3689, '和顺县', '140723', '0354', 'district');
INSERT INTO `tb_area` VALUES (3692, 3689, '平遥县', '140728', '0354', 'district');
INSERT INTO `tb_area` VALUES (3693, 3689, '太谷县', '140726', '0354', 'district');
INSERT INTO `tb_area` VALUES (3694, 3689, '榆次区', '140702', '0354', 'district');
INSERT INTO `tb_area` VALUES (3695, 3689, '寿阳县', '140725', '0354', 'district');
INSERT INTO `tb_area` VALUES (3696, 3689, '榆社县', '140721', '0354', 'district');
INSERT INTO `tb_area` VALUES (3697, 3689, '左权县', '140722', '0354', 'district');
INSERT INTO `tb_area` VALUES (3698, 3689, '介休市', '140781', '0354', 'district');
INSERT INTO `tb_area` VALUES (3699, 3689, '祁县', '140727', '0354', 'district');
INSERT INTO `tb_area` VALUES (3700, 3689, '灵石县', '140729', '0354', 'district');
INSERT INTO `tb_area` VALUES (3701, 3597, '吕梁市', '141100', '0358', 'city');
INSERT INTO `tb_area` VALUES (3702, 3701, '方山县', '141128', '0358', 'district');
INSERT INTO `tb_area` VALUES (3703, 3701, '岚县', '141127', '0358', 'district');
INSERT INTO `tb_area` VALUES (3704, 3701, '临县', '141124', '0358', 'district');
INSERT INTO `tb_area` VALUES (3705, 3701, '离石区', '141102', '0358', 'district');
INSERT INTO `tb_area` VALUES (3706, 3701, '柳林县', '141125', '0358', 'district');
INSERT INTO `tb_area` VALUES (3707, 3701, '中阳县', '141129', '0358', 'district');
INSERT INTO `tb_area` VALUES (3708, 3701, '交口县', '141130', '0358', 'district');
INSERT INTO `tb_area` VALUES (3709, 3701, '兴县', '141123', '0358', 'district');
INSERT INTO `tb_area` VALUES (3710, 3701, '石楼县', '141126', '0358', 'district');
INSERT INTO `tb_area` VALUES (3711, 3701, '交城县', '141122', '0358', 'district');
INSERT INTO `tb_area` VALUES (3712, 3701, '孝义市', '141181', '0358', 'district');
INSERT INTO `tb_area` VALUES (3713, 3701, '汾阳市', '141182', '0358', 'district');
INSERT INTO `tb_area` VALUES (3714, 3701, '文水县', '141121', '0358', 'district');
INSERT INTO `tb_area` VALUES (3715, 3597, '大同市', '140200', '0352', 'city');
INSERT INTO `tb_area` VALUES (3716, 3715, '广灵县', '140223', '0352', 'district');
INSERT INTO `tb_area` VALUES (3717, 3715, '浑源县', '140225', '0352', 'district');
INSERT INTO `tb_area` VALUES (3718, 3715, '灵丘县', '140224', '0352', 'district');
INSERT INTO `tb_area` VALUES (3719, 3715, '左云县', '140226', '0352', 'district');
INSERT INTO `tb_area` VALUES (3720, 3715, '阳高县', '140221', '0352', 'district');
INSERT INTO `tb_area` VALUES (3721, 3715, '新荣区', '140212', '0352', 'district');
INSERT INTO `tb_area` VALUES (3722, 3715, '云冈区', '140214', '0352', 'district');
INSERT INTO `tb_area` VALUES (3723, 3715, '云州区', '140215', '0352', 'district');
INSERT INTO `tb_area` VALUES (3724, 3715, '平城区', '140213', '0352', 'district');
INSERT INTO `tb_area` VALUES (3725, 3715, '天镇县', '140222', '0352', 'district');

-- ----------------------------
-- Table structure for tb_business
-- ----------------------------
DROP TABLE IF EXISTS `tb_business`;
CREATE TABLE `tb_business`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商圈名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_business
-- ----------------------------
INSERT INTO `tb_business` VALUES (1, '旅游区');
INSERT INTO `tb_business` VALUES (2, '商场');
INSERT INTO `tb_business` VALUES (3, '写字楼');
INSERT INTO `tb_business` VALUES (4, '交通枢纽');

-- ----------------------------
-- Table structure for tb_channel
-- ----------------------------
DROP TABLE IF EXISTS `tb_channel`;
CREATE TABLE `tb_channel`  (
  `channel_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '表Id',
  `channel_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货道编号',
  `sku_id` bigint(20) NULL DEFAULT 0 COMMENT '商品Id',
  `vm_id` bigint(20) NOT NULL COMMENT '售货机Id',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售货机软编号',
  `max_capacity` int(11) NOT NULL DEFAULT 0 COMMENT '货道最大容量',
  `price` int(11) NULL DEFAULT 0 COMMENT '货道商品真实售价',
  `current_capacity` int(11) NULL DEFAULT 0 COMMENT '货道当前容量',
  `last_supply_time` datetime(0) NULL DEFAULT NULL COMMENT '上次补货时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`channel_id`) USING BTREE,
  INDEX `channel_vendingmachine_Id_fk`(`vm_id`) USING BTREE,
  INDEX `tb_channel_inner_code_index`(`inner_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4733 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '售货机货道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_channel
-- ----------------------------
INSERT INTO `tb_channel` VALUES (4703, '1-1', 1, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4704, '1-2', 1, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4705, '1-3', 2, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4706, '1-4', 2, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4707, '1-5', 3, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4708, '1-6', 4, 80, '01000001', 10, 2, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4709, '2-1', 5, 80, '01000001', 10, 2, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4710, '2-2', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4711, '2-3', 8, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4712, '2-4', 9, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4713, '2-5', 2, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4714, '2-6', 4, 80, '01000001', 10, 2, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4715, '3-1', 7, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4716, '3-2', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4717, '3-3', 3, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4718, '3-4', 2, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4719, '3-5', 2, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4720, '3-6', 1, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4721, '4-1', 2, 80, '01000001', 10, 1, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4722, '4-2', 4, 80, '01000001', 10, 2, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4723, '4-3', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4724, '4-4', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4725, '4-5', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4726, '4-6', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4727, '5-1', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4728, '5-2', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4729, '5-3', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4730, '5-4', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4731, '5-5', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');
INSERT INTO `tb_channel` VALUES (4732, '5-6', 6, 80, '01000001', 10, 3, 10, NULL, '2022-05-11 12:12:40', '2022-05-11 12:14:45');

-- ----------------------------
-- Table structure for tb_job
-- ----------------------------
DROP TABLE IF EXISTS `tb_job`;
CREATE TABLE `tb_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `alert_value` int(11) NULL DEFAULT 0 COMMENT '警戒值百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自动补货任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_job
-- ----------------------------
INSERT INTO `tb_job` VALUES (1, 70);

-- ----------------------------
-- Table structure for tb_node
-- ----------------------------
DROP TABLE IF EXISTS `tb_node`;
CREATE TABLE `tb_node`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '点位名称',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '点位详细地址',
  `area_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '所在区域Id',
  `create_user_id` int(11) NOT NULL COMMENT '创建人id',
  `region_id` bigint(20) NULL DEFAULT NULL COMMENT '区域id',
  `business_id` int(11) NOT NULL COMMENT '商圈id',
  `owner_id` int(11) NOT NULL COMMENT '点位主Id',
  `owner_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点位主名称',
  `update_time` datetime(0) NOT NULL COMMENT '更改时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_node_name_uindex`(`name`) USING BTREE,
  INDEX `node_area_Id_fk`(`area_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_node
-- ----------------------------
INSERT INTO `tb_node` VALUES (1, '龙门石窟', '河南省-洛阳市-龙门石窟', '110100', 1, 1, 1, 1, '金燕龙合作商', '2022-05-06 22:29:35', '2020-09-10 09:41:02');
INSERT INTO `tb_node` VALUES (2, '洛阳白云山', '河南省-洛阳市-洛阳白云山', '110100', 1, 1, 1, 1, '金燕龙合作商', '2021-02-04 18:52:20', '2020-12-18 10:39:22');
INSERT INTO `tb_node` VALUES (3, '宽窄巷子', '四川省-成都市-宽窄巷子', '110100', 1, 2, 1, 1, '金燕龙合作商', '2021-02-04 18:52:20', '2020-12-18 11:45:28');
INSERT INTO `tb_node` VALUES (4, '锦里', '四川省-成都市-锦里', '110100', 1, 2, 1, 1, '金燕龙合作商', '2021-02-04 14:29:48', '2020-12-18 11:46:19');
INSERT INTO `tb_node` VALUES (5, '夫子庙', '江苏省-南京市-夫子庙', '110100', 1, 3, 1, 1, '金燕龙合作商', '2021-02-04 18:52:20', '2020-12-18 15:48:13');
INSERT INTO `tb_node` VALUES (6, '玄武湖', '江苏省-南京市-玄武湖', '110100', 1, 3, 1, 1, '金燕龙合作商', '2021-02-04 18:52:20', '2020-12-18 15:49:03');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `third_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方平台单号',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机器编号',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `sku_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '商品类别Id',
  `status` int(11) NULL DEFAULT NULL COMMENT '订单状态:0-创建;1-支付完成;2-出货成功;3-出货失败;4-失效',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '支付金额',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '商品金额',
  `pay_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付类型，1支付宝 2微信',
  `pay_status` int(11) NULL DEFAULT 0 COMMENT '支付状态，0-未支付;1-支付完成;2-退款中;3-退款完成',
  `bill` int(11) NULL DEFAULT 0 COMMENT '合作商账单金额',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点位地址',
  `region_id` bigint(20) NULL DEFAULT NULL COMMENT '所属区域Id',
  `region_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_id` int(11) NULL DEFAULT NULL COMMENT '所属商圈Id',
  `business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商圈名称',
  `owner_id` int(11) NULL DEFAULT NULL COMMENT '合作商Id',
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `node_id` bigint(20) NULL DEFAULT NULL COMMENT '点位Id',
  `node_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancel_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '取消原因',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Order_OrderNo_uindex`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (1524244172914139138, '01000001830103316286000', NULL, '01000001', 2, '康师傅冰红茶', 1, 0, 1, 1, NULL, 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, NULL, 1, 'oJ9WJ5MhIS-hiwuUX0GmsHDzqTyQ', 1, '龙门石窟', '', '2022-05-11 12:25:05', '2022-05-11 12:25:05');

-- ----------------------------
-- Table structure for tb_order_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_collect`;
CREATE TABLE `tb_order_collect`  (
  `id` bigint(20) NOT NULL COMMENT 'Id',
  `owner_id` int(11) NULL DEFAULT NULL COMMENT '合作商Id',
  `owner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作商名称',
  `order_total_money` bigint(20) NULL DEFAULT NULL COMMENT '日订单收入总金额(平台端总数)',
  `date` date NULL DEFAULT NULL COMMENT '发生日期',
  `total_bill` int(11) NULL DEFAULT 0 COMMENT '分成总金额',
  `node_amount` int(11) NULL DEFAULT NULL COMMENT '当日点位营收',
  `node_id` bigint(20) NULL DEFAULT NULL,
  `node_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点位',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '订单数',
  `ratio` int(11) NULL DEFAULT NULL COMMENT '分成比例',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_order_collect_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合作商订单汇总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_collect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_month_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_month_collect`;
CREATE TABLE `tb_order_month_collect`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `owner_id` int(11) NULL DEFAULT NULL COMMENT '合作商Id',
  `owner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作商名称',
  `area_id` int(11) NULL DEFAULT NULL COMMENT '区域Id',
  `order_total_money` bigint(20) NULL DEFAULT NULL COMMENT '订单总金额',
  `order_total_count` bigint(20) NULL DEFAULT NULL COMMENT '订单总数',
  `month` int(11) NULL DEFAULT NULL COMMENT '月份',
  `year` int(11) NULL DEFAULT NULL COMMENT '年份',
  `area_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_order_month_collect_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '按月统计各公司销售情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_month_collect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_partner
-- ----------------------------
DROP TABLE IF EXISTS `tb_partner`;
CREATE TABLE `tb_partner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在省',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在市',
  `county` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `contact` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `ratio` int(11) NULL DEFAULT 100 COMMENT '分成比例',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_partner_mobile_uindex`(`mobile`) USING BTREE,
  UNIQUE INDEX `tb_partner_name_uindex`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合作商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_partner
-- ----------------------------
INSERT INTO `tb_partner` VALUES (1, '金燕龙合作商', '$2a$10$xykah91CBBmrNTljPMZakOVjoiKltyzxUbsJHU1QuDPptma4NCcG6', '13800000000', '13800000000', NULL, NULL, NULL, NULL, NULL, NULL, '张三', 15, 1, '2020-09-24 15:41:25', '2020-09-24 15:59:11');

-- ----------------------------
-- Table structure for tb_policy
-- ----------------------------
DROP TABLE IF EXISTS `tb_policy`;
CREATE TABLE `tb_policy`  (
  `policy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '策略id',
  `policy_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略名称',
  `discount` int(11) NULL DEFAULT NULL COMMENT '折扣，如：80代表8折',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`policy_id`) USING BTREE,
  UNIQUE INDEX `tb_policy_policy_name_uindex`(`policy_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '策略表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_policy
-- ----------------------------
INSERT INTO `tb_policy` VALUES (1, '九折优惠', 90, '2020-09-14 10:51:05', '2021-02-01 16:25:06');
INSERT INTO `tb_policy` VALUES (2, '八折优惠', 80, '2020-12-18 14:10:39', '2020-12-18 14:10:39');
INSERT INTO `tb_policy` VALUES (3, '0.1折优惠', 1, '2020-12-24 14:45:35', '2020-12-24 14:46:09');
INSERT INTO `tb_policy` VALUES (5, '冬季折扣', 2, '2021-01-11 15:29:32', '2021-01-22 18:04:11');
INSERT INTO `tb_policy` VALUES (9, '5折', 5, '2021-02-01 16:23:10', '2021-02-04 15:20:00');

-- ----------------------------
-- Table structure for tb_region
-- ----------------------------
DROP TABLE IF EXISTS `tb_region`;
CREATE TABLE `tb_region`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_region_name_uindex`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运营区域' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_region
-- ----------------------------
INSERT INTO `tb_region` VALUES (1, '洛阳', '洛阳');
INSERT INTO `tb_region` VALUES (2, '成都', '成都');
INSERT INTO `tb_region` VALUES (3, '南京', '南京');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '1001', '管理员');
INSERT INTO `tb_role` VALUES (2, '1002', '运营员');
INSERT INTO `tb_role` VALUES (3, '1003', '维修员');

-- ----------------------------
-- Table structure for tb_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku`;
CREATE TABLE `tb_sku`  (
  `sku_id` bigint(20) NOT NULL,
  `sku_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `sku_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `price` int(11) NOT NULL DEFAULT 1 COMMENT '基础价格',
  `class_id` int(11) NOT NULL COMMENT '商品类别Id',
  `is_discount` tinyint(1) NULL DEFAULT 0 COMMENT '是否打折促销',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '净含量',
  `brand_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`sku_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_sku_name_uindex`(`sku_name`) USING BTREE,
  INDEX `sku_sku_class_ClassId_fk`(`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku
-- ----------------------------
INSERT INTO `tb_sku` VALUES (1, '可口可乐', 'http://lkd2-java.itheima.net/image/product1.png', 1, 1, 0, '550ML', '可口可乐', '2020-09-14 09:14:17', '2020-09-14 09:14:19');
INSERT INTO `tb_sku` VALUES (2, '康师傅冰红茶', 'http://lkd2-java.itheima.net/image/product2.png', 1, 1, 0, '330ML', '可口可乐', '2020-09-14 09:15:43', '2020-09-14 09:15:45');
INSERT INTO `tb_sku` VALUES (3, '统一阿萨姆奶茶', 'http://lkd2-java.itheima.net/image/product3.png', 1, 1, 0, '500ML', '可口可乐', '2020-09-16 14:41:50', '2020-09-16 14:41:50');
INSERT INTO `tb_sku` VALUES (4, '青梅绿茶', 'http://lkd2-java.itheima.net/image/product4.png', 2, 1, 0, '500ML', '可口可乐', '2020-11-20 18:27:35', '2020-11-20 18:27:35');
INSERT INTO `tb_sku` VALUES (5, '冰糖雪梨', 'http://lkd2-java.itheima.net/image/product5.png', 2, 1, 0, '500ML', '冰糖雪梨', '2020-12-18 14:03:41', '2020-12-18 14:03:41');
INSERT INTO `tb_sku` VALUES (6, '怡宝', 'http://lkd2-java.itheima.net/image/product6.png', 3, 1, 0, '500ML', '怡宝', '2020-12-18 14:04:02', '2020-12-18 14:04:02');
INSERT INTO `tb_sku` VALUES (7, '100橙汁自然纯', 'http://lkd2-java.itheima.net/image/product7.png', 1, 1, 0, '500ML', '100橙汁自然纯', '2020-12-18 14:04:26', '2020-12-18 14:04:26');
INSERT INTO `tb_sku` VALUES (8, '茉莉花茶', 'http://lkd2-java.itheima.net/image/product8.png', 1, 1, 0, '500ML', '茉莉花茶', '2020-12-18 14:04:45', '2020-12-18 14:04:45');
INSERT INTO `tb_sku` VALUES (9, '星巴克', 'http://lkd2-java.itheima.net/image/product9.png', 1, 1, 0, '500ML', '星巴克', '2020-12-18 14:05:01', '2020-12-18 14:05:01');
INSERT INTO `tb_sku` VALUES (10, '苹果', 'http://lkd2-java.itheima.net/image/头像.jpg', 1, 1, 0, '1', '苹果', '2021-01-12 11:43:22', '2021-01-12 11:43:22');
INSERT INTO `tb_sku` VALUES (11, '大窑', 'http://lkd2-java.itheima.net/image/手机.jpeg', 1, 1, 0, '1', '苹果', '2021-01-12 11:43:41', '2021-01-12 11:43:41');
INSERT INTO `tb_sku` VALUES (12, '可口可乐1', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 2, 1, 0, '330ML', '可口可乐', '2021-01-14 09:52:56', '2021-01-14 09:52:56');
INSERT INTO `tb_sku` VALUES (13, '芬达', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 2, 1, 0, '330ML', '可口可乐', '2021-01-14 09:52:56', '2021-01-14 09:52:56');
INSERT INTO `tb_sku` VALUES (14, '火腿肠', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 2, 1, 0, '200g', '双汇', '2021-01-14 09:52:56', '2021-01-14 09:52:56');
INSERT INTO `tb_sku` VALUES (15, '泡面', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 3, 1, 0, '300g', '统一', '2021-01-14 09:52:56', '2021-01-14 09:52:56');
INSERT INTO `tb_sku` VALUES (16, '百事可乐', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 3, 1, 0, '330ML', '可口可乐', '2021-01-14 15:11:55', '2021-01-14 15:11:55');
INSERT INTO `tb_sku` VALUES (17, '芬达1', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 2, 1, 0, '330ML', '可口可乐', '2021-01-14 15:11:55', '2021-01-14 15:11:55');
INSERT INTO `tb_sku` VALUES (18, '火腿肠1', 'http://lkd2-java.itheima.net/image/Coca-Cola.jpg', 2, 1, 0, '200g', '双汇', '2021-01-14 15:11:55', '2021-01-14 15:11:55');

-- ----------------------------
-- Table structure for tb_sku_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku_class`;
CREATE TABLE `tb_sku_class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '类别名称',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级id',
  PRIMARY KEY (`class_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_class_class_name_uindex`(`class_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku_class
-- ----------------------------
INSERT INTO `tb_sku_class` VALUES (1, '饮料', 0);
INSERT INTO `tb_sku_class` VALUES (2, '零食', 0);
INSERT INTO `tb_sku_class` VALUES (3, '食品', 0);
INSERT INTO `tb_sku_class` VALUES (4, '玩具', 0);

-- ----------------------------
-- Table structure for tb_status_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_status_type`;
CREATE TABLE `tb_status_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `status_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态代码',
  `descr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态描述',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `StatusType_StatusCode_uindex`(`status_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_status_type
-- ----------------------------
INSERT INTO `tb_status_type` VALUES (1, '10001', '断网');
INSERT INTO `tb_status_type` VALUES (2, '10002', '设备故障');
INSERT INTO `tb_status_type` VALUES (3, '10003', '缺货');

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task`  (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工单编号',
  `task_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工单编号',
  `task_status` int(11) NULL DEFAULT NULL COMMENT '工单状态',
  `create_type` int(11) NULL DEFAULT NULL COMMENT '创建类型 0：自动 1：手动',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '售货机编码',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '执行人id',
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行人名称',
  `region_id` bigint(20) NULL DEFAULT NULL COMMENT '所属区域Id',
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `product_type_id` int(11) NULL DEFAULT 1 COMMENT '工单类型id',
  `expect` datetime(0) NULL DEFAULT NULL COMMENT '计划完成时间',
  `assignor_id` int(11) NULL DEFAULT NULL COMMENT '指派人Id',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`task_id`) USING BTREE,
  UNIQUE INDEX `tb_task_task_code_uindex`(`task_code`) USING BTREE,
  INDEX `task_productiontype_TypeId_fk`(`product_type_id`) USING BTREE,
  INDEX `task_taskstatustype_StatusID_fk`(`task_status`) USING BTREE,
  INDEX `task_tasktype_TypeId_fk`(`create_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 429 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_collect`;
CREATE TABLE `tb_task_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finish_count` int(11) NULL DEFAULT 0 COMMENT '当日工单完成数',
  `progress_count` int(11) NULL DEFAULT 0 COMMENT '当日进行中的工单数',
  `cancel_count` int(11) NULL DEFAULT 0 COMMENT '当日取消工单数',
  `collect_date` date NULL DEFAULT NULL COMMENT '汇总的日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单按日统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_collect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task_details
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_details`;
CREATE TABLE `tb_task_details`  (
  `details_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_id` bigint(20) NULL DEFAULT NULL COMMENT '工单Id',
  `channel_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货道编号',
  `expect_capacity` int(11) NOT NULL DEFAULT 0 COMMENT '补货期望容量',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT '商品Id',
  `sku_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`details_id`) USING BTREE,
  INDEX `taskdetails_task_TaskId_fk`(`task_id`) USING BTREE,
  CONSTRAINT `taskdetails_task_TaskId_fk` FOREIGN KEY (`task_id`) REFERENCES `tb_task` (`task_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3406 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单详情，只有补货工单才有' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_details
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task_status_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_status_type`;
CREATE TABLE `tb_task_status_type`  (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`status_id`) USING BTREE,
  UNIQUE INDEX `TaskStatusType_StatusID_uindex`(`status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单任务状态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_status_type
-- ----------------------------
INSERT INTO `tb_task_status_type` VALUES (1, '待办');
INSERT INTO `tb_task_status_type` VALUES (2, '进行');
INSERT INTO `tb_task_status_type` VALUES (3, '取消');
INSERT INTO `tb_task_status_type` VALUES (4, '完成');

-- ----------------------------
-- Table structure for tb_task_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_type`;
CREATE TABLE `tb_task_type`  (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` int(11) NULL DEFAULT 1 COMMENT '工单类型。1:维修工单;2:运营工单',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_type
-- ----------------------------
INSERT INTO `tb_task_type` VALUES (1, '投放工单', 1);
INSERT INTO `tb_task_type` VALUES (2, '补货工单', 2);
INSERT INTO `tb_task_type` VALUES (3, '维修工单', 1);
INSERT INTO `tb_task_type` VALUES (4, '撤机工单', 1);

-- ----------------------------
-- Table structure for tb_undo_reason
-- ----------------------------
DROP TABLE IF EXISTS `tb_undo_reason`;
CREATE TABLE `tb_undo_reason`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `describe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原因描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单无法完成原因' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_undo_reason
-- ----------------------------
INSERT INTO `tb_undo_reason` VALUES (1, '所带商品不够/缺失');
INSERT INTO `tb_undo_reason` VALUES (2, '当日请假');
INSERT INTO `tb_undo_reason` VALUES (3, '设备损坏');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色Id',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `secret` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '私钥',
  `role_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `region_id` bigint(20) NULL DEFAULT NULL COMMENT '所属区域Id',
  `region_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '是否启用',
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_user_Id_uindex`(`id`) USING BTREE,
  UNIQUE INDEX `tb_user_mobile_uindex`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 1, 'admin', 'admin', '$2a$10$qQ1NU2aiSMPudkl9m.kvCumm0Qlyk3byrqeK44uyfPpPlDONmCmT.', '600162879276', '1001', '13800000000', 1, '第一个区域', 1, NULL);
INSERT INTO `tb_user` VALUES (2, 2, '刘备', NULL, NULL, '1600162879276lkd', '1002', '13800000001', 2, '成都', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (3, 2, '关羽', NULL, NULL, '1601027222449lkd', '1002', '13800000002', 2, '成都', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (4, 3, '张飞', NULL, NULL, '1601027222449lkd', '1003', '13800000003', 2, '成都', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (5, 3, '赵云', NULL, NULL, '1601027222449lkd', '1003', '13800000004', 2, '成都', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (6, 2, '曹操', NULL, NULL, '1608271138375lkd', '1002', '13900000001', 1, '洛阳', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (7, 2, '夏侯惇', NULL, NULL, '1608271182102lkd', '1002', '13900000002', 1, '洛阳', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (8, 3, '许褚', NULL, NULL, '1608348027839lkd', '1003', '13900000003', 1, '洛阳', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (9, 3, '张辽', NULL, NULL, '1608348311409lkd', '1003', '13900000004', 1, '洛阳', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (10, 2, '孙权', NULL, NULL, '1608348340283lkd', '1002', '13700000001', 3, '南京', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (11, 2, '周瑜', NULL, NULL, '1608348361625lkd', '1002', '13700000002', 3, '南京', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (12, 3, '吕蒙', NULL, NULL, '1608348378043lkd', '1003', '13700000003', 3, '南京', 1, 'http://lkd2-java.itheima.net/image/avatar.png');
INSERT INTO `tb_user` VALUES (13, 3, '陆逊', NULL, NULL, '1608348405049lkd', '1003', '13700000004', 3, '南京', 1, 'http://lkd2-java.itheima.net/image/avatar.png');

-- ----------------------------
-- Table structure for tb_vending_machine
-- ----------------------------
DROP TABLE IF EXISTS `tb_vending_machine`;
CREATE TABLE `tb_vending_machine`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `vm_type` int(11) NOT NULL DEFAULT 0 COMMENT '售货机类型',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '000' COMMENT '售货机软编号',
  `node_id` bigint(20) NOT NULL COMMENT '点位Id',
  `vm_status` int(11) NOT NULL DEFAULT 0 COMMENT '售货机状态，0:未投放;1-运营;3-撤机',
  `last_supply_time` datetime(0) NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次补货时间',
  `city_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '10' COMMENT '所在城市ID',
  `area_id` int(11) NULL DEFAULT 0 COMMENT '地区',
  `create_user_id` bigint(20) NOT NULL COMMENT '创建人id',
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人姓名',
  `business_id` int(11) NOT NULL COMMENT '商圈Id',
  `region_id` bigint(20) NOT NULL COMMENT '区域Id',
  `owner_id` int(11) NOT NULL COMMENT '点位主Id',
  `owner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属合作商名称',
  `client_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户端连接Id,做emq认证用',
  `longitudes` double NULL DEFAULT 0 COMMENT '经度',
  `latitude` double NULL DEFAULT 0 COMMENT '维度',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vendingmachine_VmId_uindex`(`inner_code`) USING BTREE,
  INDEX `vendingmachine_city_CityId_fk`(`city_code`) USING BTREE,
  INDEX `vendingmachine_node_Id_fk`(`node_id`) USING BTREE,
  INDEX `vendingmachine_vmtype_TypeId_fk`(`vm_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vending_machine
-- ----------------------------
INSERT INTO `tb_vending_machine` VALUES (80, 1, '01000001', 1, 0, '2000-01-01 00:00:00', '10', 0, 1, NULL, 1, 1, 1, '金燕龙合作商', '70122567fcc13e7615e7239812c20448', 0, 0, '2022-05-11 12:12:40', '2022-05-11 12:12:40');

-- ----------------------------
-- Table structure for tb_vendout_running
-- ----------------------------
DROP TABLE IF EXISTS `tb_vendout_running`;
CREATE TABLE `tb_vendout_running`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `order_no` varchar(38) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售货机编号',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `sku_id` bigint(20) NULL DEFAULT 0 COMMENT '商品编号',
  `sku_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `price` int(11) NULL DEFAULT 0 COMMENT '价格',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出货流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vendout_running
-- ----------------------------

-- ----------------------------
-- Table structure for tb_vm_cfg_version
-- ----------------------------
DROP TABLE IF EXISTS `tb_vm_cfg_version`;
CREATE TABLE `tb_vm_cfg_version`  (
  `version_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `vm_id` bigint(20) NULL DEFAULT NULL COMMENT '售货机Id',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售货机编号',
  `channel_cfg_version` bigint(20) NOT NULL DEFAULT 1 COMMENT '货道配置版本',
  `basecfg_version` bigint(20) NOT NULL DEFAULT 1 COMMENT '基础配置版本',
  `sku_cfg_version` bigint(20) NOT NULL DEFAULT 1 COMMENT '商品配置版本',
  `price_cfg_version` bigint(20) NOT NULL DEFAULT 1 COMMENT '价格配置版本',
  `supply_version` bigint(20) NOT NULL DEFAULT 0 COMMENT '补货版本',
  PRIMARY KEY (`version_id`) USING BTREE,
  UNIQUE INDEX `vmcfgversion_InnerCode_uindex`(`inner_code`) USING BTREE,
  INDEX `vmcfgversion_vendingmachine_Id_fk`(`vm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '售货机配置版本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vm_cfg_version
-- ----------------------------

-- ----------------------------
-- Table structure for tb_vm_policy
-- ----------------------------
DROP TABLE IF EXISTS `tb_vm_policy`;
CREATE TABLE `tb_vm_policy`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `vm_id` bigint(20) NOT NULL COMMENT '售货机id',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售货机编号',
  `policy_id` int(11) NOT NULL COMMENT '策略id',
  `policy_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略名称',
  `discount` int(11) NOT NULL DEFAULT 100 COMMENT '折扣',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机器和策略关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vm_policy
-- ----------------------------

-- ----------------------------
-- Table structure for tb_vm_status_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_vm_status_info`;
CREATE TABLE `tb_vm_status_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '售货机编号',
  `status_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '售货机状态码',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `utime` datetime(0) NULL DEFAULT NULL COMMENT '发生时间',
  `operater_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维修员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vm_status_info
-- ----------------------------
INSERT INTO `tb_vm_status_info` VALUES (1, '037900004', '10001', 0, '2019-10-21 14:11:17', '维修员');

-- ----------------------------
-- Table structure for tb_vm_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_vm_type`;
CREATE TABLE `tb_vm_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `vm_row` int(11) NOT NULL DEFAULT 1 COMMENT '行数',
  `vm_col` int(11) NOT NULL DEFAULT 1 COMMENT '列数',
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名',
  `channel_max_capacity` int(11) NULL DEFAULT 0 COMMENT '货道最大容量',
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE,
  UNIQUE INDEX `tb_vm_type_name_uindex`(`name`) USING BTREE,
  UNIQUE INDEX `tb_vm_type_model_uindex`(`model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '售货机类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vm_type
-- ----------------------------
INSERT INTO `tb_vm_type` VALUES (1, 5, 6, '饮料机', 10, 'AC204', 'http://lkd2-java.itheima.net/image/售货机.jpg');
INSERT INTO `tb_vm_type` VALUES (2, 2, 2, '综合机', 10, 'ZH01', 'http://lkd2-java.itheima.net/image/售货机.jpg');
INSERT INTO `tb_vm_type` VALUES (3, 2, 5, '零食机', 5, 'CZ-10011', 'http://lkd2-java.itheima.net/image/售货机.jpg');
INSERT INTO `tb_vm_type` VALUES (4, 4, 4, '果蔬机', 10, 'GS001', 'http://lkd2-java.itheima.net/image/huodao.jpeg');

SET FOREIGN_KEY_CHECKS = 1;
