Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ED4351C8
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 23:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SdgkeNXtV8WRPYiS7LLHK1OWEJLa/SF5GQ6KrsGHCLc=; b=IlCYSfLHqSkcRt
	hyoCbO8UOx9oR03YOZY/VQ3PO8nE8ARmsh0471BWVpkjPf+ORH/DGiRpKvog+PuD0uzsosL+4wgA9
	FNb1Rtz6GDMibETS6JM2M2vLGI4BVxmyucMyIXF9/vMeLd8/DhnJh4GTG7PVZeqMs45pZjeHoz/ET
	1vQcFxFaDCBtyb8Vj3CJVLl1BEOTKb++0IdbB0/PuZGjPaRt+hhJTJYJDFmAM/HHUYcbIVIon0TMV
	hgNJN8FI6mZpJ5YXhpJtMzw82+lVIS5F+EtfX1rBBLz29J+mFoxj/ZU3vJVKhH7eJbEcuo6feeIYv
	l+nlxoKK6h5HMlLUr+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYGtO-000572-Mt; Tue, 04 Jun 2019 21:22:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYGtL-00056G-Jk
 for linux-mediatek@lists.infradead.org; Tue, 04 Jun 2019 21:22:49 +0000
X-UUID: 69184ea33ace4aa8ba782d4eb31ee1f5-20190604
X-UUID: 69184ea33ace4aa8ba782d4eb31ee1f5-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2124588350; Tue, 04 Jun 2019 13:22:31 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 14:22:29 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 5 Jun 2019 05:22:28 +0800
From: <sean.wang@mediatek.com>
To: <john@phrozen.org>, <davem@davemloft.net>
Subject: [PATCH net v1] net: ethernet: mediatek: Fixed several errors caused
 by undefined symbols
Date: Wed, 5 Jun 2019 05:22:27 +0800
Message-ID: <1559683347-5752-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_142247_652431_145CA098 
X-CRM114-Status: UNSURE (   7.12  )
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

Fixed several errors caused by undefined symbols catched by kbuild test
robot.

ERROR: "mtk_sgmii_init" [drivers/net/ethernet/mediatek/mtk_eth_soc.ko] undefined!
ERROR: "mtk_setup_hw_path" [drivers/net/ethernet/mediatek/mtk_eth_soc.ko] undefined!
ERROR: "mtk_sgmii_setup_mode_force" [drivers/net/ethernet/mediatek/mtk_eth_path.ko] undefined!
ERROR: "mtk_sgmii_setup_mode_an" [drivers/net/ethernet/mediatek/mtk_eth_path.ko] undefined!
ERROR: "mtk_w32" [drivers/net/ethernet/mediatek/mtk_eth_path.ko] undefined!
ERROR: "mtk_r32" [drivers/net/ethernet/mediatek/mtk_eth_path.ko] undefined!

Fixes: 	7093f9d80c7c ("net: ethernet: mediatek: Integrate hardware path from GMAC to PHY variants")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 drivers/net/ethernet/mediatek/Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/Makefile b/drivers/net/ethernet/mediatek/Makefile
index 212c86f9982f..d92adef15603 100644
--- a/drivers/net/ethernet/mediatek/Makefile
+++ b/drivers/net/ethernet/mediatek/Makefile
@@ -3,5 +3,6 @@
 # Makefile for the Mediatek SoCs built-in ethernet macs
 #
 
-obj-$(CONFIG_NET_MEDIATEK_SOC)                 += mtk_eth_soc.o mtk_sgmii.o \
-						  mtk_eth_path.o
+obj-$(CONFIG_NET_MEDIATEK_SOC) := mtk_eth.o
+
+mtk_eth-y := mtk_eth_soc.o mtk_sgmii.o mtk_eth_path.o
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
