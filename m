Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF961A7DD2
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 15:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yhxgycWBlOZzKwUtac+f1k3u0cMgg5ONvEW1HHG17EM=; b=MUH8sAHqrfKSz6Tdrr7cpXDV46
	E9c2c7cNPopjuXY1RPlBzXDkBVeRdZQF4ycIWigMd6riKKhdmMcm7gFoCQo5eNTNnQ7huvbOjM6My
	lxaN6UzaKEUAipAy8H5kx0zcPseDBO3Cnsmk8yj/RmaJOTkBK9tVNKuKzDQKzeby4K2rOo8W0DO1P
	TpX6mZgMRsy/Q5nNsDNV1iNDOW/vlwaBX6GDY8vOf2fydI29sz2z86gnCuGOLiG937enF9lYGfGJY
	ltqDXPAMIvwh9r6ebZKwRQz0hYjp8GFInu/rtWzvasy5hISPN+M2eUh5IqYqU1+T+tqGqELhF73u4
	EjMZ2Qlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLXT-0003yq-GH; Tue, 14 Apr 2020 13:23:43 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ3-0002O5-7R; Tue, 14 Apr 2020 13:16:09 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 480DB475; Tue, 14 Apr 2020 15:15:52 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v2 05/33] iommu/amd: Remove dma_mask check from check_device()
Date: Tue, 14 Apr 2020 15:15:14 +0200
Message-Id: <20200414131542.25608-6-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061603_456265_9FD9728D 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

The check was only needed for the DMA-API implementation in the AMD
IOMMU driver, which no longer exists.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/amd_iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 73b4f84cf449..504f2db75eda 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -326,7 +326,7 @@ static bool check_device(struct device *dev)
 {
 	int devid;
 
-	if (!dev || !dev->dma_mask)
+	if (!dev)
 		return false;
 
 	devid = get_device_id(dev);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
