Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79040152887
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Feb 2020 10:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+c9i2QW8HCm0aUUIgva/ROK8vxG0vTaOQE0QSavK5w=; b=ozYgZPRemhYHrN
	YfT83fv7JB6uVKXZ5R5sZunGb/1r9kaB6TogjWrii8KvYqkpcBcyoSA675ElHShB2vO87lm5oDj0P
	s/W3iXn99sq2YccyXnJSknhOCQrtk1GTqrjffuAlChivgDgdJIHpkzl7blywfhr1dSx5hcCyzOMYu
	/QMGPszewJ7Zc78fesKmAJdPP0VcgjsGO3tP/P9fy9duKU88LfbyNXVAMUpyLtJswLqdF+5GliX3l
	qDflpPGhmMRymi4t2y3kUv0uxCG1nuQtmRNr6FvtXHMMkdpcH71F9lrR0jHnc8wC46htrm51Sl+Tw
	odC/KmynqGUPC0BNvgPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH8r-0005g0-Ea; Wed, 05 Feb 2020 09:38:41 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH8K-0005AC-2J
 for linux-mediatek@lists.infradead.org; Wed, 05 Feb 2020 09:38:09 +0000
Received: by mail-qt1-x849.google.com with SMTP id x8so944955qtq.14
 for <linux-mediatek@lists.infradead.org>; Wed, 05 Feb 2020 01:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=KEIH1qwXja/ZmU3/27elfahliyGtpPNLFM8jJAbIPe0=;
 b=CoDv4bmuhxUgR9bmsyfNwNeOGpipEjZz8WHI+CF859hIUpkYWhXlhZwzAGsS+bPxJw
 Ni25hCPqGGwCReROxGvBFe85BqQlIdFwrDE8Aowsf/8AHVm8sqc7vLbbhkP17oOX64eb
 V9eMMRvIDW6H7Pz8nTq7LCrhZOZuL2C3HVODNKe2b6HpegWPXfbX1PzxIsimi9NcM4Xu
 CGVHfTG2rPKgIC8f/fJqIRs0ZAsBZr18+eBxoedw8zjw9rdjBhGLKhyTIMnZ1jiCjUib
 qHWvt/JaBhiM4wikSZFQXK0Qu3yEzmFTBljvuMJBn2OfWVYp40mGXjDSVIAJLqBKIP/K
 Jezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=KEIH1qwXja/ZmU3/27elfahliyGtpPNLFM8jJAbIPe0=;
 b=McIwfrHjrxp47F/xtgfB7pHLCJahIY8BfQQqLMPi3j2ZqSe30LvluRsBkYh19KKIVb
 /mgGqDvBJMeMHceKjfeAczJmAQoBDYj9QeP6t06nz5rpU/MW4YVPC4AMLwu5q5/cdScE
 Y72FTqmlIUm9pFYFL14xcoqo1qTzqneLTNVTpH6c6ttXbAHjH27AZeELHM+W94CFTD8j
 5DeXnnD+UgQcSFcdiLOJsp0E8K+7whEL5DXuWgR4i7zbnUnZDPlGhYgbohjf24Vo6yJy
 EKvZE0qzCwhtYadE+cOJOaWX8+c0MvR8QVBu0s8PPPAhgm4RI2VPfpbEubAdOdQY2yIN
 oucQ==
X-Gm-Message-State: APjAAAX7U8+zzJ4dAzH88VEcF8S1O7Q1OssOJ78EUU/Kx/NsrlMGuutO
 L+/ETARaIYviD2Mw0XVzltR9/WDii5GC
X-Google-Smtp-Source: APXvYqxBmBAsv6b6o4/hWnX6IZaGVfp7aEruPTeKewWwwid+Xv/sFuCAvNLDBkRklTQQiyRmKKgqtlZR4Yp3
X-Received: by 2002:ac8:769a:: with SMTP id g26mr32402406qtr.259.1580895486103; 
 Wed, 05 Feb 2020 01:38:06 -0800 (PST)
Date: Wed,  5 Feb 2020 17:37:43 +0800
In-Reply-To: <20200205093745.79298-1-tzungbi@google.com>
Message-Id: <20200205170416.1.Ieba8d422486264eb7aaa3aa257620a1b0c74c6db@changeid>
Mime-Version: 1.0
References: <20200205093745.79298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH 1/3] drm/mediatek: exit earlier if failed to register audio
 driver
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_013808_122428_327F915F 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Exits earlier if register_audio_driver() returns errors.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index c79b1f855d89..23c2b0e8693d 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1656,7 +1656,7 @@ static const struct hdmi_codec_ops mtk_hdmi_audio_codec_ops = {
 	.get_eld = mtk_hdmi_audio_get_eld,
 };
 
-static void mtk_hdmi_register_audio_driver(struct device *dev)
+static int mtk_hdmi_register_audio_driver(struct device *dev)
 {
 	struct hdmi_codec_pdata codec_data = {
 		.ops = &mtk_hdmi_audio_codec_ops,
@@ -1669,9 +1669,10 @@ static void mtk_hdmi_register_audio_driver(struct device *dev)
 					     PLATFORM_DEVID_AUTO, &codec_data,
 					     sizeof(codec_data));
 	if (IS_ERR(pdev))
-		return;
+		return PTR_ERR(pdev);
 
 	DRM_INFO("%s driver bound to HDMI\n", HDMI_CODEC_DRV_NAME);
+	return 0;
 }
 
 static int mtk_drm_hdmi_probe(struct platform_device *pdev)
@@ -1705,7 +1706,11 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	mtk_hdmi_register_audio_driver(dev);
+	ret = mtk_hdmi_register_audio_driver(dev);
+	if (ret) {
+		dev_err(dev, "Failed to register audio driver: %d\n", ret);
+		return ret;
+	}
 
 	hdmi->bridge.funcs = &mtk_hdmi_bridge_funcs;
 	hdmi->bridge.of_node = pdev->dev.of_node;
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
