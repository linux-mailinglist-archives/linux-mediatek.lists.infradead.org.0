Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78822AB781
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 13:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTQ5Fl+GrO6OYL+IpzEhgllbBagWGrVcTmYBDdm5UM4=; b=f4aKqcDiNAVHAS
	lbdTz6vi1azE4dn2LSfZo6ZUKszHQQDO7/nDXelZJX3R3ovy3/ODx4uqKlWb3UzAR6aj+qH3bm+o+
	/kjbpkZUl0KSjd8aL4fZAB9cxu11G4jv/AAskZnaUBL1n0u+A8b5wj2zz2SeH1DJlL6XBKluqMb4q
	7nPYY68sIUxDxalkjJEJAyVg2pXV5mx3JPkeCv9fo2NDOK3i4j5JwbadvxI/Ab4OItaZmgKv6KVJy
	rFeDbp4CwGh139Gs1eMj3DEvXTSGX/4Wsbm1W6kvepJ3YOp6xXV7JpCp/UOdyyCSabJk+V3uB0XAb
	O9alPV1alawuSWnS+3pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CqY-0004OQ-5O; Fri, 06 Sep 2019 11:56:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CqU-0004KH-Ow
 for linux-mediatek@lists.infradead.org; Fri, 06 Sep 2019 11:56:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so3383558pgm.3
 for <linux-mediatek@lists.infradead.org>; Fri, 06 Sep 2019 04:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yGxlx3MKmlt/bKN9nc3Oi1GFJ80hfXJe1nLtjwmXCP4=;
 b=iEbqIiTQKpgiBJF2YBK8xmQsBjq8O99b4/SPFDO0jIo8BxTBQQxLeqtCJTy7afP6VL
 xebfwx3o9AaZdUGN4NhSNUU2ZMcKxhMoscCKUGZOCn+qv6ocWexd+MyP0rvFT/dSljXl
 YPgo7OG2X+xaFT8VF7yJ84DPifUCIe7J5A/so=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yGxlx3MKmlt/bKN9nc3Oi1GFJ80hfXJe1nLtjwmXCP4=;
 b=UvH1CJSwrdfEvYCe2hXpkir6dYf3tuQTpbrtfwkM6X8vQJfX4icJA1LQUiKm+60BMC
 l+px83b1Rn5DKiKRSAw3WOkTAY4HqeNKhCKLaQS5GeRdckA8+P3Qu0lHeUWt1OZxCpbC
 ODN9MNoBW4f4BmRnkPFpCaXnfyEthssMqtjXkIRHXY6ECUXPyJFxfJOZF0HBdOvbOcWk
 DgaXro/+SfK8XaPdDuEWRcRcj1TaGkK+PdmThSBlhoHVZ4azbe2qUJU/ZJKJDmFiwJ+T
 AOOMGx+bihM1SNKiXygJpzLCdQQQrclN1ni2QHyKsEMzR4mwS+2f5HcPpfpL+yQEOnTx
 w/LA==
X-Gm-Message-State: APjAAAXnSk7lmv00C7PIwOan1ylwokw6OXdnK6nxUmT4PJM2/4VC+aar
 vw4YE+eHBU89WxOPK/HUVktJDg==
X-Google-Smtp-Source: APXvYqzL8UPBxmIuWjOxv5igGLxQuIVAl7t9p/BozL5Bqd19LANFyc9RLPLnp2L+3tE4UI1iLFGO0A==
X-Received: by 2002:a65:6546:: with SMTP id a6mr7868813pgw.220.1567770966375; 
 Fri, 06 Sep 2019 04:56:06 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id o22sm3667394pjq.21.2019.09.06.04.56.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 04:56:05 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFC PATCH v2 13/13] media: mtk-vcodec: enable MT8183 decoder
Date: Fri,  6 Sep 2019 20:55:13 +0900
Message-Id: <20190906115513.159705-14-acourbot@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190906115513.159705-1-acourbot@chromium.org>
References: <20190906115513.159705-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_045606_805982_E73DC618 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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

Now that all the supporting blocks are present, enable decoder for
MT8183.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
[acourbot: refactor, cleanup and split]
Co-developed-by: Alexandre Courbot <acourbot@chromium.org>
Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
index 7b4afac18297..cade24bfa555 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
@@ -393,6 +393,10 @@ static const struct of_device_id mtk_vcodec_match[] = {
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
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
