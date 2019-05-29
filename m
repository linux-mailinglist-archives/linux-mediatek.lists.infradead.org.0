Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7E72D7B9
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 10:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dUeeIlRdG6AEmS9GCK61vkCojpA7jevppDU9BiOm2F4=; b=BpmetfsnZ35Cc7
	8aOZldbzDZa7B+PeRJLh5N8vzEZttPuICtxpKCAgGhFVA74KvT5TKgnPcT8mG+m5mov4kzlGl8V91
	DfIBP4Dky+wlMpPG/Lt/+ms27z/DtdI1eF1iQrh1WLRCPlduXNqaeLcKzRnkuutQL81PJ0lw1Ox8U
	ZSMYTU2Ld7X6W7/o+QB12UXBfh6RyiczfXjGNlusorcdRo6BfBVme/W2nBlqM5ysx5Mku67FSn06g
	ZVi8hR1Q/6JI57nmyv53QKrfk/UaprYEyUy2p9vpk0Qq28vIzqWJG0LInEPouZtZhJxg0xj+EoZJt
	6ssbwSN8YcX7SHo+S/EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtuD-0002nl-Dd; Wed, 29 May 2019 08:25:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtu4-0002hT-0Z; Wed, 29 May 2019 08:25:45 +0000
X-UUID: 6efa6b09fb5342438a5d1442a87ccab2-20190529
X-UUID: 6efa6b09fb5342438a5d1442a87ccab2-20190529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jamesjj.liao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 408395342; Wed, 29 May 2019 00:25:09 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 01:25:07 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 16:25:06 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 29 May 2019 16:25:06 +0800
From: James Liao <jamesjj.liao@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] arm64: dts: mt8183: Enable CPU idle-states
Date: Wed, 29 May 2019 16:25:03 +0800
Message-ID: <1559118303-31875-1-git-send-email-jamesjj.liao@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012544_061767_775307DE 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Enable mcdi-cpu and mcdi-cluster on MT8183 CPUs.

Signed-off-by: James Liao <jamesjj.liao@mediatek.com>
---
This patch bases on v5.1-rc1 and [1], adds idle-states for MT8183 CPUs.

[1] https://patchwork.kernel.org/patch/10962375/

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 08274bf..ef4b054 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -56,6 +56,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x000>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu1: cpu@1 {
@@ -63,6 +64,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x001>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu2: cpu@2 {
@@ -70,6 +72,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x002>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu3: cpu@3 {
@@ -77,6 +80,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x003>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu4: cpu@100 {
@@ -84,6 +88,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x100>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu5: cpu@101 {
@@ -91,6 +96,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x101>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu6: cpu@102 {
@@ -98,6 +104,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x102>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
 		};
 
 		cpu7: cpu@103 {
@@ -105,6 +112,29 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x103>;
 			enable-method = "psci";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER>;
+		};
+
+		idle-states {
+			entry-method = "arm,psci";
+
+			MCDI_CPU: mcdi-cpu {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x00010001>;
+				entry-latency-us = <200>;
+				exit-latency-us = <200>;
+				min-residency-us = <800>;
+			};
+
+			MCDI_CLUSTER: mcdi-cluster {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x01010001>;
+				entry-latency-us = <250>;
+				exit-latency-us = <400>;
+				min-residency-us = <1300>;
+			};
 		};
 	};
 
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
