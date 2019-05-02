Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F321176A
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 12:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xV+b+YQfHhUWvXkrk9cfST3Fi54rT73IO0Esam4gB/c=; b=qbwlaVRbRSYKNi
	po3ZcBVSjH0AG+6fJ+mM/ZES2zxH9C8B81Fiibry5vofs8w0jagMgf/YUEQfzA6k9OoDnU5v14SZg
	p/rBJZG8fqZKqVpDfZAMgjwAR524Q5BRSVJhu73TXrHuc5MNTznM/spf/PITdYYBXHclRo6YF5Dq7
	mAa59kmgDvqVFoeLiYCX7Js7fd55qZ7PhNBJFGVrvZoD7LYDEveeyftEYpxDfrXcm0fKFjoLPQToV
	Hv8E8DxloT9TeiQAl+/t/X0Gxq0i+W6QoiZyAZprLtqWFiQXBbwk9rKjf0RyiCi09t+4TA7JlN0nt
	XEzBt3EpAzm0ilD+gkYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9BX-0008WQ-RK; Thu, 02 May 2019 10:43:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9BU-0008Ui-9t; Thu, 02 May 2019 10:43:25 +0000
X-UUID: 01b5657b8a2a45d8a356e2c3217f6e16-20190502
X-UUID: 01b5657b8a2a45d8a356e2c3217f6e16-20190502
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 195000652; Thu, 02 May 2019 02:43:21 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 03:43:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 18:43:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 2 May 2019 18:43:18 +0800
From: michael.kao <michael.kao@mediatek.com>
To: <michael.kao@mediatek.com>, <fan.chen@mediatek.com>,
 <jamesjj.liao@mediatek.com>, <dawei.chien@mediatek.com>,
 <louis.yu@mediatek.com>, <roger.lu@mediatek.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/8] arm64: dts: mt8183: add thermal zone node
Date: Thu, 2 May 2019 18:43:08 +0800
Message-ID: <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_034324_358984_6C64BC54 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add thermal zone node to Mediatek MT8183 dts file.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 64 ++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 926df75..b92116f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -334,6 +334,67 @@
 			status = "disabled";
 		};
 
+		thermal: thermal@1100b000 {
+			#thermal-sensor-cells = <1>;
+			compatible = "mediatek,mt8183-thermal";
+			reg = <0 0x1100b000 0 0x1000>;
+			interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_THERM>,
+				 <&infracfg CLK_INFRA_AUXADC>;
+			clock-names = "therm", "auxadc";
+			resets = <&infracfg  MT8183_INFRACFG_AO_THERM_SW_RST>;
+			mediatek,auxadc = <&auxadc>;
+			mediatek,apmixedsys = <&apmixedsys>;
+			mediatek,hw-reset-temp = <117000>;
+			nvmem-cells = <&thermal_calibration>;
+			nvmem-cell-names = "calibration-data";
+		};
+
+		thermal-zones {
+			cpu_thermal: cpu_thermal {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+
+				thermal-sensors = <&thermal 0>;
+				sustainable-power = <1500>;
+			};
+
+			tzts1: tzts1 {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 1>;
+			};
+
+			tzts2: tzts2 {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 2>;
+			};
+
+			tzts3: tzts3 {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 3>;
+			};
+
+			tzts4: tzts4 {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 4>;
+			};
+
+			tzts5: tzts5 {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 5>;
+			};
+
+			tztsABB: tztsABB {
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 6>;
+			};
+		};
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
@@ -368,6 +429,9 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			thermal_calibration: calib@180 {
+				reg = <0x180 0xc>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
