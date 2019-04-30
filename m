Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBD2EDD6
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 02:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vh0Ga36hiFvPAO/i5tUIwgC9uANmOase6JWMUBtDIhY=; b=q/TSPmVco5xlGsr4NnIPFLMYgV
	d8mhqV/2ZuzUcpzPEAU9/J/skdNXqkPlCGA2W24egtdkXmsKHQ/SWE0ZQqoCFpfGPh8J/eCM/6Szk
	2Z7YIxCCE5yGzY4IfcfZ6KRnYXbFJdCmMX7LR9ZZoL4sQ9YKT97JbMMYKpjHgfTf2mpoUU9rwyuCM
	iuP985LeT4GgbAU4vym3/1BVXCCOyteRKWEsTtpr9Sdqdzo1M9UcCeCIG6CFo8oLmiGzVL/2H+MDP
	hfjasOiBW8pQYii8FuwK5td05uRRXxNBPt4XKytwDvE7zPLeiPAUYY+ZBNn/qGgyaD5ocpcSaJboA
	QE+QLlyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGfv-0001E9-4v; Tue, 30 Apr 2019 00:31:11 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGfX-0000mX-Bm
 for linux-mediatek@lists.infradead.org; Tue, 30 Apr 2019 00:30:56 +0000
Received: by mail-ed1-x544.google.com with SMTP id l25so10723362eda.9
 for <linux-mediatek@lists.infradead.org>; Mon, 29 Apr 2019 17:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bg64VLgrTHAQ2Ab/C2XohrmQD4QDVl67cM2UuLtB85g=;
 b=f6Dp2aF+AQ2hfyBUZOzQ9edOxLejBdxd/d+b7vmqJ49AgMwsKZABDAtX4n3BleHhY+
 yDoeSC56zJ4xqp8WwxoRHIVQCkeiYfrCBQMSci6oelyr6fE0Lxs0O2Bfu8C5O3//cyfW
 FahgFQY4fx7Y/ERsB8hoeS/g64DgSgOTyLq1WTRGkuW0h7JXDUG/BFwXvO0uuBDX7s6y
 PpYgBn56Afv9tWBxVCojRLm6p8ArrZYR1o3PGbBJM0Wsd0pAIZfvdrhpdFQogvZPz+83
 /6PciPxd3GquaTmQJzpQQKtCKileeL7KNFoF+uAoWLYtmsdD/ovc9pU4MAhCdxlhOOOK
 M3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bg64VLgrTHAQ2Ab/C2XohrmQD4QDVl67cM2UuLtB85g=;
 b=HcgX1BEzeYUeSCh2UMCXWuU/Ez8XxCvoRJ1485cCWVly5fI51bUrehzkw327D/TE05
 tU8sYDgI8ifEC1WwUV0v9LQpLHBVs3AfRhyEknaS6q5NgvVTAWFdmfCHUIK6GdUfcXtP
 IRupAD16lJIERiUVo3cHFt08+1VK7BBZItmcGeCc6UZ5W5vlmAX93YEG6TKwv3roO291
 yNKpIjbzZegFhWVcAoo2iM1K+4iHTvrSxLYLn09KtMf4LNszUDW31KzlCdOxXofKIM49
 4D3ridfN4mkoo+PclaCuV9fHirESd5Irtn4kmE/byskBjAuZoZY4wYJFobkYYa32DKBz
 mzwQ==
X-Gm-Message-State: APjAAAXGLP43kTKmhU/0a/Pq3UBIQuuZDIavu62Xm+/QQsxQb+Erteee
 /SvHXB95baROewIBQWD1yznIpw==
X-Google-Smtp-Source: APXvYqz3Lqa3h5r+dpiSHfG6YXNtigFNvVeESo//k0DzDB7K9XCGt1gkvxldGzMttuBBJ9hJJgQ25A==
X-Received: by 2002:a17:906:d20a:: with SMTP id
 w10mr13322035ejz.219.1556584245430; 
 Mon, 29 Apr 2019 17:30:45 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:7d76:7b66:68:3b5f])
 by smtp.gmail.com with ESMTPSA id a9sm9424163edt.93.2019.04.29.17.30.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 17:30:44 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2 2/4] iommu/dma-iommu: Handle deferred devices
Date: Tue, 30 Apr 2019 01:29:49 +0100
Message-Id: <20190430002952.18909-3-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430002952.18909-1-tmurphy@arista.com>
References: <20190430002952.18909-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_173047_934330_66C00F42 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tom Murphy <tmurphy@arista.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Handle devices which defer their attach to the iommu in the dma-iommu api

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 7a96c2c8f56b..c18f74ad1e8b 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -322,6 +322,17 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	return iova_reserve_iommu_regions(dev, domain);
 }
 
+static int handle_deferred_device(struct device *dev)
+{
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	const struct iommu_ops *ops = domain->ops;
+
+	if (ops->is_attach_deferred && ops->is_attach_deferred(domain, dev))
+		return iommu_attach_device(domain, dev);
+
+	return 0;
+}
+
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
  *                    page flags.
@@ -835,6 +846,8 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	bool coherent = dev_is_dma_coherent(dev);
 	dma_addr_t dma_handle;
 
+	handle_deferred_device(dev);
+
 	dma_handle =__iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, coherent, attrs),
 			iommu_get_dma_domain(dev));
@@ -849,6 +862,8 @@ static void iommu_dma_unmap_page(struct device *dev, dma_addr_t dma_handle,
 {
 	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 
+	handle_deferred_device(dev);
+
 	if (!dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC)) {
 		phys_addr_t phys = iommu_iova_to_phys(domain, dma_handle);
 
@@ -873,6 +888,8 @@ static int __finalise_sg(struct device *dev, struct scatterlist *sg, int nents,
 	unsigned int cur_len = 0, max_len = dma_get_max_seg_size(dev);
 	int i, count = 0;
 
+	handle_deferred_device(dev);
+
 	for_each_sg(sg, s, nents, i) {
 		/* Restore this segment's original unaligned fields first */
 		unsigned int s_iova_off = sg_dma_address(s);
@@ -1022,6 +1039,8 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
 	struct scatterlist *tmp;
 	int i;
 
+	handle_deferred_device(dev);
+
 	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
 		iommu_dma_sync_sg_for_cpu(dev, sg, nents, dir);
 
@@ -1042,6 +1061,8 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
 static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
+	handle_deferred_device(dev);
+
 	return __iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
 			iommu_get_dma_domain(dev));
@@ -1050,12 +1071,15 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
+	handle_deferred_device(dev);
+
 	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
 }
 
 static void *iommu_dma_alloc(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
+	handle_deferred_device(dev);
 	gfp |= __GFP_ZERO;
 
 #ifdef CONFIG_DMA_DIRECT_REMAP
@@ -1076,6 +1100,8 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 {
 	struct page *page;
 
+	handle_deferred_device(dev);
+
 	/*
 	 * cpu_addr can be one of 4 things depending on how it was allocated:
 	 *
@@ -1115,6 +1141,8 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
 	unsigned long pfn;
 	int ret;
 
+	handle_deferred_device(dev);
+
 	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
 
 	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
@@ -1143,6 +1171,8 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
 	struct page *page;
 	int ret;
 
+	handle_deferred_device(dev);
+
 #ifdef CONFIG_DMA_DIRECT_REMAP
 	if (is_vmalloc_addr(cpu_addr)) {
 		if (!(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
