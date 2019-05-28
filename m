Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77012BED4
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OjEUhLS6sj2yTdxJOfI7vw/M5UOFcv3ogYjaWsj1G8=; b=EbDvYO96y8R5RI
	WHL114nlRytoH9m1GtCRyEdLjuXy2EM2Dec1wE4q15jxqtVWKitkMYo5L8lcaMu7bIZt6yfvOT7vl
	wNOFDwLPUS346f4la5SP4JMiF+lSN0/O5R8p8YzAFG/Rl3V/FywbrUtpQKsbEAoPFpAe4AtqLG/LD
	lI+tVQrul1MrsGCCzfRhhnkpX1Y79hFSy8BR/GuuS4vLMk0wKfJQuEJiyN2pDsfWoLpbe4XadjnzU
	rbEuEpln6lW3VVTQrywDhacL69uj/atGpB7qgncM+6bXI9Mt91aJDGZ2X/8o53noIrNVXMB9V/M1Y
	ZgIKutOajCoi0rJMmSag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVV7O-0002lc-DI; Tue, 28 May 2019 05:57:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV7J-0002hI-0i
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 05:57:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id g69so7873501plb.7
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 22:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GqYVB277WEFaDrjqHl9u9gzan9xp6pYbuiY2CwT3+wA=;
 b=AadNY3xF3iC0+GIj+AEcn/1/ebmF5bRb4x1ra9pHFJ24l47TmWvTXmPE7BrP8SspLO
 SgbojQcgijYA22qNoy/MhFCU4A2X+iyJdfyLFYTbao2CqYB4Ilo+6qs6fee9BcslVD93
 myeKCwSC+QF2PDXzcx/2qaV9jofGKwHdNF+D8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GqYVB277WEFaDrjqHl9u9gzan9xp6pYbuiY2CwT3+wA=;
 b=VTFzgIZYdSRsvrj5RmX3ROmjBDbk/jT7WmBTXfa9KNnt6wmdT9k+H9CeZd4XDyI+/n
 E+dbYKFU7pQTWZB/I1/VgN3k29Cfy3C0oU/0GnhTA+bwKEL49W/ULdbajOXEuFlFfhO4
 /aaqmybgMvQBz9e1Ti5fgEuQp4wHxTxvr9vY0eTdQT+17V7BBU0hI2hi4BE2hN3m5tQS
 ws9tQELvOFklRcG1Pt6j9dGEB/9shrOfuZfUHXSCZLnfMZ5lQ2qR75Qccjff3pgn3jcv
 hoUdt8Z7yQSXQ4UanVKarKImRN4VO32Isf2gLAvChsKbAvzNBApcB+mjuNb4OZJczX2Z
 YvwQ==
X-Gm-Message-State: APjAAAUxAm8pLzg7nYvIq1DvHplr1BMO/Pr0gVGMTkYjiLuXyWDiX2CW
 OYdPA9gUUe8trrjTRj74eYqBpA==
X-Google-Smtp-Source: APXvYqxIBAI0HKWcz4VbpCo99CLIBzk+Qjzv17nOkj2dGauUT7BgjmEXMM+WYYbthMzYg7QjlTOctg==
X-Received: by 2002:a17:902:bf08:: with SMTP id
 bi8mr20531914plb.206.1559023064671; 
 Mon, 27 May 2019 22:57:44 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id w1sm13950551pfg.51.2019.05.27.22.57.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 22:57:44 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFCv1 12/12] media: mtk-vcodec: enable MT8183 decoder
Date: Tue, 28 May 2019 14:56:35 +0900
Message-Id: <20190528055635.12109-13-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190528055635.12109-1-acourbot@chromium.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_225745_256196_CD5748AE 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

From: Yunfei Dong <yunfei.dong@mediatek.com>

Now that all the supporting blocks are present, enable decoder for
MT8183.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
Co-developed-by: Alexandre Courbot <acourbot@chromium.org>
Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
[acourbot: refactor, cleanup and split]

Change-Id: I5696b186fae16f12b97745247331732beb1192e2
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
index 8be0c04f7e81..60dd312500a4 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
@@ -401,6 +401,10 @@ static const struct of_device_id mtk_vcodec_match[] = {
 		.compatible = "mediatek,mt8173-vcodec-dec",
 		.data = &mtk_frame_8173_pdata,
 	},
+	{
+		.compatible = "mediatek,mt8183-vcodec-dec",
+		.data = &mtk_req_8183_pdata,
+	},
 	{},
 };
 
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
