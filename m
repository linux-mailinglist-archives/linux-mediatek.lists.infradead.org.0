Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763301AD5A5
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 07:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ks8O1rCSPqnRf/n3K3zpzQNepx9bod8QJt+2fefFJaM=; b=JZU7lem8yxt1tp
	sKUxNPJg3Nwi9GBwD4onCXiMEZmWpDbvsHxI00E7ohX8Jif5OwFnHQqjj1A+cuawGpU8wVe/+thgP
	yupwG9K0cBMwhqU5stNAKq9GdLxmtSvrXcojILPfJljrXILGSw7+bYYQ4lYphlCz1+5wecUwLUkTl
	oxe5msqIrswyGxfOXoxYEPQbRalgCmAhLMUz48PpZu2mA+7VlUP8bIp4tLEXWPVtCOKU4aLAcm4fh
	1ppGPj7K53jtQ0/MSbWtebaTYW2oGSnpblbMDuvXzcW1Ymuwg+lreJ2NFuM0EwJkI0Ls3abLVEO//
	XhLEiw2/6+ezcIyQ4Y+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPJTM-0002Kb-1a; Fri, 17 Apr 2020 05:23:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPJTI-0002JJ-F5; Fri, 17 Apr 2020 05:23:26 +0000
X-UUID: f20e43d97d1c4780bdcb39f36986cbaa-20200416
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=GC70dnpItBpOUTcj3PL92Hyrly0wCDW2Ddw/cKCswvo=; 
 b=h2CPCe9sCtqwEezN0e9irmL2n0J1thkAVwI8YOMcwT6FHN2JTBuq7lj9Mqt+HYA2tyS/7/zIE5iriou4SZWr1Zl6Eg8t53aHp6bbao4e7fCcdr5cmcukixJTfED4FPYxSxBKvWyJ73o5CjiUx80ItT2n8m56nLJbeu7mE0VbnnA=;
X-UUID: f20e43d97d1c4780bdcb39f36986cbaa-20200416
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 247857354; Thu, 16 Apr 2020 21:23:11 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 16 Apr 2020 22:23:13 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Apr 2020 13:23:11 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 17 Apr 2020 13:23:12 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Min Guo <min.Guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy-mtk-tphy: add the property about
 force_vbus
Date: Fri, 17 Apr 2020 13:23:05 +0800
Message-ID: <1587100986-3104-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_222324_521335_994180CF 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Macpaul Lin <macpaul.lin@gmail.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

For some platforms, they don't have vbus pin connection between usb's phy
and mac. Hence we need to control force_vbus related registers to keep
hardware works normal.
This patch add the required bool property force_vbus.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index dd75b676b71d..6b49b651becc 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -37,6 +37,9 @@ Optional properties (controller (parent) node):
 		  calibrate
  - mediatek,src-coef	: coefficient for slew rate calibrate, depends on
 		  SoC process
+ - force_vbus	: if the platform has no vbus connection between phy and mac,
+		  (force_vbus mode), then this property should be exist.
+		  Otherwise not to add this property.
 
 Required properties (port (child) node):
 - reg		: address and length of the register set for the port.
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
