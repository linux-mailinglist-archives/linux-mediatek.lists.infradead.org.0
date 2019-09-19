Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1516B739E
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 08:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gH53EFe2M/ZwCzS48KdMZEgupBmZVgNixf/DHJajUCQ=; b=QLfFyfuAfjxAbP
	vqS90OpWKcFYoXZnNIPKD5OVdUMz/to2tCJaDyQHAK7xR9H8jReQChJfqgo3VDgvg/pmNDVMCsCwo
	Q0XgcgkHbFjQsbsbSzmkwGXhI3K31dNk5ysKoj1TZen+/jMo0b9FiaQ38MkqTneyc23yQQYDXvU+H
	DPLYpHNa0Bf4Gpsrb6SjvD5Ozt1vTbjszBER0wUbm7iGWsqbUjxWnCMh/W+V0EVcYKwpxE0shLIF2
	pZb8tJtbjiDiRW5tfz44oY2+ml9jJ4YMYMI5u72rhwaEBnLy+Sw7c05Vp7wSKylCrC9uYhSVHnGU5
	9odGizwQywWb3ZGIhiEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqOx-0004tx-0n; Thu, 19 Sep 2019 06:58:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqOt-0004t7-7g
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 06:58:48 +0000
X-UUID: 1ff087afcaed46e3ac7ea284de8b55e0-20190918
X-UUID: 1ff087afcaed46e3ac7ea284de8b55e0-20190918
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1625937172; Wed, 18 Sep 2019 22:58:42 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 23:58:40 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 19 Sep 2019 14:58:36 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 19 Sep 2019 14:58:35 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH v7 3/9] drm/mediatek: replace writeb() with mtk_dsi_mask()
Date: Thu, 19 Sep 2019 14:58:00 +0800
Message-ID: <20190919065806.111016-4-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919065806.111016-1-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24920.005
X-TM-AS-Result: No-6.079800-8.000000-10
X-TMASE-MatchedRID: k/L/ofNtQd07cRSju2zlXqMY62qeQBkLy733NwuklsIy/xh6GqNHVWMg
 VHfStGn65UUUZCVUbO+bHAuQ1dUnuWJZXQNDzktSGjzBgnFZvQ6CxYB2hPS4vSS30GKAkBxW7fK
 xaM2xqkBHHd35tBrozO9EJt2F5OksHxPMjOKY7A/QLWxBF9DMQcRB0bsfrpPIfiAqrjYtFiQcos
 wtc7gt2g2WiK0Y4tZwxJbqWiccMa7tCocc2G1Lq37cGd19dSFd
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.079800-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24920.005
X-TM-SNTS-SMTP: 467409EFD92600159E2DB5F3B02363269D1CE4BE3B660A29B3D1A6361BF09E7A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_235847_276208_00D11CA7 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The writeb() is unavailable in mt8173. Because the mt8173 dsi module
doesn't support 8bit mode access.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 7e24d03cdccc..ac8e80e379f7 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -960,7 +960,9 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
 	}
 
 	for (i = 0; i < msg->tx_len; i++)
-		writeb(tx_buf[i], dsi->regs + reg_cmdq_off + cmdq_off + i);
+		mtk_dsi_mask(dsi, (reg_cmdq_off + cmdq_off + i) & (~0x3U),
+			     (0xffUL << (((i + cmdq_off) & 3U) * 8U)),
+			     tx_buf[i] << (((i + cmdq_off) & 3U) * 8U));
 
 	mtk_dsi_mask(dsi, reg_cmdq_off, cmdq_mask, reg_val);
 	mtk_dsi_mask(dsi, DSI_CMDQ_SIZE, CMDQ_SIZE, cmdq_size);
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
