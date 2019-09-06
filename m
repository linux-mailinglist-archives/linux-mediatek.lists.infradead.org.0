Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF3FAB76E
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 13:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E/MlSlFOWKIHkw1LH1kMcK/jgPbyU7l6raWbFaTCVg=; b=LafrzSk5TF5SJ/
	iwxEPOzATssXxX4pAgca98yIcpOsUSzJHXsPgbzQHQcl9781aemssBrt6CdKLF8IHpx2/JBx5g5iI
	c34i9CZIntdFkGhGA6v2WuIV7IO+SlPty72TJ1bvYJpA72O7zl6BqvSGanfmxYwkNEZSC2ikmDGtE
	rFSmXN29eTAHfqKB3Ekkfh0XrIPFN1ojG1z6AYZRCewypfCmH92begsdwpwFEnuLmUdB5/hGCYwH6
	Pwy+V2meZ+/7fqH8VO+bpu3l9lEa5Mt50c0yKqDDDmG66C79YDn1VXpI+5M1XuJrzGi703IYEK08z
	7GqRyMMq+mB5NY2UlIig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Cq3-0003lL-Pg; Fri, 06 Sep 2019 11:55:39 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Cq0-0003dU-3O
 for linux-mediatek@lists.infradead.org; Fri, 06 Sep 2019 11:55:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id m3so3353234pgv.13
 for <linux-mediatek@lists.infradead.org>; Fri, 06 Sep 2019 04:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xs0FBb2Eh/a0ZfUN3lmjqgA2lvRsBqNMJJ4Hr+t8rsk=;
 b=kmeCQIBiGhW+tQk1fg/PEzbkGpG3iO+oFGAUpfEbSWNTm3PcVsny+MysO5F3WoE8LT
 6a1P2nxNWtuzOcJDNmFvJvCTt/BzxCDIh+lGvKuymsWqD5KYCc1+yhDA5KbdNkk90OvF
 BXy91nw60TByc1eZCT/j7tGOHhq8l0wGAhkwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xs0FBb2Eh/a0ZfUN3lmjqgA2lvRsBqNMJJ4Hr+t8rsk=;
 b=UYOe4ppyDwI1Oszw53TaNHE91O1Q9CwBKn5Xa3zvdKGK+u8iOAB5VUmnfV8clO/EXf
 mlus+hWtU9EAFFzfbRlVntiW465rCJMhZkJ3L3iGxlhILPUhZgP3d+e5RqxHFIsyMYhB
 mxe9zE4Ow2Uyo3WZ7hktaxQvOhOzUHm29LU9G24B8nsl1q7Eurz9cZ/lpHip3paRge1p
 c2fdFv9gJUc44bgAas2XkwySyhUcRKsOcLk1XJ/c6eSTv0ttAy5LMQ4XYew5eg/fp/nf
 kx1xuppfZlLPZ1Ke/6M0F///M3gB2e2+LOdCjK/w0IskH57EtUgeqZKpigUIbrHRxjUw
 xbiA==
X-Gm-Message-State: APjAAAXe0EvyMRycC/Gdp4H4w64WjkhXw7Cd9boOPfItzf+2B5yHcPLM
 qMpVwDGEy5INSgz5rjlKFsOiJw==
X-Google-Smtp-Source: APXvYqyowvNhtzHl1k0Wi0wS4lHGEUaq8Era+YDWf70Q5A7/cxadAiuvSkuQdQrv8pFKymQ7yzZiUQ==
X-Received: by 2002:aa7:920b:: with SMTP id 11mr9848278pfo.231.1567770935302; 
 Fri, 06 Sep 2019 04:55:35 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id o22sm3667394pjq.21.2019.09.06.04.55.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 04:55:34 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFC PATCH v2 02/13] media: mtk-vcodec: vdec: set VPI IPI handler in
 one place
Date: Fri,  6 Sep 2019 20:55:02 +0900
Message-Id: <20190906115513.159705-3-acourbot@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190906115513.159705-1-acourbot@chromium.org>
References: <20190906115513.159705-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_045536_144329_3D8A9F16 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Courbot <acourbot@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Each of the supported decoder formats used to set the same RPC
interrupt handler by themselves, even though this could be done
by the IF init function itself. Move it to the right place and stop
making its symbol public.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c | 1 -
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c  | 1 -
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c  | 1 -
 drivers/media/platform/mtk-vcodec/vdec_vpu_if.c       | 9 ++++++++-
 drivers/media/platform/mtk-vcodec/vdec_vpu_if.h       | 9 ---------
 5 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
index 49aa85a9bb5a..50048c170b99 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
@@ -283,7 +283,6 @@ static int vdec_h264_init(struct mtk_vcodec_ctx *ctx)
 	inst->vpu.id = IPI_VDEC_H264;
 	inst->vpu.dev = ctx->dev->vpu_plat_dev;
 	inst->vpu.ctx = ctx;
-	inst->vpu.handler = vpu_dec_ipi_handler;
 
 	err = vpu_dec_init(&inst->vpu);
 	if (err) {
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
index 63a8708ce682..6011fdd60a22 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
@@ -402,7 +402,6 @@ static int vdec_vp8_init(struct mtk_vcodec_ctx *ctx)
 	inst->vpu.id = IPI_VDEC_VP8;
 	inst->vpu.dev = ctx->dev->vpu_plat_dev;
 	inst->vpu.ctx = ctx;
-	inst->vpu.handler = vpu_dec_ipi_handler;
 
 	err = vpu_dec_init(&inst->vpu);
 	if (err) {
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
index 5066c283d86d..24c1f0bf2147 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
@@ -793,7 +793,6 @@ static int vdec_vp9_init(struct mtk_vcodec_ctx *ctx)
 	inst->vpu.id = IPI_VDEC_VP9;
 	inst->vpu.dev = ctx->dev->vpu_plat_dev;
 	inst->vpu.ctx = ctx;
-	inst->vpu.handler = vpu_dec_ipi_handler;
 
 	if (vpu_dec_init(&inst->vpu)) {
 		mtk_vcodec_err(inst, "vp9_dec_vpu_init failed");
diff --git a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
index 3f38cc4509ef..70abfd4cd4b9 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
@@ -25,10 +25,16 @@ static void handle_init_ack_msg(struct vdec_vpu_ipi_init_ack *msg)
 }
 
 /*
+ * vpu_dec_ipi_handler - Handler for VPU ipi message.
+ *
+ * @data: ipi message
+ * @len : length of ipi message
+ * @priv: callback private data which is passed by decoder when register.
+ *
  * This function runs in interrupt context and it means there's an IPI MSG
  * from VPU.
  */
-void vpu_dec_ipi_handler(void *data, unsigned int len, void *priv)
+static void vpu_dec_ipi_handler(void *data, unsigned int len, void *priv)
 {
 	struct vdec_vpu_ipi_ack *msg = data;
 	struct vdec_vpu_inst *vpu = (struct vdec_vpu_inst *)
@@ -102,6 +108,7 @@ int vpu_dec_init(struct vdec_vpu_inst *vpu)
 	mtk_vcodec_debug_enter(vpu);
 
 	init_waitqueue_head(&vpu->wq);
+	vpu->handler = vpu_dec_ipi_handler;
 
 	err = vpu_ipi_register(vpu->dev, vpu->id, vpu->handler, "vdec", NULL);
 	if (err != 0) {
diff --git a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.h b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.h
index b76f717e4fd7..f779b0676fbd 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.h
+++ b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.h
@@ -76,13 +76,4 @@ int vpu_dec_deinit(struct vdec_vpu_inst *vpu);
  */
 int vpu_dec_reset(struct vdec_vpu_inst *vpu);
 
-/**
- * vpu_dec_ipi_handler - Handler for VPU ipi message.
- *
- * @data: ipi message
- * @len : length of ipi message
- * @priv: callback private data which is passed by decoder when register.
- */
-void vpu_dec_ipi_handler(void *data, unsigned int len, void *priv);
-
 #endif
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
