Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2909E2BEC7
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbADmWqi5SmxL56aMoCDPuTeACqtnMIzF9qTOarY/64=; b=AjZDFfP5sywJRc
	HfktG3b/9OiPeSf9ysqdQ6DVjm0vfgoomjF3lW9DMZ4S0KZgXWcOuH62TYsaq6+l+psKQHgUJM3ot
	z4NSjUZ6R8uhBdunx2QlIC2mqXg+sI8AzsoRv6iK4K//sPKDfTKUG0wjUjW9glBGTl/U4ItkRv82O
	cg61sPGt5O+enWgjm9j9zkPQIswtMjHU1rK8pLDvCUxvSETwgRtcN4LlvPiB11jTQPZrMIYR0Z+pW
	me6AvEftIYlko8sg2pFfPGztDJyoEUPI2k4bsLpLWzlOZWAM6QFYnLH42nOCRp0q77v1HEauaepPf
	CmWFtzhVQW0gh9DH4wNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVV6u-0002EN-KQ; Tue, 28 May 2019 05:57:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV6r-0002By-1d
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 05:57:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id g21so7883349plq.0
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 22:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iQX7cJHbDOGy3qbp4R0uiyoHDzieblpMxlf5nPE+1kI=;
 b=edV0Rw6VsNp8oYJ3Dl4lZy5wN59+hfWnriCYwZl9+hyoyfhbXsZVWVuUzz1nLQbjSv
 pUUKbUJsNrn81w0Ly+3KJ/nIidVATG+IpCnMfXSaO5Y6GrwNW0Mz3CHQYO0eCBsO/OB1
 P3ChRYoRGn4LdSThVGpd77SC0gG9dauF2qewc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iQX7cJHbDOGy3qbp4R0uiyoHDzieblpMxlf5nPE+1kI=;
 b=AXLDkCR8dwlvcM7dTP2Vem176t97sAb30d4pcVak+mNXkah3P8aOAOzA9wSRX7nfHD
 bvm1j0ezO9Is+TIiRayJEdSfxmGjT+qi48ybto4EDRZpx5tU1FbsNK75ljBJjQyK+pef
 WeAo41Qiiq0uhSFrKwhHPSSZdxP4Hsp1NpObG7suMtqZb+TApiSFtEK7u6RWJs91iK54
 aUWPdYZX9BNv6G++4XIu0OMZvY5OWLw5BV+r2g15Q8QOxzUtjT2oFRcpjTG14uzRAanS
 S5AAkPM/P+CNwQ7d5mDLbvTrQBt6KN6G3fT0voebwWi8KDfIcWa+CrpeDKbbpoEQkKeQ
 M/CA==
X-Gm-Message-State: APjAAAXeaER40p2oi1FDRubi7OSPQ+/+NSN7QPg6nVJGSXt6uzF7mk+d
 oXaMHDLjv7z9zvktUllgxCyE7YN9HJQ=
X-Google-Smtp-Source: APXvYqwX6h3pdPPGLbBek6F3fq3R4CGcdFenGdZlESWWcc6QO7Pr3r2/3O/xfa3VSw+xU96R877Kfg==
X-Received: by 2002:a17:902:6948:: with SMTP id
 k8mr7937401plt.81.1559023036256; 
 Mon, 27 May 2019 22:57:16 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id w1sm13950551pfg.51.2019.05.27.22.57.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 22:57:15 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFCv1 02/12] media: mtk-vcodec: remove unneeded proxy functions
Date: Tue, 28 May 2019 14:56:25 +0900
Message-Id: <20190528055635.12109-3-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190528055635.12109-1-acourbot@chromium.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_225717_084779_648853D3 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

We were getting the codec interface through a proxy function that does
not bring anything compared to just accessing the interface definition
directly, so just do that. Also make the decoder interfaces const.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 .../media/platform/mtk-vcodec/vdec/vdec_h264_if.c    |  9 +--------
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c |  9 +--------
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c |  9 +--------
 drivers/media/platform/mtk-vcodec/vdec_drv_if.c      | 12 ++++++------
 .../media/platform/mtk-vcodec/venc/venc_h264_if.c    |  9 +--------
 drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c |  9 +--------
 drivers/media/platform/mtk-vcodec/venc_drv_if.c      |  8 ++++----
 7 files changed, 15 insertions(+), 50 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
index 2b29e004575d..185d8e7bdc87 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
@@ -493,16 +493,9 @@ static int vdec_h264_get_param(void *h_vdec, enum vdec_get_param_type type,
 	return 0;
 }
 
-static struct vdec_common_if vdec_h264_if = {
+const struct vdec_common_if vdec_h264_if = {
 	.init		= vdec_h264_init,
 	.decode		= vdec_h264_decode,
 	.get_param	= vdec_h264_get_param,
 	.deinit		= vdec_h264_deinit,
 };
-
-struct vdec_common_if *get_h264_dec_comm_if(void);
-
-struct vdec_common_if *get_h264_dec_comm_if(void)
-{
-	return &vdec_h264_if;
-}
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
index a13253242e90..28475b8d27fe 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
@@ -618,16 +618,9 @@ static void vdec_vp8_deinit(void *h_vdec)
 	kfree(inst);
 }
 
-static struct vdec_common_if vdec_vp8_if = {
+const struct vdec_common_if vdec_vp8_if = {
 	.init		= vdec_vp8_init,
 	.decode		= vdec_vp8_decode,
 	.get_param	= vdec_vp8_get_param,
 	.deinit		= vdec_vp8_deinit,
 };
-
-struct vdec_common_if *get_vp8_dec_comm_if(void);
-
-struct vdec_common_if *get_vp8_dec_comm_if(void)
-{
-	return &vdec_vp8_if;
-}
diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
index 65b88a2bef4c..f4af69c543ba 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
@@ -1008,16 +1008,9 @@ static int vdec_vp9_get_param(void *h_vdec, enum vdec_get_param_type type,
 	return ret;
 }
 
-static struct vdec_common_if vdec_vp9_if = {
+const struct vdec_common_if vdec_vp9_if = {
 	.init		= vdec_vp9_init,
 	.decode		= vdec_vp9_decode,
 	.get_param	= vdec_vp9_get_param,
 	.deinit		= vdec_vp9_deinit,
 };
-
-struct vdec_common_if *get_vp9_dec_comm_if(void);
-
-struct vdec_common_if *get_vp9_dec_comm_if(void)
-{
-	return &vdec_vp9_if;
-}
diff --git a/drivers/media/platform/mtk-vcodec/vdec_drv_if.c b/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
index 1e3778738f3b..dfe63bb39dbb 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
@@ -23,9 +23,9 @@
 #include "mtk_vcodec_dec_pm.h"
 #include "mtk_vpu.h"
 
-const struct vdec_common_if *get_h264_dec_comm_if(void);
-const struct vdec_common_if *get_vp8_dec_comm_if(void);
-const struct vdec_common_if *get_vp9_dec_comm_if(void);
+extern const struct vdec_common_if vdec_h264_if;
+extern const struct vdec_common_if vdec_vp8_if;
+extern const struct vdec_common_if vdec_vp9_if;
 
 int vdec_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 {
@@ -33,13 +33,13 @@ int vdec_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 
 	switch (fourcc) {
 	case V4L2_PIX_FMT_H264:
-		ctx->dec_if = get_h264_dec_comm_if();
+		ctx->dec_if = &vdec_h264_if;
 		break;
 	case V4L2_PIX_FMT_VP8:
-		ctx->dec_if = get_vp8_dec_comm_if();
+		ctx->dec_if = &vdec_vp8_if;
 		break;
 	case V4L2_PIX_FMT_VP9:
-		ctx->dec_if = get_vp9_dec_comm_if();
+		ctx->dec_if = &vdec_vp9_if;
 		break;
 	default:
 		return -EINVAL;
diff --git a/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c b/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
index b6feb786bebf..eb015ce0fd3e 100644
--- a/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
@@ -664,16 +664,9 @@ static int h264_enc_deinit(void *handle)
 	return ret;
 }
 
-static const struct venc_common_if venc_h264_if = {
+const struct venc_common_if venc_h264_if = {
 	.init = h264_enc_init,
 	.encode = h264_enc_encode,
 	.set_param = h264_enc_set_param,
 	.deinit = h264_enc_deinit,
 };
-
-const struct venc_common_if *get_h264_enc_comm_if(void);
-
-const struct venc_common_if *get_h264_enc_comm_if(void)
-{
-	return &venc_h264_if;
-}
diff --git a/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c b/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
index 8656d89369bc..ad8008c865db 100644
--- a/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
@@ -469,16 +469,9 @@ static int vp8_enc_deinit(void *handle)
 	return ret;
 }
 
-static const struct venc_common_if venc_vp8_if = {
+const struct venc_common_if venc_vp8_if = {
 	.init = vp8_enc_init,
 	.encode = vp8_enc_encode,
 	.set_param = vp8_enc_set_param,
 	.deinit = vp8_enc_deinit,
 };
-
-const struct venc_common_if *get_vp8_enc_comm_if(void);
-
-const struct venc_common_if *get_vp8_enc_comm_if(void)
-{
-	return &venc_vp8_if;
-}
diff --git a/drivers/media/platform/mtk-vcodec/venc_drv_if.c b/drivers/media/platform/mtk-vcodec/venc_drv_if.c
index 4b04652be6de..94bb530f7d2d 100644
--- a/drivers/media/platform/mtk-vcodec/venc_drv_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc_drv_if.c
@@ -26,8 +26,8 @@
 #include "mtk_vcodec_enc_pm.h"
 #include "mtk_vpu.h"
 
-const struct venc_common_if *get_h264_enc_comm_if(void);
-const struct venc_common_if *get_vp8_enc_comm_if(void);
+extern const struct venc_common_if venc_h264_if;
+extern const struct venc_common_if venc_vp8_if;
 
 int venc_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 {
@@ -35,10 +35,10 @@ int venc_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 
 	switch (fourcc) {
 	case V4L2_PIX_FMT_VP8:
-		ctx->enc_if = get_vp8_enc_comm_if();
+		ctx->enc_if = &venc_vp8_if;
 		break;
 	case V4L2_PIX_FMT_H264:
-		ctx->enc_if = get_h264_enc_comm_if();
+		ctx->enc_if = &venc_h264_if;
 		break;
 	default:
 		return -EINVAL;
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
