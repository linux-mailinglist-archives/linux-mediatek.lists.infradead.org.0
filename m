Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBEE3188D
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 02:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GV1kDYUrY054y9EjfrjgblVAQwLRZtHp9T86cODo5Xk=; b=M1dRvhEjv0CfO1
	xdYEyB3hrHAC/VhQvCLXEB2vqdXhQgMcgQZHawhVs5nQAsOIxIORw9/Ntt4sh+UxYKExPQqUGQwJD
	jYmXbvU6NRxBATvvgvWOT/pkx9HWrRao2Bq4zoukfjydV2y8gNCzIBjYCPsj1qopW4PpqwgCP/Ppo
	tR4rgu1r8b9m8O5hR3HXJYrMAwCCewLuyMbmdZmCLIpi2M0NoEfMelr9ssQcr/R970WOdeNTJZFyi
	KW0o/DVaLuYJaF/y8Is7qAj+KGEyVEFBx4sriUK/K4OZdWdCU3GbzbI0VxaIi5xaHd9z6E08ty1Sd
	Vtlt/kvkBJ3GkRq//7RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWrUn-0000t1-UT; Sat, 01 Jun 2019 00:03:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWrUg-0000nE-0r
 for linux-mediatek@lists.infradead.org; Sat, 01 Jun 2019 00:03:31 +0000
X-UUID: 3a034b457bf543bf8681f8dba467dd75-20190531
X-UUID: 3a034b457bf543bf8681f8dba467dd75-20190531
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2007077664; Fri, 31 May 2019 16:03:24 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 17:03:23 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 1 Jun 2019 08:03:21 +0800
From: <sean.wang@mediatek.com>
To: <john@phrozen.org>, <davem@davemloft.net>
Subject: [PATCH net-next v1 2/6] dt-bindings: net: mediatek: Add support for
 MediaTek MT7629 SoC
Date: Sat, 1 Jun 2019 08:03:11 +0800
Message-ID: <1559347395-14058-3-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
References: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_170330_063035_15C48E2A 
X-CRM114-Status: GOOD (  11.59  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, nbd@openwrt.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Add binding document for the ethernet on MT7629 SoC.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 .../devicetree/bindings/net/mediatek-net.txt       | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mediatek-net.txt b/Documentation/devicetree/bindings/net/mediatek-net.txt
index 503f2b9194e2..770ff98d4524 100644
--- a/Documentation/devicetree/bindings/net/mediatek-net.txt
+++ b/Documentation/devicetree/bindings/net/mediatek-net.txt
@@ -11,6 +11,7 @@ Required properties:
 		"mediatek,mt2701-eth": for MT2701 SoC
 		"mediatek,mt7623-eth", "mediatek,mt2701-eth": for MT7623 SoC
 		"mediatek,mt7622-eth": for MT7622 SoC
+		"mediatek,mt7629-eth": for MT7629 SoC
 - reg: Address and length of the register set for the device
 - interrupts: Should contain the three frame engines interrupts in numeric
 	order. These are fe_int0, fe_int1 and fe_int2.
@@ -19,14 +20,23 @@ Required properties:
 	"ethif", "esw", "gp2", "gp1" : For MT2701 and MT7623 SoC
         "ethif", "esw", "gp0", "gp1", "gp2", "sgmii_tx250m", "sgmii_rx250m",
 	"sgmii_cdr_ref", "sgmii_cdr_fb", "sgmii_ck", "eth2pll" : For MT7622 SoC
+	"ethif", "sgmiitop", "esw", "gp0", "gp1", "gp2", "fe", "sgmii_tx250m",
+	"sgmii_rx250m", "sgmii_cdr_ref", "sgmii_cdr_fb", "sgmii2_tx250m",
+	"sgmii2_rx250m", "sgmii2_cdr_ref", "sgmii2_cdr_fb", "sgmii_ck",
+	"eth2pll" : For MT7629 SoC.
 - power-domains: phandle to the power domain that the ethernet is part of
 - resets: Should contain phandles to the ethsys reset signals
 - reset-names: Should contain the names of reset signal listed in the resets
 		property
 		These are "fe", "gmac" and "ppe"
 - mediatek,ethsys: phandle to the syscon node that handles the port setup
-- mediatek,sgmiisys: phandle to the syscon node that handles the SGMII setup
-	which is required for those SoCs equipped with SGMII such as MT7622 SoC.
+- mediatek,infracfg: phandle to the syscon node that handles the path from
+	GMAC to PHY variants, which is required for MT7629 SoC.
+- mediatek,sgmiisys: a list of phandles to the syscon node that handles the
+	SGMII setup which is required for those SoCs equipped with SGMII such
+	as MT7622 and MT7629 SoC. And MT7622 have only one set of SGMII shared
+	by GMAC1 and GMAC2; MT7629 have two independent sets of SGMII directed
+	to GMAC1 and GMAC2, respectively.
 - mediatek,pctl: phandle to the syscon node that handles the ports slew rate
 	and driver current: only for MT2701 and MT7623 SoC
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
