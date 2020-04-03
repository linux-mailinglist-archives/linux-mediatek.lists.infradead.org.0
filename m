Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A122D19D466
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Apr 2020 11:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doqEk0Bk21GrKY0m7VnqNo0AcRyEjdKIWVUkYsX6rdI=; b=pFH76sK6iMDA0O
	2C0j0gMRSHeHDtjBBHwQYLy357vJUwqpknfKV5W++6SJ77kBlw9oyxxWwJx8peVhEHPmKXuRzc1Wc
	gz+27VnftZgf1zqj1UrLJ9qNdvMCM4Lctgy2IyVLrWnhHhTbaTm/m+YSZiq8CRkEslv8oUBnijArD
	XHg2t49OrBjPunlA6Wf8HC8FbpJ8fqRWoo8W8/ty6wxTcj6cVgRh/qrKqv6jemXkiLw3CuIBHwY6R
	cPrtXOqXYFcgt9vONi40un6v2VP4HCgv9eNXLRIO6g+iq/v4O57oc8if03WAI5pDcvHIhPNbchVZU
	LVszwBrtsFBibhdRkuoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJ0Q-0002G7-Rk; Fri, 03 Apr 2020 09:52:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIyO-0000N2-VL; Fri, 03 Apr 2020 09:50:50 +0000
X-UUID: 311a8ff635fc49b8a44afa626ea0ec0a-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WpMIy3AkmSG9PNgIdQtrXjvW6Cg2lVIoIoOuUGR4AuY=; 
 b=oRb52GM2RvDVCXcSU/ETZJgS3dFPbVbiq2ylDJaqW+bhOaiouETSzrQjiVz6PhEKX9yUzCwDpAuHI2Ha2gMNlvgas3+eUeiv9p94O7uwdHjdQxTeUQpl2ULpBg3QjiJT4d0mKw9v48SMcKelP+2rp6+2CLVrxf8etytIovhtY88=;
X-UUID: 311a8ff635fc49b8a44afa626ea0ec0a-20200403
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 752306757; Fri, 03 Apr 2020 01:50:38 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 02:40:41 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 3 Apr 2020 17:40:38 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 3 Apr 2020 17:40:38 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v8 06/14] media: platform: Improve the implementation of the
 system PM ops
Date: Fri, 3 Apr 2020 17:40:25 +0800
Message-ID: <20200403094033.8288-7-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200403094033.8288-1-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_025049_022448_D8B66F34 
X-CRM114-Status: GOOD (  10.41  )
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

Cancel reset hw operation in suspend and resume function because this
will be done in device_run().
Add spin_lock and unlock operation in irq and resume function to make
sure that the current frame is processed completely before suspend.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index dd5cadd101ef..2fa3711fdc9b 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -911,6 +911,8 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	u32 dec_ret;
 	int i;
 
+	spin_lock(&jpeg->hw_lock);
+
 	dec_ret = mtk_jpeg_dec_get_int_status(jpeg->dec_reg_base);
 	dec_irq_ret = mtk_jpeg_dec_enum_result(dec_ret);
 	ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);
@@ -941,6 +943,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	v4l2_m2m_buf_done(src_buf, buf_state);
 	v4l2_m2m_buf_done(dst_buf, buf_state);
 	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
+	spin_unlock(&jpeg->hw_lock);
 	pm_runtime_put_sync(ctx->jpeg->dev);
 	return IRQ_HANDLED;
 }
@@ -1191,7 +1194,6 @@ static __maybe_unused int mtk_jpeg_pm_suspend(struct device *dev)
 {
 	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
 	mtk_jpeg_clk_off(jpeg);
 
 	return 0;
@@ -1202,19 +1204,24 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
 	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
 	mtk_jpeg_clk_on(jpeg);
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
 
 	return 0;
 }
 
 static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
 {
+	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
+	unsigned long flags;
 	int ret;
 
 	if (pm_runtime_suspended(dev))
 		return 0;
 
+	spin_lock_irqsave(&jpeg->hw_lock, flags);
+
 	ret = mtk_jpeg_pm_suspend(dev);
+
+	spin_unlock_irqrestore(&jpeg->hw_lock, flags);
 	return ret;
 }
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
