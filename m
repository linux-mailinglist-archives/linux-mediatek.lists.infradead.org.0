Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19A0FAFD
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 16:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6Jl8VVUADOV1af+/X+xysoED/BCkWW59huYCi6+fDg=; b=NR+SqvxCQkbb+o
	zZtTF+fAqCbkuy0fGBpiEmD1tD54DpL6I+z1Vso3vqPlPxxeGccn38mX8JXDASh7Wy5KJv09feTNB
	17C1Qv4DnPeYZekmrPQR+QHJWB3ya8aqEwE++HpKwRw6kX6i1lqhV1oCsjKPB+bvBYC/zSMNEF6PN
	6LKfJOqTvDix7jnUk99dJ48rTjmRuxgatA/8TrHa3qcdetosZp9JBc+aj2HXqplGwmLK0/JJCC+mt
	XXcHTpoqyRgMhYy6nL+c0Zln0gPl8fmg5Pfs6spvLn3NC6mLR3COsB40zWLOhlJs66p5Klv9EjDbd
	u8SFx/D/nGhlxQP5F+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTNi-0000A9-SW; Tue, 30 Apr 2019 14:05:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTNc-0008FT-Tn
 for linux-mediatek@lists.infradead.org; Tue, 30 Apr 2019 14:05:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id v16so18771083wrp.1
 for <linux-mediatek@lists.infradead.org>; Tue, 30 Apr 2019 07:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k/9wOkFYEcdfe2lDE3RgJ9XrcROImtihW8mQBU1smko=;
 b=OA3m6lvCcq8/juhLoSHA7zp4SBEq74FDRp+bt82WW/O1qduxhlEYloq+dn0azMWtnA
 n3FZy37ln/zhGjGYyzx4onZAxbedE4a+MxlD6pitCmdT7Qh5ChbdLOjK2Bn9FP4P5VXQ
 dJhFXGVFYLTssM/QMhCQE1/HM/y+K1REM05WF4TLZCbLuuWebi+Rja1ORa7yawLDbgJU
 koESfJzTV4QtR5aNCXd9h+a+gQITKLTutgfRGuuZmyf4GInAAfsh1u4xKWmHrPT3gX86
 xnxk0DqFSjm4Xc2yxxXOlvMd78yWIrqoGSZE85ey4WzTI9UAm1clSklJF/uA3/XrN3eX
 ePkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k/9wOkFYEcdfe2lDE3RgJ9XrcROImtihW8mQBU1smko=;
 b=nrp7H9EP1hcqyr70kZ9s08NFBoJmnwDHaOLKK4OAn+O+C0BsGhthLHTHdDUH7rFXST
 9OtPTG3bLJu8nnFfRnDRz3EGxxJtXF8gvWIfihhve/BxCuf+352UniL5lYMl7/sTWwTv
 kN6rTr6W/6wDevOWwS1h4O5RFwd122dlBCMoN4VjiWCBpKEfsqZebbP7cGQY/R2+G8nF
 2e8cEr8bildNC9Wq4D02npX9BXvS7VI829aTc/jjA1Otoz0zZo5KA6akNybL9YqnHKlL
 +YfaIVSIFXowy/ZW9l5PeIUdKYisZ5DcHj9hfic9kxqqi6i3GCZ3J6dSdFsiQJwCfHxP
 0VGw==
X-Gm-Message-State: APjAAAXCyZC1hTH1fh7O/gkZaJ0FO+CSc3/sFYi3BoX+5R/33ocmovHU
 U/qbzYFe2bgTFs0ZjIowtJco/WyYpX9ha4JM1s/fvw==
X-Google-Smtp-Source: APXvYqzzIdbUrD0qcyluPgpdlTsVev3ygvx2lD9BOg8bHhMuXmms+vYEjLzdr+qc3EOfM4jIlT0RLX6uxvBgRC84Zvg=
X-Received: by 2002:adf:b68d:: with SMTP id j13mr48305854wre.50.1556633106943; 
 Tue, 30 Apr 2019 07:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190430002952.18909-1-tmurphy@arista.com>
 <20190430002952.18909-3-tmurphy@arista.com>
 <2750fa37-a59c-3074-6545-b19046ce3699@arm.com>
In-Reply-To: <2750fa37-a59c-3074-6545-b19046ce3699@arm.com>
From: Tom Murphy <tmurphy@arista.com>
Date: Tue, 30 Apr 2019 15:04:55 +0100
Message-ID: <CAPL0++4UeWczgmSa+X0L2_27Xr5tsXTU4k_B1JB33Tm=vQAa8Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] iommu/dma-iommu: Handle deferred devices
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_070509_024896_F0B2B58C 
X-CRM114-Status: GOOD (  31.99  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tom Murphy <murphyt7@tcd.ie>, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 2:42 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 30/04/2019 01:29, Tom Murphy wrote:
> > Handle devices which defer their attach to the iommu in the dma-iommu api
>
> I've just spent a while trying to understand what this is about...
>
> AFAICS it's a kdump thing where the regular default domain attachment
> may lead to ongoing DMA traffic from the crashed kernel raising a fault
> storm, so we put off the "real" attach of a given device until we know
> it's been reset and brought into a sane state, but the only way to
> reliably detect that is to wait until the kdump kernel driver starts
> making new DMA mappings. Is that about right?

That's the impression I got too. The many iterations of the patch
series which contributed this code makes it hard to figure out exactly
why it's doing what it's doing but AFAIK it works how you described
it.

>
> (I note that for SMMUv3 we now handle that situation with the slightly
> more heavy-handed approach of just turning off reporting and letting the
> 'rogue' devices fault silently, but I appreciate that not all IOMMUs may
> have that option)
>
> > Signed-off-by: Tom Murphy <tmurphy@arista.com>
> > ---
> >   drivers/iommu/dma-iommu.c | 30 ++++++++++++++++++++++++++++++
> >   1 file changed, 30 insertions(+)
> >
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 7a96c2c8f56b..c18f74ad1e8b 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -322,6 +322,17 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
> >       return iova_reserve_iommu_regions(dev, domain);
> >   }
> >
> > +static int handle_deferred_device(struct device *dev)
> > +{
> > +     struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
>
> We don't want iommu_get_domain_for_dev() in fast-paths, as the
> contention on the group refcount has proven to have a surprisingly high
> overhead on some large systems. That's what iommu_get_dma_domain()
> solves, but ideally, can this be wrapped in is_kdump_kernel() such as to
> have no impact at all on the general case?

will do.

>
> > +     const struct iommu_ops *ops = domain->ops;
> > +
> > +     if (ops->is_attach_deferred && ops->is_attach_deferred(domain, dev))
> > +             return iommu_attach_device(domain, dev);
> > +
> > +     return 0;
> > +}
> > +
> >   /**
> >    * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
> >    *                    page flags.
> > @@ -835,6 +846,8 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
> >       bool coherent = dev_is_dma_coherent(dev);
> >       dma_addr_t dma_handle;
> >
> > +     handle_deferred_device(dev);
> > +
> >       dma_handle =__iommu_dma_map(dev, phys, size,
> >                       dma_info_to_prot(dir, coherent, attrs),
> >                       iommu_get_dma_domain(dev));
> > @@ -849,6 +862,8 @@ static void iommu_dma_unmap_page(struct device *dev, dma_addr_t dma_handle,
> >   {
> >       struct iommu_domain *domain = iommu_get_dma_domain(dev);
> >
> > +     handle_deferred_device(dev);
>
> You don't need this - it's completely bogus to make an unmap call
> without having already called the corresponding map function, so we can
> assume it's already been dealt with.
>
> > +
> >       if (!dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC)) {
> >               phys_addr_t phys = iommu_iova_to_phys(domain, dma_handle);
> >
> > @@ -873,6 +888,8 @@ static int __finalise_sg(struct device *dev, struct scatterlist *sg, int nents,
> >       unsigned int cur_len = 0, max_len = dma_get_max_seg_size(dev);
> >       int i, count = 0;
> >
> > +     handle_deferred_device(dev);
>
> Hmm, this should be in iommu_dma_map_sg() - that's the guy that needs a
> valid domain, and it's impossible to get to __finalise_sg() without
> having been through there anyway.
>
> > +
> >       for_each_sg(sg, s, nents, i) {
> >               /* Restore this segment's original unaligned fields first */
> >               unsigned int s_iova_off = sg_dma_address(s);
> > @@ -1022,6 +1039,8 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
> >       struct scatterlist *tmp;
> >       int i;
> >
> > +     handle_deferred_device(dev);
>
> Again, not necessary.
>
> > +
> >       if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
> >               iommu_dma_sync_sg_for_cpu(dev, sg, nents, dir);
> >
> > @@ -1042,6 +1061,8 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
> >   static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
> >               size_t size, enum dma_data_direction dir, unsigned long attrs)
> >   {
> > +     handle_deferred_device(dev);
>
> Ditto.
>
> > +
> >       return __iommu_dma_map(dev, phys, size,
> >                       dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
> >                       iommu_get_dma_domain(dev));
> > @@ -1050,12 +1071,15 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
> >   static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
> >               size_t size, enum dma_data_direction dir, unsigned long attrs)
> >   {
> > +     handle_deferred_device(dev);
>
> Ditto.
>
> > +
> >       __iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
> >   }
> >
> >   static void *iommu_dma_alloc(struct device *dev, size_t size,
> >               dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
> >   {
> > +     handle_deferred_device(dev);
> >       gfp |= __GFP_ZERO;
> >
> >   #ifdef CONFIG_DMA_DIRECT_REMAP
> > @@ -1076,6 +1100,8 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
> >   {
> >       struct page *page;
> >
> > +     handle_deferred_device(dev);
>
> Similarly, you can't free anything that hasn't already come from a
> successful call to iommu_dma_alloc()...
>
> > +
> >       /*
> >        * cpu_addr can be one of 4 things depending on how it was allocated:
> >        *
> > @@ -1115,6 +1141,8 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
> >       unsigned long pfn;
> >       int ret;
> >
> > +     handle_deferred_device(dev);
>
> ...nor can you mmap() it...
>
> > +
> >       vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
> >
> >       if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
> > @@ -1143,6 +1171,8 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
> >       struct page *page;
> >       int ret;
> >
> > +     handle_deferred_device(dev);
>
> ...nor attempt to export it.

That all makes sense. Will fix.

>
> Robin.
>
> > +
> >   #ifdef CONFIG_DMA_DIRECT_REMAP
> >       if (is_vmalloc_addr(cpu_addr)) {
> >               if (!(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
