Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B442BEC6
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrgCV4CUhNiUr6qtn3J7gOHL0EexQtWWOdPU0XPXxq8=; b=XGgEf9ZAf5rLIm
	e8tQ1kxq8JmnorOCGLxpoa7/bxhvLRF9qber3Kj1l/xWUOj7Igq2lRngmcLOqW5ioPTZncwew7mcg
	lgvRZ+zPex4gyPKbo6sGSNOWztN35lssbBnoKMZMGk/tCiqyMIpbKG7EpTPVws4Jz/GsXDGsNb4yF
	u0gt4JaPuqrZ9RfDhmzJPgfXKh0ba5J7JV5PZautfdcc9g8mQ2M6XON9bdK+5ISBnJH1dB79kDz02
	ICv6710O5BkVIUKIEYfqrE81IzDOXHdTxtsCn5CW+22eB6JuY4EzF0yKvXSzCHz+T5sO6T/3UlDKt
	9mAmpbNf1ZjJwLqleUpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVV6s-0002Ck-VO; Tue, 28 May 2019 05:57:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV6o-0002B5-Bx
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 05:57:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id u22so3472964pfm.3
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 22:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KefH9hgLNmyI7e7vr/ZCgRTmil/8RyoLwPVCfmaHLkc=;
 b=fupxp7ZnWvi0A3WGscA2jxkZmMAwykAM0PNSmLw3/rtoRnS4tKaC+Valxpc0TzKMma
 d7T4NWl+BkLUKfpsoGVOnq/0J4nin7SbFkA2PCDqOpRIcx2a9jhBwZnP6jAWOzNcR40L
 cFTH0f8nQrQkI77/OVbIgBYGtVkyNpxxtpiv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KefH9hgLNmyI7e7vr/ZCgRTmil/8RyoLwPVCfmaHLkc=;
 b=AU6D6Zpg76CnCDnuuO1jb03sFED2QRiMsabGvAMFmFTIAgVIkNUIz6Bdwu9mVGyuDs
 KtzyDdT6GtShO6KdtyuU3h8hdO+r0l5ILttfkZLUZcBkqy3Yjg8AlJfcugT/7qyLQLkp
 WiIl9vIC/L/waRRw99xJoNMIU/9caIn4YcoXkBAksKGaz8d25Um8CjP0nDYEngJqav64
 JKA+MZgTM1e0ZxCSWa+Omh/ZAmmFaUToIM8Ry6m2reDpr33RKRPr9QSYBS+W2MG94xn8
 BobjZMvDnWp0zt4jMLBoLlN6ywMcpBcJLSzpPOZwx99IydqzmuYJqyG4DVwNsZlM91Dg
 C6pw==
X-Gm-Message-State: APjAAAXQyB0misncXGspSD3pJAgnI4caO6dmRzOvQ5G4xxzMreRD9fJ/
 BrYly3lz+ehbPzn/VfeiZBt+kw==
X-Google-Smtp-Source: APXvYqzD+iE7Ee4VgLwX51IgTsqSTHLInBDxLP/5H6VK5Aie0S6PhhwU92pgJVm2Pky37KHIBe5TDg==
X-Received: by 2002:a65:56cb:: with SMTP id
 w11mr110399459pgs.236.1559023033466; 
 Mon, 27 May 2019 22:57:13 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id w1sm13950551pfg.51.2019.05.27.22.57.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 22:57:12 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFCv1 01/12] media: mtk-vcodec: avoid unneeded pointer-to-long
 conversions
Date: Tue, 28 May 2019 14:56:24 +0900
Message-Id: <20190528055635.12109-2-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190528055635.12109-1-acourbot@chromium.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_225714_440595_B62D434D 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Courbot <acourbot@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The interface used to communicate with the firmware casts pointers
into unsigned longs and back again in order to store private
references, all of this for pointers that remain purely in the kernel.
Replace these unsigned longs with void pointers to make the code a bit
sturdier and easier to follow.

Also simplify some interfaces by removing arguments that could be
infered from others.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h   |  2 +-
 .../media/platform/mtk-vcodec/vdec/vdec_h264_if.c    | 12 ++++++------
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c | 12 ++++++------
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c | 12 ++++++------
 drivers/media/platform/mtk-vcodec/vdec_drv_base.h    |  8 ++++----
 drivers/media/platform/mtk-vcodec/vdec_drv_if.c      |  2 +-
 .../media/platform/mtk-vcodec/venc/venc_h264_if.c    | 10 +++++-----
 drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c | 10 +++++-----
 drivers/media/platform/mtk-vcodec/venc_drv_base.h    |  8 ++++----
 drivers/media/platform/mtk-vcodec/venc_drv_if.c      |  2 +-
 10 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index 662a84b822af..5da42f555b52 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -281,7 +281,7 @@ struct mtk_vcodec_ctx {
 
 	const struct vdec_common_if *dec_if;
 	const struct venc_common_if *enc_if;
-	unsigned long drv_handle;
+	void *drv_handle;
 
 	struct vdec_pic_info picinfo;
 	int dpb_size;
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
index cdbcd6909728..2b29e004575d 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
@@ -274,7 +274,7 @@ static void get_dpb_size(struct vdec_h264_inst *inst, unsigned int *dpb_sz)
 	mtk_vcodec_debug(inst, "sz=%d", *dpb_sz);
 }
 
-static int vdec_h264_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
+static int vdec_h264_init(struct mtk_vcodec_ctx *ctx)
 {
 	struct vdec_h264_inst *inst = NULL;
 	int err;
@@ -303,7 +303,7 @@ static int vdec_h264_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
 
 	mtk_vcodec_debug(inst, "H264 Instance >> %p", inst);
 
-	*h_vdec = (unsigned long)inst;
+	ctx->drv_handle = inst;
 	return 0;
 
 error_deinit:
@@ -314,7 +314,7 @@ static int vdec_h264_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
 	return err;
 }
 
-static void vdec_h264_deinit(unsigned long h_vdec)
+static void vdec_h264_deinit(void *h_vdec)
 {
 	struct vdec_h264_inst *inst = (struct vdec_h264_inst *)h_vdec;
 
@@ -339,7 +339,7 @@ static int find_start_code(unsigned char *data, unsigned int data_sz)
 	return -1;
 }
 
-static int vdec_h264_decode(unsigned long h_vdec, struct mtk_vcodec_mem *bs,
+static int vdec_h264_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 			    struct vdec_fb *fb, bool *res_chg)
 {
 	struct vdec_h264_inst *inst = (struct vdec_h264_inst *)h_vdec;
@@ -459,8 +459,8 @@ static void vdec_h264_get_fb(struct vdec_h264_inst *inst,
 	list->count--;
 }
 
-static int vdec_h264_get_param(unsigned long h_vdec,
-			       enum vdec_get_param_type type, void *out)
+static int vdec_h264_get_param(void *h_vdec, enum vdec_get_param_type type,
+			       void *out)
 {
 	struct vdec_h264_inst *inst = (struct vdec_h264_inst *)h_vdec;
 
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
index ba79136421ef..a13253242e90 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
@@ -396,7 +396,7 @@ static void free_working_buf(struct vdec_vp8_inst *inst)
 	inst->vsi->dec.working_buf_dma = 0;
 }
 
-static int vdec_vp8_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
+static int vdec_vp8_init(struct mtk_vcodec_ctx *ctx)
 {
 	struct vdec_vp8_inst *inst;
 	int err;
@@ -427,7 +427,7 @@ static int vdec_vp8_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
 	get_hw_reg_base(inst);
 	mtk_vcodec_debug(inst, "VP8 Instance >> %p", inst);
 
-	*h_vdec = (unsigned long)inst;
+	ctx->drv_handle = inst;
 	return 0;
 
 error_deinit:
@@ -437,7 +437,7 @@ static int vdec_vp8_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
 	return err;
 }
 
-static int vdec_vp8_decode(unsigned long h_vdec, struct mtk_vcodec_mem *bs,
+static int vdec_vp8_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 			   struct vdec_fb *fb, bool *res_chg)
 {
 	struct vdec_vp8_inst *inst = (struct vdec_vp8_inst *)h_vdec;
@@ -573,8 +573,8 @@ static void get_crop_info(struct vdec_vp8_inst *inst, struct v4l2_rect *cr)
 			 cr->left, cr->top, cr->width, cr->height);
 }
 
-static int vdec_vp8_get_param(unsigned long h_vdec,
-			      enum vdec_get_param_type type, void *out)
+static int vdec_vp8_get_param(void *h_vdec, enum vdec_get_param_type type,
+			      void *out)
 {
 	struct vdec_vp8_inst *inst = (struct vdec_vp8_inst *)h_vdec;
 
@@ -607,7 +607,7 @@ static int vdec_vp8_get_param(unsigned long h_vdec,
 	return 0;
 }
 
-static void vdec_vp8_deinit(unsigned long h_vdec)
+static void vdec_vp8_deinit(void *h_vdec)
 {
 	struct vdec_vp8_inst *inst = (struct vdec_vp8_inst *)h_vdec;
 
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
index 939ea14bf6c5..65b88a2bef4c 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
@@ -765,7 +765,7 @@ static int validate_vsi_array_indexes(struct vdec_vp9_inst *inst,
 	return 0;
 }
 
-static void vdec_vp9_deinit(unsigned long h_vdec)
+static void vdec_vp9_deinit(void *h_vdec)
 {
 	struct vdec_vp9_inst *inst = (struct vdec_vp9_inst *)h_vdec;
 	struct mtk_vcodec_mem *mem;
@@ -787,7 +787,7 @@ static void vdec_vp9_deinit(unsigned long h_vdec)
 	vp9_free_inst(inst);
 }
 
-static int vdec_vp9_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
+static int vdec_vp9_init(struct mtk_vcodec_ctx *ctx)
 {
 	struct vdec_vp9_inst *inst;
 
@@ -811,7 +811,7 @@ static int vdec_vp9_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
 	inst->vsi = (struct vdec_vp9_vsi *)inst->vpu.vsi;
 	init_all_fb_lists(inst);
 
-	(*h_vdec) = (unsigned long)inst;
+	ctx->drv_handle = inst;
 	return 0;
 
 err_deinit_inst:
@@ -820,7 +820,7 @@ static int vdec_vp9_init(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec)
 	return -EINVAL;
 }
 
-static int vdec_vp9_decode(unsigned long h_vdec, struct mtk_vcodec_mem *bs,
+static int vdec_vp9_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 		   struct vdec_fb *fb, bool *res_chg)
 {
 	int ret = 0;
@@ -977,8 +977,8 @@ static void get_crop_info(struct vdec_vp9_inst *inst, struct v4l2_rect *cr)
 			 cr->left, cr->top, cr->width, cr->height);
 }
 
-static int vdec_vp9_get_param(unsigned long h_vdec,
-		enum vdec_get_param_type type, void *out)
+static int vdec_vp9_get_param(void *h_vdec, enum vdec_get_param_type type,
+			      void *out)
 {
 	struct vdec_vp9_inst *inst = (struct vdec_vp9_inst *)h_vdec;
 	int ret = 0;
diff --git a/drivers/media/platform/mtk-vcodec/vdec_drv_base.h b/drivers/media/platform/mtk-vcodec/vdec_drv_base.h
index 7e4c1a92bbd8..bf4c214506fe 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_drv_base.h
+++ b/drivers/media/platform/mtk-vcodec/vdec_drv_base.h
@@ -25,7 +25,7 @@ struct vdec_common_if {
 	 * @ctx     : [in] mtk v4l2 context
 	 * @h_vdec  : [out] driver handle
 	 */
-	int (*init)(struct mtk_vcodec_ctx *ctx, unsigned long *h_vdec);
+	int (*init)(struct mtk_vcodec_ctx *ctx);
 
 	/**
 	 * (*decode)() - trigger decode
@@ -34,7 +34,7 @@ struct vdec_common_if {
 	 * @fb      : [in] frame buffer to store decoded frame
 	 * @res_chg : [out] resolution change happen
 	 */
-	int (*decode)(unsigned long h_vdec, struct mtk_vcodec_mem *bs,
+	int (*decode)(void *h_vdec, struct mtk_vcodec_mem *bs,
 		      struct vdec_fb *fb, bool *res_chg);
 
 	/**
@@ -43,14 +43,14 @@ struct vdec_common_if {
 	 * @type   : [in] input parameter type
 	 * @out    : [out] buffer to store query result
 	 */
-	int (*get_param)(unsigned long h_vdec, enum vdec_get_param_type type,
+	int (*get_param)(void *h_vdec, enum vdec_get_param_type type,
 			 void *out);
 
 	/**
 	 * (*deinit)() - deinitialize driver.
 	 * @h_vdec : [in] driver handle to be deinit
 	 */
-	void (*deinit)(unsigned long h_vdec);
+	void (*deinit)(void *h_vdec);
 };
 
 #endif
diff --git a/drivers/media/platform/mtk-vcodec/vdec_drv_if.c b/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
index 5ffc468dd910..1e3778738f3b 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
@@ -47,7 +47,7 @@ int vdec_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 
 	mtk_vdec_lock(ctx);
 	mtk_vcodec_dec_clock_on(&ctx->dev->pm);
-	ret = ctx->dec_if->init(ctx, &ctx->drv_handle);
+	ret = ctx->dec_if->init(ctx);
 	mtk_vcodec_dec_clock_off(&ctx->dev->pm);
 	mtk_vdec_unlock(ctx);
 
diff --git a/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c b/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
index 6cf31b366aad..b6feb786bebf 100644
--- a/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
@@ -467,7 +467,7 @@ static void h264_encode_filler(struct venc_h264_inst *inst, void *buf,
 	memset(p, 0xff, size);
 }
 
-static int h264_enc_init(struct mtk_vcodec_ctx *ctx, unsigned long *handle)
+static int h264_enc_init(struct mtk_vcodec_ctx *ctx)
 {
 	int ret = 0;
 	struct venc_h264_inst *inst;
@@ -493,12 +493,12 @@ static int h264_enc_init(struct mtk_vcodec_ctx *ctx, unsigned long *handle)
 	if (ret)
 		kfree(inst);
 	else
-		(*handle) = (unsigned long)inst;
+		ctx->drv_handle = inst;
 
 	return ret;
 }
 
-static int h264_enc_encode(unsigned long handle,
+static int h264_enc_encode(void *handle,
 			   enum venc_start_opt opt,
 			   struct venc_frm_buf *frm_buf,
 			   struct mtk_vcodec_mem *bs_buf,
@@ -593,7 +593,7 @@ static int h264_enc_encode(unsigned long handle,
 	return ret;
 }
 
-static int h264_enc_set_param(unsigned long handle,
+static int h264_enc_set_param(void *handle,
 			      enum venc_set_param_type type,
 			      struct venc_enc_param *enc_prm)
 {
@@ -646,7 +646,7 @@ static int h264_enc_set_param(unsigned long handle,
 	return ret;
 }
 
-static int h264_enc_deinit(unsigned long handle)
+static int h264_enc_deinit(void *handle)
 {
 	int ret = 0;
 	struct venc_h264_inst *inst = (struct venc_h264_inst *)handle;
diff --git a/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c b/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
index 957420dd60de..8656d89369bc 100644
--- a/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
@@ -332,7 +332,7 @@ static int vp8_enc_encode_frame(struct venc_vp8_inst *inst,
 	return ret;
 }
 
-static int vp8_enc_init(struct mtk_vcodec_ctx *ctx, unsigned long *handle)
+static int vp8_enc_init(struct mtk_vcodec_ctx *ctx)
 {
 	int ret = 0;
 	struct venc_vp8_inst *inst;
@@ -358,12 +358,12 @@ static int vp8_enc_init(struct mtk_vcodec_ctx *ctx, unsigned long *handle)
 	if (ret)
 		kfree(inst);
 	else
-		(*handle) = (unsigned long)inst;
+		ctx->drv_handle = inst;
 
 	return ret;
 }
 
-static int vp8_enc_encode(unsigned long handle,
+static int vp8_enc_encode(void *handle,
 			  enum venc_start_opt opt,
 			  struct venc_frm_buf *frm_buf,
 			  struct mtk_vcodec_mem *bs_buf,
@@ -400,7 +400,7 @@ static int vp8_enc_encode(unsigned long handle,
 	return ret;
 }
 
-static int vp8_enc_set_param(unsigned long handle,
+static int vp8_enc_set_param(void *handle,
 			     enum venc_set_param_type type,
 			     struct venc_enc_param *enc_prm)
 {
@@ -451,7 +451,7 @@ static int vp8_enc_set_param(unsigned long handle,
 	return ret;
 }
 
-static int vp8_enc_deinit(unsigned long handle)
+static int vp8_enc_deinit(void *handle)
 {
 	int ret = 0;
 	struct venc_vp8_inst *inst = (struct venc_vp8_inst *)handle;
diff --git a/drivers/media/platform/mtk-vcodec/venc_drv_base.h b/drivers/media/platform/mtk-vcodec/venc_drv_base.h
index 6308d44dedf6..9f2588925d9c 100644
--- a/drivers/media/platform/mtk-vcodec/venc_drv_base.h
+++ b/drivers/media/platform/mtk-vcodec/venc_drv_base.h
@@ -28,7 +28,7 @@ struct venc_common_if {
 	 * @ctx:	[in] mtk v4l2 context
 	 * @handle: [out] driver handle
 	 */
-	int (*init)(struct mtk_vcodec_ctx *ctx, unsigned long *handle);
+	int (*init)(struct mtk_vcodec_ctx *ctx);
 
 	/**
 	 * (*encode)() - trigger encode
@@ -38,7 +38,7 @@ struct venc_common_if {
 	 * @bs_buf: [in] bitstream buffer to store output bitstream
 	 * @result: [out] encode result
 	 */
-	int (*encode)(unsigned long handle, enum venc_start_opt opt,
+	int (*encode)(void *handle, enum venc_start_opt opt,
 		      struct venc_frm_buf *frm_buf,
 		      struct mtk_vcodec_mem *bs_buf,
 		      struct venc_done_result *result);
@@ -49,14 +49,14 @@ struct venc_common_if {
 	 * @type: [in] parameter type
 	 * @in: [in] buffer to store the parameter
 	 */
-	int (*set_param)(unsigned long handle, enum venc_set_param_type type,
+	int (*set_param)(void *handle, enum venc_set_param_type type,
 			 struct venc_enc_param *in);
 
 	/**
 	 * (*deinit)() - deinitialize driver.
 	 * @handle: [in] driver handle
 	 */
-	int (*deinit)(unsigned long handle);
+	int (*deinit)(void *handle);
 };
 
 #endif
diff --git a/drivers/media/platform/mtk-vcodec/venc_drv_if.c b/drivers/media/platform/mtk-vcodec/venc_drv_if.c
index d02d5f1df279..4b04652be6de 100644
--- a/drivers/media/platform/mtk-vcodec/venc_drv_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc_drv_if.c
@@ -46,7 +46,7 @@ int venc_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 
 	mtk_venc_lock(ctx);
 	mtk_vcodec_enc_clock_on(&ctx->dev->pm);
-	ret = ctx->enc_if->init(ctx, (unsigned long *)&ctx->drv_handle);
+	ret = ctx->enc_if->init(ctx);
 	mtk_vcodec_enc_clock_off(&ctx->dev->pm);
 	mtk_venc_unlock(ctx);
 
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
