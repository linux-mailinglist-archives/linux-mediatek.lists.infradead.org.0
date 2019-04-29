Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D11BDBDE
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 08:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTr6BHQG68ErkHV1/LifSZDLqwMmqqG1RZrxw1gVK10=; b=nsJO5lMPPXYnhH
	W/gd0LnFy3xga7UuAbAQmC5RWfxgVHVKb9lHQBWRTYwrzs+dfoRvIOu/HrWQE6G9gUmIKrDXhpRVI
	Z/Eqm4TlQySMwDZbbj5PX0gGfkA7/ZjqNyAk8vw8ziQlojjjuWlAfj5Y+IbhS1gwZ3CkDGmFq90cX
	OGVSBsX8D92rLxVjpzEbeTU7Il1DPckrX5fcfIUa/fC3Wn7m4Yv86JLQj7zB9ox05jcdYOfl69NqH
	AUThnO9k3znAwS0bSx4YF70Tl432Sok9mC69g4y5ERbVdaUmu7+C/XAQUSotQw4X6MieTbXbzPOT6
	RGtKUXDL06bd7Rl1xFbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzav-0006FT-EA; Mon, 29 Apr 2019 06:16:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzaI-0005SP-6g; Mon, 29 Apr 2019 06:16:16 +0000
X-UUID: 3ca79dadff584dbf91a131597452f33c-20190428
X-UUID: 3ca79dadff584dbf91a131597452f33c-20190428
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1513079891; Sun, 28 Apr 2019 22:16:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:16:10 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 14:16:09 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 14:16:08 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>, <davem@davemloft.net>
Subject: [PATCH 4/4] net: stmmac: dwmac-mediatek: modify csr_clk value to fix
 mdio read/write fail
Date: Mon, 29 Apr 2019 14:15:56 +0800
Message-ID: <1556518556-32464-5-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1556518556-32464-1-git-send-email-biao.huang@mediatek.com>
References: <1556518556-32464-1-git-send-email-biao.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_231614_249259_ED55B751 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jianguo.zhang@mediatek.com, Alexandre Torgue <alexandre.torgue@st.com>,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The frequency of  csr clock is 66.5MHz, so the csr_clk value should
be 0. Modify the csr_clk value to fix mdio read/write fail issue.

Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-mediatek.c   |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
index bf25629..6b12d0f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
@@ -346,8 +346,8 @@ static int mediatek_dwmac_probe(struct platform_device *pdev)
 		return PTR_ERR(plat_dat);
 
 	plat_dat->interface = priv_plat->phy_mode;
-	/* clk_csr_i = 250-300MHz & MDC = clk_csr_i/124 */
-	plat_dat->clk_csr = 5;
+	/* clk_csr_i = 60-100MHz & MDC = clk_csr_i/42 */
+	plat_dat->clk_csr = 0;
 	plat_dat->has_gmac4 = 1;
 	plat_dat->has_gmac = 0;
 	plat_dat->pmt = 0;
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
