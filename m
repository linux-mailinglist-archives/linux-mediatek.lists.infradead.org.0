Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BCAAB770
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 13:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KD8TPe3Yhsa50TK/PNMTATRZnDH0ZN1g6tIxpaO90Uw=; b=ZqCcMxLjacZ0JI
	O8dIaBo1hw/9rirNsGFmC0K5Tu9RPhGo5GPpIER/lNA4tfSc3g9PVoaxlJutYX7t54tpq7w20jF3N
	KzqOgi8ojXzlaSbS1NXFJVNozMnmx/QOgxhb7BSsRSFtp+Vgd54tNKWbXe7PZkOtkeQ452wgeW/EG
	qAvHaXyalKfsZILJRiQFRQjO2CtN7DJmCNagNSypkX+gr55oBifXsM4C6bQlVKxascr1Pi6T7E8au
	EHaWSZvppiaUFEtNX8C0juSHPHQAW+KswW0eSdg2n4imlmDMHT5Vy/VdEgkkF1nJwdmPQluNmhEoQ
	CILnVpQEe0H9hxCFNh8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Cq1-0003eC-2D; Fri, 06 Sep 2019 11:55:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Cpx-0003c2-Fk
 for linux-mediatek@lists.infradead.org; Fri, 06 Sep 2019 11:55:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id n190so3393362pgn.0
 for <linux-mediatek@lists.infradead.org>; Fri, 06 Sep 2019 04:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+OhbUrYZqce0AMoF+F11Glo98JJ+mfowWQPDmtjNy0c=;
 b=j0fpr0SZSekbxfXZ1FC/pKVVDJOVri+GMbhaUUg0GN7iFcJUJbsxYR2ufhju7H4jFa
 Jv5dNhGX1Oqtv4RcGth4eaQdF8yVq5LeliVMFrfqFwvuiRhpX30n+RWuTHUTalX6WKus
 REzcBschvcwWBSNcVBdtu2HD0ERIb/mvo+mT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+OhbUrYZqce0AMoF+F11Glo98JJ+mfowWQPDmtjNy0c=;
 b=m/b/HVgm2+6HTa+Nzf8ktyURYTB4hs6hBD9rQCexpMsUXKVK4VG3poBa1mLzu09aMb
 I4qHkRaRKL8whJoWuwCHfvZVYXdUfLetRs5LMmKaqj84QYTpV1bRw1Xd44Ot4X38dWu4
 /3+ZnMWQey4UOWgwv9GUbSEC2A03bCKNEDtgAGyLEDcGz3p5CwtBp5qB4KSmO9rx/sx1
 kheGP2ZFcrN2M4pKCGzDnBi8KaIVguzN5yv4ghf1RGIdBrLPmJbg6yl0r4yggSXnEbbu
 iUc4Cm3NQh7q3zHpHlIuPs9klluVcGj0FGcLnBAUXXNwlfVcM3eP7GhoCTzn2DNMQk1A
 nbRQ==
X-Gm-Message-State: APjAAAXkZOd4ffplhydI3nWxn2J8nVBk0QYOCh3qYBuzogPQ98V5FnST
 pXOvi7Xj8Pu/db67hpZ2n6HHcA==
X-Google-Smtp-Source: APXvYqy4WC4joqsKUtL19abRcSKOqjJJ+pZZ5uFtnSaqIUEDo7bsKgApsUMm4LCY1XtDNk4LXigH1g==
X-Received: by 2002:a17:90a:264a:: with SMTP id
 l68mr9420784pje.74.1567770932661; 
 Fri, 06 Sep 2019 04:55:32 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id o22sm3667394pjq.21.2019.09.06.04.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 04:55:32 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFC PATCH v2 01/13] media: mtk-vcodec: vdec: fix incorrect pointer
 dereference
Date: Fri,  6 Sep 2019 20:55:01 +0900
Message-Id: <20190906115513.159705-2-acourbot@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190906115513.159705-1-acourbot@chromium.org>
References: <20190906115513.159705-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_045533_523239_77C1D3DF 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Yunfei Dong <yunfei.dong@mediatek.com>

mtk_q_data::fmt is actually a pointer and must be dereferenced as such.
This went under the radar because mtk_v4l2_debug() evaluates to nothing
unless DEBUG is defined.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
[acourbot: split into its own commit]
Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
index 26a55c3e807e..653f111532ab 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c
@@ -284,7 +284,7 @@ static void mtk_vdec_update_fmt(struct mtk_vcodec_ctx *ctx,
 		fmt = &mtk_video_formats[k];
 		if (fmt->fourcc == pixelformat) {
 			mtk_v4l2_debug(1, "Update cap fourcc(%d -> %d)",
-				dst_q_data->fmt.fourcc, pixelformat);
+				dst_q_data->fmt->fourcc, pixelformat);
 			dst_q_data->fmt = fmt;
 			return;
 		}
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
