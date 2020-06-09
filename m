Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24CC1F3758
	for <lists+linux-mediatek@lfdr.de>; Tue,  9 Jun 2020 11:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TQ/VpMzj+qTQyoWKG/c/z3ftI3DpDrBfzwerkUQplJw=; b=TBwTbIVT8nAfJk
	ZuME5NtxN1NdUksEsuws2xpMbotuG/DI/XgkYx7JhXEuXSxfV5QDw5J0afWh5XSs87cw3ivuhkhmE
	MWlGE2JEG7EBS44f50/lJ4bvIuLRGpNXN473ZADeQH9E5fcTd62Szoi4frrtTPizeVHTVYmLyjDPI
	vcGG8d4AJNf2XxYoxxi1xigyLSom79cax4crLsHY67au/u1Cub+M/23JwFkZak1DH00Z88olyLIg0
	j4Hlh3DHdmLXjT9uo56fahHWlWAWg3S68sOkR3VG1eUKT9F3FuOeNaM5wLNwhPfvKmfdePbWhDMAu
	cgGGJjwzO204IIVlUU1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiaxh-0006rl-Fj; Tue, 09 Jun 2020 09:54:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiaxd-0006rL-Uf
 for linux-mediatek@lists.infradead.org; Tue, 09 Jun 2020 09:54:27 +0000
X-UUID: 63914254637b4e658fefdf9d29883179-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=u4KMXSeT0DGxNEg0hfooe1wRE4xbxuD+hCYPLeD3kfA=; 
 b=qcDslHxwMldhoBDpV5NOkp/xJHTl5YpuDoXGi0e5pAiC0jDF6DG0OoGl+6ckbREDEFe5vEKwDMVjYOCE/F8RUH6eyL0gUReynJ+skgNAgrpKNzsYTgwEpQ1JVDMoeGaLEvjtkAIBjSLukWMNpQyTDiGvY8E1Y2LH3KixuB/hbz8=;
X-UUID: 63914254637b4e658fefdf9d29883179-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1997889618; Tue, 09 Jun 2020 01:54:24 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 02:44:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 17:44:03 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 9 Jun 2020 17:44:03 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Jose Abreu <joabreu@synopsys.com>, "David S .
 Miller" <davem@davemloft.net>
Subject: [PATCH] net: stmmac: Fix RX Coalesce IOC always true issue
Date: Tue, 9 Jun 2020 17:41:33 +0800
Message-ID: <20200609094133.11053-1-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_025425_992157_5B07D6FB 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: biao.huang@mediatek.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Currently rx_count_frames in stmmac_rx_refill always 0, which leads to
use_rx_wd false, and IOC bit of rx_desc3 true forever. Fix it.

Fixes: 6fa9d691b91ac ("net: stmmac: Prevent divide-by-zero")
Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index e6898fd5223f..87b529743fd0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3607,8 +3607,7 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 		stmmac_refill_desc3(priv, rx_q, p);
 
 		rx_q->rx_count_frames++;
-		rx_q->rx_count_frames += priv->rx_coal_frames;
-		if (rx_q->rx_count_frames > priv->rx_coal_frames)
+		if (rx_q->rx_count_frames >= priv->rx_coal_frames)
 			rx_q->rx_count_frames = 0;
 
 		use_rx_wd = !priv->rx_coal_frames;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
