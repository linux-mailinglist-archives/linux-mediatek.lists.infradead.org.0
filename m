Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C59BAD013
	for <lists+linux-mediatek@lfdr.de>; Sun,  8 Sep 2019 18:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ku5HBD+iCwY8sMhEgA3r9h7jol793/Ly1HH8OyX9nAA=; b=F7okndYPvQlRpF
	tBCnSZet/TBoxIvnsVatk/DS5HJhhlhlYpzSav/P7p/XP2At6lRecJ+joVz4HI7uzW4wvpxn4glCU
	5+QuMOW9WheLOWoD3gur1D2BanjiSvPk3O/wv6KjNtctWXYViWITqQ272NSXdYD9dXFK2DlrFHzNr
	aZyYLkLtCGCq+VSDYeHC273McpzlKFxV8vjXgGBsOWCuwitRLXCR2kYBgsvYcGfaEnAfyPX1p4wBv
	jJNjQ2C5sfxPVQHFQj/DLcPHHBkfbLAGVGTO61hqX5aqpFnsDT6JmRdw0drkBrNKWOfgf5sNtHsHR
	E0cQQ78YCgaOs0QpwqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i70W0-0001SY-2c; Sun, 08 Sep 2019 16:58:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i70Uv-0006IU-03
 for linux-mediatek@lists.infradead.org; Sun, 08 Sep 2019 16:57:12 +0000
Received: by mail-pl1-x641.google.com with SMTP id y10so5449840pll.7
 for <linux-mediatek@lists.infradead.org>; Sun, 08 Sep 2019 09:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fAJIaeMy2eQobkqze5gpyoS/QeZKT96RyPc/Fq8itMQ=;
 b=gIzGX1RTmcudGCJKOn/C+BiFyjNYhfDmzcWXTYF+GB+qYZsgO8XgeYRVyeQwPkY9H9
 wfcau0BPSQZIc6VAMovCcu1x8zDws3CiXhc1r6OYf4EtX2tQYvlMR3BEakgC4F6WP7Op
 79lex3NN6lZ+6TqnODebKT25rPq9q2Ad7p3Ut4sP8GPNT+7DIHZ19pOA0zDuRx4Ve3NY
 wp5WrvVtMXdljRkCSQiTIk2IaQjfmdoveQnUnhEIELuxE8lz6PcBZTU/HM4WKB4UxloM
 qPm0/gAXG7FBDBK6aDWzi9nPMPolJ3ZyPfs2DEfSVL2fVvMhQ8jDgmTtmLFwp7IOmIWY
 n7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fAJIaeMy2eQobkqze5gpyoS/QeZKT96RyPc/Fq8itMQ=;
 b=OOV9WS1bxanNd/PI5JlCJDaHPrcKrWCCKp0zkU5lnIcna5zbCOilTvypNXms6wEzvP
 uIiK16bux58F8X1M/C8R/N2B0vw+Y4BrLpxD2kPkFmq9EbP1bggvD48vzuS6rENtKbT0
 sXrR9p2yxTmSzg0bgBrzz1Q9IQV0G8cVau9wkYlwcFVYPQMA2lvkddHmtoE/ffmDI+y6
 U/1AzoX1Tcrad9JMBVrVMAQTXOVbLSi9I9vRvxJsU3+W6j9dYulDVr/Ezp5s/qe6zjIu
 uO6qoazgZViaTubLK4jNoA79byJNWjVdy9kINMF6D2D83HJnHRoBM7LY3zM6kO3zU3Ru
 iPoQ==
X-Gm-Message-State: APjAAAWcZh64YFKVUTLYZ4vRY9UYXCmcdZf0DUbUWNTltxWf0PxsR6nQ
 hsSRBJYKZ3BzFn6EbpztnSY33g==
X-Google-Smtp-Source: APXvYqzPhfrkAZBGVLAMVQJgc4sTyV+jrwe7GCElyOlS0MKLQHm4nHnT+K5O7UwOhB9dVwQiBTXNrw==
X-Received: by 2002:a17:902:8486:: with SMTP id
 c6mr1779387plo.341.1567961828443; 
 Sun, 08 Sep 2019 09:57:08 -0700 (PDT)
Received: from localhost.localdomain ([24.244.23.109])
 by smtp.googlemail.com with ESMTPSA id
 f188sm13834631pfa.170.2019.09.08.09.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 09:57:07 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V6 4/5] iommu/dma-iommu: Use the dev->coherent_dma_mask
Date: Sun,  8 Sep 2019 09:56:40 -0700
Message-Id: <20190908165642.22253-5-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908165642.22253-1-murphyt7@tcd.ie>
References: <20190908165642.22253-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_095709_087350_7EEF925C 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use the dev->coherent_dma_mask when allocating in the dma-iommu ops api.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index bd09b6b31c4e..0cf52fae1471 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -471,7 +471,7 @@ static void __iommu_dma_unmap(struct device *dev, dma_addr_t dma_addr,
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
-		size_t size, int prot)
+		size_t size, int prot, dma_addr_t dma_mask)
 {
 	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
@@ -484,7 +484,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 
 	size = iova_align(iovad, size + iova_off);
 
-	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
+	iova = iommu_dma_alloc_iova(domain, size, dma_mask, dev);
 	if (!iova)
 		return DMA_MAPPING_ERROR;
 
@@ -735,7 +735,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle = __iommu_dma_map(dev, phys, size, prot);
+	dma_handle = __iommu_dma_map(dev, phys, size, prot, dma_get_mask(dev));
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -938,7 +938,8 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	return __iommu_dma_map(dev, phys, size,
-			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO);
+			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
+			dma_get_mask(dev));
 }
 
 static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
@@ -1041,7 +1042,8 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	if (!cpu_addr)
 		return NULL;
 
-	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
+	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot,
+			dev->coherent_dma_mask);
 	if (*handle == DMA_MAPPING_ERROR) {
 		__iommu_dma_free(dev, size, cpu_addr);
 		return NULL;
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
