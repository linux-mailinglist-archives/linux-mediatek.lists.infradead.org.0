Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9D91DAD5B
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 10:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjmdrIMHDZ32C+PIzn8wqcZ9AJaOQwixRBkgiSXINqw=; b=XCWKjqpBeuzQRE
	vqghiLJnTYSO+waxSLKGgcjWPt8NUE4/QkiCoYs6yv/gEKORrz3xLzg6sXKgdwtJq8Sei2DjpED69
	mkgX4XQl/9+IXLCIFrVmztuA4qK8TQH+rp+KjW9c8LP3M8p1ixawNTDnpyC+t8VvbwzRt9UP1mK98
	jbbX529EPpKQ+/0A4Y3xYYBZPI6cinGiR5hNnIIAlZ9gmXV69JLLc1ExBZZyjcxybYGOthGT1wfbV
	XgjH3APu7gtRbTOA6gZBRLkoT0assZZDJh8TZTjY8Q5iHrJqPJGlSDIiLtXTVQByx+Q9KwqFXCqTj
	9wWzX0leQ4Vq90yZioAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbK5N-0002n1-A4; Wed, 20 May 2020 08:28:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbK54-0002b5-UH
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 08:28:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id u22so1011260plq.12
 for <linux-mediatek@lists.infradead.org>; Wed, 20 May 2020 01:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ANT05CF+3kv8OvWbcsFu5dGbsqwLagl/gEvFH7hSkdw=;
 b=fTEgttj/CYtdKAIHJj4zRa1BhTmLRlNrp4PPNQypHLkWZu7smhmePORN7jEjMIRf48
 OMqOnUEva5HZnM+21FdcJLej7bxOCXt7WVeS+QK6K4JHPX/wGgedmJs2BUVK1E1LfOoa
 BJYXRNL2tFhBTKK/fzhxaPgjQlgEeUuoWAssI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ANT05CF+3kv8OvWbcsFu5dGbsqwLagl/gEvFH7hSkdw=;
 b=lJ7X0kWlfWlyNEHByX9B4gpCR10WREnaO+urfuGLuRAoh3NJCpJj0qCqDjF2Dspw7E
 VybKNZ496i4huYpQ+axCpJ3siNOHHc2SNu14eWyTCrUWaQTuTnMwHJwyEESeR9sM4X6I
 03J10B/urGt08pPY1R9I1kpuUmmt/WysA7LthfHF4Jb7vnOBOraQCostv+foavDqt1Mm
 FGGUcQVNf1ngQZeNsPH/QvSm5bsg51gkjQylfnh5VPlNtVihwezsahmIGRXumbVfxONw
 Lcp4Tkzllqf+x+t0rtyCChpGoEhJEl9R6ivbKoyDdd6U7YAkrdzXUITAb+/FV3iM/df5
 zUbQ==
X-Gm-Message-State: AOAM530ScXxeRwe2T+mgZF5HcDhxzsnM1g1l7edpkXNNXye1TDHoWJL2
 nMVpIlnZC879d0/BFY9ey2iYTA==
X-Google-Smtp-Source: ABdhPJx0m4nwG6bvRyDrzI6s3+i20KU5SJHvC+5qJIblV2AjZNK1GYg1nlTu7VITtjvCi7eVr9xD7w==
X-Received: by 2002:a17:902:7881:: with SMTP id q1mr486924pll.84.1589963282172; 
 Wed, 20 May 2020 01:28:02 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:8f:203:93d9:de4d:e834:3086])
 by smtp.gmail.com with ESMTPSA id gg8sm1447775pjb.39.2020.05.20.01.27.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 01:28:01 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Rui Wang <gtk_ruiwang@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Maoguang Meng <maoguang.meng@mediatek.com>
Subject: [PATCH 06/10] media: mtk-vcodec: venc: specify supported formats
 per-chip
Date: Wed, 20 May 2020 17:27:19 +0900
Message-Id: <20200520082723.96136-7-acourbot@chromium.org>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
In-Reply-To: <20200520082723.96136-1-acourbot@chromium.org>
References: <20200520082723.96136-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_012803_014809_86D9F916 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Different chips have different supported bitrate ranges. Move the list
of supported formats to the platform data, and split the output and
capture formats into two lists to make it easier to find the default
format for each queue.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      |   8 ++
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 122 +++++++-----------
 .../platform/mtk-vcodec/mtk_vcodec_enc_drv.c  |  40 ++++++
 3 files changed, 95 insertions(+), 75 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index b8f913de8d80..59b4b750666b 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -313,6 +313,10 @@ enum mtk_chip {
  * @has_lt_irq: whether the encoder uses the LT irq
  * @min_birate: minimum supported encoding bitrate
  * @max_bitrate: maximum supported encoding bitrate
+ * @capture_formats: array of supported capture formats
+ * @num_capture_formats: number of entries in capture_formats
+ * @output_formats: array of supported output formats
+ * @num_output_formats: number of entries in output_formats
  */
 struct mtk_vcodec_enc_pdata {
 	enum mtk_chip chip;
@@ -321,6 +325,10 @@ struct mtk_vcodec_enc_pdata {
 	bool has_lt_irq;
 	unsigned long min_bitrate;
 	unsigned long max_bitrate;
+	const struct mtk_video_fmt *capture_formats;
+	size_t num_capture_formats;
+	const struct mtk_video_fmt *output_formats;
+	size_t num_output_formats;
 };
 
 /**
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 50ba9da59153..05743a745a11 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -23,47 +23,9 @@
 #define DFT_CFG_WIDTH	MTK_VENC_MIN_W
 #define DFT_CFG_HEIGHT	MTK_VENC_MIN_H
 #define MTK_MAX_CTRLS_HINT	20
-#define OUT_FMT_IDX		0
-#define CAP_FMT_IDX		4
-
 
 static void mtk_venc_worker(struct work_struct *work);
 
-static const struct mtk_video_fmt mtk_video_formats[] = {
-	{
-		.fourcc = V4L2_PIX_FMT_NV12M,
-		.type = MTK_FMT_FRAME,
-		.num_planes = 2,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_NV21M,
-		.type = MTK_FMT_FRAME,
-		.num_planes = 2,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_YUV420M,
-		.type = MTK_FMT_FRAME,
-		.num_planes = 3,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_YVU420M,
-		.type = MTK_FMT_FRAME,
-		.num_planes = 3,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_H264,
-		.type = MTK_FMT_ENC,
-		.num_planes = 1,
-	},
-	{
-		.fourcc = V4L2_PIX_FMT_VP8,
-		.type = MTK_FMT_ENC,
-		.num_planes = 1,
-	},
-};
-
-#define NUM_FORMATS ARRAY_SIZE(mtk_video_formats)
-
 static const struct mtk_codec_framesizes mtk_venc_framesizes[] = {
 	{
 		.fourcc	= V4L2_PIX_FMT_H264,
@@ -156,27 +118,17 @@ static const struct v4l2_ctrl_ops mtk_vcodec_enc_ctrl_ops = {
 	.s_ctrl = vidioc_venc_s_ctrl,
 };
 
-static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, bool output_queue)
+static int vidioc_enum_fmt(struct v4l2_fmtdesc *f,
+			   const struct mtk_video_fmt *formats,
+			   size_t num_formats)
 {
-	const struct mtk_video_fmt *fmt;
-	int i, j = 0;
+	if (f->index >= num_formats)
+		return -EINVAL;
 
-	for (i = 0; i < NUM_FORMATS; ++i) {
-		if (output_queue && mtk_video_formats[i].type != MTK_FMT_FRAME)
-			continue;
-		if (!output_queue && mtk_video_formats[i].type != MTK_FMT_ENC)
-			continue;
+	f->pixelformat = formats[f->index].fourcc;
+	memset(f->reserved, 0, sizeof(f->reserved));
 
-		if (j == f->index) {
-			fmt = &mtk_video_formats[i];
-			f->pixelformat = fmt->fourcc;
-			memset(f->reserved, 0, sizeof(f->reserved));
-			return 0;
-		}
-		++j;
-	}
-
-	return -EINVAL;
+	return 0;
 }
 
 static int vidioc_enum_framesizes(struct file *file, void *fh,
@@ -202,13 +154,21 @@ static int vidioc_enum_framesizes(struct file *file, void *fh,
 static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
 				   struct v4l2_fmtdesc *f)
 {
-	return vidioc_enum_fmt(f, false);
+	const struct mtk_vcodec_enc_pdata *pdata =
+		fh_to_ctx(priv)->dev->venc_pdata;
+
+	return vidioc_enum_fmt(f, pdata->capture_formats,
+			       pdata->num_capture_formats);
 }
 
 static int vidioc_enum_fmt_vid_out(struct file *file, void *priv,
 				   struct v4l2_fmtdesc *f)
 {
-	return vidioc_enum_fmt(f, true);
+	const struct mtk_vcodec_enc_pdata *pdata =
+		fh_to_ctx(priv)->dev->venc_pdata;
+
+	return vidioc_enum_fmt(f, pdata->output_formats,
+			       pdata->num_output_formats);
 }
 
 static int vidioc_venc_querycap(struct file *file, void *priv,
@@ -266,13 +226,20 @@ static struct mtk_q_data *mtk_venc_get_q_data(struct mtk_vcodec_ctx *ctx,
 	return &ctx->q_data[MTK_Q_DATA_DST];
 }
 
-static const struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
+static const struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f,
+	const struct mtk_vcodec_enc_pdata *pdata)
 {
 	const struct mtk_video_fmt *fmt;
 	unsigned int k;
 
-	for (k = 0; k < NUM_FORMATS; k++) {
-		fmt = &mtk_video_formats[k];
+	for (k = 0; k < pdata->num_capture_formats; k++) {
+		fmt = &pdata->capture_formats[k];
+		if (fmt->fourcc == f->fmt.pix.pixelformat)
+			return fmt;
+	}
+
+	for (k = 0; k < pdata->num_output_formats; k++) {
+		fmt = &pdata->output_formats[k];
 		if (fmt->fourcc == f->fmt.pix.pixelformat)
 			return fmt;
 	}
@@ -414,6 +381,7 @@ static int vidioc_venc_s_fmt_cap(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
 	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
+	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
 	int i, ret;
@@ -436,10 +404,10 @@ static int vidioc_venc_s_fmt_cap(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	fmt = mtk_venc_find_format(f);
+	fmt = mtk_venc_find_format(f, pdata);
 	if (!fmt) {
-		f->fmt.pix.pixelformat = mtk_video_formats[CAP_FMT_IDX].fourcc;
-		fmt = mtk_venc_find_format(f);
+		fmt = &ctx->dev->venc_pdata->capture_formats[0];
+		f->fmt.pix.pixelformat = fmt->fourcc;
 	}
 
 	q_data->fmt = fmt;
@@ -476,6 +444,7 @@ static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
 	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
+	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
 	int ret, i;
@@ -499,10 +468,10 @@ static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	fmt = mtk_venc_find_format(f);
+	fmt = mtk_venc_find_format(f, pdata);
 	if (!fmt) {
-		f->fmt.pix.pixelformat = mtk_video_formats[OUT_FMT_IDX].fourcc;
-		fmt = mtk_venc_find_format(f);
+		fmt = &ctx->dev->venc_pdata->output_formats[0];
+		f->fmt.pix.pixelformat = fmt->fourcc;
 	}
 
 	pix_fmt_mp->height = clamp(pix_fmt_mp->height,
@@ -580,11 +549,12 @@ static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 {
 	const struct mtk_video_fmt *fmt;
 	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
+	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 
-	fmt = mtk_venc_find_format(f);
+	fmt = mtk_venc_find_format(f, pdata);
 	if (!fmt) {
-		f->fmt.pix.pixelformat = mtk_video_formats[CAP_FMT_IDX].fourcc;
-		fmt = mtk_venc_find_format(f);
+		fmt = &ctx->dev->venc_pdata->capture_formats[0];
+		f->fmt.pix.pixelformat = fmt->fourcc;
 	}
 	f->fmt.pix_mp.colorspace = ctx->colorspace;
 	f->fmt.pix_mp.ycbcr_enc = ctx->ycbcr_enc;
@@ -598,11 +568,13 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
 	const struct mtk_video_fmt *fmt;
+	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
+	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 
-	fmt = mtk_venc_find_format(f);
+	fmt = mtk_venc_find_format(f, pdata);
 	if (!fmt) {
-		f->fmt.pix.pixelformat = mtk_video_formats[OUT_FMT_IDX].fourcc;
-		fmt = mtk_venc_find_format(f);
+		fmt = &ctx->dev->venc_pdata->output_formats[0];
+		f->fmt.pix.pixelformat = fmt->fourcc;
 	}
 	if (!f->fmt.pix_mp.colorspace) {
 		f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
@@ -1187,7 +1159,7 @@ void mtk_vcodec_enc_set_default_params(struct mtk_vcodec_ctx *ctx)
 	q_data->coded_height = DFT_CFG_HEIGHT;
 	q_data->field = V4L2_FIELD_NONE;
 
-	q_data->fmt = &mtk_video_formats[OUT_FMT_IDX];
+	q_data->fmt = &ctx->dev->venc_pdata->output_formats[0];
 
 	v4l_bound_align_image(&q_data->coded_width,
 				MTK_VENC_MIN_W,
@@ -1216,7 +1188,7 @@ void mtk_vcodec_enc_set_default_params(struct mtk_vcodec_ctx *ctx)
 	memset(q_data, 0, sizeof(struct mtk_q_data));
 	q_data->coded_width = DFT_CFG_WIDTH;
 	q_data->coded_height = DFT_CFG_HEIGHT;
-	q_data->fmt = &mtk_video_formats[CAP_FMT_IDX];
+	q_data->fmt = &ctx->dev->venc_pdata->capture_formats[0];
 	q_data->field = V4L2_FIELD_NONE;
 	ctx->q_data[MTK_Q_DATA_DST].sizeimage[0] =
 		DFT_CFG_WIDTH * DFT_CFG_HEIGHT;
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c
index 221fa0303075..c8a4b85a81c4 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c
@@ -26,6 +26,42 @@
 module_param(mtk_v4l2_dbg_level, int, S_IRUGO | S_IWUSR);
 module_param(mtk_vcodec_dbg, bool, S_IRUGO | S_IWUSR);
 
+static const struct mtk_video_fmt mtk_video_formats_output_mt8173[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12M,
+		.type = MTK_FMT_FRAME,
+		.num_planes = 2,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV21M,
+		.type = MTK_FMT_FRAME,
+		.num_planes = 2,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_YUV420M,
+		.type = MTK_FMT_FRAME,
+		.num_planes = 3,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_YVU420M,
+		.type = MTK_FMT_FRAME,
+		.num_planes = 3,
+	},
+};
+
+static const struct mtk_video_fmt mtk_video_formats_capture_mt8173[] =  {
+	{
+		.fourcc = V4L2_PIX_FMT_H264,
+		.type = MTK_FMT_ENC,
+		.num_planes = 1,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_VP8,
+		.type = MTK_FMT_ENC,
+		.num_planes = 1,
+	},
+};
+
 /* Wake up context wait_queue */
 static void wake_up_ctx(struct mtk_vcodec_ctx *ctx, unsigned int reason)
 {
@@ -380,6 +416,10 @@ static int mtk_vcodec_probe(struct platform_device *pdev)
 static const struct mtk_vcodec_enc_pdata mt8173_pdata = {
 	.chip = MTK_MT8173,
 	.has_lt_irq = true,
+	.capture_formats = mtk_video_formats_capture_mt8173,
+	.num_capture_formats = ARRAY_SIZE(mtk_video_formats_capture_mt8173),
+	.output_formats = mtk_video_formats_output_mt8173,
+	.num_output_formats = ARRAY_SIZE(mtk_video_formats_output_mt8173),
 	.min_bitrate = 1,
 	.max_bitrate = 4000000,
 };
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
