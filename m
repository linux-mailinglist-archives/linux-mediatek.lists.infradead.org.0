Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0D0C343D
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 14:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVqCLyfykzXE48hQ6OzbJS7nDC8hTJ7OOZbPS61u+4o=; b=gMghwy9wjbtf/A
	En1RxFNFOuLtn6Cbcj6k1xD1Xsm4Y0gpir28JYJHFl8GHAGUQBrwQtm82mNBIn+voseh64+ts+QYG
	xFGpnQ9QzXFZmD27i+NPjwFCspQkhxqgn0gcdIVpUh3AxchF5mYdns3YHIAFKtk/Xry9VPQ7YKz8c
	wkEYalsVnIDvHtqaJ3LUpNQ0tf95sFdsh3CKAV3ZMzGWamqbTh0vKUqGXOS/bSM3fIKPY4p7855xv
	s4LsmcM81XLVZdfTDCpnn4Pl9RaEmCL+i/7Kx4m1ISY6zrchfOcbaIsdHmCX5pbk6tCiwFxzF5eZM
	N0GK1Gg5IHchXv6boz2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHKd-000427-F2; Tue, 01 Oct 2019 12:32:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHKa-00040p-HL; Tue, 01 Oct 2019 12:32:41 +0000
X-UUID: acdfceb8cf8142fa9abaaa87cd529de2-20191001
X-UUID: acdfceb8cf8142fa9abaaa87cd529de2-20191001
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 386999651; Tue, 01 Oct 2019 04:32:30 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 05:32:28 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 20:32:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 1 Oct 2019 20:32:17 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Felix Fietkau
 <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH net 1/2] net: ethernet: mediatek: Fix MT7629 missing GMII mode
 support
Date: Tue, 1 Oct 2019 20:31:49 +0800
Message-ID: <20191001123150.23135-2-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
References: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 69F1E331B29365995878096379C70BE41545FD0A32930813DB7CCFFED2A424322000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_053240_579495_02ED32F9 
X-CRM114-Status: UNSURE (   9.64  )
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rene van Dorst <opensource@vdorst.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, MarkLee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add missing configuration for mt7629 gmii mode support

Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index c61069340f4f..703adb96429e 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -261,6 +261,7 @@ static void mtk_mac_config(struct phylink_config *config, unsigned int mode,
 		ge_mode = 0;
 		switch (state->interface) {
 		case PHY_INTERFACE_MODE_MII:
+		case PHY_INTERFACE_MODE_GMII:
 			ge_mode = 1;
 			break;
 		case PHY_INTERFACE_MODE_REVMII:
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
