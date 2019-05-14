Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FF41C2E9
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 08:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cb21+jBI9J6Zle56PbRk8AlWcX9Lvti5QMlo2qQR+7o=; b=DzqZse+Pfjd/Jq
	BbnIDvrf5bsL+bgBF9+p+7cyz2lRvZ8Ov+XrbmOkN3iAU0kWq/PpVjTdZ+QegvpGyTe/1N1LaMTKQ
	74q1Jr/Bv+Zp3TbghKfTCPeictLRe4Ox5LrhFoRiCPtJ0+70NfbcZzgvEopm6aDD3W/XfYhrBh3kF
	w4laBDAiazwH9VqY+JvIFPtEsjAJ8pIRjK3Q6lyVSpalSJZ85uKPg7g0rkBNIBx30hNpxCqNnPeCU
	ucslKCC8cbAbsq8tCOqHNfZ/t9WuKoDnwqZN367z5wpLAWWMiOjgni6yJ53m65jDWfkLk3rwURnZP
	KdAWhQ85RIVh80I8nx0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQiI-00005d-Tq; Tue, 14 May 2019 06:14:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQhR-0007RI-Fw; Tue, 14 May 2019 06:14:07 +0000
X-UUID: 70735b3d47524adf888c13d631cae38e-20190513
X-UUID: 70735b3d47524adf888c13d631cae38e-20190513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1510449243; Mon, 13 May 2019 22:13:57 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:13:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:13:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 14:13:55 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v3 08/13] [media] mtk-mipicsi: enable/disable cmos for mt2712
Date: Tue, 14 May 2019 14:13:45 +0800
Message-ID: <1557814430-9675-9-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
References: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 558BA277E6BA11A095170773E590F33E40DB95F87C438BAB3F404F9A024F06CC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231405_713706_C63E0A0F 
X-CRM114-Status: GOOD (  12.38  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch enable/disable cmos setting for mt2712 when
vb2 start/stop streaming.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index f9123765ebbd..44c01c8d566b 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -93,9 +93,11 @@
 #define CAMSV_MODULE_EN					0x10
 #define CAMSV_FMT_SEL					0x14
 #define CAMSV_INT_EN					0x18
+#define CAMSV_SW_CTL					0x20
 #define CAMSV_CLK_EN					0x30
 
 #define CAMSV_TG_SEN_MODE				0x500
+#define CAMSV_TG_VF_CON					0x504
 #define CAMSV_TG_SEN_GRAB_PXL				0x508
 #define CAMSV_TG_SEN_GRAB_LIN				0x50C
 #define CAMSV_TG_PATH_CFG				0x510
@@ -518,9 +520,25 @@ static int mtk_mipicsi_vb2_start_streaming(struct vb2_queue *vq,
 	struct soc_camera_device *icd = soc_camera_from_vb2q(vq);
 	struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 	struct mtk_mipicsi_dev *mipicsi = ici->priv;
+	unsigned int index = 0;
+	void __iomem *base = NULL;
 
 	icd->vdev->queue = vq;
 
+	for (index = 0U; index < MTK_CAMDMA_MAX_NUM; ++index)
+		if (((mipicsi->link_reg_val >> index) & 0x01U) == 0x01U &&
+			!mipicsi->is_enable_irq[index]) {
+			enable_irq(mipicsi->irq[index]);
+			mipicsi->is_enable_irq[index] = true;
+
+			/*enable cmos_en and vf_en*/
+			base = mipicsi->camsv[index];
+			writel(0x00000001U | readl(base + CAMSV_TG_SEN_MODE),
+				base + CAMSV_TG_SEN_MODE);
+			writel(0x00000001U | readl(base + CAMSV_TG_VF_CON),
+				base + CAMSV_TG_VF_CON);
+		}
+
 	mipicsi->streamon = true;
 	return 0;
 }
@@ -530,7 +548,28 @@ static void mtk_mipicsi_vb2_stop_streaming(struct vb2_queue *vq)
 	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vq);
 	struct mtk_mipicsi_buf *buf = NULL;
 	struct mtk_mipicsi_buf *tmp = NULL;
+	unsigned int i = 0U;
 	unsigned int index = 0;
+	void __iomem *base = NULL;
+
+	for (i = 0U; i < MTK_CAMDMA_MAX_NUM; ++i)
+		if (((mipicsi->link_reg_val >> i) & 0x01U) == 0x01U) {
+			/*disable cmos_en and vf_en*/
+			base = mipicsi->camsv[i];
+			writel(readl(base + CAMSV_TG_SEN_MODE) & 0xFFFFFFFEU,
+				base + CAMSV_TG_SEN_MODE);
+			writel(readl(base + CAMSV_TG_VF_CON) & 0xFFFFFFFEU,
+				base + CAMSV_TG_VF_CON);
+			/*camsv reset*/
+			base = mipicsi->camsv[i];
+			writel(0x00000004U | readl(base + CAMSV_SW_CTL),
+				base + CAMSV_SW_CTL);
+			writel(readl(base + CAMSV_SW_CTL) & 0xFFFFFFFBU,
+				base + CAMSV_SW_CTL);
+			disable_irq(mipicsi->irq[i]);
+			mipicsi->is_enable_irq[i] = false;
+			mipicsi->irq_status[i] = false;
+		}
 
 	spin_lock(&mipicsi->queue_lock);
 	while (list_empty(&(mipicsi->fb_list)) == 0) {
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
