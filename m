Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E1990DAD
	for <lists+linux-mediatek@lfdr.de>; Sat, 17 Aug 2019 09:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTDWf0o0HHB0RcN8By/xZ43yezkE52ZgmoIysG7VwnY=; b=YJWPO501YkRT8F
	9YmNbYwQMTuUDc0sXeeGUiNZMk4beNIeQmeJ/r68pGdL0XmGzyNnilV0oz6L5WU4USFGZGV1oT2RW
	Mn8FSSOGL0ZgeEaQAqa9ANIZ5Imc5teDSkBw7ypnsQwGHFiY1ObJGIQCmctxnGDkhEnWjNmcuO0Sq
	GOAG5qvWLxCLex1u9PqvZJt7rwnlZQ38zEYgPvWRo/elddCa2ehoh4f5voHAQragYsh20bptXKnOn
	JsWGDOQZ7mzRiswkc1zKHxVERzMWoNFpSZ1iyb03vl4SHxscMq1io8SUxA3CZgoDTI3f3+fOmQANO
	jn0WaQp+QsGphyyFxHMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyt16-000227-7K; Sat, 17 Aug 2019 07:20:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyt0W-0001Sa-Vz
 for linux-mediatek@lists.infradead.org; Sat, 17 Aug 2019 07:20:14 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so10781067iom.3
 for <linux-mediatek@lists.infradead.org>; Sat, 17 Aug 2019 00:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3gnS0PBpeFma+nR0/93xLJSxk0RZjywB6TYlsGP6x54=;
 b=iuaKaoZkqD3jS65GkFRQXUesr+iHDQw7qZXVp3ez2fmCt49N//RMqfebteueaUoH+p
 97zi714OqDL373xaRAuH3dX8FyF/Ggim5AtCytyMJbs8OW1HRJxUvrBWziOojWSjQyyv
 N8V4gNN86Fa2SkaukvBfzPcjbRwF05BDdxAP0vXBWYtOD0SIpiwB1xkPByOxsAsX+9h1
 04BQeNXJdFWKxBekEW+jFClh2sgwRA/Wjk7i3VyRYr7XND2lelrmJe56TnoW4qN1h7sB
 KsNL/98KtTPtlpVSTykKF2Hed4ptAKREhBRKgytLAlnBDShNx9anmljZsQvOgXkrjk/s
 f08A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3gnS0PBpeFma+nR0/93xLJSxk0RZjywB6TYlsGP6x54=;
 b=ZB2Z1VAqADTLfaqIKB/mLIvsmX8Ikz1L2YhKYMkd7qSB9eV7q1mnNGdluUDcsckEjs
 LijMKF0/n8jX2+XQ6DhGQmLNnLNb6K1WM8Eaaa+S3Kfvgvi7Z+TIXcqadlmVsWRXgPSY
 mNj4Fk1xEEp82HGXYPpv32AEuiB2lVOgZ6EMNc7vur67uqmL+6lioToqoklifIo8fw3F
 QzKAvUVYJIO0K2INmPV6pNRRR62FU4hbY7UtCmmtGtB9RwGXHRAeSwvMstDZswYrKXDs
 XIQV/9AJ+tFd0qvLDkMfxo3d0x5AF2TR1Jd/KWdKu17dPIUNxoL+VQTW3CrJ/rUWorXg
 HE5A==
X-Gm-Message-State: APjAAAVHKFWWMpRmX9SxNv7UVFwuQp18F28Hl+XHC40QtvPb98IeWy1P
 9CE/wQ4jX8I3IpzxwNfeMH/Gk5BBH92tqFdMS8xiYQ==
X-Google-Smtp-Source: APXvYqzi3uE7FL/BNaGBwf9NcctQEJa1uqSCgIDdI7X8T4a271+rNn6qVr2H/9WkS8ckRMiROhEplUC0qpc0vOhpjPg=
X-Received: by 2002:a02:a18e:: with SMTP id n14mr15977616jah.84.1566026405753; 
 Sat, 17 Aug 2019 00:20:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190817033914.4812-1-hdanton@sina.com>
In-Reply-To: <20190817033914.4812-1-hdanton@sina.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Sat, 17 Aug 2019 08:19:33 +0100
Message-ID: <CALQxJut_0bjojiFza9bZF26n0+9Vjq8QFqsxgd5Rxag+Qx609Q@mail.gmail.com>
Subject: Re: [PATCH V5 3/5] iommu/dma-iommu: Handle deferred devices
To: Hillf Danton <hdanton@sina.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_002013_025161_7F2D46E6 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019 at 04:39, Hillf Danton <hdanton@sina.com> wrote:
>
>
> On Thu, 15 Aug 2019 12:09:41 +0100 Tom Murphy wrote:
> >
> > Handle devices which defer their attach to the iommu in the dma-iommu api
> >
> > Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> > ---
> >  drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
> >  1 file changed, 26 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 2712fbc68b28..906b7fa14d3c 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -22,6 +22,7 @@
> >  #include <linux/pci.h>
> >  #include <linux/scatterlist.h>
> >  #include <linux/vmalloc.h>
> > +#include <linux/crash_dump.h>
> >
> >  struct iommu_dma_msi_page {
> >       struct list_head        list;
> > @@ -351,6 +352,21 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
> >       return iova_reserve_iommu_regions(dev, domain);
> >  }
> >
> > +static int handle_deferred_device(struct device *dev,
> > +     struct iommu_domain *domain)
> > +{
> > +     const struct iommu_ops *ops = domain->ops;
> > +
> > +     if (!is_kdump_kernel())
> > +             return 0;
> > +
> > +     if (unlikely(ops->is_attach_deferred &&
> > +             ops->is_attach_deferred(domain, dev)))
> > +             return iommu_attach_device(domain, dev);
> > +
> > +     return 0;
> > +}
> > +
> >  /**
> >   * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
> >   *                    page flags.
> > @@ -463,6 +479,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
> >       size_t iova_off = iova_offset(iovad, phys);
> >       dma_addr_t iova;
> >
> > +     if (unlikely(handle_deferred_device(dev, domain)))
> > +             return DMA_MAPPING_ERROR;
> > +
> >       size = iova_align(iovad, size + iova_off);
> >
> >       iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
>
> iommu_map_atomic() is applied to __iommu_dma_map() in 2/5.
> Is it an atomic context currently given the mutex_lock() in
> iommu_attach_device()?

I don't see your point here. __iommu_dma_map isn't called from
iommu_attach_device, why would we care about a mutex in
iommu_attach_device?

__iommu_dma_map can be called from an atomic context (it isn't always
but it does happen). __iommu_dma_map is called by iommu_dma_alloc
which implements the iommu_dma_ops::alloc function which by design
needs to be callable from an atomic context. Does that answer your
question?

>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
