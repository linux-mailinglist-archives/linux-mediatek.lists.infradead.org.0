Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741DEAB774
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 13:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArKXWL7YLHWy2WBzd9+f8p9fDx8sX13dWqJtNEmhDyk=; b=ai8scw37RCeozd
	Y2Dilp8sCt7CffIN9N+XalFNUJ1Rqnn1hm7/R8xbTgV50mIsy9iwynwM8AD5XHoDx8NpUphwKDIrB
	MLYmzpKkXosTTpZx8t4XtXGlsGgDt2n0PqDMRjewC/VUu2+nS0GoV7WjWeMhZxNkatUQ22yDGVT+g
	GOLNz+9h3R4cPsm07RRoQoe/DtluklY5Dy3Do6xK23oEv1kj20bE4SkA81O78tod6kBNC/LM+IJuH
	pD3HFB1f5uHNHanG1HLM2seZ4EfVlsBzjbckFsKthofhatTdWaZ4xh96Z5Hb8xL4XQr8Sx9i23P2w
	rGAsDeDWSCxAQ+1HoKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Cq5-0003nG-FF; Fri, 06 Sep 2019 11:55:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Cq2-0003kj-OM
 for linux-mediatek@lists.infradead.org; Fri, 06 Sep 2019 11:55:40 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so3010596plp.9
 for <linux-mediatek@lists.infradead.org>; Fri, 06 Sep 2019 04:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rmvBNkTdsDRsEM61NjMf/X0IeoL67srtswcL/KipeCU=;
 b=lD7C87VcCfCC73o5yfmt2mC/BIZKrEeMM/aT6dR4o+mCr1k4uiXbUBCGjdmwVCK7f+
 xuR8XlsTWg3PNQMzw6MlyoZnkB09W7iSSH2oWnJ8xLBnFXifM9yzmQCi0zibzW0c1/Ge
 RlScRApeYLC5DHYB1nXWL5UsmHcTspdONkYsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rmvBNkTdsDRsEM61NjMf/X0IeoL67srtswcL/KipeCU=;
 b=JVvfQPmt7pRlBKJjJbhdE6gCk4gKiykdI+p8e6qivpLcRnEgidTSm8iLDeEIbZCo2O
 aC7kQ17GWbp6HdYVPNVV0i5Mo12r/FlBThem8R2FDiG0Z4XTEP+mTXKXtGSwsfsXvOcV
 q/niDKrmKJGAwF56LTQp2ROkc5QtMldAYmeArxtPT6JOgcsJDVyQxZhYeZt8Yl2FVgoe
 KF1w+eRqDTdGjjb+EY+Ik3umcVegEUaSIqlSbafrTrAodNe3SyUiID4JoDPfDCQA8zEA
 VRg6Ei4zi5Dk0HxKPNzm3eWlBXstBnuCtN9hvGQq0wZrd4Dkt0aY3W7yT+6MSWJE7gq6
 xwjw==
X-Gm-Message-State: APjAAAW305q9zIdl8gkz6APMxzyfeLov51brniqN/YC/IT3LZQyl9sLK
 X0V8u5RoVVICPKik3hmTscHNfQ==
X-Google-Smtp-Source: APXvYqyUCSBsPgZieu0kGLJ172xmNCEYZ4dQ2c7hwk8o5f0gKm/e7v15Sxpv0rgcqXV8P/Q5bi7y3A==
X-Received: by 2002:a17:902:8690:: with SMTP id
 g16mr9003555plo.282.1567770937975; 
 Fri, 06 Sep 2019 04:55:37 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id o22sm3667394pjq.21.2019.09.06.04.55.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 04:55:37 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFC PATCH v2 03/13] media: mtk-vcodec: vdec: clean up
 vidioc_vdec_s_fmt a bit
Date: Fri,  6 Sep 2019 20:55:03 +0900
Message-Id: <20190906115513.159705-4-acourbot@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190906115513.159705-1-acourbot@chromium.org>
References: <20190906115513.159705-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_045538_796454_C549244C 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Check for a potentially NULL pointer that was overlooked and use shorter
accessors to the same data. While we are at it, sprinkle a few comments.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 .../media/platform/mtk-vcodec/mtk_vcodec_dec.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
index 653f111532ab..858727824889 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
@@ -841,12 +841,20 @@ static int vidioc_vdec_s_fmt(struct file *file, void *priv,
 		return -EINVAL;
 
 	pix_mp = &f->fmt.pix_mp;
+	/*
+	 * Setting OUTPUT format after OUTPUT buffers are allocated is invalid
+	 * if using the stateful API.
+	 */
 	if ((f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) &&
 	    vb2_is_busy(&ctx->m2m_ctx->out_q_ctx.q)) {
 		mtk_v4l2_err("out_q_ctx buffers already requested");
 		ret = -EBUSY;
 	}
 
+	/*
+	 * Setting CAPTURE format after CAPTURE buffers are allocated is
+	 * invalid.
+	 */
 	if ((f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) &&
 	    vb2_is_busy(&ctx->m2m_ctx->cap_q_ctx.q)) {
 		mtk_v4l2_err("cap_q_ctx buffers already requested");
@@ -865,6 +873,8 @@ static int vidioc_vdec_s_fmt(struct file *file, void *priv,
 			fmt = mtk_vdec_find_format(f);
 		}
 	}
+	if (fmt == NULL)
+		return -EINVAL;
 
 	q_data->fmt = fmt;
 	vidioc_try_fmt(f, q_data->fmt);
@@ -873,10 +883,10 @@ static int vidioc_vdec_s_fmt(struct file *file, void *priv,
 		q_data->coded_width = pix_mp->width;
 		q_data->coded_height = pix_mp->height;
 
-		ctx->colorspace = f->fmt.pix_mp.colorspace;
-		ctx->ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
-		ctx->quantization = f->fmt.pix_mp.quantization;
-		ctx->xfer_func = f->fmt.pix_mp.xfer_func;
+		ctx->colorspace = pix_mp->colorspace;
+		ctx->ycbcr_enc = pix_mp->ycbcr_enc;
+		ctx->quantization = pix_mp->quantization;
+		ctx->xfer_func = pix_mp->xfer_func;
 
 		if (ctx->state == MTK_STATE_FREE) {
 			ret = vdec_if_init(ctx, q_data->fmt->fourcc);
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
