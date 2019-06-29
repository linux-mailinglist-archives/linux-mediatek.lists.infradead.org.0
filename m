Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E94A5A8A2
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 04:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5VmnXIfjdEIQLpJPr+usGMLfbDy9OzcjK7BcFFTx/c=; b=cxFIadjT/JlmvL
	l8ztEx0gKxJE7gcbImjujYhpDmsGRkXdCJ+JeHAJ3H/a+ji6E8YlZbLyGq3BMRE1DhAOhB2hi/oPa
	nhJJC9ZtfwqTZN5TfWaw7ivFs2jQ3fy0+DVo9Xsw7oHMLnxhcWaSsbIyburJ+Uz5OjU4Sm0kHiti4
	ZsoW8vLX5CUCCWvur7wEaRJAVrcB1xEOWLmTYQ6/uT7RFBhYpvkN9AvQWuZbWkKU3k/J7FzoNLyM5
	3KWktJvM5gKgHF5CPA8+QbfZJmwy4hzYLOeiV+7cerLAuJ+PbQFh9RaVTtc3zcCPQOo2oep/ovY+k
	bGqPbmF450kLVnLi5X1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh3NA-0006aL-Pt; Sat, 29 Jun 2019 02:45:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh3K5-00038Z-DT; Sat, 29 Jun 2019 02:42:43 +0000
X-UUID: b5729e190edd4839aa624bc6997663b7-20190628
X-UUID: b5729e190edd4839aa624bc6997663b7-20190628
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1758323365; Fri, 28 Jun 2019 18:42:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 19:42:32 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Jun 2019 10:42:30 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 29 Jun 2019 10:42:29 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 21/21] iommu/mediatek: Switch to SPDX license identifier
Date: Sat, 29 Jun 2019 10:39:55 +0800
Message-ID: <1561775995-24963-22-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561775995-24963-11-git-send-email-yong.wu@mediatek.com>
References: <1561775995-24963-11-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_194242_043977_4935A846 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Will
 Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Switch to SPDX license identifier for MediaTek iommu/smi and their
header files.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Evan Green <evgreen@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/iommu/mtk_iommu.c                     | 10 +---------
 drivers/iommu/mtk_iommu.h                     | 10 +---------
 drivers/iommu/mtk_iommu_v1.c                  | 10 +---------
 drivers/memory/mtk-smi.c                      | 10 +---------
 include/dt-bindings/memory/mt2701-larb-port.h | 10 +---------
 include/dt-bindings/memory/mt8173-larb-port.h | 10 +---------
 include/soc/mediatek/smi.h                    | 10 +---------
 7 files changed, 7 insertions(+), 63 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 4212221..f013b55 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2015-2016 MediaTek Inc.
  * Author: Yong Wu <yong.wu@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/memblock.h>
 #include <linux/bug.h>
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index dda74f1..d5dd07f 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2015-2016 MediaTek Inc.
  * Author: Honghui Zhang <honghui.zhang@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _MTK_IOMMU_H_
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index ba0408b..55013ba 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * IOMMU API for MTK architected m4u v1 implementations
  *
@@ -5,15 +6,6 @@
  * Author: Honghui Zhang <honghui.zhang@mediatek.com>
  *
  * Based on driver/iommu/mtk_iommu.c
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/memblock.h>
 #include <linux/bug.h>
diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 0e310d5..b754460 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2015-2016 MediaTek Inc.
  * Author: Yong Wu <yong.wu@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/clk.h>
 #include <linux/component.h>
diff --git a/include/dt-bindings/memory/mt2701-larb-port.h b/include/dt-bindings/memory/mt2701-larb-port.h
index 6764d74..c511f0f 100644
--- a/include/dt-bindings/memory/mt2701-larb-port.h
+++ b/include/dt-bindings/memory/mt2701-larb-port.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2015 MediaTek Inc.
  * Author: Honghui Zhang <honghui.zhang@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _MT2701_LARB_PORT_H_
diff --git a/include/dt-bindings/memory/mt8173-larb-port.h b/include/dt-bindings/memory/mt8173-larb-port.h
index 111b4b0..a62bfeb 100644
--- a/include/dt-bindings/memory/mt8173-larb-port.h
+++ b/include/dt-bindings/memory/mt8173-larb-port.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2015-2016 MediaTek Inc.
  * Author: Yong Wu <yong.wu@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef __DTS_IOMMU_PORT_MT8173_H
 #define __DTS_IOMMU_PORT_MT8173_H
diff --git a/include/soc/mediatek/smi.h b/include/soc/mediatek/smi.h
index baad22f..11074c6 100644
--- a/include/soc/mediatek/smi.h
+++ b/include/soc/mediatek/smi.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2015-2016 MediaTek Inc.
  * Author: Yong Wu <yong.wu@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef MTK_IOMMU_SMI_H
 #define MTK_IOMMU_SMI_H
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
