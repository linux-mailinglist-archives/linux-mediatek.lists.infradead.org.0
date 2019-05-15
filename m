Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804371F4C3
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 May 2019 14:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuShtk7Q5aUgRwm8OSgZP/TjD3zWTDV7BcYLrbScZ3M=; b=i911OvWdMseHCh
	HpfrXv38hcbEgmF9Iumo0tCbSogTVACxX4MgkVCCBcEOJIUDxJ5mRdixBlSpO72FCbkexzZ+szcu4
	c7ql6Z2cpdhTkLWvbTLP7O35OcSnaWmSX0SlgmmC8iDP3SxAzNICi9IqCfmXFmQucqgL1/q737KXS
	RcUwogi9pi8++naH6pEf2PsP0kkoIqwDDt4LyKgx9CuQjGjLRx2WJSQD5Fa6Eu1JE2+dS/NVwwLYD
	YtPNX2VkRqyZNAMnntwPs+9o9ZFirZmToABPDRJBa13ywklDWLm247xV39DAqF8nvyd8hbkD8U3f0
	yxuaYZyASo2LfhQzIl5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtJE-00007X-7j; Wed, 15 May 2019 12:47:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtJA-00005w-21
 for linux-mediatek@lists.infradead.org; Wed, 15 May 2019 12:46:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so1294431plb.7
 for <linux-mediatek@lists.infradead.org>; Wed, 15 May 2019 05:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b3HyjACi/MsUUs/bdvxi48Ab6BnFJ6ZhEKEib98a4qc=;
 b=Xql7xL76UlYG2HgQrNw2rS48dkmsc4mtYUzCNuPcx9exYI1ZmEu7lZqz2wZCRpSq5N
 P/62eA1WGojofeojjMEVVfykGFGMoC0h24yl2IGMP+MMD6n/+9xLNayyFAwmk67CqnR1
 m8FLpulEhu3q1K43A5KpMSgYNY/9ZQFxlv1sLLC+Y4jO+Ip0fUJakXQ0r3SGBP8eKC6y
 8c8qARg+kB1bO3KBeiRnMVlAPDwWif2wtpKXbjbo5qVDDAOu6rngr7KYzRQuR7hO5Gmh
 lcl5CLLB06Ib9xN7L7Nu/HtKO3R428g2WTFCp36Qq7GME8YG4fu4z4pF+aWoLIZ6h2KQ
 NZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b3HyjACi/MsUUs/bdvxi48Ab6BnFJ6ZhEKEib98a4qc=;
 b=j4us6rr5MUfv/Mv9RxtYraSsVXRbjRjddB9ZwBoVMy9OzeHk5C/ZqSy0cLpIb+1zkl
 Z3fesZQ/2SdEKLsH9Pne7VumxgxFr4g+NNMMMe/gcUnTY2CAEw3D90srqVfzZKmyD2Ge
 lXnNUR8+PCh7wRpK1GH0K+dLRhsIHUkDS/bwpzIvdra35CcAT0c3rFQ54Xfhf1MRNr8Z
 QKQ0LF10DUdt3JnEXzuTHIngIonYGRlxc52lq3qGZqqCl2m9oxYupV3thlxP0uxZLkRw
 8sKAh/TW7n+sTVnd1go3iLOHuLbkadEvQytspUbCbwLyeXyZR2/YcW3vkLCzXTr+cvpt
 urxg==
X-Gm-Message-State: APjAAAWwS4xrMhzgg0pgJOqxmwjOX7qRgOECJKm8FZmYrauwk99CO+WQ
 eUGKF7HDHmzDliW0+H9WsK+x6HQePnOxxoE/7QDwXA==
X-Google-Smtp-Source: APXvYqwTSlq+glzh8dvBA9RnhTgkzA0FJBG+kmyFPUzc3vgEhgrnY6HSdtm+CvmJk20OFdPWunOILeeGu3jijFHRxb0=
X-Received: by 2002:a17:902:4181:: with SMTP id
 f1mr22625568pld.22.1557924414679; 
 Wed, 15 May 2019 05:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190506185207.31069-1-tmurphy@arista.com>
 <20190506185207.31069-3-tmurphy@arista.com>
 <20190507064000.GB5173@infradead.org>
In-Reply-To: <20190507064000.GB5173@infradead.org>
From: Tom Murphy <tmurphy@arista.com>
Date: Wed, 15 May 2019 13:46:43 +0100
Message-ID: <CAPL0++5AUyVHexpsE86PfXxmQgDHfxjSSoAAGXM5c7Mdix=OZQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] iommu/dma-iommu: Handle deferred devices
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_054656_240263_8590ED99 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

like this?

In that case we need to add a call to iommu_dma_alloc_remap.

From 862aeebb601008cf863e3aff4ff8ed7cefebeefa Mon Sep 17 00:00:00 2001
From: Tom Murphy <tmurphy@tmurphy-419tom-0.sjc.aristanetworks.com>
Date: Wed, 15 May 2019 05:43:25 -0700
Subject: [PATCH] iommu/dma-iommu: Handle deferred devices

Handle devices which defer their attach to the iommu in the dma-iommu api

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 7f313cfa9..a48ae906d 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -22,6 +22,7 @@
 #include <linux/pci.h>
 #include <linux/scatterlist.h>
 #include <linux/vmalloc.h>
+#include <linux/crash_dump.h>

 struct iommu_dma_msi_page {
     struct list_head    list;
@@ -323,6 +324,21 @@ static int iommu_dma_init_domain(struct
iommu_domain *domain, dma_addr_t base,
     return iova_reserve_iommu_regions(dev, domain);
 }

+static int handle_deferred_device(struct device *dev,
+        struct iommu_domain *domain)
+{
+    const struct iommu_ops *ops = domain->ops;
+
+    if (!is_kdump_kernel())
+        return 0;
+
+    if (unlikely(ops->is_attach_deferred &&
+            ops->is_attach_deferred(domain, dev)))
+        return iommu_attach_device(domain, dev);
+
+    return 0;
+}
+
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
  *                    page flags.
@@ -432,6 +448,9 @@ static dma_addr_t __iommu_dma_map(struct device
*dev, phys_addr_t phys,
     size_t iova_off = 0;
     dma_addr_t iova;

+    if (unlikely(handle_deferred_device(dev, domain)))
+        return DMA_MAPPING_ERROR;
+
     if (cookie->type == IOMMU_DMA_IOVA_COOKIE) {
         iova_off = iova_offset(&cookie->iovad, phys);
         size = iova_align(&cookie->iovad, size + iova_off);
@@ -609,6 +628,9 @@ static void *iommu_dma_alloc_remap(struct device
*dev, size_t size,
     dma_addr_t iova;
     void *vaddr;

+    if (unlikely(handle_deferred_device(dev, domain)))
+        return DMA_MAPPING_ERROR;
+
     *dma_handle = DMA_MAPPING_ERROR;

     min_size = alloc_sizes & -alloc_sizes;
@@ -836,7 +858,7 @@ static dma_addr_t iommu_dma_map_page(struct device
*dev, struct page *page,
     bool coherent = dev_is_dma_coherent(dev);
     dma_addr_t dma_handle;

-    dma_handle =__iommu_dma_map(dev, phys, size,
+    dma_handle = __iommu_dma_map(dev, phys, size,
             dma_info_to_prot(dir, coherent, attrs),
             iommu_get_dma_domain(dev));
     if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
@@ -954,6 +976,9 @@ static int iommu_dma_map_sg(struct device *dev,
struct scatterlist *sg,
     unsigned long mask = dma_get_seg_boundary(dev);
     int i;

+    if (unlikely(handle_deferred_device(dev, domain)))
+        return 0;
+
     if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
         iommu_dma_sync_sg_for_device(dev, sg, nents, dir);

-- 
2.20.0

On Tue, May 7, 2019 at 7:40 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Mon, May 06, 2019 at 07:52:04PM +0100, Tom Murphy wrote:
> > +static int handle_deferred_device(struct device *dev)
> > +{
> > +     struct iommu_domain *domain;
> > +     const struct iommu_ops *ops;
> > +
> > +     if (!is_kdump_kernel())
> > +             return 0;
> > +
> > +     domain = iommu_get_domain_for_dev(dev);
>
> > -     dma_handle =__iommu_dma_map(dev, phys, size,
> > +     if (unlikely(handle_deferred_device(dev)))
> > +             return DMA_MAPPING_ERROR;
> > +
> > +     dma_handle = __iommu_dma_map(dev, phys, size,
>
> __iommu_dma_map already looks up the domain, and as far as I can
> tell all callers need the handle_deferred_device call.  Should we
> just move it to there and pass the domain from the caller?
>
> Also shouldn't the iommu_attach_device call inside
> handle_deferred_device also get an unlikely marker?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
