Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297F82BECC
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PaDYy4ZsLJf5IaGG/LUcoFTO2+HjXUyCLFdKOENCvM=; b=dUqSZgapV0+2AO
	KaTXm/dTVb0O+2QYm8EqK/ecXSuF5ezncQAopvN6YH9kDxKk73Df+r9gDkrPWBer9aZZXMiBRNhng
	aiP/4uqQgFFJgTFP0EBRZFXj+JRGOXTVg/OaGjOmcBtM2FzkWPf4EjmU/y0RowOiNoEQQVpYn+0pU
	EeENmkxaBZCd1p+kwpshBMaljBVhufFw26wCJk7VJoZuZ19sz4ZrfGnk97cQ/q4s3/0Ptxs8XY7RC
	/B5IVFaA28rjZKYsXin3ixlVQc+LfnJqLB0ZPM5W40q6iHpUiFXzryc3n01KHiMYDNXdKwVEvpMLX
	7r3Z0AL4ebxQvzI9aYew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVV70-0002Kp-TJ; Tue, 28 May 2019 05:57:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV6w-0002HS-Qc
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 05:57:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so10766110pfa.10
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 22:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dct7sUqIN4yTDR2HFtwSyXfQaPLYionNUf3R7g65wJc=;
 b=hwSZWxSlG9xeAnA9TUeD7ON0voDdUj314TGa+yz9do/gM6mzbANrtu0Ks/sFbwBm63
 rKJQTeV99HciujXRGhmL2Z91P9RLUC5gzPp/HTBeW0iwdSsZZPNvjc3r7EbGBrX8f2mR
 1QJ1d3JZUAftEP/UEB13JiDPfSCNfe/IM6iME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dct7sUqIN4yTDR2HFtwSyXfQaPLYionNUf3R7g65wJc=;
 b=omZ2DYJJu7CtcMfodKifLgKFGrW17/B/cmWjCnTPgFTunjOGSh2exOkeXhSkYp1jBa
 9qDhVo+GKBqpa8Kw8mLAMsnGg7B7B1vvfeSR3zyIfzPHgI860bA8vUHQygwFa0igPD+T
 7UYWOVwZToD8Wh3+KGWeQpAcmDFWhFXqnOIfFNLMpWUOvDW9iI8zfBtMSg8e71SfTi3I
 yBxFRcKvxmwHpkjNCSaybaYia6CY876xIKTJtS2bN2tfwRu2RxY7EAKBdsWOUxokn50j
 PTsjou43vntUsVOL5KXH04wVSpaPn13zF6Aci71Vwz7Ak9Zmg3mdNaDElyDFP3zgyNWr
 hOew==
X-Gm-Message-State: APjAAAW/Ispfhur96rsStuw6BJ3CchzWpo+O56dcibnPWz0EVlTkeClt
 2AYItVg7f9Hcu0GbucGhltDBEA==
X-Google-Smtp-Source: APXvYqwgF6QrvKVy4NuktZ4Afik+l8WeNLrMISF78vUJAwwwPB3Dap6m/TxwNSRrS/H7YEFHvMRX2A==
X-Received: by 2002:a17:90a:1aa8:: with SMTP id
 p37mr3381669pjp.17.1559023042073; 
 Mon, 27 May 2019 22:57:22 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id w1sm13950551pfg.51.2019.05.27.22.57.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 22:57:21 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFCv1 04/12] media: mtk-vcodec: fix copyright indent
Date: Tue, 28 May 2019 14:56:27 +0900
Message-Id: <20190528055635.12109-5-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190528055635.12109-1-acourbot@chromium.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_225722_861790_40C50101 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Minor identation fix for copyright notice in a few source files.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
[acourbot: refactor, cleanup and split]
Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      | 26 +++++++++----------
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 26 +++++++++----------
 .../platform/mtk-vcodec/mtk_vcodec_enc_pm.c   | 24 ++++++++---------
 3 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index 109c7578a8b2..76905e2d56a7 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -1,17 +1,17 @@
 /*
-* Copyright (c) 2016 MediaTek Inc.
-* Author: PC Chen <pc.chen@mediatek.com>
-*         Tiffany Lin <tiffany.lin@mediatek.com>
-*
-* This program is free software; you can redistribute it and/or modify
-* it under the terms of the GNU General Public License version 2 as
-* published by the Free Software Foundation.
-*
-* This program is distributed in the hope that it will be useful,
-* but WITHOUT ANY WARRANTY; without even the implied warranty of
-* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-* GNU General Public License for more details.
-*/
+ * Copyright (c) 2016 MediaTek Inc.
+ * Author: PC Chen <pc.chen@mediatek.com>
+ *         Tiffany Lin <tiffany.lin@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
 
 #ifndef _MTK_VCODEC_DRV_H_
 #define _MTK_VCODEC_DRV_H_
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 2d5a61c06287..32d8ce9c8f6e 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -1,17 +1,17 @@
 /*
-* Copyright (c) 2016 MediaTek Inc.
-* Author: PC Chen <pc.chen@mediatek.com>
-*         Tiffany Lin <tiffany.lin@mediatek.com>
-*
-* This program is free software; you can redistribute it and/or modify
-* it under the terms of the GNU General Public License version 2 as
-* published by the Free Software Foundation.
-*
-* This program is distributed in the hope that it will be useful,
-* but WITHOUT ANY WARRANTY; without even the implied warranty of
-* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-* GNU General Public License for more details.
-*/
+ * Copyright (c) 2016 MediaTek Inc.
+ * Author: PC Chen <pc.chen@mediatek.com>
+ *         Tiffany Lin <tiffany.lin@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
 
 #include <media/v4l2-event.h>
 #include <media/v4l2-mem2mem.h>
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
index 39375b8ea27c..2fdae50173be 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
@@ -1,16 +1,16 @@
 /*
-* Copyright (c) 2016 MediaTek Inc.
-* Author: Tiffany Lin <tiffany.lin@mediatek.com>
-*
-* This program is free software; you can redistribute it and/or modify
-* it under the terms of the GNU General Public License version 2 as
-* published by the Free Software Foundation.
-*
-* This program is distributed in the hope that it will be useful,
-* but WITHOUT ANY WARRANTY; without even the implied warranty of
-* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-* GNU General Public License for more details.
-*/
+ * Copyright (c) 2016 MediaTek Inc.
+ * Author: Tiffany Lin <tiffany.lin@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
 
 #include <linux/clk.h>
 #include <linux/of_address.h>
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
