Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3112FD088B
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 09:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NomMpFxAH80bydPAMkI+bJ2mpobQ35aYL6Q9iWmOPm8=; b=I53Yi9UIerU5nd
	ubwJZSlr6LTIJUs6Kh9+cRsJ66lY8mL8IokAZhizqAJ4eTlLvyKtemsREC3zKeAD0wS5VQrRbuYFC
	MBSvKHHWWXg05LPxY7ohct4siB8bDOPrKswj4Ddalnsq++Zd1cB5ivciCn7Idao8Tg01n/hEGID9l
	mSQ/X76U09Y0cyQXsnW2F5N6OIqvOeFEJ9r+YgtbXOAgV9dy5Aio22Y0ZV+3Ur0h05GACPMqnycLg
	/VCNUltHPVb2oRn1C9bIS84wqEbhDUL+kXxiTEIpV/6qg2blT08z3JGiCVfE2fChQxgtf03MV61f7
	+kBcVtSB/dw+D5bUM14w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6bC-0008JV-LG; Wed, 09 Oct 2019 07:41:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6ay-00088G-PN; Wed, 09 Oct 2019 07:41:18 +0000
X-UUID: 2092512e830c4851afc556afc7db1b89-20191008
X-UUID: 2092512e830c4851afc556afc7db1b89-20191008
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 877007273; Tue, 08 Oct 2019 23:41:43 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 00:41:09 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 15:41:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 15:41:05 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [RESEND PATCH v3 04/11] dt-bindings: phy-mtk-tphy: add a new
 reference clock
Date: Wed, 9 Oct 2019 15:40:27 +0800
Message-ID: <1570606834-5644-4-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F919BEA736F2E41C7EDF4A0549A97035BFD402A7E81A4B2B03EF41062627BD702000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004116_831504_2145615B 
X-CRM114-Status: GOOD (  12.38  )
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

Usually the digital and analog phys use the same reference clock,
but on some platforms, they are separated, so add another optional
clock to support it.
In order to keep the clock names consistent with PHY IP's, use
the da_ref for analog phy and ref clock for digital phy.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v3: add acked-by Rob

v2: fix typo of analog and needed
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index 48bc1a2e9299..a859b0db4051 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -41,9 +41,12 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
 - clocks	: a list of phandle + clock-specifier pairs, one for each
 		  entry in clock-names
 - clock-names	: may contain
-		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
-			reference clock for SuperSpeed anolog phy, sometimes is
+		  "ref": 48M reference clock for HighSpeed (digital) phy; and 26M
+			reference clock for SuperSpeed (digital) phy, sometimes is
 			24M, 25M or 27M, depended on platform.
+		  "da_ref": the reference clock of analog phy, used if the clocks
+			of analog and digital phys are separated, otherwise uses
+			"ref" clock only if needed.
 
 - mediatek,eye-src	: u32, the value of slew rate calibrate
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
