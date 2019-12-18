Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70DD1241FD
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Dec 2019 09:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNOxUGXqhuhSg7necCIPWIsNRbHERKEJHcVRpM5LfCo=; b=OtIijvwk4Vb3qM
	BJ2qIgBjXSEbQnVIbYUrifHRTM5VIfTJZQJRll2XGQ4eXY0yw51b38VMsWV5IZ2T4xU8MhsEHkAqZ
	HxKZj7ydapNnJ7lxOwUYJrO1vFvGJ79f4g/wUJtS6Toq45DLH4hST2jw2R8OLF1hnRAvN7G6Y04B6
	37/TlpwD5y0vxPS2wWeNZE8R6zOwpbOhKg6Nb2Dfl/dlpWNW/4k11Y1wWnUvv4nM3HvWR4VrCZsKw
	LuH+/dONED1Bld1JxT9Wpk0F9lGDd2KZ6adNZqbDuHcUJWGDT7KrC8qIagQm9yd+IVab3wZiMQZli
	hMIKgcq80J3Ee1ZRIcgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUu7-0004vj-S9; Wed, 18 Dec 2019 08:41:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUtF-0004Dh-Jc; Wed, 18 Dec 2019 08:41:07 +0000
X-UUID: e20c52e15bbf481b88943a71c2243e51-20191218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=nyKqbutaaCHQgIz0tIDMWCfASb943xl96hXjeHKXdmc=; 
 b=pxb3yQL/4Mkc1DsMmGe93ucaNDA+3O38Sd2ht46VnELsA80pb9zhCPdn241pV2zkVDywTvU3mVyMq1ut/8VjwF6kQgeHl50HF7bTGRkPmn7jG/oKKyfYNR6g4R1ww/xUDMtLoxEIiy2pNA2eNkkn8w7p/VtXrLo4FsX8dMDUxsQ=;
X-UUID: e20c52e15bbf481b88943a71c2243e51-20191218
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1955582460; Wed, 18 Dec 2019 00:41:00 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 00:31:19 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 16:30:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Dec 2019 16:30:29 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <kernel@pengutronix.de>
Subject: [PATCH v10 02/12] dt-bindings: soc: Add MT8183 power dt-bindings
Date: Wed, 18 Dec 2019 16:30:38 +0800
Message-ID: <1576657848-14711-3-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_004105_676880_6F5483EF 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
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
 .../devicetree/bindings/soc/mediatek/scpsys.txt    | 20 ++++++++++++++---
 include/dt-bindings/power/mt8183-power.h           | 26 ++++++++++++++++++++++
 2 files changed, 43 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/power/mt8183-power.h

diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
index 8f469d8..8e0e1ed 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
@@ -14,6 +14,7 @@ power/power-domain.yaml. It provides the power domains defined in
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
-- clock, clock-names: clocks according to the common clock binding.
-                      These are clocks which hardware needs to be
-                      enabled before enabling certain power domains.
+- clock, clock-names: Clocks according to the common clock binding.
+                      Some SoCs have to groups of clocks.
+                      BASIC clocks need to be enabled before enabling the
+                      corresponding power domain.
+                      SUBSYS clocks need to be enabled before releasing the
+                      bus protection.
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
