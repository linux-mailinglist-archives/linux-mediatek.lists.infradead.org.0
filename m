Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F911C0F9
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 05:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+LtG9dwPkKSy9wsDiGZ3WzVGUDb15rOkcNaEFuHNJ0=; b=kC+MKS5l4+c64d
	t2fiMYQUWLNLOgg2s9ZhEUki01o/pN1fXeFGso3BBXjbliswVU5UIkqH8cyDLDoOx6NdY1ggBxVx7
	lhFjQPm5pOctk0MIDQ0A5zZPHXXCCikpI85l19Td9xZ5FBCZEwq4NRURtrbA6vyrVnkeTgTOhgVHv
	75FNIfdXpnD+nQj2FQRbpwbrVEEbPHVgmBWqvSMbLJxfzFE/U15rutPa27iU4Cmfai4m1Cmxk3DHg
	brvfs9mB4fOJONGSfPAjwcJpZaQ389xpsiCBUy5cS1Ve4uyi626IpTcQSqlS7GlCNV4bSIkWHFJqo
	w4ZEkmAfUFycYUotNp9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQOGF-0000Zn-0v; Tue, 14 May 2019 03:37:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQOG5-0000Q6-Jk; Tue, 14 May 2019 03:37:42 +0000
X-UUID: 03dc0c80edee493d93577d440a651e08-20190513
X-UUID: 03dc0c80edee493d93577d440a651e08-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1846621950; Mon, 13 May 2019 19:37:33 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 20:37:32 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 11:37:31 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 11:37:31 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>
Subject: [v3, PATCH 3/4] net: stmmac: write the modified value back to
 MTL_OPERATION_MODE
Date: Tue, 14 May 2019 11:37:25 +0800
Message-ID: <1557805046-306-4-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557805046-306-1-git-send-email-biao.huang@mediatek.com>
References: <1557805046-306-1-git-send-email-biao.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_203741_655953_E07E8E10 
X-CRM114-Status: UNSURE (   8.45  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, jianguo.zhang@mediatek.comi,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 boon.leong.ong@intel.com, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The value of MTL_OPERATION_MODE is modified, and should
be write back to the register.

Fixes: d0a9c9f9c6d0 ("net: stmmac: configure mtl rx and tx algorithms")
Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 7e5d5db..b4bb562 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -192,6 +192,8 @@ static void dwmac4_prog_mtl_tx_algorithms(struct mac_device_info *hw,
 	default:
 		break;
 	}
+
+	writel(value, ioaddr + MTL_OPERATION_MODE);
 }
 
 static void dwmac4_set_mtl_tx_queue_weight(struct mac_device_info *hw,
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
