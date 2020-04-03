Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3B419D468
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Apr 2020 11:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gLgF4uvUAUyc+BiK+CCicxzW6VGPYABxZt2ZSEZqug=; b=odZCyHGpb0qUBU
	EkQmrCNyQ4snVEheaPkADb5wNmXrQM7wYk/wFgn0ybOZ5K8ZXjue1FjOzuhToQDgbx6XtDNQ8HuR2
	tBC4DMbfUk9lHpu2IIUAg97OZfGfUvXozi3eO3kXlbST7g+Cyg9v9AIo1qHnIe87EAIz5Q5H6VkOu
	dziS2WYt1yHPlcBuAZw87Gd2zBepNhjpwMHUMxx7rTi6GIcFx2/4oayOhRd4MmrHRMmT9JkSQnAff
	2f4ZV0W7u1HXzV341h23D46nn6BC+8MUOhw6vdzB+rqFFUIWpkJEzrKVMCINwtIQ/teeIAJEoeUKy
	rzhFX25OO0Z/BSAGkP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJ0b-0002QA-AC; Fri, 03 Apr 2020 09:53:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIyP-0000OY-Vk; Fri, 03 Apr 2020 09:50:51 +0000
X-UUID: 03c1515a64804a1693cc9d166f7d5a2d-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=pm/C6wkpcwoRE/CCieW0EFzNKBkWkCFOYLbu5+5Ga74=; 
 b=uKLn6eZ0SVdH/DdMHuIe1AFFhQyt1TizIDmzlv56RoMY1SpxKf2IWbDp3iylWjccuwjR8QCfC/lbjpL1lhznZYJ0BKAQtHVsQfLfJvP0sHOCFSdOEc/w0gag1DguQ5hmoPGN8U1NmJNFk/1TtA13wjE03NuFwbfqeubxzcPaLHI=;
X-UUID: 03c1515a64804a1693cc9d166f7d5a2d-20200403
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 55669531; Fri, 03 Apr 2020 01:50:38 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 02:40:40 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 3 Apr 2020 17:40:37 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 3 Apr 2020 17:40:36 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v8 05/14] media: platform: Improve power on and power off flow
Date: Fri, 3 Apr 2020 17:40:24 +0800
Message-ID: <20200403094033.8288-6-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200403094033.8288-1-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_025050_050314_B0341744 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Call pm_runtime_get_sync() before starting a frame and then
pm_runtime_put() after completing it. This can save power for the time
between processing two frames.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 27 +++++--------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index a536fa95b3d6..dd5cadd101ef 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -710,23 +710,6 @@ static struct vb2_v4l2_buffer *mtk_jpeg_buf_remove(struct mtk_jpeg_ctx *ctx,
 		return v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 }
 
-static int mtk_jpeg_start_streaming(struct vb2_queue *q, unsigned int count)
-{
-	struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
-	struct vb2_v4l2_buffer *vb;
-	int ret = 0;
-
-	ret = pm_runtime_get_sync(ctx->jpeg->dev);
-	if (ret < 0)
-		goto err;
-
-	return 0;
-err:
-	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
-		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_QUEUED);
-	return ret;
-}
-
 static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
 {
 	struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
@@ -751,8 +734,6 @@ static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
 
 	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
 		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
-
-	pm_runtime_put_sync(ctx->jpeg->dev);
 }
 
 static const struct vb2_ops mtk_jpeg_qops = {
@@ -761,7 +742,6 @@ static const struct vb2_ops mtk_jpeg_qops = {
 	.buf_queue          = mtk_jpeg_buf_queue,
 	.wait_prepare       = vb2_ops_wait_prepare,
 	.wait_finish        = vb2_ops_wait_finish,
-	.start_streaming    = mtk_jpeg_start_streaming,
 	.stop_streaming     = mtk_jpeg_stop_streaming,
 };
 
@@ -812,7 +792,7 @@ static void mtk_jpeg_device_run(void *priv)
 	struct mtk_jpeg_src_buf *jpeg_src_buf;
 	struct mtk_jpeg_bs bs;
 	struct mtk_jpeg_fb fb;
-	int i;
+	int i, ret;
 
 	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
@@ -832,6 +812,10 @@ static void mtk_jpeg_device_run(void *priv)
 		return;
 	}
 
+	ret = pm_runtime_get_sync(jpeg->dev);
+	if (ret < 0)
+		goto dec_end;
+
 	mtk_jpeg_set_dec_src(ctx, &src_buf->vb2_buf, &bs);
 	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
 		goto dec_end;
@@ -957,6 +941,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	v4l2_m2m_buf_done(src_buf, buf_state);
 	v4l2_m2m_buf_done(dst_buf, buf_state);
 	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
+	pm_runtime_put_sync(ctx->jpeg->dev);
 	return IRQ_HANDLED;
 }
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
