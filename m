Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5121F7803
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 14:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tf31jfx60oq1QUUOK3il5qr/cwIb84UySpRSXdoDT+w=; b=bfX
	h4ZFf+AJ7VtXI2PyQPdTNn9Awray7iadNdA+VvK69nb98zC7IQBd4Nj6jx6mNSz2yUoYGVNckENyd
	UEUGMOsyyyNFMvSIOL67YdOJfwn26nheck8N5DL9ibxKBGNk+xH6Nm1+b/ySSMtYL9POAes797pQ0
	lc29IEOUoF2u1J3N6ucSERlnU6TrQc/3Uh5wyrWdItHCeSYjn981yRAZ92kyRxyBstcWvciswMIOH
	Ho/SGB5yLrBLhcyURX/h/5MCXoXWpi48R+ry/Ky9XdbYCsG+rF9WoIAjsVg6LdjSolNHzVYqeMNqW
	UZ1YQp43DfaYHRNNbOKPQItDy5IujGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiz1-0000cW-9w; Fri, 12 Jun 2020 12:40:31 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiyr-0000Ui-Sb
 for linux-mediatek@lists.infradead.org; Fri, 12 Jun 2020 12:40:24 +0000
Received: from njvxl5505.vivo.xyz (unknown [157.0.31.125])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id B7F9426177A;
 Fri, 12 Jun 2020 20:40:13 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: remove unnecessary conversion to bool
Date: Fri, 12 Jun 2020 20:40:06 +0800
Message-Id: <20200612124007.4990-1-bernard@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZQx5LTBoeH0JCHhodVkpOQkpCTU5NSkhCTEJVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
 FZT0tIVUpKS0hKTFVKS0tZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAg6PSo*GDg5Mws9Dw8LMxYz
 SS5PFApVSlVKTkJKQk1OTUpPSExLVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSU5ZV1kIAVlBSUtPSzcG
X-HM-Tid: 0a72a88b7f4c9375kuwsb7f9426177a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_054022_135030_323F10DA 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [59.111.176.17 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In function mtk_dsi_clk_hs_state, remove unnecessary conversion
to bool return, this change is to make the code a bit readable.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 270bf22c98fe..4491e64b3f06 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -319,7 +319,7 @@ static bool mtk_dsi_clk_hs_state(struct mtk_dsi *dsi)
 	u32 tmp_reg1;
 
 	tmp_reg1 = readl(dsi->regs + DSI_PHY_LCCON);
-	return ((tmp_reg1 & LC_HS_TX_EN) == 1) ? true : false;
+	return ((tmp_reg1 & LC_HS_TX_EN) == 1);
 }
 
 static void mtk_dsi_clk_hs_mode(struct mtk_dsi *dsi, bool enter)
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
