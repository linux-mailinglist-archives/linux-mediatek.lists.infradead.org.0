Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7485BE127
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 13:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ox2UWHrR8gU/2MhoDyOkz/KTO0uWUq3s4tWQJxYGTFA=; b=p+REQqi5u5M7dB
	Ax7JJi1Bo1vREWZwBy4+C2pF0pItLM06/2WFmVDpyjKmvGREgSnuTUDmfvWsFugiu4dvhgVpOqQgu
	HTiU92sgZu+wekmZd/SyLIkd7UQvKyDCxAK0VZ9ofHN+8c5Wd928gEzUYMeMBEuYfW4Ga5GidLaDs
	tovRxNtSEq6OIZf/iRFakjUaCrycn5YUKwBfQa2wVhD/EAeP6HUo2aInbbIp0VbPdJ75K5AMI4TVx
	7U3D1UuLPKwSumDHELPIL/QbKcJSk016gNwYIoWfzr5S7VhdNV2TQEUXl4oyJgHP7FHsS7YnC+7Ez
	hwixM+vIoxFoB3PQq//g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4Ie-0004q3-5w; Mon, 29 Apr 2019 11:18:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Ia-0004pe-FB
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 11:18:18 +0000
X-UUID: 82c1be59e4484b348b7bac2e58044e3e-20190429
X-UUID: 82c1be59e4484b348b7bac2e58044e3e-20190429
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 612307392; Mon, 29 Apr 2019 03:18:09 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 04:18:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 19:18:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Apr 2019 19:18:05 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH] Add cpufreq DTS node to the mt8183 and mt8183-evb.
Date: Mon, 29 Apr 2019 19:17:54 +0800
Message-ID: <1556536674-27068-2-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1556536674-27068-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1556536674-27068-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B72C95D1A3F7B3D8A272F85F25272DBF0B3CB2E52D02CEFFD46086ED8B9D8B0F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_041816_509950_2F306B48 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

Feature: cpufreq
Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
This patch is based on v5.1-rc1 and these patches:
https://patchwork.kernel.org/patch/10893519/
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  35 ++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 244 ++++++++++++++++++++++++++++
 2 files changed, 279 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 465cdab..b8057fb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -175,6 +175,41 @@
 	};
 };
 
+&cci {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu0 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu1 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu2 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu3 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu4 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu5 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu6 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu7 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index b36e37f..78d1ccf 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -15,6 +15,218 @@
 	interrupt-parent = <&sysirq>;
 	#address-cells = <2>;
 	#size-cells = <2>;
+	cluster0_opp: opp_table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+		opp00 {
+			opp-hz = /bits/ 64 <793000000>;
+			opp-microvolt = <650000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <910000000>;
+			opp-microvolt = <675000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <1014000000>;
+			opp-microvolt = <700000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1131000000>;
+			opp-microvolt = <725000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1248000000>;
+			opp-microvolt = <750000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1326000000>;
+			opp-microvolt = <775000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1417000000>;
+			opp-microvolt = <800000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1508000000>;
+			opp-microvolt = <825000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1586000000>;
+			opp-microvolt = <850000>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <1625000000>;
+			opp-microvolt = <862500>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <1677000000>;
+			opp-microvolt = <881250>;
+		};
+		opp11 {
+			opp-hz = /bits/ 64 <1716000000>;
+			opp-microvolt = <900000>;
+		};
+		opp12 {
+			opp-hz = /bits/ 64 <1781000000>;
+			opp-microvolt = <925000>;
+		};
+		opp13 {
+			opp-hz = /bits/ 64 <1846000000>;
+			opp-microvolt = <950000>;
+		};
+		opp14 {
+			opp-hz = /bits/ 64 <1924000000>;
+			opp-microvolt = <975000>;
+		};
+		opp15 {
+			opp-hz = /bits/ 64 <1989000000>;
+			opp-microvolt = <1000000>;
+		};	};
+
+	cluster1_opp: opp_table2 {
+		compatible = "operating-points-v2";
+		opp-shared;
+		opp00 {
+			opp-hz = /bits/ 64 <793000000>;
+			opp-microvolt = <650000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <910000000>;
+			opp-microvolt = <675000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <1014000000>;
+			opp-microvolt = <700000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1131000000>;
+			opp-microvolt = <725000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1248000000>;
+			opp-microvolt = <750000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1326000000>;
+			opp-microvolt = <775000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1417000000>;
+			opp-microvolt = <800000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1508000000>;
+			opp-microvolt = <825000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1586000000>;
+			opp-microvolt = <850000>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <1625000000>;
+			opp-microvolt = <862500>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <1677000000>;
+			opp-microvolt = <881250>;
+		};
+		opp11 {
+			opp-hz = /bits/ 64 <1716000000>;
+			opp-microvolt = <900000>;
+		};
+		opp12 {
+			opp-hz = /bits/ 64 <1781000000>;
+			opp-microvolt = <925000>;
+		};
+		opp13 {
+			opp-hz = /bits/ 64 <1846000000>;
+			opp-microvolt = <950000>;
+		};
+		opp14 {
+			opp-hz = /bits/ 64 <1924000000>;
+			opp-microvolt = <975000>;
+		};
+		opp15 {
+			opp-hz = /bits/ 64 <1989000000>;
+			opp-microvolt = <1000000>;
+		};
+	};
+
+	cluster2_opp: opp_table3 {
+		compatible = "operating-points-v2";
+		opp-shared;
+		opp00 {
+			opp-hz = /bits/ 64 <273000000>;
+			opp-microvolt = <650000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <338000000>;
+			opp-microvolt = <675000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <403000000>;
+			opp-microvolt = <700000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <463000000>;
+			opp-microvolt = <725000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <546000000>;
+			opp-microvolt = <750000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <624000000>;
+			opp-microvolt = <775000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <689000000>;
+			opp-microvolt = <800000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <767000000>;
+			opp-microvolt = <825000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <845000000>;
+			opp-microvolt = <850000>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <871000000>;
+			opp-microvolt = <862500>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <923000000>;
+			opp-microvolt = <881250>;
+		};
+		opp11 {
+			opp-hz = /bits/ 64 <962000000>;
+			opp-microvolt = <900000>;
+		};
+		opp12 {
+			opp-hz = /bits/ 64 <1027000000>;
+			opp-microvolt = <925000>;
+		};
+		opp13 {
+			opp-hz = /bits/ 64 <1092000000>;
+			opp-microvolt = <950000>;
+		};
+		opp14 {
+			opp-hz = /bits/ 64 <1144000000>;
+			opp-microvolt = <975000>;
+		};
+		opp15 {
+			opp-hz = /bits/ 64 <1196000000>;
+			opp-microvolt = <1000000>;
+		};
+	};
+
+	cci: cci {
+		compatible = "mediatek,mt8183-cci";
+		clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
+		clock-names = "cci_clock";
+		operating-points-v2 = <&cluster2_opp>;
+	};
 
 	cpus {
 		#address-cells = <1>;
@@ -57,6 +269,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x000>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu1: cpu@1 {
@@ -64,6 +280,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x001>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu2: cpu@2 {
@@ -71,6 +291,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x002>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu3: cpu@3 {
@@ -78,6 +302,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x003>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu4: cpu@100 {
@@ -85,6 +313,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x100>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu5: cpu@101 {
@@ -92,6 +324,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x101>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu6: cpu@102 {
@@ -99,6 +335,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x102>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu7: cpu@103 {
@@ -106,6 +346,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x103>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				<&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 	};
 
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
