Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECBFD08EE
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 09:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HM9BX7WvrqXe3FRfwEuzFy8vHgFwTDHq6gi0ODljLQI=; b=f9E1Q6DfqQF38y
	QK06yfU1GG/0fQbkGt5kdaam0AgrFq3lWIFVCgbZVOLB3oocVf99UBi7i1rniK3Q//16NzWKVKYOI
	BLHXemSKBkeCty8s49XnluScCB6rsmc2fZUQxNPhBDtaYzMFbPLydVvHmhYXCmoYfq8FJ7/tEMwCV
	MVLOJUPbTa3Sb10ugleqYApjfuqjdomqbKNBG5CPKpn3aYdckkE/lavLfHL6AcGGPiu0rFHVgCUQf
	XQFqsT1RunKcIFVXnkxBTRQaBNGsSh10Mn2NT8kbzzJbXA2YPy4vl1QUkb/tVaDkUTGUQVF0ia8sF
	d8PflWfonJKoaiHWswJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6q2-0001Oo-4P; Wed, 09 Oct 2019 07:56:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6pX-0000yE-8P; Wed, 09 Oct 2019 07:56:20 +0000
X-UUID: d5dfe6eb258e41218ed08df41fa054e3-20191008
X-UUID: d5dfe6eb258e41218ed08df41fa054e3-20191008
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1663013955; Tue, 08 Oct 2019 23:56:45 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 00:56:11 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 15:41:02 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 15:41:00 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [RESEND PATCH v3 02/11] dt-bindings: phy-mtk-tphy: make the ref clock
 optional
Date: Wed, 9 Oct 2019 15:40:25 +0800
Message-ID: <1570606834-5644-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 529B75F880549219B19A483FC609AD75F20A14647891354584FF2E06AC6263472000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_005619_299120_54D092C5 
X-CRM114-Status: GOOD (  11.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Make the ref clock optional, then we no need refer to a fixed-clock
in DTS anymore when the clock of USB3 PHY comes from oscillator
directly

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v3: add acked-by Rob

v2: no changes
---
 .../devicetree/bindings/phy/phy-mtk-tphy.txt        | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index ce6abfbdfbe1..1f4a36dd80e0 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -34,12 +34,6 @@ Optional properties (controller (parent) node):
 
 Required properties (port (child) node):
 - reg		: address and length of the register set for the port.
-- clocks	: a list of phandle + clock-specifier pairs, one for each
-		  entry in clock-names
-- clock-names	: must contain
-		  "ref": 48M reference clock for HighSpeed analog phy; and 26M
-			reference clock for SuperSpeed analog phy, sometimes is
-			24M, 25M or 27M, depended on platform.
 - #phy-cells	: should be 1 (See second example)
 		  cell after port phandle is phy type from:
 			- PHY_TYPE_USB2
@@ -48,6 +42,13 @@ Required properties (port (child) node):
 			- PHY_TYPE_SATA
 
 Optional properties (PHY_TYPE_USB2 port (child) node):
+- clocks	: a list of phandle + clock-specifier pairs, one for each
+		  entry in clock-names
+- clock-names	: may contain
+		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
+			reference clock for SuperSpeed anolog phy, sometimes is
+			24M, 25M or 27M, depended on platform.
+
 - mediatek,eye-src	: u32, the value of slew rate calibrate
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
 - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
