Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC636166D0A
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Feb 2020 03:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKHscbXu7dchmWjQCJv43p1eO6Wl5bRVGjJnMBQIU1A=; b=DdX6HYm+EIim+/
	BhksKj1YnU3fgXyjk1L4KmGLg7aXd5j+lSb+d8dP8Tx4hWlaoxz8XvtfU19qH/+e96y5/Ss9/AmhL
	RyvvS3LWM6adjhRdcV5bJkr+iCFhgx18BsZV9e2s3NqUXGv3ChHhUmvKo94jLQ6xXR1lN5vTXOMGa
	fnbe4UP8I2UjlV/NCAHXKFyVdFJWVNqAKOjzWTlfSfbCGwc7tZg/G0s2VPU8AJz+ph1J4XhXbpprO
	zcV8hRX8H5vV4A7aN5Dhye+D8bueyu7FJ5yl2k8jiMd7+eXcPfE17VOuTN/Oqq8c1Zv4DolNnjjBM
	9yMhh0r9/RWTs/rkmXAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yFS-0003VV-3L; Fri, 21 Feb 2020 02:41:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yEm-00027Q-AK; Fri, 21 Feb 2020 02:40:23 +0000
X-UUID: 21f3bc3ff3d74212b993b746a849c067-20200220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=NGRWbUEybKuJdghF57xuKN/afOcKN7GZqEttpP7MgxI=; 
 b=FKUJT0YZnaed5IBunK7dSNipKIQp2YsErR51ByxazCQf0rT0jaU7ermp55MMzq5GlR6GTNMkgZKcKssK5Y+FUS4eM20bMilUXssAyVCmG/5fOaX069CBXte9EHspuiUrHG/jxb9DxOBAZME65LcCnsl2bjC8+WxBRDZO8oWqxWE=;
X-UUID: 21f3bc3ff3d74212b993b746a849c067-20200220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1012677004; Thu, 20 Feb 2020 18:40:16 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 18:40:08 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 10:38:19 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 21 Feb 2020 10:38:51 +0800
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND v2 4/4] arm64: dts: mt6359: add PMIC MT6359 related nodes
Date: Fri, 21 Feb 2020 10:39:06 +0800
Message-ID: <1582252746-8149-5-git-send-email-Wen.Su@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
References: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_184020_402628_88EAB555 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark
 Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, wen.su@mediatek.com,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Wen Su" <wen.su@mediatek.com>

add PMIC MT6359 related nodes which is for MT6779 platform

Signed-off-by: Wen Su <wen.su@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt6359.dtsi | 306 +++++++++++++++++++++++++++++++
 1 file changed, 306 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6359.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/mt6359.dtsi b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
new file mode 100644
index 0000000..4cafe1f
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
@@ -0,0 +1,306 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+&pwrap {
+	pmic: pmic {
+		mt6359regulator: mt6359regulator {
+			compatible = "mediatek,mt6359-regulator";
+			mt6359_vs1_buck_reg: buck_vs1 {
+				regulator-name = "vs1";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <0>;
+				regulator-always-on;
+			};
+			mt6359_vgpu11_buck_reg: buck_vgpu11 {
+				regulator-name = "vgpu11";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <5000>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1 2>;
+			};
+			mt6359_vmodem_buck_reg: buck_vmodem {
+				regulator-name = "vmodem";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-ramp-delay = <10760>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+			};
+			mt6359_vpu_buck_reg: buck_vpu {
+				regulator-name = "vpu";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <5000>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-allowed-modes = <0 1 2>;
+			};
+			mt6359_vcore_buck_reg: buck_vcore {
+				regulator-name = "vcore";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <5000>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1 2>;
+			};
+			mt6359_vs2_buck_reg: buck_vs2 {
+				regulator-name = "vs2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1600000>;
+				regulator-enable-ramp-delay = <0>;
+				regulator-always-on;
+			};
+			mt6359_vpa_buck_reg: buck_vpa {
+				regulator-name = "vpa";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3650000>;
+				regulator-enable-ramp-delay = <300>;
+			};
+			mt6359_vproc2_buck_reg: buck_vproc2 {
+				regulator-name = "vproc2";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <7500>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1 2>;
+			};
+			mt6359_vproc1_buck_reg: buck_vproc1 {
+				regulator-name = "vproc1";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <7500>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1 2>;
+			};
+			mt6359_vcore_sshub_buck_reg: buck_vcore_sshub {
+				regulator-name = "vcore_sshub";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+			};
+			mt6359_vaud18_ldo_reg: ldo_vaud18 {
+				regulator-name = "vaud18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vsim1_ldo_reg: ldo_vsim1 {
+				regulator-name = "vsim1";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <3100000>;
+				regulator-enable-ramp-delay = <480>;
+			};
+			mt6359_vibr_ldo_reg: ldo_vibr {
+				regulator-name = "vibr";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vrf12_ldo_reg: ldo_vrf12 {
+				regulator-name = "vrf12";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-enable-ramp-delay = <120>;
+			};
+			mt6359_vusb_ldo_reg: ldo_vusb {
+				regulator-name = "vusb";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vsram_proc2_ldo_reg: ldo_vsram_proc2 {
+				regulator-name = "vsram_proc2";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <7500>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vio18_ldo_reg: ldo_vio18 {
+				regulator-name = "vio18";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <1900000>;
+				regulator-enable-ramp-delay = <960>;
+				regulator-always-on;
+			};
+			mt6359_vcamio_ldo_reg: ldo_vcamio {
+				regulator-name = "vcamio";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <1900000>;
+				regulator-enable-ramp-delay = <1920>;
+			};
+			mt6359_vcn18_ldo_reg: ldo_vcn18 {
+				regulator-name = "vcn18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vfe28_ldo_reg: ldo_vfe28 {
+				regulator-name = "vfe28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <120>;
+				regulator-always-on;
+			};
+			mt6359_vcn13_ldo_reg: ldo_vcn13 {
+				regulator-name = "vcn13";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vcn33_1_bt_ldo_reg: ldo_vcn33_1_bt {
+				regulator-name = "vcn33_1_bt";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <3500000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vcn33_1_wifi_ldo_reg: ldo_vcn33_1_wifi {
+				regulator-name = "vcn33_1_wifi";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <3500000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vaux18_ldo_reg: ldo_vaux18 {
+				regulator-name = "vaux18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vsram_others_ldo_reg: ldo_vsram_others {
+				regulator-name = "vsram_others";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <5000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vefuse_ldo_reg: ldo_vefuse {
+				regulator-name = "vefuse";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <2000000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vxo22_ldo_reg: ldo_vxo22 {
+				regulator-name = "vxo22";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <120>;
+				regulator-always-on;
+			};
+			mt6359_vrfck_ldo_reg: ldo_vrfck {
+				regulator-name = "vrfck";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1700000>;
+				regulator-enable-ramp-delay = <480>;
+			};
+			mt6359_vbif28_ldo_reg: ldo_vbif28 {
+				regulator-name = "vbif28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vio28_ldo_reg: ldo_vio28 {
+				regulator-name = "vio28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vemc_ldo_reg: ldo_vemc {
+				regulator-name = "vemc";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vcn33_2_bt_ldo_reg: ldo_vcn33_2_bt {
+				regulator-name = "vcn33_2_bt";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <3500000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vcn33_2_wifi_ldo_reg: ldo_vcn33_2_wifi {
+				regulator-name = "vcn33_2_wifi";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <3500000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_va12_ldo_reg: ldo_va12 {
+				regulator-name = "va12";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_va09_ldo_reg: ldo_va09 {
+				regulator-name = "va09";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vrf18_ldo_reg: ldo_vrf18 {
+				regulator-name = "vrf18";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <1810000>;
+				regulator-enable-ramp-delay = <120>;
+				regulator-always-on;
+			};
+			mt6359_vsram_md_ldo_reg: ldo_vsram_md {
+				regulator-name = "vsram_md";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-ramp-delay = <10760>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vufs_ldo_reg: ldo_vufs {
+				regulator-name = "vufs";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <1900000>;
+				regulator-enable-ramp-delay = <1920>;
+				regulator-always-on;
+			};
+			mt6359_vm18_ldo_reg: ldo_vm18 {
+				regulator-name = "vm18";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <1900000>;
+				regulator-enable-ramp-delay = <1920>;
+				regulator-always-on;
+			};
+			mt6359_vbbck_ldo_reg: ldo_vbbck {
+				regulator-name = "vbbck";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vsram_proc1_ldo_reg: ldo_vsram_proc1 {
+				regulator-name = "vsram_proc1";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-ramp-delay = <7500>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+			mt6359_vsim2_ldo_reg: ldo_vsim2 {
+				regulator-name = "vsim2";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <3100000>;
+				regulator-enable-ramp-delay = <480>;
+			};
+			mt6359_vsram_others_sshub_ldo: ldo_vsram_others_sshub {
+				regulator-name = "vsram_others_sshub";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1193750>;
+			};
+		};
+	};
+};
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
