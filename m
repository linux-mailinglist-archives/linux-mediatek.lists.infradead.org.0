Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE393435C
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 11:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cI5GOWYZmfN3PRd1oTl+6oqS0m5GH+7gAA3AvIHfubQ=; b=b+NENZOPGUmwfJ
	kyq3TQeS3Yfv/qHWkEiwfQbIC/5uADt3KO3QE1eradlxl9AiCzUbUJs4CoOHcvC+2/ylgQZm8QDf4
	5OQUC5U815+cRKSD27ZrzorpPZGCY7ev6dXKcnLlUAg4whGkfLzjezkorbJXwYXWhdnq8PO3dMUMn
	sxCdpm3sXzXOYWHXCPVx1fpu4d/DY0XNel7jotN2vaiOQ0FkpS1RKWx8nfVLWpPqMsKsOqM9t7oNi
	SgDQq+un7m0lI6+xh+G2Ui87Xz5uxpTCIwoTaFKzdUmDWWfFsSx14wjQbpKokiqqg4jTyJiaKxxPn
	5Z1HQJfmZst8Ly1ZuHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5tQ-00014K-KD; Tue, 04 Jun 2019 09:38:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5tM-00010C-L6
 for linux-mediatek@lists.infradead.org; Tue, 04 Jun 2019 09:38:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id a23so12354475pff.4
 for <linux-mediatek@lists.infradead.org>; Tue, 04 Jun 2019 02:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kkz/XzAOhnm/D/+CBYg1z225Vw/50tqayYaD8NUxlbU=;
 b=lNej2GHpJFHhSX5Wafo2JC+jKDIiMJEwglY1egsj2tTgl0CQtE88cOwbO0CgShR/KB
 Ei4wKW9rV86pYeUnXfZu+AQwz61DDo54QbRPMjYNhpkuvX3qkzL+8VGxuV7UGUS6G+jC
 NfY7SaKvaII5e5ct8H33XKnTvOJMIVnIWbuCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kkz/XzAOhnm/D/+CBYg1z225Vw/50tqayYaD8NUxlbU=;
 b=pugXxUXeWmpNHhhoU9uk51hjO+v7HVNlmYilyo5/sZwIYv14taK1bQoB1GXj6nKwRv
 dmcenF7dPuyGDEFq7A5pCAZ818CV9rPafuC94IOcPPaE39j2Y7mTU4Tz+UxlhaE/tCXq
 t9UP4W54vCCIJk5MWschD/KGArF7JiJox+CvMWDq99RNx7Jv5h8Ud2lrv6eeLrY82oga
 oB1ueEq1sTZFAJetnTeTVMnP2ifZG9H/Gbct/gvkEwv2554+dVEcMSZjmopu6G8ubTw2
 YNQnEc1+qG13Izo0hA/SGlR706h24/sHtL/OPiY8XW+EFYXTqwr9T63cTLxijuBMoMa7
 e/6Q==
X-Gm-Message-State: APjAAAWWL29wvV4NUrTPphO+8OCs0nUVZYZigxjXgSY91D8nGpKJ/2Wi
 //Xq4jOcnRa567tLHX7Xr+XUnfwaf8SQZw==
X-Google-Smtp-Source: APXvYqz2Fz/pnGXv0ZPvgJW7e6d7ZqtCPt+NixsSUGw1uA+K5fsccM7BUPplF4NCNUk+DabA0RDGRQ==
X-Received: by 2002:a17:90a:372a:: with SMTP id
 u39mr7218059pjb.2.1559641084175; 
 Tue, 04 Jun 2019 02:38:04 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id j7sm17431588pfa.184.2019.06.04.02.38.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 02:38:03 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH 4/5] media: mtk-vcodec: constify formats
Date: Tue,  4 Jun 2019 18:37:36 +0900
Message-Id: <20190604093737.172599-5-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
In-Reply-To: <20190604093737.172599-1-acourbot@chromium.org>
References: <20190604093737.172599-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023804_702628_5009721A 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Formats are read-only internal memory structures, so make them const.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 .../platform/mtk-vcodec/mtk_vcodec_dec.c      | 19 ++++++++++---------
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      |  2 +-
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 19 ++++++++++---------
 3 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
index 371e70d6a803..131a8117ece2 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
@@ -19,7 +19,7 @@
 #define DFT_CFG_WIDTH	MTK_VDEC_MIN_W
 #define DFT_CFG_HEIGHT	MTK_VDEC_MIN_H
 
-static struct mtk_video_fmt mtk_video_formats[] = {
+static const struct mtk_video_fmt mtk_video_formats[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264,
 		.type = MTK_FMT_DEC,
@@ -63,9 +63,9 @@ static const struct mtk_codec_framesizes mtk_vdec_framesizes[] = {
 #define NUM_SUPPORTED_FRAMESIZE ARRAY_SIZE(mtk_vdec_framesizes)
 #define NUM_FORMATS ARRAY_SIZE(mtk_video_formats)
 
-static struct mtk_video_fmt *mtk_vdec_find_format(struct v4l2_format *f)
+static const struct mtk_video_fmt *mtk_vdec_find_format(struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	unsigned int k;
 
 	for (k = 0; k < NUM_FORMATS; k++) {
@@ -266,7 +266,7 @@ static void mtk_vdec_flush_decoder(struct mtk_vcodec_ctx *ctx)
 static void mtk_vdec_update_fmt(struct mtk_vcodec_ctx *ctx,
 				unsigned int pixelformat)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	struct mtk_q_data *dst_q_data;
 	unsigned int k;
 
@@ -639,7 +639,8 @@ static int vidioc_vdec_subscribe_evt(struct v4l2_fh *fh,
 	}
 }
 
-static int vidioc_try_fmt(struct v4l2_format *f, struct mtk_video_fmt *fmt)
+static int vidioc_try_fmt(struct v4l2_format *f,
+			  const struct mtk_video_fmt *fmt)
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 	int i;
@@ -712,7 +713,7 @@ static int vidioc_try_fmt(struct v4l2_format *f, struct mtk_video_fmt *fmt)
 static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	fmt = mtk_vdec_find_format(f);
 	if (!fmt) {
@@ -727,7 +728,7 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	fmt = mtk_vdec_find_format(f);
 	if (!fmt) {
@@ -821,7 +822,7 @@ static int vidioc_vdec_s_fmt(struct file *file, void *priv,
 	struct v4l2_pix_format_mplane *pix_mp;
 	struct mtk_q_data *q_data;
 	int ret = 0;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	mtk_v4l2_debug(3, "[%d]", ctx->id);
 
@@ -920,7 +921,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 
 static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, bool output_queue)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	int i, j = 0;
 
 	for (i = 0; i < NUM_FORMATS; i++) {
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index 4b10996e6532..0a29a0694124 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -124,7 +124,7 @@ struct mtk_q_data {
 	enum v4l2_field	field;
 	unsigned int	bytesperline[MTK_VCODEC_MAX_PLANES];
 	unsigned int	sizeimage[MTK_VCODEC_MAX_PLANES];
-	struct mtk_video_fmt	*fmt;
+	const struct mtk_video_fmt	*fmt;
 };
 
 /**
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 1a3845809b92..868147616da7 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -24,7 +24,7 @@
 
 static void mtk_venc_worker(struct work_struct *work);
 
-static struct mtk_video_fmt mtk_video_formats[] = {
+static const struct mtk_video_fmt mtk_video_formats[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.type = MTK_FMT_FRAME,
@@ -153,7 +153,7 @@ static const struct v4l2_ctrl_ops mtk_vcodec_enc_ctrl_ops = {
 
 static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, bool output_queue)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	int i, j = 0;
 
 	for (i = 0; i < NUM_FORMATS; ++i) {
@@ -261,9 +261,9 @@ static struct mtk_q_data *mtk_venc_get_q_data(struct mtk_vcodec_ctx *ctx,
 	return &ctx->q_data[MTK_Q_DATA_DST];
 }
 
-static struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
+static const struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	unsigned int k;
 
 	for (k = 0; k < NUM_FORMATS; k++) {
@@ -278,7 +278,8 @@ static struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
 /* V4L2 specification suggests the driver corrects the format struct if any of
  * the dimensions is unsupported
  */
-static int vidioc_try_fmt(struct v4l2_format *f, struct mtk_video_fmt *fmt)
+static int vidioc_try_fmt(struct v4l2_format *f,
+			  const struct mtk_video_fmt *fmt)
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 	int i;
@@ -414,7 +415,7 @@ static int vidioc_venc_s_fmt_cap(struct file *file, void *priv,
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
 	int i, ret;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
 	if (!vq) {
@@ -476,7 +477,7 @@ static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
 	int ret, i;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 
 	vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
@@ -575,7 +576,7 @@ static int vidioc_venc_g_fmt(struct file *file, void *priv,
 static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 
 	fmt = mtk_venc_find_format(f);
@@ -594,7 +595,7 @@ static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	fmt = mtk_venc_find_format(f);
 	if (!fmt) {
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
