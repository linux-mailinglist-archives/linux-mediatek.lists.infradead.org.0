Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276A0456D7
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 09:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TsUbSzD2jcW0b28tNzzFT4XnIqbp/vxSPbazwDsvXaM=; b=FcZR3eU08lW3Oo
	HmozApsWgvU9l/f7X4G59UYLRwC4YN48FD2O/A+UWM/8lw3AVs8SxsMl4dQAWvsi8/uJhSE7tKh1v
	2h3G4In6vMWfNbQPjqrpe/l8fGE3p0zgZuvmPXZZ9AxOxrMD4uf3NXvxrVBJWuXQDN8S8PQTEGB8N
	G7ICDgS5nKCdQxSZfBFxRMTItFA3ENHfwUC1Ot8HQpeSvh7Y1U0VMZLv+2u2eNFTPpvcyncrpiXgm
	QMj8voPw9QEjH1H53TUPIzTHW9WFxUXgH5aoguHF5uvRrcl9L8s/PCdHUdqpvclAw+DhoVjsBMKpq
	5zJJoHYdAWY6e3L/XR6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbh4t-0004qg-8y; Fri, 14 Jun 2019 07:56:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbh4p-0004pu-L8
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 07:56:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id p1so681489plo.2
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 00:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oUe0EsfPK7WobnMDoqwxZ5A8cbWc1pQqqXQ4s7xzzNE=;
 b=IDJpDQ6ICIrk//XXoQHGmBnCzA7kLbwgTcW9n/66M3LSLVUb/jQBjAYmCXvMYUqZq+
 FT4x57m3dI3QSqrUdHsWO2c5kvmnJVMGqI33D4O8VRr8fzCsno2eOUSubR5bgPYQ10eX
 E/KaekFbmcwgJH/iGnvT68nvT68UtiVbFqmQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oUe0EsfPK7WobnMDoqwxZ5A8cbWc1pQqqXQ4s7xzzNE=;
 b=X2doAIgs++aWBvvvLkwC+dPT1KGjDf6BejrJnOeMbmOrIoS/6EnTFq9FL1DLwpOg6H
 lObV6JMB48PoyeJeUu+8RNQ8AlwvaZPtpzbLZJBVp/7SoCfDxYi1yf23WheMRRVJftNw
 ZyXgIfQT1lzrdzvD6qAu2RXSAbODU5R8i4daTv+5mAhZOJn7fPPE/x4RDOEC8LS+Oy6S
 ouINExypwVhw22NW9YALkVCxd8SssZ+M/M4zuCh4JByhRB3ctPojbVb8Ipw//i/dhfs7
 CJ1D23hLtm1L/pRMhPf9JVbSh9CjxL7WyUHMHkh0Nj+eLnoeekOuj8zhn06tDEqxWM67
 fOOg==
X-Gm-Message-State: APjAAAUO469G00dJJZ+AFcy3brSqqorAATS9FAUFekz1dfF8oqYbPHd4
 IScsyV0aFLPhToMaQgK6R/Yq/w==
X-Google-Smtp-Source: APXvYqwqW/T4Lqap0ZHSnu0gIKcR91q9naNgHyS5/oXC+wwRf1BPu6mHNjAT/uhApLrTMh5HeGXZtg==
X-Received: by 2002:a17:902:bc43:: with SMTP id
 t3mr26108872plz.250.1560499006748; 
 Fri, 14 Jun 2019 00:56:46 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id q7sm2156947pfb.32.2019.06.14.00.56.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 00:56:46 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH v2] media: mtk-vcodec: remove unneeded proxy functions
Date: Fri, 14 Jun 2019 16:56:40 +0900
Message-Id: <20190614075640.106709-1-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_005647_694939_9BE67BD8 
X-CRM114-Status: GOOD (  11.34  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

We were getting the codec interface through a proxy function that does
not bring anything compared to just accessing the interface definition
directly, so just do that. Also make the decoder interfaces const.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
Changes since v1:

* Fix checkpatch warnings.

 drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c |  9 +--------
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c  |  9 +--------
 drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c  |  9 +--------
 drivers/media/platform/mtk-vcodec/vdec_drv_if.c       | 10 +++-------
 drivers/media/platform/mtk-vcodec/vdec_drv_if.h       |  4 ++++
 drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c |  9 +--------
 drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c  |  9 +--------
 drivers/media/platform/mtk-vcodec/venc_drv_if.c       |  7 ++-----
 drivers/media/platform/mtk-vcodec/venc_drv_if.h       |  3 +++
 9 files changed, 17 insertions(+), 52 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
index 67a7d4f813d5..c5f8f1fca44c 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
@@ -485,16 +485,9 @@ static int vdec_h264_get_param(void *h_vdec, enum vdec_get_param_type type,
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
index 42e302650e69..63a8708ce682 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c
@@ -610,16 +610,9 @@ static void vdec_vp8_deinit(void *h_vdec)
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
index bed452ac9d13..c179204f97ec 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
@@ -1000,16 +1000,9 @@ static int vdec_vp9_get_param(void *h_vdec, enum vdec_get_param_type type,
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
index 8354404a7fc9..2e43dd4486e0 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec_drv_if.c
@@ -15,23 +15,19 @@
 #include "mtk_vcodec_dec_pm.h"
 #include "mtk_vpu.h"
 
-const struct vdec_common_if *get_h264_dec_comm_if(void);
-const struct vdec_common_if *get_vp8_dec_comm_if(void);
-const struct vdec_common_if *get_vp9_dec_comm_if(void);
-
 int vdec_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 {
 	int ret = 0;
 
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
diff --git a/drivers/media/platform/mtk-vcodec/vdec_drv_if.h b/drivers/media/platform/mtk-vcodec/vdec_drv_if.h
index c5bd8b0dbe13..270d8dc9984b 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_drv_if.h
+++ b/drivers/media/platform/mtk-vcodec/vdec_drv_if.h
@@ -54,6 +54,10 @@ struct vdec_fb_node {
 	struct vdec_fb *fb;
 };
 
+extern const struct vdec_common_if vdec_h264_if;
+extern const struct vdec_common_if vdec_vp8_if;
+extern const struct vdec_common_if vdec_vp9_if;
+
 /**
  * vdec_if_init() - initialize decode driver
  * @ctx	: [in] v4l2 context
diff --git a/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c b/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
index 0183dd395d44..b9624f8df0e9 100644
--- a/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c
@@ -655,16 +655,9 @@ static int h264_enc_deinit(void *handle)
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
index 3787e75ca902..8d36f0362efe 100644
--- a/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c
@@ -460,16 +460,9 @@ static int vp8_enc_deinit(void *handle)
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
index b5cc645f7c68..c6bb82ac2dcd 100644
--- a/drivers/media/platform/mtk-vcodec/venc_drv_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc_drv_if.c
@@ -17,19 +17,16 @@
 #include "mtk_vcodec_enc_pm.h"
 #include "mtk_vpu.h"
 
-const struct venc_common_if *get_h264_enc_comm_if(void);
-const struct venc_common_if *get_vp8_enc_comm_if(void);
-
 int venc_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
 {
 	int ret = 0;
 
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
diff --git a/drivers/media/platform/mtk-vcodec/venc_drv_if.h b/drivers/media/platform/mtk-vcodec/venc_drv_if.h
index cc5bb36c2735..52fc9cc812fc 100644
--- a/drivers/media/platform/mtk-vcodec/venc_drv_if.h
+++ b/drivers/media/platform/mtk-vcodec/venc_drv_if.h
@@ -110,6 +110,9 @@ struct venc_done_result {
 	bool is_key_frm;
 };
 
+extern const struct venc_common_if venc_h264_if;
+extern const struct venc_common_if venc_vp8_if;
+
 /*
  * venc_if_init - Create the driver handle
  * @ctx: device context
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
