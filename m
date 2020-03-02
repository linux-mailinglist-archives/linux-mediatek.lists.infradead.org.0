Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B079175976
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Mar 2020 12:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QDuVBinDpoRixemrrz2bFEj88bUxrzTpQm7eYMyuwo=; b=WsPWk2gQftZTmC
	Np68X0IS1xigPAKpJWn6IiUHdoUvMkYCG2HZNOS61V2RQOmZun0Q9kGryWqJfzush6g9Sh58wIbXn
	jl/pWVhtwJl4WL4IzNaOSSNnn61+wvZTKK9m918dWVS/+GSo0IKtLUPN0kLXmuQws0+Wbo3s+SRrr
	TbceHkO2vb27wR3zwRpbBkcckKAltm5ezxu98XKi16Px4/Zl8CoiCrLmz5JI7b4gXONs7tNCPqjqS
	7CcGeNeG5kNrJvmRU8OfDBL++HgvbNM8i4L8rj4EZarJ4/L8Tpuou4tBwgSLRh2078fhEGFTjubXR
	sENiWtRtZXjYzGUFFafQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8j9j-0008Ug-S1; Mon, 02 Mar 2020 11:22:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8j9R-0008FV-Vy
 for linux-mediatek@lists.infradead.org; Mon, 02 Mar 2020 11:22:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so12095811wro.2
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Mar 2020 03:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4twAZzpqE7OZHthVARi42fhoM9wMIzUTa1b3XIbc4u0=;
 b=HrqcWs/tM1UMeqgqQDpvy3jpqRSAaC9KOUedVpPAAvQXG3RKGJEGAKffHVNPColesQ
 XmJC8gVr91n0yVRfBh5hJIgxN9YGBInf8dxyQV9MOR+vauyVfx/rs1trGy5WKr+ppnSY
 xPNcptl/HEFg1e2S8eAWVFv4Q5y9PVMn9NqIV3MYzpRlBTcz8yFMsOTa1HGbIGY1K7Gt
 GsFLln6giCDJ1dDj49uhcLCoEnMDB4qd9U0rI0iX9KSIwHGJNAc03zON9tAvUnNuiZdQ
 xeZEus/ihesqcBQ/4+ERXw6UkZGG0pE7kquuOyrm+1jE6cQq8pWiEkXWYx+nD0T4SWzN
 oCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4twAZzpqE7OZHthVARi42fhoM9wMIzUTa1b3XIbc4u0=;
 b=TWZLnh5xO0iD8TzI5RtSCqoBdWziZichVCTr2duB2v/Bm7ubGQ1m4QkQpGX/kl4OdB
 RKvyf1UWKnJLag2CFG8aGN/Yg8e6qg0TjUI8QBHGX7qwI018NerySgOUV3asBFXYu9xE
 XoCVhXSSs6ZBPWy+TCyzY9EDGDqq/SxZBeQ86pjYOOxZYsjFBQbNqOjNqZN8w2tR7ZZN
 z4tkTmERIoFZ18T1raes63QD3VRHVrgCOVM2BKWKRPYqNrQyJsePHiYtLOQlIxB7KUXj
 DPh1rbIeBc0rH4Tl20PCbMRSed54+zYmmFJ9tnej+pfdK5/dKkrF70AnKOZWoIuhMnIW
 jf3A==
X-Gm-Message-State: APjAAAWdkinV2bGUVrqYEiILoTUsUg+QoApWzbQfTb1a7WvsbcZedfaG
 0y8n8zCDlBYpW4EhG1JmRTTojsF3AYM=
X-Google-Smtp-Source: APXvYqwoftzxlJ69VQL0xqAKsfOX0Z+thgz1rFA+uNAT/dQGnLIN+PHomnMXJLjLb67L3CQ3sbGx9g==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr21399020wrn.209.1583148140211; 
 Mon, 02 Mar 2020 03:22:20 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ecba:5540:6f5c:582a:cc84:32f5])
 by smtp.gmail.com with ESMTPSA id j14sm28398441wrn.32.2020.03.02.03.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 03:22:19 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 2/3] iommu/mediatek: add pdata member for legacy ivrp paddr
Date: Mon,  2 Mar 2020 12:21:51 +0100
Message-Id: <20200302112152.2887131-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200302112152.2887131-1-fparent@baylibre.com>
References: <20200302112152.2887131-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032222_079438_68290572 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Add a new platform data member in order to select which IVRP_PADDR
format is used by an SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

v2: new patch

---
 drivers/iommu/mtk_iommu.c | 3 ++-
 drivers/iommu/mtk_iommu.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 95945f467c03..78cb14ab7dd0 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -569,7 +569,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
 	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
 
-	if (data->plat_data->m4u_plat == M4U_MT8173)
+	if (data->plat_data->has_legacy_ivrp_paddr)
 		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
 	else
 		regval = lower_32_bits(data->protect_base) |
@@ -786,6 +786,7 @@ static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.has_4gb_mode = true,
 	.has_bclk     = true,
+	.has_legacy_ivrp_paddr = true;
 	.reset_axi    = true,
 	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
 };
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index ea949a324e33..4696ba027a71 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -42,6 +42,7 @@ struct mtk_iommu_plat_data {
 	bool                has_bclk;
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
+	bool                has_legacy_ivrp_paddr;
 	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
 };
 
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
