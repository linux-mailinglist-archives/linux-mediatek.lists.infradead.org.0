Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECEC4C599
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 04:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UskxyvNoYCzhWnfrmUdM9LP+dflSjd5z3V32DgjZbJg=; b=ZQH5eAq09MOXP+
	CnBGOgNVSFiyqyVxQL7nGjNRDw/IpqX3+xqBA6uvdtaduJcuVE+WQpBnGOi8fDtSbQz0N1n5LGSnt
	e0a7dfcrHFHOV0Ira0u2V5FwPGa8BQA+3BV5SRIAB+HFuLCU7zwMISUS+ZWUZ3tfNalJ4/nHGIk+D
	ZKbej/TPjo15Xl5TY+E7VMgyf6JkOJHy92R9jLuDzR4GoSMInNf4l6Ua2emNhuePkOFAaPi1RIvrh
	D/vpQIUE2fpa/a2nM9YYDbgj5LW0bx2pg0BxLgshbZ8Qg71EJJf4w6gbG/7nDv0vHu7npekr1F5DP
	pNboZFDTYSC/F4oIH/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdn2F-0002Rg-7G; Thu, 20 Jun 2019 02:42:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdmyJ-0006Aw-7E; Thu, 20 Jun 2019 02:38:46 +0000
X-UUID: f294f5d9cd004c75903c3757ed9d82d0-20190619
X-UUID: f294f5d9cd004c75903c3757ed9d82d0-20190619
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 489608731; Wed, 19 Jun 2019 18:38:28 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 19:38:27 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 10:38:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 20 Jun 2019 10:38:18 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v6 02/14] dt-bindings: soc: Add MT8183 power dt-bindings
Date: Thu, 20 Jun 2019 10:37:54 +0800
Message-ID: <1560998286-9189-3-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1560998286-9189-1-git-send-email-weiyi.lu@mediatek.com>
References: <1560998286-9189-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 620B5F2A292B75485CA1069B5ECFA36A6B80AD4C2D35130F8C94D715EFF820492000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_193843_286203_C2B91465 
X-CRM114-Status: GOOD (  11.37  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add power dt-bindings of MT8183 and introduces "BASIC" and
"SUBSYS" clock types in binding document.
The "BASIC" type is compatible to the original power control with
clock name [a-z]+[0-9]*, e.g. mm, vpu1.
The "SUBSYS" type is used for bus protection control with clock
name [a-z]+-[0-9]+, e.g. isp-0, cam-1.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 .../devicetree/bindings/soc/mediatek/scpsys.txt    | 14 ++++++++++++
 include/dt-bindings/power/mt8183-power.h           | 26 ++++++++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 include/dt-bindings/power/mt8183-power.h

diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
index 876693a..00eab7e 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
@@ -14,6 +14,7 @@ power/power_domain.txt. It provides the power domains defined in
 - include/dt-bindings/power/mt2701-power.h
 - include/dt-bindings/power/mt2712-power.h
 - include/dt-bindings/power/mt7622-power.h
+- include/dt-bindings/power/mt8183-power.h
 
 Required properties:
 - compatible: Should be one of:
@@ -25,18 +26,31 @@ Required properties:
 	- "mediatek,mt7623a-scpsys": For MT7623A SoC
 	- "mediatek,mt7629-scpsys", "mediatek,mt7622-scpsys": For MT7629 SoC
 	- "mediatek,mt8173-scpsys"
+	- "mediatek,mt8183-scpsys"
 - #power-domain-cells: Must be 1
 - reg: Address range of the SCPSYS unit
 - infracfg: must contain a phandle to the infracfg controller
 - clock, clock-names: clocks according to the common clock binding.
                       These are clocks which hardware needs to be
                       enabled before enabling certain power domains.
+                      The new clock type "BASIC" belongs to the type above.
+                      As to the new clock type "SUBSYS" needs to be
+                      enabled before releasing bus protection.
 	Required clocks for MT2701 or MT7623: "mm", "mfg", "ethif"
 	Required clocks for MT2712: "mm", "mfg", "venc", "jpgdec", "audio", "vdec"
 	Required clocks for MT6797: "mm", "mfg", "vdec"
 	Required clocks for MT7622 or MT7629: "hif_sel"
 	Required clocks for MT7623A: "ethif"
 	Required clocks for MT8173: "mm", "mfg", "venc", "venc_lt"
+	Required clocks for MT8183: BASIC: "audio", "mfg", "mm", "cam", "isp",
+					   "vpu", "vpu1", "vpu2", "vpu3"
+				    SUBSYS: "mm-0", "mm-1", "mm-2", "mm-3",
+					    "mm-4", "mm-5", "mm-6", "mm-7",
+					    "mm-8", "mm-9", "isp-0", "isp-1",
+					    "cam-0", "cam-1", "cam-2", "cam-3",
+					    "cam-4", "cam-5", "cam-6", "vpu-0",
+					    "vpu-1", "vpu-2", "vpu-3", "vpu-4",
+					    "vpu-5"
 
 Optional properties:
 - vdec-supply: Power supply for the vdec power domain
diff --git a/include/dt-bindings/power/mt8183-power.h b/include/dt-bindings/power/mt8183-power.h
new file mode 100644
index 0000000..5c0c8c7
--- /dev/null
+++ b/include/dt-bindings/power/mt8183-power.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Weiyi Lu <weiyi.lu@mediatek.com>
+ */
+
+#ifndef _DT_BINDINGS_POWER_MT8183_POWER_H
+#define _DT_BINDINGS_POWER_MT8183_POWER_H
+
+#define MT8183_POWER_DOMAIN_AUDIO	0
+#define MT8183_POWER_DOMAIN_CONN	1
+#define MT8183_POWER_DOMAIN_MFG_ASYNC	2
+#define MT8183_POWER_DOMAIN_MFG		3
+#define MT8183_POWER_DOMAIN_MFG_CORE0	4
+#define MT8183_POWER_DOMAIN_MFG_CORE1	5
+#define MT8183_POWER_DOMAIN_MFG_2D	6
+#define MT8183_POWER_DOMAIN_DISP	7
+#define MT8183_POWER_DOMAIN_CAM		8
+#define MT8183_POWER_DOMAIN_ISP		9
+#define MT8183_POWER_DOMAIN_VDEC	10
+#define MT8183_POWER_DOMAIN_VENC	11
+#define MT8183_POWER_DOMAIN_VPU_TOP	12
+#define MT8183_POWER_DOMAIN_VPU_CORE0	13
+#define MT8183_POWER_DOMAIN_VPU_CORE1	14
+
+#endif /* _DT_BINDINGS_POWER_MT8183_POWER_H */
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
