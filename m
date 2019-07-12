Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66E066A52
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jul 2019 11:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKJA1txPFHBWGn5OCz7JgqouFF5K0PNNALIVBDIMbgQ=; b=tBwW6EUU4CUTjK
	7zQjfmcvojmIbXb0osiCn3St0xcrD0t3lv39XQS5c+SvjpmydbH/rrUkM9Nm4x8VYd93FTj6UANHJ
	2qRdAFuXMGjTJtha35yuYP4geXLpSgJoDKuVb0a7wUwRzu3SUVBlzf2g804PvV4mZwkB90Tsbk4Dk
	IUU7ORApdsftvpTOX39Lm2JUzw+ZIDtsxGY+GOgVWJXmOWvQ6kug2JFWayfmPa+JSjwo5wdoDrpWp
	Yb0qN9y71tdWbb9cp1DgHu09wdl88OtJWkGiEAFVO9BxiDPu6k96ThseRrvUG2pnl05h1g1kO3W/R
	dIZ1YrLakPf7CLjKNcQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hls88-0000FC-Fl; Fri, 12 Jul 2019 09:46:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hls84-0000Dj-Vc; Fri, 12 Jul 2019 09:46:14 +0000
X-UUID: a7cdd29732b84b5886e34d8b75470e6c-20190712
X-UUID: a7cdd29732b84b5886e34d8b75470e6c-20190712
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1950473059; Fri, 12 Jul 2019 01:45:57 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 02:45:55 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 17:45:53 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 17:45:53 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, "Owen
 Chen" <owen.chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 3/8] dt-bindings: mediatek: add MT6765 power dt-bindings
Date: Fri, 12 Jul 2019 17:43:39 +0800
Message-ID: <1562924653-10056-4-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024613_025459_6D7D13EA 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Mars Cheng <mars.cheng@mediatek.com>

This adds power dt-bindings for MT6765

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
Signed-off-by: Owen Chen <owen.chen@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/soc/mediatek/scpsys.txt    |  6 ++++++
 include/dt-bindings/power/mt6765-power.h           | 14 ++++++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 include/dt-bindings/power/mt6765-power.h

diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
index 00eab7e6ff22..6109b4992522 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
@@ -10,6 +10,7 @@ domain control.
 The driver implements the Generic PM domain bindings described in
 power/power_domain.txt. It provides the power domains defined in
 - include/dt-bindings/power/mt8173-power.h
+- include/dt-bindings/power/mt6765-power.h
 - include/dt-bindings/power/mt6797-power.h
 - include/dt-bindings/power/mt2701-power.h
 - include/dt-bindings/power/mt2712-power.h
@@ -20,6 +21,7 @@ Required properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-scpsys"
 	- "mediatek,mt2712-scpsys"
+	- "mediatek,mt6765-scpsys"
 	- "mediatek,mt6797-scpsys"
 	- "mediatek,mt7622-scpsys"
 	- "mediatek,mt7623-scpsys", "mediatek,mt2701-scpsys": For MT7623 SoC
@@ -38,6 +40,10 @@ Required properties:
                       enabled before releasing bus protection.
 	Required clocks for MT2701 or MT7623: "mm", "mfg", "ethif"
 	Required clocks for MT2712: "mm", "mfg", "venc", "jpgdec", "audio", "vdec"
+	Required clocks for MT6765: MUX: "mm", "mfg"
+				    CG: "mm-0", "mm-1", "mm-2", "mm-3", "isp-0",
+					"isp-1", "cam-0", "cam-1", "cam-2",
+					"cam-3","cam-4"
 	Required clocks for MT6797: "mm", "mfg", "vdec"
 	Required clocks for MT7622 or MT7629: "hif_sel"
 	Required clocks for MT7623A: "ethif"
diff --git a/include/dt-bindings/power/mt6765-power.h b/include/dt-bindings/power/mt6765-power.h
new file mode 100644
index 000000000000..d347b4ee9eed
--- /dev/null
+++ b/include/dt-bindings/power/mt6765-power.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _DT_BINDINGS_POWER_MT6765_POWER_H
+#define _DT_BINDINGS_POWER_MT6765_POWER_H
+
+#define MT6765_POWER_DOMAIN_CONN		0
+#define MT6765_POWER_DOMAIN_MM			1
+#define MT6765_POWER_DOMAIN_MFG_ASYNC		2
+#define MT6765_POWER_DOMAIN_ISP			3
+#define MT6765_POWER_DOMAIN_MFG			4
+#define MT6765_POWER_DOMAIN_MFG_CORE0		5
+#define MT6765_POWER_DOMAIN_CAM			6
+#define MT6765_POWER_DOMAIN_VCODEC		7
+
+#endif /* _DT_BINDINGS_POWER_MT6765_POWER_H */
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
