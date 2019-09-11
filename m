Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1278AF9B9
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 11:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNhvThl66ZifoqXQRGaE1O2waDmRzFHe6gkMUi4+vuE=; b=WbCns/OtsP0wc0
	godClI9wbVGhZEJmXg1kwU3pQLzSxe8tBZMZKkW955vqCthXvUCQcezVhQyqVzh+153LxPn0m02qY
	DM5RV46s2OPLMva/SJlTKLo9uc8doxc7YhyUQrHBzozkbeps8I8/AKg/BSV533SE5ZbBcml0zht0/
	eFwMK80ASuidVhu++ejuJ0Ar8gwNbTO6RPxaQMHqch5LoELT6XBpr16LlSi06ue1iqf02fYVvnPdm
	s76BQLdQnX6gXPKxDshvFlyUN3+auT7kyZ6/Nvz+JTLU5nkSbLUDwbTBaY0rb6FkdTAkuRRo+jtTj
	S5p+GmzujQMBkqDkZmQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zPT-0007kf-BL; Wed, 11 Sep 2019 09:59:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zOt-0007Gy-3g; Wed, 11 Sep 2019 09:59:00 +0000
X-UUID: f4f98a825ae04cd9b0190536dd981265-20190911
X-UUID: f4f98a825ae04cd9b0190536dd981265-20190911
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1581967771; Wed, 11 Sep 2019 01:58:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 02:58:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 17:58:52 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Sep 2019 17:58:51 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/3] dt-bindings: spi: update bindings for MT6765 SoC
Date: Wed, 11 Sep 2019 05:55:29 -0400
Message-ID: <1568195731-3239-2-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
References: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_025859_151326_B6233385 
X-CRM114-Status: UNSURE (   8.54  )
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mediatek@lists.infradead.org, "luhua.xu" <luhua.xu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "luhua.xu" <luhua.xu@mediatek.com>

Add a DT binding documentation for the MT6765 soc.

Signed-off-by: luhua.xu <luhua.xu@mediatek.com>
---
 Documentation/devicetree/bindings/spi/spi-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-mt65xx.txt b/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
index c0f6c8e..3a8079e 100644
--- a/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
+++ b/Documentation/devicetree/bindings/spi/spi-mt65xx.txt
@@ -5,6 +5,7 @@ Required properties:
     - mediatek,mt2701-spi: for mt2701 platforms
     - mediatek,mt2712-spi: for mt2712 platforms
     - mediatek,mt6589-spi: for mt6589 platforms
+    - mediatek,mt6765-spi: for mt6765 platforms
     - mediatek,mt7622-spi: for mt7622 platforms
     - "mediatek,mt7629-spi", "mediatek,mt7622-spi": for mt7629 platforms
     - mediatek,mt8135-spi: for mt8135 platforms
-- 
2.6.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
