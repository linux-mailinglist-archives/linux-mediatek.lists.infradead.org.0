Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6663D85FD
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 04:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1yI/6vIbsbe3OIo/EOKZ1QIGVRy5+D0JD7tvLcY3OM=; b=fS5M50T3Nvc/ci
	LnLq1ItZyZ2iH0ltyny4ycyQOQCwdemymSQG840FOfJmX1r32lt+IgFoh5EVXGj80KYZoP2+KZj45
	VSHnkDI5ofKK/mvkWijGsxpfkuxxgkB1nkGqrLvMC/Zo7bpj3NkTKfC9oCwpiK3XxMdWlo9kzIIFa
	drpcbZGNKbMW1NOH1b8ggFm1DQGIbkhdo4d9XZ5cWO04RwalT2gyPlCJuX0JM3yMBplFVn9HRsBCj
	pRbDnK427QtIaqnThyv3JjpnI1qd0lHFJL61xFerPEoeIf+aF+IOCv4O0lHVtf3U4Ur/MS7eCmRpO
	fwY6/chc8PkC4WJcYQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZEE-000380-Vr; Wed, 16 Oct 2019 02:39:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZDK-0002M0-41; Wed, 16 Oct 2019 02:39:04 +0000
X-UUID: 77d22a08119749baaccb33f4b59dc005-20191015
X-UUID: 77d22a08119749baaccb33f4b59dc005-20191015
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 26580799; Tue, 15 Oct 2019 18:38:46 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 19:38:54 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 16 Oct 2019 10:38:48 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 16 Oct 2019 10:38:47 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <mark.rutland@arm.com>, <robh+dt@kernel.org>,
 <linux@roeck-us.net>, <wim@linux-watchdog.org>
Subject: [PATCH 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Date: Wed, 16 Oct 2019 10:38:41 +0800
Message-ID: <1571193522-11886-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1571193522-11886-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1571193522-11886-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_193902_165548_8AFFEB39 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, yong.liang@mediatek.com,
 "yong.liang" <yong.liang@mediatek.corp-partner.google.com>,
 lgirdwood@gmail.com, jiaxin.yu@mediatek.com, perex@perex.cz,
 tzungbi@google.com, linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.corp-partner.google.com>

Add #reset-cells property and update example

Signed-off-by: yong.liang <yong.liang@mediatek.corp-partner.google.com>
---
 .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
 .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
 .../reset-controller/mt8183-resets.h          | 15 +++++++++++++
 3 files changed, 44 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index 3ee625d0812f..4dd36bd3f1ad 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -4,6 +4,7 @@ Required properties:
 
 - compatible should contain:
 	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
+	"mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712
 	"mediatek,mt6589-wdt": for MT6589
 	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
@@ -16,11 +17,14 @@ Required properties:
 
 Optional properties:
 - timeout-sec: contains the watchdog timeout in seconds.
+- #reset-cells: Should be 1.
 
 Example:
 
-wdt: watchdog@10000000 {
-	compatible = "mediatek,mt6589-wdt";
-	reg = <0x10000000 0x18>;
+watchdog: watchdog@10007000 {
+	compatible = "mediatek,mt8183-wdt",
+		     "mediatek,mt6589-wdt";
+	reg = <0 0x10007000 0 0x100>;
 	timeout-sec = <10>;
+	#reset-cells = <1>;
 };
diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
new file mode 100644
index 000000000000..e81c8bb311b7
--- /dev/null
+++ b/include/dt-bindings/reset-controller/mt2712-resets.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Yong Liang <yong.liang@mediatek.com>
+ */
+
+#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT2712
+#define _DT_BINDINGS_RESET_CONTROLLER_MT2712
+
+#define MT2712_TOPRGU_INFRA_SW_RST				0
+#define MT2712_TOPRGU_MM_SW_RST					1
+#define MT2712_TOPRGU_MFG_SW_RST				2
+#define MT2712_TOPRGU_VENC_SW_RST				3
+#define MT2712_TOPRGU_VDEC_SW_RST				4
+#define MT2712_TOPRGU_IMG_SW_RST				5
+#define MT2712_TOPRGU_INFRA_AO_SW_RST				8
+#define MT2712_TOPRGU_USB_SW_RST				9
+#define MT2712_TOPRGU_APMIXED_SW_RST				10
+
+#define MT2712_TOPRGU_SW_RST_NUM				10
+
+#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
index 8804e34ebdd4..d582da6bedae 100644
--- a/include/dt-bindings/reset-controller/mt8183-resets.h
+++ b/include/dt-bindings/reset-controller/mt8183-resets.h
@@ -78,4 +78,19 @@
 #define MT8183_INFRACFG_AO_I2C7_SW_RST				126
 #define MT8183_INFRACFG_AO_I2C8_SW_RST				127
 
+#define MT8183_TOPRGU_MM_SW_RST					1
+#define MT8183_TOPRGU_MFG_SW_RST				2
+#define MT8183_TOPRGU_VENC_SW_RST				3
+#define MT8183_TOPRGU_VDEC_SW_RST				4
+#define MT8183_TOPRGU_IMG_SW_RST				5
+#define MT8183_TOPRGU_MD_SW_RST					7
+#define MT8183_TOPRGU_CONN_SW_RST				9
+#define MT8183_TOPRGU_CONN_MCU_SW_RST				12
+#define MT8183_TOPRGU_IPU0_SW_RST				14
+#define MT8183_TOPRGU_IPU1_SW_RST				15
+#define MT8183_TOPRGU_AUDIO_SW_RST				17
+#define MT8183_TOPRGU_CAMSYS_SW_RST				18
+
+#define MT8183_TOPRGU_SW_RST_NUM				18
+
 #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8183 */
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
