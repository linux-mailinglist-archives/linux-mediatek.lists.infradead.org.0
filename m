Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C83C175978
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Mar 2020 12:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsDhswaXH3aBHjaqlLw8yJWdUa/Dgazvl3P/Rkl/eDI=; b=k3yAt0dAuzgabG
	miAZxu560mYGdS4+6OQK2b0zV3D3TczeesgYrhHF5gP8hVgriMMPIAByMtZmEIxpIeBoiViYxf+zh
	abD3YlcOnVIbF7yhDykyNsZazeQYU6UTX3NdBUsEFzorV0UyXwHAUdZfxf4tOWLWT5V94GW24I6K3
	jjpn5ngv4pVfpV4yGK1eelzyESkW+VNyM+u/YOFrfPoYP+OBnpJoSeGH3VnLd7o06B/iHpmzhca92
	Q2/EYwc9mR8/CZ9ckxEGbmmbsUJZ65SXpp5waUL92TvwzZG/dagpUpsMBtRjtrDy46F5zOTNHFv7U
	v2o6h46xCY6yCpubapGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8j9v-0000Iv-BE; Mon, 02 Mar 2020 11:22:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8j9X-0008IX-Ut
 for linux-mediatek@lists.infradead.org; Mon, 02 Mar 2020 11:22:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id 6so2237290wmi.5
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Mar 2020 03:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pXFVNDmvd1Q57O9A14StFD9o/pCLl1WZ1LXT9jyY7wg=;
 b=aXkSI2bBqKF1Vn9HUmliqysTYyVduIDV+GQticrpQgMBTuEwdyXOU/yJMasY+tU5Bh
 hp9mdNGiZWQRZY43djxJU5Te2hjCeYOJpZE7Kf3yMhWMtbjr/YfeBWsTUYMli0o6aneL
 hjQxlCGaHxw5B4mqGQuBdfFY64NBTbqKcFbD9Q9B+reFNDjYSirVv+uhEuEH2mPjEYye
 DHGWR6uPEVThhBh32hv4RMSCHXtXBfMxNBgCzr3MAjMAcXu9Vuz4o2qszUfTlZaWAC/q
 a5CF7XzPxLXyWRXiFRJ0m1biCtXgBj/ia3i8conaAv6hKKaW6UZZ1bQ38AcQvB9ihgIL
 o5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pXFVNDmvd1Q57O9A14StFD9o/pCLl1WZ1LXT9jyY7wg=;
 b=Iwf0nQEXFW/mbY1x7zT+W93kulqlomR9zHLuymX57PFByBpuUiMxnGgroQCGsVyAlu
 iAU3RijuzmzvOgKeNsx0fbq4aAzAsG/J9JXErM2gd5R4sZYor4dm5U+3oOgspfscDQfF
 XgnxqQz+OZislqUXwuD/KaIomh53tRZsNWgq/4CxycfRlc5EZF0CqQGVVopfjUUZkaGX
 onlZKTXKgKAawcbRF9sEw+mlszT4HAjT5Y5LyU3Eu2Qmkk7C1TZCuKvRzuqYnrbTF8tx
 Yn9DiyHIoAJO5eOJJa1TVpDO0zeH+biHkQZ+53d4nX23jibd0q6ipYCpptK9+2GM4tak
 cICw==
X-Gm-Message-State: APjAAAXlrinUB032ayfo8R3CUx34cwDBz7+ERyORVPNblvwtUBw7vOLq
 GLfZPNFp9MgyMdb3Ykr8aKqtfqS3vbM=
X-Google-Smtp-Source: APXvYqz+e/Cqch5x656k3Vz2SnBMUPxNp29Vb0LYw28FU3uDN1mzrpA/IdGcwPsttcC9lnuYBg3tgQ==
X-Received: by 2002:a05:600c:2942:: with SMTP id
 n2mr18840374wmd.87.1583148143534; 
 Mon, 02 Mar 2020 03:22:23 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ecba:5540:6f5c:582a:cc84:32f5])
 by smtp.gmail.com with ESMTPSA id j14sm28398441wrn.32.2020.03.02.03.22.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 03:22:23 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 3/3] iommu/mediatek: add support for MT8167
Date: Mon,  2 Mar 2020 12:21:52 +0100
Message-Id: <20200302112152.2887131-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200302112152.2887131-1-fparent@baylibre.com>
References: <20200302112152.2887131-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032228_002226_B4222FBD 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: matthias.bgg@gmail.com, ck.hu@mediatek.com, joro@8bytes.org,
 yong.wu@mediatek.com, Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add support for the IOMMU on MT8167

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V2:
	* removed if based on m4u_plat, and using instead the new
	has_legacy_ivrp_paddr member that was introduced in patch 2.

---
 drivers/iommu/mtk_iommu.c | 9 +++++++++
 drivers/iommu/mtk_iommu.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 78cb14ab7dd0..25b7ad1647ba 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -782,6 +782,14 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 	.larbid_remap = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
 };
 
+static const struct mtk_iommu_plat_data mt8167_data = {
+	.m4u_plat     = M4U_MT8167,
+	.has_4gb_mode = true,
+	.has_legacy_ivrp_paddr = true;
+	.reset_axi    = true,
+	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
+};
+
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.has_4gb_mode = true,
@@ -799,6 +807,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
 
 static const struct of_device_id mtk_iommu_of_ids[] = {
 	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
+	{ .compatible = "mediatek,mt8167-m4u", .data = &mt8167_data},
 	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
 	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
 	{}
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 4696ba027a71..72f874ec9e9c 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -30,6 +30,7 @@ struct mtk_iommu_suspend_reg {
 enum mtk_iommu_plat {
 	M4U_MT2701,
 	M4U_MT2712,
+	M4U_MT8167,
 	M4U_MT8173,
 	M4U_MT8183,
 };
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
