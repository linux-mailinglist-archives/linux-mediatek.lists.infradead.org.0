Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607F010C291
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 Nov 2019 03:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6Aeo34Oy6EF6xJbZhgFsz0LVXZ7qcsFzE/fEIHFZ/E=; b=Zbbkhf0LhsXI5n
	jBJtS3G5fYc7VldmkFBHwabAKLrqujB9kKl3OZ5aXQJoRNsdqtqVr4OSeSChErC7phtXdnkG/oY/h
	VMvQEk1OwMpKrYiPnoZXet/s3sCREBtgTepgQ+JMt4WSoIJftDHgS4F1e2Lwgy5jRMUcNkjo6MQyi
	y3ICNa0H4l+WM6ZN4HVgRLYilbdXmuxSTK7dMlomxkHLZohHkFYfyhHq1D/Lg6pmuCo2MRQlmYZte
	tMa6nqzDGjYWIrd42APHO5dOExZkn4VdXuRjc3YDDiagyx1gOhAkhninHvKVhn/x0NHlNqiS8As08
	UwR/enk5RxwwJQ4/RZ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9n9-0001Az-FZ; Thu, 28 Nov 2019 02:44:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9la-0007zF-Dm; Thu, 28 Nov 2019 02:42:53 +0000
X-UUID: 64ff444db3ae411ca8f975ee1e826477-20191127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=t5+gcIjAum7qHLBmHalYYJ/ZCOBTVsMq/pId+7feYcY=; 
 b=PsD4IEkKuB42hHp08FkZ85aEm41WmXkpIkwvzcBSDTzazk3GAwZmdSPYOOSvMefy1Oq9FUW6rGo4nmIMJ7PzSoGZ/ZhkZL65F4s6UGPB0Zg/GRT13DQssgb9OFP6QPZev+WXLX7w2BS3mIGFtFjNkfCWypH/KX5Oiinaev31dS0=;
X-UUID: 64ff444db3ae411ca8f975ee1e826477-20191127
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2087524589; Wed, 27 Nov 2019 18:42:44 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 18:42:51 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 28 Nov 2019 10:42:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 28 Nov 2019 10:42:46 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v1 5/6] drm/mediatek: support CMDQ interface in ddp component
Date: Thu, 28 Nov 2019 10:42:37 +0800
Message-ID: <20191128024238.9399-6-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_184250_588555_ADD091AB 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The CMDQ (Command Queue) in MT8183 is used to help
update all relevant display controller registers
with critical time limation.
This patch add cmdq interface in ddp_comp interface,
let all ddp_comp interface can support cpu/cmdq function
at the same time.

Signed-off-by: YT Shen <yt.shen@mediatek.com>
Signed-off-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  65 ++++++-----
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  11 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 120 ++++++++++++++------
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  55 ++++++---
 6 files changed, 190 insertions(+), 111 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
index 59de2a46aa49..6fb0d6983a4a 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
@@ -9,6 +9,7 @@
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -45,12 +46,12 @@ static inline struct mtk_disp_color *comp_to_color(struct mtk_ddp_comp *comp)
 
 static void mtk_color_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
-			     unsigned int bpc)
+			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_disp_color *color = comp_to_color(comp);
 
-	writel(w, comp->regs + DISP_COLOR_WIDTH(color));
-	writel(h, comp->regs + DISP_COLOR_HEIGHT(color));
+	mtk_ddp_write(cmdq_pkt, w, comp, DISP_COLOR_WIDTH(color));
+	mtk_ddp_write(cmdq_pkt, h, comp, DISP_COLOR_HEIGHT(color));
 }
 
 static void mtk_color_start(struct mtk_ddp_comp *comp)
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 722a5adb79dc..0732cd3ee4c8 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -12,6 +12,7 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -125,14 +126,15 @@ static void mtk_ovl_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
 			   unsigned int h, unsigned int vrefresh,
-			   unsigned int bpc)
+			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	if (w != 0 && h != 0)
-		writel_relaxed(h << 16 | w, comp->regs + DISP_REG_OVL_ROI_SIZE);
-	writel_relaxed(0x0, comp->regs + DISP_REG_OVL_ROI_BGCLR);
+		mtk_ddp_write_relaxed(cmdq_pkt, h << 16 | w, comp,
+				      DISP_REG_OVL_ROI_SIZE);
+	mtk_ddp_write_relaxed(cmdq_pkt, 0x0, comp, DISP_REG_OVL_ROI_BGCLR);
 
-	writel(0x1, comp->regs + DISP_REG_OVL_RST);
-	writel(0x0, comp->regs + DISP_REG_OVL_RST);
+	mtk_ddp_write(cmdq_pkt, 0x1, comp, DISP_REG_OVL_RST);
+	mtk_ddp_write(cmdq_pkt, 0x0, comp, DISP_REG_OVL_RST);
 }
 
 static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
@@ -176,16 +178,16 @@ static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
 	return 0;
 }
 
-static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
+static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx,
+			     struct cmdq_pkt *cmdq_pkt)
 {
-	unsigned int reg;
 	unsigned int gmc_thrshd_l;
 	unsigned int gmc_thrshd_h;
 	unsigned int gmc_value;
 	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
 
-	writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
-
+	mtk_ddp_write(cmdq_pkt, 0x1, comp,
+		      DISP_REG_OVL_RDMA_CTRL(idx));
 	gmc_thrshd_l = GMC_THRESHOLD_LOW >>
 		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
 	gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
@@ -195,22 +197,19 @@ static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
 	else
 		gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
 			    gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
-	writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
-
-	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
-	reg = reg | BIT(idx);
-	writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
+	mtk_ddp_write(cmdq_pkt, gmc_value,
+		      comp, DISP_REG_OVL_RDMA_GMC(idx));
+	mtk_ddp_write_mask(cmdq_pkt, BIT(idx), comp,
+			   DISP_REG_OVL_SRC_CON, BIT(idx));
 }
 
-static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx)
+static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx,
+			      struct cmdq_pkt *cmdq_pkt)
 {
-	unsigned int reg;
-
-	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
-	reg = reg & ~BIT(idx);
-	writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
-
-	writel(0x0, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
+	mtk_ddp_write_mask(cmdq_pkt, 0, comp,
+			   DISP_REG_OVL_SRC_CON, BIT(idx));
+	mtk_ddp_write(cmdq_pkt, 0, comp,
+		      DISP_REG_OVL_RDMA_CTRL(idx));
 }
 
 static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
@@ -250,7 +249,8 @@ static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
 }
 
 static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
-				 struct mtk_plane_state *state)
+				 struct mtk_plane_state *state,
+				 struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
 	struct mtk_plane_pending_state *pending = &state->pending;
@@ -262,7 +262,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	unsigned int con;
 
 	if (!pending->enable)
-		mtk_ovl_layer_off(comp, idx);
+		mtk_ovl_layer_off(comp, idx, cmdq_pkt);
 
 	con = ovl_fmt_convert(ovl, fmt);
 	if (idx != 0)
@@ -278,14 +278,19 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 		addr += pending->pitch - 1;
 	}
 
-	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
-	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
-	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
-	writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
-	writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, con, comp,
+			      DISP_REG_OVL_CON(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp,
+			      DISP_REG_OVL_PITCH(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, src_size, comp,
+			      DISP_REG_OVL_SRC_SIZE(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, offset, comp,
+			      DISP_REG_OVL_OFFSET(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, addr, comp,
+			      DISP_REG_OVL_ADDR(ovl, idx));
 
 	if (pending->enable)
-		mtk_ovl_layer_on(comp, idx);
+		mtk_ovl_layer_on(comp, idx, cmdq_pkt);
 }
 
 static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
index 15cc4ae84aee..c1abde3743bf 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
@@ -10,6 +10,7 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -127,15 +128,17 @@ static void mtk_rdma_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
 			    unsigned int height, unsigned int vrefresh,
-			    unsigned int bpc)
+			    unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	unsigned int threshold;
 	unsigned int reg;
 	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
 	u32 rdma_fifo_size;
 
-	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
-	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);
+	mtk_ddp_write_mask(cmdq_pkt, width, comp,
+			   DISP_REG_RDMA_SIZE_CON_0, 0xfff);
+	mtk_ddp_write_mask(cmdq_pkt, height, comp,
+			   DISP_REG_RDMA_SIZE_CON_1, 0xfffff);
 
 	if (rdma->fifo_size)
 		rdma_fifo_size = rdma->fifo_size;
@@ -152,7 +155,7 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
 	reg = RDMA_FIFO_UNDERFLOW_EN |
 	      RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
 	      RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
-	writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
+	mtk_ddp_write(cmdq_pkt, reg, comp, DISP_REG_RDMA_FIFO_CON);
 }
 
 static unsigned int rdma_fmt_convert(struct mtk_disp_rdma *rdma,
@@ -198,7 +201,8 @@ static unsigned int mtk_rdma_layer_nr(struct mtk_ddp_comp *comp)
 }
 
 static void mtk_rdma_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
-				  struct mtk_plane_state *state)
+				  struct mtk_plane_state *state,
+				  struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
 	struct mtk_plane_pending_state *pending = &state->pending;
@@ -208,24 +212,27 @@ static void mtk_rdma_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	unsigned int con;
 
 	con = rdma_fmt_convert(rdma, fmt);
-	writel_relaxed(con, comp->regs + DISP_RDMA_MEM_CON);
+	mtk_ddp_write_relaxed(cmdq_pkt, con, comp, DISP_RDMA_MEM_CON);
 
 	if (fmt == DRM_FORMAT_UYVY || fmt == DRM_FORMAT_YUYV) {
-		rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
-				 RDMA_MATRIX_ENABLE, RDMA_MATRIX_ENABLE);
-		rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
-				 RDMA_MATRIX_INT_MTX_SEL,
-				 RDMA_MATRIX_INT_MTX_BT601_to_RGB);
+		mtk_ddp_write_mask(cmdq_pkt, RDMA_MATRIX_ENABLE, comp,
+				   DISP_REG_RDMA_SIZE_CON_0,
+				   RDMA_MATRIX_ENABLE);
+		mtk_ddp_write_mask(cmdq_pkt, RDMA_MATRIX_INT_MTX_BT601_to_RGB,
+				   comp, DISP_REG_RDMA_SIZE_CON_0,
+				   RDMA_MATRIX_INT_MTX_SEL);
 	} else {
-		rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
-				 RDMA_MATRIX_ENABLE, 0);
+		mtk_ddp_write_mask(cmdq_pkt, 0, comp,
+				   DISP_REG_RDMA_SIZE_CON_0,
+				   RDMA_MATRIX_ENABLE);
 	}
+	mtk_ddp_write_relaxed(cmdq_pkt, addr, comp, DISP_RDMA_MEM_START_ADDR);
+	mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp, DISP_RDMA_MEM_SRC_PITCH);
+	mtk_ddp_write(cmdq_pkt, RDMA_MEM_GMC, comp,
+		      DISP_RDMA_MEM_GMC_SETTING_0);
+	mtk_ddp_write_mask(cmdq_pkt, RDMA_MODE_MEMORY, comp,
+			   DISP_REG_RDMA_GLOBAL_CON, RDMA_MODE_MEMORY);
 
-	writel_relaxed(addr, comp->regs + DISP_RDMA_MEM_START_ADDR);
-	writel_relaxed(pitch, comp->regs + DISP_RDMA_MEM_SRC_PITCH);
-	writel(RDMA_MEM_GMC, comp->regs + DISP_RDMA_MEM_GMC_SETTING_0);
-	rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON,
-			 RDMA_MODE_MEMORY, RDMA_MODE_MEMORY);
 }
 
 static const struct mtk_ddp_comp_funcs mtk_disp_rdma_funcs = {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index b26b7a98587b..fcf4e755e0bd 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -304,7 +304,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		if (prev == DDP_COMPONENT_OVL0)
 			mtk_ddp_comp_bgclr_in_on(comp);
 
-		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
+		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc, NULL);
 		mtk_ddp_comp_start(comp);
 	}
 
@@ -319,7 +319,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
 		if (comp)
 			mtk_ddp_comp_layer_config(comp, local_layer,
-						  plane_state);
+						  plane_state, NULL);
 	}
 
 	return 0;
@@ -383,7 +383,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	if (state->pending_config) {
 		mtk_ddp_comp_config(comp, state->pending_width,
 				    state->pending_height,
-				    state->pending_vrefresh, 0);
+				    state->pending_vrefresh, 0, NULL);
 
 		state->pending_config = false;
 	}
@@ -403,7 +403,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 
 			if (comp)
 				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state);
+							  plane_state, NULL);
 			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
@@ -562,7 +562,8 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
 		mtk_crtc->pending_planes = true;
 	if (crtc->state->color_mgmt_changed)
 		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
-			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i], crtc->state);
+			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
+					  crtc->state, NULL);
 
 	if (priv->data->shadow_register) {
 		mtk_disp_mutex_acquire(mtk_crtc->mutex);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 3407d38aff8f..6d0f349ddf82 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -12,7 +12,8 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
-
+#include <drm/drmP.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 #include "mtk_drm_drv.h"
 #include "mtk_drm_plane.h"
 #include "mtk_drm_ddp_comp.h"
@@ -76,36 +77,82 @@
 #define DITHER_ADD_LSHIFT_G(x)			(((x) & 0x7) << 4)
 #define DITHER_ADD_RSHIFT_G(x)			(((x) & 0x7) << 0)
 
+void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+		   struct mtk_ddp_comp *comp, unsigned int offset)
+{
+	if (cmdq_pkt)
+#ifdef CONFIG_MTK_CMDQ
+		cmdq_pkt_write(cmdq_pkt, comp->subsys,
+			       comp->regs_pa + offset, value);
+#endif
+	else
+		writel(value, comp->regs + offset);
+}
+
+void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+			   struct mtk_ddp_comp *comp,
+			   unsigned int offset)
+{
+	if (cmdq_pkt)
+#ifdef CONFIG_MTK_CMDQ
+		cmdq_pkt_write(cmdq_pkt, comp->subsys,
+			       comp->regs_pa + offset, value);
+#endif
+	else
+		writel_relaxed(value, comp->regs + offset);
+}
+
+void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt,
+			unsigned int value,
+			struct mtk_ddp_comp *comp,
+			unsigned int offset,
+			unsigned int mask)
+{
+	if (cmdq_pkt) {
+#ifdef CONFIG_MTK_CMDQ
+		cmdq_pkt_write_mask(cmdq_pkt, comp->subsys,
+				    comp->regs_pa + offset, value, mask);
+#endif
+	} else {
+		u32 tmp = readl(comp->regs + offset);
+
+		tmp = (tmp & ~mask) | (value & mask);
+		writel(tmp, comp->regs + offset);
+	}
+}
+
 void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
-		    unsigned int CFG)
+		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
 {
 	/* If bpc equal to 0, the dithering function didn't be enabled */
 	if (bpc == 0)
 		return;
 
 	if (bpc >= MTK_MIN_BPC) {
-		writel(0, comp->regs + DISP_DITHER_5);
-		writel(0, comp->regs + DISP_DITHER_7);
-		writel(DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
-		       DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
-		       DITHER_NEW_BIT_MODE,
-		       comp->regs + DISP_DITHER_15);
-		writel(DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
-		       DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
-		       DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
-		       DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
-		       comp->regs + DISP_DITHER_16);
-		writel(DISP_DITHERING, comp->regs + CFG);
+		mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_5);
+		mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_7);
+		mtk_ddp_write(cmdq_pkt,
+			      DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
+			      DITHER_NEW_BIT_MODE,
+			      comp, DISP_DITHER_15);
+		mtk_ddp_write(cmdq_pkt,
+			      DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
+			      DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
+			      comp, DISP_DITHER_16);
+		mtk_ddp_write(cmdq_pkt, DISP_DITHERING, comp, CFG);
 	}
 }
 
 static void mtk_od_config(struct mtk_ddp_comp *comp, unsigned int w,
 			  unsigned int h, unsigned int vrefresh,
-			  unsigned int bpc)
+			  unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(w << 16 | h, comp->regs + DISP_OD_SIZE);
-	writel(OD_RELAYMODE, comp->regs + DISP_OD_CFG);
-	mtk_dither_set(comp, bpc, DISP_OD_CFG);
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, comp, DISP_OD_SIZE);
+	mtk_ddp_write(cmdq_pkt, OD_RELAYMODE, comp, DISP_OD_CFG);
+	mtk_dither_set(comp, bpc, DISP_OD_CFG, cmdq_pkt);
 }
 
 static void mtk_od_start(struct mtk_ddp_comp *comp)
@@ -120,9 +167,9 @@ static void mtk_ufoe_start(struct mtk_ddp_comp *comp)
 
 static void mtk_aal_config(struct mtk_ddp_comp *comp, unsigned int w,
 			   unsigned int h, unsigned int vrefresh,
-			   unsigned int bpc)
+			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_AAL_SIZE);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_AAL_SIZE);
 }
 
 static void mtk_aal_start(struct mtk_ddp_comp *comp)
@@ -137,10 +184,10 @@ static void mtk_aal_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
-			     unsigned int bpc)
+			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_CCORR_SIZE);
-	writel(CCORR_RELAY_MODE, comp->regs + DISP_CCORR_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
+	mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
 }
 
 static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
@@ -155,10 +202,10 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
 			      unsigned int h, unsigned int vrefresh,
-			      unsigned int bpc)
+			      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_DITHER_SIZE);
-	writel(DITHER_RELAY_MODE, comp->regs + DISP_DITHER_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_DITHER_SIZE);
+	mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, comp, DISP_DITHER_CFG);
 }
 
 static void mtk_dither_start(struct mtk_ddp_comp *comp)
@@ -173,10 +220,10 @@ static void mtk_dither_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
-			     unsigned int bpc)
+			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_GAMMA_SIZE);
-	mtk_dither_set(comp, bpc, DISP_GAMMA_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_GAMMA_SIZE);
+	mtk_dither_set(comp, bpc, DISP_GAMMA_CFG, cmdq_pkt);
 }
 
 static void mtk_gamma_start(struct mtk_ddp_comp *comp)
@@ -190,24 +237,23 @@ static void mtk_gamma_stop(struct mtk_ddp_comp *comp)
 }
 
 static void mtk_gamma_set(struct mtk_ddp_comp *comp,
-			  struct drm_crtc_state *state)
+			  struct drm_crtc_state *state,
+			  struct cmdq_pkt *cmdq_pkt)
 {
-	unsigned int i, reg;
+	unsigned int i;
 	struct drm_color_lut *lut;
-	void __iomem *lut_base;
 	u32 word;
 
 	if (state->gamma_lut) {
-		reg = readl(comp->regs + DISP_GAMMA_CFG);
-		reg = reg | GAMMA_LUT_EN;
-		writel(reg, comp->regs + DISP_GAMMA_CFG);
-		lut_base = comp->regs + DISP_GAMMA_LUT;
+		mtk_ddp_write_mask(cmdq_pkt, GAMMA_LUT_EN, comp,
+				   DISP_GAMMA_CFG, GAMMA_LUT_EN);
 		lut = (struct drm_color_lut *)state->gamma_lut->data;
 		for (i = 0; i < MTK_LUT_SIZE; i++) {
 			word = (((lut[i].red >> 6) & LUT_10BIT_MASK) << 20) +
 				(((lut[i].green >> 6) & LUT_10BIT_MASK) << 10) +
 				((lut[i].blue >> 6) & LUT_10BIT_MASK);
-			writel(word, (lut_base + i * 4));
+			mtk_ddp_write(cmdq_pkt, word, comp,
+				      DISP_GAMMA_LUT + i * 4);
 		}
 	}
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index ec55c7488cc3..5b0a3d48dfa6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -69,25 +69,30 @@ enum mtk_ddp_comp_id {
 };
 
 struct mtk_ddp_comp;
-
+struct cmdq_pkt;
 struct mtk_ddp_comp_funcs {
 	void (*config)(struct mtk_ddp_comp *comp, unsigned int w,
-		       unsigned int h, unsigned int vrefresh, unsigned int bpc);
+		       unsigned int h, unsigned int vrefresh,
+		       unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
 	void (*start)(struct mtk_ddp_comp *comp);
 	void (*stop)(struct mtk_ddp_comp *comp);
 	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
 	void (*disable_vblank)(struct mtk_ddp_comp *comp);
 	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
 	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
-	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
-	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
+	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx,
+			 struct cmdq_pkt *cmdq_pkt);
+	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx,
+			  struct cmdq_pkt *cmdq_pkt);
 	int (*layer_check)(struct mtk_ddp_comp *comp,
 			   unsigned int idx,
 			   struct mtk_plane_state *state);
 	void (*layer_config)(struct mtk_ddp_comp *comp, unsigned int idx,
-			     struct mtk_plane_state *state);
+			     struct mtk_plane_state *state,
+			     struct cmdq_pkt *cmdq_pkt);
 	void (*gamma_set)(struct mtk_ddp_comp *comp,
-			  struct drm_crtc_state *state);
+			  struct drm_crtc_state *state,
+			  struct cmdq_pkt *cmdq_pkt);
 	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
 	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
 };
@@ -99,14 +104,17 @@ struct mtk_ddp_comp {
 	struct device *dev;
 	enum mtk_ddp_comp_id id;
 	const struct mtk_ddp_comp_funcs *funcs;
+	resource_size_t regs_pa;
+	u8 subsys;
 };
 
 static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
 				       unsigned int w, unsigned int h,
-				       unsigned int vrefresh, unsigned int bpc)
+				       unsigned int vrefresh, unsigned int bpc,
+				       struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->config)
-		comp->funcs->config(comp, w, h, vrefresh, bpc);
+		comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
 }
 
 static inline void mtk_ddp_comp_start(struct mtk_ddp_comp *comp)
@@ -152,17 +160,19 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
 }
 
 static inline void mtk_ddp_comp_layer_on(struct mtk_ddp_comp *comp,
-					 unsigned int idx)
+					 unsigned int idx,
+					 struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->layer_on)
-		comp->funcs->layer_on(comp, idx);
+		comp->funcs->layer_on(comp, idx, cmdq_pkt);
 }
 
 static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
-					  unsigned int idx)
+					  unsigned int idx,
+					  struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->layer_off)
-		comp->funcs->layer_off(comp, idx);
+		comp->funcs->layer_off(comp, idx, cmdq_pkt);
 }
 
 static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
@@ -176,17 +186,19 @@ static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
 
 static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
 					     unsigned int idx,
-					     struct mtk_plane_state *state)
+					     struct mtk_plane_state *state,
+					     struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->layer_config)
-		comp->funcs->layer_config(comp, idx, state);
+		comp->funcs->layer_config(comp, idx, state, cmdq_pkt);
 }
 
 static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
-				     struct drm_crtc_state *state)
+				     struct drm_crtc_state *state,
+				     struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->gamma_set)
-		comp->funcs->gamma_set(comp, state);
+		comp->funcs->gamma_set(comp, state, cmdq_pkt);
 }
 
 static inline void mtk_ddp_comp_bgclr_in_on(struct mtk_ddp_comp *comp)
@@ -209,6 +221,13 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,
 int mtk_ddp_comp_register(struct drm_device *drm, struct mtk_ddp_comp *comp);
 void mtk_ddp_comp_unregister(struct drm_device *drm, struct mtk_ddp_comp *comp);
 void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
-		    unsigned int CFG);
-
+		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt);
+enum mtk_ddp_comp_type mtk_ddp_comp_get_type(enum mtk_ddp_comp_id comp_id);
+void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+		   struct mtk_ddp_comp *comp, unsigned int offset);
+void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+			   struct mtk_ddp_comp *comp, unsigned int offset);
+void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+			struct mtk_ddp_comp *comp, unsigned int offset,
+			unsigned int mask);
 #endif /* MTK_DRM_DDP_COMP_H */
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
