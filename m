Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EF49C6FA
	for <lists+linux-mediatek@lfdr.de>; Mon, 26 Aug 2019 03:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djg4OAPI7UdrU3cheebSlE6cmVgqw+i/ef4W3Tpu8f4=; b=oxp4rb1g2NylTC
	WPJk/4pnNnnP+eVSjYjl2CW7DtJfZ99klQkZm6y/eIY4tUHoluC+bP+ZN6vFJvntMaie70UgXHXXY
	hZsS9cXqkef4YN67MQujf4WOgx+MLKnVBpiq7CFMais8BPnLVaq8V+TMzKJQeh2oHnitgEMYH+08O
	8PoC2fCvelv2/FGwcs8phoGtC1b8U+FyKzxMtQ5cxJGx6qkpSlgHDCvBX9uK/0TsCYR64r/eH5Tdc
	z/4RuCGc0PWU8JGKWPpCxYV5qm+k1clZuiVM6mCnlmFYqQbj7qAc7mwUIuAlzyLzT10Dab2TFvnCH
	kyp5a2vRJeG/uux9Wmhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i23nx-0005nf-Ns; Mon, 26 Aug 2019 01:28:21 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i23ni-0005dd-2A; Mon, 26 Aug 2019 01:28:07 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 77F959007E5A52120171;
 Mon, 26 Aug 2019 09:27:54 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Mon, 26 Aug 2019 09:27:45 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <nbd@openwrt.org>, <john@phrozen.org>, <sean.wang@mediatek.com>,
 <nelson.chang@mediatek.com>, <davem@davemloft.net>, <matthias.bgg@gmail.com>
Subject: [PATCH v2 -next] net: mediatek: remove set but not used variable
 'status'
Date: Mon, 26 Aug 2019 09:31:18 +0800
Message-ID: <20190826013118.22720-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824.142158.1506174328495468705.davem@davemloft.net>
References: <20190824.142158.1506174328495468705.davem@davemloft.net>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_182806_273058_2E3BE3FF 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:
drivers/net/ethernet/mediatek/mtk_eth_soc.c: In function mtk_handle_irq:
drivers/net/ethernet/mediatek/mtk_eth_soc.c:1951:6: warning: variable status set but not used [-Wunused-but-set-variable]

Fixes: 296c9120752b ("net: ethernet: mediatek: Add MT7628/88 SoC support")
Signed-off-by: Mao Wenan <maowenan@huawei.com>
---
 v2: change format of 'Fixes' tag.
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 8ddbb8d..bb7d623 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -1948,9 +1948,7 @@ static irqreturn_t mtk_handle_irq_tx(int irq, void *_eth)
 static irqreturn_t mtk_handle_irq(int irq, void *_eth)
 {
 	struct mtk_eth *eth = _eth;
-	u32 status;
 
-	status = mtk_r32(eth, MTK_PDMA_INT_STATUS);
 	if (mtk_r32(eth, MTK_PDMA_INT_MASK) & MTK_RX_DONE_INT) {
 		if (mtk_r32(eth, MTK_PDMA_INT_STATUS) & MTK_RX_DONE_INT)
 			mtk_handle_irq_rx(irq, _eth);
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
