Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C7F1353B1
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 Jan 2020 08:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tY0pvtfYzQH/o8N18YJ/fkaVxg84zQvxdzm2EZA8R3Q=; b=iSlHFdQYK0JBUT
	9dlnFefWZi7FY+Nf2Bdig4csHhVPVM6gthUA5u7lRnLuEYpJHVErK5TXze0QrK6WmNbcIx4girQ6x
	eHloJcOec4ynI2oVFyq8lJbTPWXK59xuB2pTM3+/GhyLBJf/fLOZlksXVeFQUapW+CO6AM1+CGwmj
	mNG9PqxbXOZyB3W8JCYyS3HtmPgMSrXGbv7NwJeCznMobIpGF+/FCUhvL+U6USYYeA4QequZ9bsXR
	rnHbhsfgDpG9lfCw6knSKLGsJ9vkEsgRvJRAI4t4z+vbssCeqkoywHABaPFbA60Jc6rBID4A5fzw2
	Ng+28/bfmTwPYzcdoOUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSG8-00069z-Gc; Thu, 09 Jan 2020 07:29:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSFh-0005p3-8R
 for linux-mediatek@lists.infradead.org; Thu, 09 Jan 2020 07:29:12 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s94so671631pjc.1
 for <linux-mediatek@lists.infradead.org>; Wed, 08 Jan 2020 23:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eb7+4YTwZPIai1tsUX2MFyulW3TpuQQ3q3lzwkxFRow=;
 b=ej7W8jgc7Qi2towEQUvPZ+HLF2Kev1VG8RzMxUS5owrJ4eTxi+Kf8XMBBX1iBsQitC
 eMtse3kYPa4wXtk2TSBcfd623EMdWEZsk9Axr5HnIgKhJq6g/bsv/a13TdoLdyZ/A65g
 p27LdFxT3wMG4atcUFXFjF4Wx7gKd7Yo4MlIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eb7+4YTwZPIai1tsUX2MFyulW3TpuQQ3q3lzwkxFRow=;
 b=WrMmrZZh0YadgNqMlX+ydFtPHVRn4PEjG1ByjIGKq01emn1NuTz1iSQ6/OLh2kBaRQ
 8TFkvlJiOue1HrR2S3So9DNUl2cvSQgBwKql2THHWXlWt8jsdO51yWYzlovvr3KiFD1q
 fXw6+7375Ha9aDcHo7jc12zHijAKaMCYdpNQOLzgyhVXqZrc/wUZV23qQfN6KAaC8GJX
 YPvr6mb1cLsn5DL3KcB7STSMyCcUDJr/NAWNaQjktT7jm1WmJRSF320RJKtfuxtQFLk6
 taUS7bU63syYmw3X/Pm7J8Ao0dHsLmwLN1377GRPavPk3VKHXE/MPlej+k2uzOHa/6bH
 VLTQ==
X-Gm-Message-State: APjAAAUS9xJnIDksKF2HzBUFg6Zugq38lBbdDnpAHOQbpofHjOYrYO1I
 cg4Ff+KIsF3KhiitZZ6LkISrVw==
X-Google-Smtp-Source: APXvYqxyorOub/tc3oX4xjM6D+1C5Oaw62atk5hhMqHpFC6EWGkz1ky0e/G5dlHrY0x2U1r+CwOnrQ==
X-Received: by 2002:a17:90a:9284:: with SMTP id
 n4mr3519891pjo.84.1578554947811; 
 Wed, 08 Jan 2020 23:29:07 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id p16sm6485810pfq.184.2020.01.08.23.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 23:29:07 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: CK Hu <ck.hu@mediatek.com>
Subject: [PATCH] drm/mediatek: check for comp->funcs
Date: Thu,  9 Jan 2020 15:29:00 +0800
Message-Id: <20200109072900.17988-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_232909_388721_76BFC28C 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

There might be some comp that doesn't have funcs, eg. hdmi-connector.
Check for comp->funcs otherwise there will be NULL pointer dereference
crash.

Fixes: bd3de8cd782b ("drm/mediatek: Add gamma property according to hardware capability")
Fixes: 7395eab077f9 ("drm/mediatek: Add ctm property support")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
This patch is based on mediatek's drm branch:
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6

After
https://patchwork.freedesktop.org/patch/344477/?series=63328&rev=59,
there will also be funcs for hdmi-connector.
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index fb142fcfc353..7b392d6c71cc 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -808,11 +808,13 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 
 		mtk_crtc->ddp_comp[i] = comp;
 
-		if (comp->funcs->ctm_set)
-			has_ctm = true;
+		if (comp->funcs) {
+			if (comp->funcs->ctm_set)
+				has_ctm = true;
 
-		if (comp->funcs->gamma_set)
-			gamma_lut_size = MTK_LUT_SIZE;
+			if (comp->funcs->gamma_set)
+				gamma_lut_size = MTK_LUT_SIZE;
+		}
 	}
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
