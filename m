Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0956B13BBA4
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 09:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvbCmpRi1uZJLVtao0EFNn8oFcWRwE9zWyA9Z0e6raE=; b=kOnr4sC/sox+2F
	CHz2BhpHu8U8yQ7HHexnOeOACRRFON7iWv3J2zt5vGe50uMjPO+5WgAigLj/1iGM4mL0d6cCy1RkC
	8dR2u2E+v24AudzCgKEuxJ/R5mvKcLplRJv5nXwpZwgkkPVA5lP91ea2scMiKsU143sgR2cqQfc7H
	6MCMZvtNdHPbs+aGJRdoykQpuGr5PuDcdwPIN35qV9Jt79gsWu0AX7Ejdb/s9EHrDd7rMJw5KRcsP
	1jrzUVNATuJkhbGIL6eXbf57MAHymWhnLSkhdFDAZxTH5HgKy5NOZZEm/SgciUO+oqxJsXUZSs0T6
	P6gWLu2tuswg7hct3d8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireVo-0002Cf-14; Wed, 15 Jan 2020 08:58:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireVi-0002B1-Vu; Wed, 15 Jan 2020 08:58:49 +0000
X-UUID: e37ab78ca22842ee8cb3c62389a17757-20200115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=NY1THKQZPmMzBG2Y7OvUGXadUajPTI3HDuB+P5+oLaI=; 
 b=PcYxKLFpIiQoZQ7FOYJCHr8pWLmnTMwZS+rZbDioITCbiHARot6+uPeZOQQsfebnLBzUP/ySZqvgiPA5fO98DoUOhFypnVIJByWzKVaKtlDnD1opYpD6vP983ufuabRfCxcVsM55RUmCtsZnzpJganLNqztmnfexasYuaaRWXsk=;
X-UUID: e37ab78ca22842ee8cb3c62389a17757-20200115
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 750383324; Wed, 15 Jan 2020 00:58:41 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 00:58:38 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 16:58:10 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 Jan 2020 16:58:44 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <yong.liang@mediatek.com>, <wim@linux-watchdog.org>, <linux@roeck-us.net>, 
 <p.zabel@pengutronix.de>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <devicetree@vger.kernel.org>, <chang-an.chen@mediatek.com>,
 <freddy.hsin@mediatek.com>, <jiaxin.yu@mediatek.com>
Subject: [PATCH v12 2/4] dt-bindings: mediatek: mt2712: Add #reset-cells
Date: Wed, 15 Jan 2020 16:58:26 +0800
Message-ID: <20200115085828.27791-3-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200115085828.27791-1-yong.liang@mediatek.com>
References: <20200115085828.27791-1-yong.liang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_005847_033179_B72CAEB5 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Add #reset-cells and update mtk-wdt.txt

Signed-off-by: yong.liang <yong.liang@mediatek.com>
Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Guenter Roeck <groeck7@gmail.com>
---
 .../devicetree/bindings/watchdog/mtk-wdt.txt  |  1 +
 .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index ecb9ff784832..4dd36bd3f1ad 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -4,6 +4,7 @@ Required properties:
 
 - compatible should contain:
 	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
+	"mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712
 	"mediatek,mt6589-wdt": for MT6589
 	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
new file mode 100644
index 000000000000..9e7ee762f076
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
+#define MT2712_TOPRGU_SW_RST_NUM				11
+
+#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
