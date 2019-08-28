Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580539FCDA
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 10:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6qgXVIeuEDIcc85cCfpIAcGzYpehuG7nDkQZQ7XuX7E=; b=rRb5C+UmfCCoMm
	fjI52XTLwj+yyXyOKbkfUc885IUfQishK37vteKr2hdtl69dm+5VFOMK/2cM3wElBqGyY406w/XNb
	qLg2Kdl9Si5GYEHQlWDLBBxgZiU8U055VwWS2A0LopZaGsNGDayeoDwZozc2Ylgi667VHWgXd+0Xo
	BV0mm+KRjpGlnuWI+HPumtP5KQzIBicFGYjuP7fWoQ43QX95HnUXLNyT+xshOIRZvwPMiZy03axjn
	zvIjU9JiHHpJvN7XIN457MnMEdvzChDnuwx2Z20EI8trHbf7U1fpY+r6X5rqZ7ycNgqNRlJXio5kk
	qHQvCO+UqteArW2AZlGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tER-0006mI-Vd; Wed, 28 Aug 2019 08:23:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tE5-0006MU-HV; Wed, 28 Aug 2019 08:22:47 +0000
X-UUID: 91f0fef707014cb59ecbb0d7e9b1e9b4-20190828
X-UUID: 91f0fef707014cb59ecbb0d7e9b1e9b4-20190828
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1618670648; Wed, 28 Aug 2019 00:22:46 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 01:22:44 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 16:22:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 16:22:35 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: clock: mediatek: add pericfg for MT8183
Date: Wed, 28 Aug 2019 16:22:12 +0800
Message-ID: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 24CF5FCCFEF98A39383D98B9B0EE85FBD6A2695AB226366B63B0A026F1BC62432000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_012245_583895_FD064D3F 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Erin Lo <erin.lo@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch adds binding of pericfg for MT8183.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2: no changes
---
 .../devicetree/bindings/arm/mediatek/mediatek,pericfg.txt        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
index 4c7e478117a0..ecf027a9003a 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
@@ -14,6 +14,7 @@ Required Properties:
 	- "mediatek,mt7629-pericfg", "syscon"
 	- "mediatek,mt8135-pericfg", "syscon"
 	- "mediatek,mt8173-pericfg", "syscon"
+	- "mediatek,mt8183-pericfg", "syscon"
 - #clock-cells: Must be 1
 - #reset-cells: Must be 1
 
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
