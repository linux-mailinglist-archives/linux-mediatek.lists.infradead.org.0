Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD282676A7
	for <lists+linux-mediatek@lfdr.de>; Sat, 13 Jul 2019 00:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DLFXHMbs7rqOXJ5ctqFxjJMg5S4V+Lgggctvd39D95s=; b=uaETlOPUP2aGSt/S0HbWN19I3e
	0FupjUDx/DXNwVYdPJsn59+rXzX97R46H9z0DBVz0ca5wKIQTeofbBsItOWBV15DKm7v8CIQaZ1/g
	xdkCQPsBEoU2a0T4io9qN7YD6FysuQ+vK2yx5siIFnBprPchl3tu1z9Xwc/tY83sYg/2n116Qc/+5
	rLbEJbTKh59feyKHYjubcEHTovRaIzwLc2Vbk4XvvC/9h+6HwnL2Elyym3mn2Ulp4VqStHBxzgrR0
	/y5iTpwr/dSDdmUyzxAMxklp/IYKtQS+IIQwRzx/9f0HEg9WhmZesVxqOQ5Ozjin+X1dFHpd3FEkc
	WsOBA13A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm4Jz-0002Ig-RP; Fri, 12 Jul 2019 22:47:19 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm4Jr-0002H7-C9
 for linux-mediatek@lists.infradead.org; Fri, 12 Jul 2019 22:47:13 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id 1A91060665; Fri, 12 Jul 2019 23:47:01 +0100 (BST)
From: Sean Young <sean@mess.org>
To: linux-media@vger.kernel.org
Subject: [PATCH 3/3] media: mtk-cir: lower de-glitch counter for rc-mm protocol
Date: Fri, 12 Jul 2019 23:47:00 +0100
Message-Id: <20190712224700.11285-3-sean@mess.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190712224700.11285-1-sean@mess.org>
References: <20190712224700.11285-1-sean@mess.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_154711_547982_34FAE5AF 
X-CRM114-Status: UNSURE (   6.93  )
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

The rc-mm protocol can't be decoded by the mtk-cir since the de-glitch
filter removes pulses/spaces shorter than 294 microseconds.

Tested on a BananaPi R2.

Signed-off-by: Sean Young <sean@mess.org>
---
 drivers/media/rc/mtk-cir.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/media/rc/mtk-cir.c b/drivers/media/rc/mtk-cir.c
index 9dc467ebae24..8027181de985 100644
--- a/drivers/media/rc/mtk-cir.c
+++ b/drivers/media/rc/mtk-cir.c
@@ -35,6 +35,11 @@
 /* Fields containing pulse width data */
 #define MTK_WIDTH_MASK		  (GENMASK(7, 0))
 
+/* IR threshold */
+#define MTK_IRTHD		 0x14
+#define MTK_DG_CNT_MASK		 (GENMASK(12, 8))
+#define MTK_DG_CNT(x)		 ((x) << 8)
+
 /* Bit to enable interrupt */
 #define MTK_IRINT_EN		  BIT(0)
 
@@ -400,6 +405,9 @@ static int mtk_ir_probe(struct platform_device *pdev)
 	mtk_w32_mask(ir, val, ir->data->fields[MTK_HW_PERIOD].mask,
 		     ir->data->fields[MTK_HW_PERIOD].reg);
 
+	/* Set de-glitch counter */
+	mtk_w32_mask(ir, MTK_DG_CNT(1), MTK_DG_CNT_MASK, MTK_IRTHD);
+
 	/* Enable IR and PWM */
 	val = mtk_r32(ir, MTK_CONFIG_HIGH_REG);
 	val |= MTK_OK_COUNT(ir->data->ok_count) |  MTK_PWM_EN | MTK_IR_EN;
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
