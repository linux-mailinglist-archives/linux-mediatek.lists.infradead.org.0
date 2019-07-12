Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131B4676A8
	for <lists+linux-mediatek@lfdr.de>; Sat, 13 Jul 2019 00:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MfqCAsbx3+znqcgLpZLwudUIcjAnnhx+HDUcR3+2u4k=; b=h3P
	99/tA5x3l5Kw9sGwrd9sOY0rEgtt8iZpEJJ4QEDVhPBlkkns6Bor07giQIt5d/IWd1L4emG5ueWMt
	jlauc9eh7zFyyEa519Sk2huuULgG5YWL9rWJs7NGo70+HTGgSf/zqu1pcerdYhs6m7nbVrt+XIskJ
	DOrFoZAIH+7Ny1Y6BUpErzhuKpqoOOzt+T1SiIWGZsG13U3Aw5kyBvTBg+0efVJC0+N9ZOnvgf3KP
	BZeDAEobLK8Yd+qFpb9Pa5aE5bwYdZrE2Ig44Lttyz7+mkzZxlyvZ3nndh2ivSzmVJp8eUsK9+tIF
	lIDllErFGBOzpcggHdBXBL8L2N6j+0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm4Jw-0002I0-WA; Fri, 12 Jul 2019 22:47:17 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm4Jr-0002H8-Bq
 for linux-mediatek@lists.infradead.org; Fri, 12 Jul 2019 22:47:13 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id ABB956047B; Fri, 12 Jul 2019 23:47:00 +0100 (BST)
From: Sean Young <sean@mess.org>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/3] media: mtk-cir: only allow protocols that have software
 decoders
Date: Fri, 12 Jul 2019 23:46:58 +0100
Message-Id: <20190712224700.11285-1-sean@mess.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_154711_547982_7A12A015 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Ryder Lee <ryder.lee@mediatek.com>, Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

RC_PROTO_BIT_ALL includes protocols like unknown and other that do not
have IR decoders by definition. If these protocols are set in the
allowed_protocols, they will show in the protocols sysfs file but cannot
be enabled.

Signed-off-by: Sean Young <sean@mess.org>
---
 drivers/media/rc/mtk-cir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/rc/mtk-cir.c b/drivers/media/rc/mtk-cir.c
index 46101efe017b..9dc467ebae24 100644
--- a/drivers/media/rc/mtk-cir.c
+++ b/drivers/media/rc/mtk-cir.c
@@ -342,7 +342,7 @@ static int mtk_ir_probe(struct platform_device *pdev)
 	ir->rc->map_name = map_name ?: RC_MAP_EMPTY;
 	ir->rc->dev.parent = dev;
 	ir->rc->driver_name = MTK_IR_DEV;
-	ir->rc->allowed_protocols = RC_PROTO_BIT_ALL;
+	ir->rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 	ir->rc->rx_resolution = MTK_IR_SAMPLE;
 	ir->rc->timeout = MTK_MAX_SAMPLES * (MTK_IR_SAMPLE + 1);
 
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
