Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F552BECB
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=im8M5R0mZUhD53MGkVZ+2+BcwzQylzqhhjOnJdy8jv4=; b=ds4KbnlF2c6yTT
	D0TjBJhkm4oiVr9MdpjifRxPqNbFSCV5oa3ZGgzdLbdwgmQDhisBWYbDQpHEnZD9MoHH575DLZb0Q
	WJXWzfoVV6t82wJ6kRvmorJNygnKUO3OCcL416DXFaWzdnHLdKlnL4hJ8z6eKCRdfs8kqxZlNdgwU
	g6a8SRVyDCtektlPiuk0dcaMH+cf76tfQ6RF5RtZZWRaVBAZqM0bJmrg5xhhe5UgbUqHqQfq9PPVy
	mc/2wvw3n0FDulNs321VXKCs7EAIb0tMs4XFBGf+G4mYPL4B+kp5A+Zn3UR9zx9/NwPbhPp1DW5l5
	fZ9HKeUX+442lQziceKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVV6z-0002IG-5q; Tue, 28 May 2019 05:57:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV6t-0002Dw-Nh
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 05:57:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so5919700pfm.13
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 22:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cr9DmSACRWwElyIdEHB89TB8XJbyBXhOtgtfrfFd+As=;
 b=lJn8MF4x1HkyIltXYODtNrg4J77wXJh8CFt67BY9rXXkXlF51O6cU+Xu0FPWwPdNhk
 RT1aBio7YPXERIIawoepiMUa4XcacM2UkznVqVf91jBTWx1wjUOYIaQuhW77rzyCBIm9
 k4q4NcNF5sau6zfSqyacDY342REoHZglVWWCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cr9DmSACRWwElyIdEHB89TB8XJbyBXhOtgtfrfFd+As=;
 b=IvUkgFfL6H6g/r9W/5OwR/vJHzbJl/TSIuD8quGfm2/XEOnnrmWrdakGqXKK7X3aUm
 6sZ0/5M7BAgzL7l23zfx+Ar81XDXPcLBeib9i+waFaZ51VmcyJJgmi/FZ0ckWnP9K66Q
 SPQWqSmBKpkVa99jBXQ/UR5LrbFDlyANM/4HFsP0+19eeswrUmVYx9ha1goloSl1UOS0
 +MY8RmYoF95yoZ+WLrKbqrNr+eI/le3R+/JZmUzfkbFw9SZRGrkdpmk4/QelMPLCGS8Q
 XUimrKb75RrSxsjMrc7IZzM2b6BQDBUasUlEEoKzw1d2EP/LPDguLMfcLaP1M7YptrCB
 pakQ==
X-Gm-Message-State: APjAAAXnT2Niddgbng/SFamBho9bWX4n37tRyO9oI8zR2F2fcyju4FSS
 XDng9Ew8pYWDg7Hc7lDzCGEEqg==
X-Google-Smtp-Source: APXvYqy03VLJViisJT0RdWU5mPiOVRUaticUKnNz6A0I2rwSJlG2Gu+pAoIhuJLih5ErtxTaNrZKNA==
X-Received: by 2002:a65:64d5:: with SMTP id t21mr57064762pgv.310.1559023039265; 
 Mon, 27 May 2019 22:57:19 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id w1sm13950551pfg.51.2019.05.27.22.57.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 22:57:18 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFCv1 03/12] media: mtk-vcodec: constify formats
Date: Tue, 28 May 2019 14:56:26 +0900
Message-Id: <20190528055635.12109-4-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190528055635.12109-1-acourbot@chromium.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_225719_852897_83FDF033 
X-CRM114-Status: GOOD (  13.85  )
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

Formats are read-only internal memory structures, so make them const.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 .../platform/mtk-vcodec/mtk_vcodec_dec.c      | 19 ++++++++++---------
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      |  2 +-
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 19 ++++++++++---------
 3 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
index 851903867bc9..2175883e22d4 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
@@ -32,7 +32,7 @@
 #define DFT_CFG_WIDTH	MTK_VDEC_MIN_W
 #define DFT_CFG_HEIGHT	MTK_VDEC_MIN_H
 
-static struct mtk_video_fmt mtk_video_formats[] = {
+static const struct mtk_video_fmt mtk_video_formats[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264,
 		.type = MTK_FMT_DEC,
@@ -76,9 +76,9 @@ static const struct mtk_codec_framesizes mtk_vdec_framesizes[] = {
 #define NUM_SUPPORTED_FRAMESIZE ARRAY_SIZE(mtk_vdec_framesizes)
 #define NUM_FORMATS ARRAY_SIZE(mtk_video_formats)
 
-static struct mtk_video_fmt *mtk_vdec_find_format(struct v4l2_format *f)
+static const struct mtk_video_fmt *mtk_vdec_find_format(struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	unsigned int k;
 
 	for (k = 0; k < NUM_FORMATS; k++) {
@@ -279,7 +279,7 @@ static void mtk_vdec_flush_decoder(struct mtk_vcodec_ctx *ctx)
 static void mtk_vdec_update_fmt(struct mtk_vcodec_ctx *ctx,
 				unsigned int pixelformat)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	struct mtk_q_data *dst_q_data;
 	unsigned int k;
 
@@ -652,7 +652,8 @@ static int vidioc_vdec_subscribe_evt(struct v4l2_fh *fh,
 	}
 }
 
-static int vidioc_try_fmt(struct v4l2_format *f, struct mtk_video_fmt *fmt)
+static int vidioc_try_fmt(struct v4l2_format *f,
+			  const struct mtk_video_fmt *fmt)
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 	int i;
@@ -725,7 +726,7 @@ static int vidioc_try_fmt(struct v4l2_format *f, struct mtk_video_fmt *fmt)
 static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	fmt = mtk_vdec_find_format(f);
 	if (!fmt) {
@@ -740,7 +741,7 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	fmt = mtk_vdec_find_format(f);
 	if (!fmt) {
@@ -834,7 +835,7 @@ static int vidioc_vdec_s_fmt(struct file *file, void *priv,
 	struct v4l2_pix_format_mplane *pix_mp;
 	struct mtk_q_data *q_data;
 	int ret = 0;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	mtk_v4l2_debug(3, "[%d]", ctx->id);
 
@@ -933,7 +934,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 
 static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, bool output_queue)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	int i, j = 0;
 
 	for (i = 0; i < NUM_FORMATS; i++) {
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index 5da42f555b52..109c7578a8b2 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -137,7 +137,7 @@ struct mtk_q_data {
 	enum v4l2_field	field;
 	unsigned int	bytesperline[MTK_VCODEC_MAX_PLANES];
 	unsigned int	sizeimage[MTK_VCODEC_MAX_PLANES];
-	struct mtk_video_fmt	*fmt;
+	const struct mtk_video_fmt	*fmt;
 };
 
 /**
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 50351adafc47..2d5a61c06287 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -37,7 +37,7 @@
 
 static void mtk_venc_worker(struct work_struct *work);
 
-static struct mtk_video_fmt mtk_video_formats[] = {
+static const struct mtk_video_fmt mtk_video_formats[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.type = MTK_FMT_FRAME,
@@ -166,7 +166,7 @@ static const struct v4l2_ctrl_ops mtk_vcodec_enc_ctrl_ops = {
 
 static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, bool output_queue)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	int i, j = 0;
 
 	for (i = 0; i < NUM_FORMATS; ++i) {
@@ -274,9 +274,9 @@ static struct mtk_q_data *mtk_venc_get_q_data(struct mtk_vcodec_ctx *ctx,
 	return &ctx->q_data[MTK_Q_DATA_DST];
 }
 
-static struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
+static const struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	unsigned int k;
 
 	for (k = 0; k < NUM_FORMATS; k++) {
@@ -291,7 +291,8 @@ static struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
 /* V4L2 specification suggests the driver corrects the format struct if any of
  * the dimensions is unsupported
  */
-static int vidioc_try_fmt(struct v4l2_format *f, struct mtk_video_fmt *fmt)
+static int vidioc_try_fmt(struct v4l2_format *f,
+			  const struct mtk_video_fmt *fmt)
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 	int i;
@@ -427,7 +428,7 @@ static int vidioc_venc_s_fmt_cap(struct file *file, void *priv,
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
 	int i, ret;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
 	if (!vq) {
@@ -489,7 +490,7 @@ static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
 	int ret, i;
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 
 	vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
@@ -588,7 +589,7 @@ static int vidioc_venc_g_fmt(struct file *file, void *priv,
 static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 
 	fmt = mtk_venc_find_format(f);
@@ -607,7 +608,7 @@ static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
-	struct mtk_video_fmt *fmt;
+	const struct mtk_video_fmt *fmt;
 
 	fmt = mtk_venc_find_format(f);
 	if (!fmt) {
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
