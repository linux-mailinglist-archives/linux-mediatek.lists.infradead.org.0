Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8917631889
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 02:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JAXqHvg1RLSgjj6qVnpjuJYxRpDLeFnmIJqeTsE5DLs=; b=cT9r3LDzjmu1Hb
	aMV8UGPK6aAmIGIz4lGrUXK1uvPDslm8Ovbi0zYb8x1UYLToiVDkANviN1LCbc52yzhllXI7rTaqs
	5t/lFQPzzPUVCAlcPSMaLJMKDc/0aq1jomkM9R7DgafZ6BAuBToUPP9Z/rQGG/Fk0yIUSumYMVD8i
	0OzIP5u+I4t4tEqhK8bLxTk3ybNWxl2Mgd6lMG0XOqQWcHCNvH1imKDkWlHlLIBQO5M+MnxxJ5rP0
	L0CMmj8LjgaH2GhxRAmoeJjPfdIYXRc87Dd0Z3ieTeUPXUfgFitI9UiMtUdnmtBq9I8/BIAIkgXe3
	yVpyp9Sdqdz3br+8i/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWrUh-0000oR-Oo; Sat, 01 Jun 2019 00:03:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWrUe-0000nE-O3
 for linux-mediatek@lists.infradead.org; Sat, 01 Jun 2019 00:03:29 +0000
X-UUID: 1b0cb8993744472b9b2715e3b749d7b6-20190531
X-UUID: 1b0cb8993744472b9b2715e3b749d7b6-20190531
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2001991282; Fri, 31 May 2019 16:03:20 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 17:03:19 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 1 Jun 2019 08:03:17 +0800
From: <sean.wang@mediatek.com>
To: <john@phrozen.org>, <davem@davemloft.net>
Subject: [PATCH net-next v1 0/6] Add MT7629 ethernet support
Date: Sat, 1 Jun 2019 08:03:09 +0800
Message-ID: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_170328_780419_C080A634 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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

MT7629 inlcudes two sets of SGMIIs used for external switch or PHY, and embedded
switch (ESW) via GDM1, GePHY via GMAC2, so add several patches in the series to
make the code base common with the old SoCs.

The patch 1, 3 and 6, adds extension for SGMII to have the hardware configured
for 1G, 2.5G and AN to fit the capability of the target PHY. In patch 6 could be
an example showing how to use these configurations for underlying PHY speed to
match up the link speed of the target PHY.

The patch 4 is used for automatically configured the hardware path from GMACx to
the target PHY by the description in deviceetree topology to determine the
proper value for the corresponding MUX.

The patch 2 and 5 is for the update for MT7629 including dt-binding document and
its driver.

Sean Wang (6):
  dt-bindings: clock: mediatek: Add an extra required property to
    sgmiisys
  dt-bindings: net: mediatek: Add support for MediaTek MT7629 SoC
  net: ethernet: mediatek: Extend SGMII related functions
  net: ethernet: mediatek: Integrate hardware path from GMAC to PHY
    variants
  net: ethernet: mediatek: Add MT7629 ethernet support
  arm64: dts: mt7622: Enlarge the SGMII register range

 .../arm/mediatek/mediatek,sgmiisys.txt        |   2 +
 .../devicetree/bindings/net/mediatek-net.txt  |  14 +-
 arch/arm64/boot/dts/mediatek/mt7622.dtsi      |   3 +-
 drivers/net/ethernet/mediatek/Makefile        |   3 +-
 drivers/net/ethernet/mediatek/mtk_eth_path.c  | 323 ++++++++++++++++++
 drivers/net/ethernet/mediatek/mtk_eth_soc.c   |  97 +++---
 drivers/net/ethernet/mediatek/mtk_eth_soc.h   | 177 +++++++++-
 drivers/net/ethernet/mediatek/mtk_sgmii.c     | 105 ++++++
 8 files changed, 647 insertions(+), 77 deletions(-)
 create mode 100644 drivers/net/ethernet/mediatek/mtk_eth_path.c
 create mode 100644 drivers/net/ethernet/mediatek/mtk_sgmii.c

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
