Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8A8712B2
	for <lists+linux-mediatek@lfdr.de>; Tue, 23 Jul 2019 09:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8v+Lh8ZQ4k64PI0pgTI6GLJvbfgdnqBsyqxZ5Pe/Js4=; b=djRpOwUel0lDRK
	8FeogS1x+IH7kxZ7WIsFvS4qiouV5DO/LC5WFmbDb0IAWrt6YZ6/P1vGDjvZzqLkeshEUHT6YvMo5
	4okfIqSFS+l20tqZv4WDxq0UFrhxobBjZIpSMUHUqGRqCBfaod2k+ur07W7aDbFaXSTqZs3VhSI2K
	H7pN3Y0ATilG4JOWyefkfaCSdFuEeUwgzi16ld7QdOvWseWc178dDgTXBbUw1zTv5KoaS7QL7atRf
	e3fvQZeVlgaY2rWlJmFJyvZFQe4vcAoNfM8JFBLBIZQmRI2+WGJbYi1tjeZJic4EQM/df1m+t9QTc
	xVLSk2lTdOegUUytZs8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpp6X-00008g-DU; Tue, 23 Jul 2019 07:20:58 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpp6F-000081-QZ
 for linux-mediatek@lists.infradead.org; Tue, 23 Jul 2019 07:20:45 +0000
Received: by mail-ed1-x543.google.com with SMTP id m10so42830221edv.6
 for <linux-mediatek@lists.infradead.org>; Tue, 23 Jul 2019 00:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1QlHARNuAEM55ng9LI2PK094YJbPBsPKwUhBWwwJxAE=;
 b=GNlo2z9/gRyz2tn6m0dlRs6mqPEnRbD/asUCRnl1aF44DAofjVcSqECn/MAtb7YBsK
 3kkr5Z7cG4HEpFGvQteQf8ss4x44lWI+LqVF6bIvIwIzNXpvPNckKyaTqNU1yNm8B3G4
 68CHD0Jycaot+EixnKORpvZMw2xDl8mRupMfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1QlHARNuAEM55ng9LI2PK094YJbPBsPKwUhBWwwJxAE=;
 b=Jhq110HUpKnMaEKWLNhT9oooDX/np2xAb+XSEba+jMKL0AKEoKRZFZPjc9r9gTCjc0
 luP1HiiiLjH/xmi5amjFTv2IWjOnNtFix+Swe0wNYgO/Q0ltP0S0OdTLsoZ9j+gcpPQH
 xbyE1096f0pgfCzRv02gA1rSXJqB+vH/4CPSYZBqQnv8fDjZfI1L2edu+O7QgodK8YuY
 oEHvX4w9SbSv/bHMloS6tZRoQQwX4CVuVNtyF8S261N3ZiGd8xhZ85xY9KuxnmxiL17w
 Vid9EJhcMGLtuJ6NR0FmzZ/AIxj+rfQANH1CSEkCNFWa+VYJRXlwgRVRMZk/WBANR3fD
 xjuQ==
X-Gm-Message-State: APjAAAVo9R8/xlC+wEJiAxQyqCcYPvOQte7kRQbR8lGuRYIdOXwJc2U+
 ulTDz2AvseRKXl0FyrEx3oajlFSkMxydZg==
X-Google-Smtp-Source: APXvYqxdIZYumK4gJTf5Op6AgDbThctue+LtkBaUqWizv0XkGOyRyzY71NUlrKmo3L5GPhe+3aUCiw==
X-Received: by 2002:a17:906:114d:: with SMTP id
 i13mr56509408eja.252.1563866436295; 
 Tue, 23 Jul 2019 00:20:36 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id i8sm11896560edg.12.2019.07.23.00.20.35
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 00:20:36 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id s3so37410226wms.2
 for <linux-mediatek@lists.infradead.org>; Tue, 23 Jul 2019 00:20:35 -0700 (PDT)
X-Received: by 2002:a7b:c7d8:: with SMTP id z24mr67945684wmk.10.1563866435393; 
 Tue, 23 Jul 2019 00:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
In-Reply-To: <1562313579.1212.73.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 23 Jul 2019 16:20:23 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
Message-ID: <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
Subject: Re: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002040_478685_72B06883 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jungo,

On Fri, Jul 5, 2019 at 4:59 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi Tomasz:
>
> On Fri, 2019-07-05 at 13:22 +0900, Tomasz Figa wrote:
> > Hi Jungo,
> >
> > On Fri, Jul 5, 2019 at 12:33 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
>
> [snip]
>
> > > After applying your suggestion in SCP device driver, we could remove
> > > mtk_cam-smem.h/c. Currently, we use dma_alloc_coherent with SCP device
> > > to get SCP address. We could touch the buffer with this SCP address in
> > > SCP processor.
> > >
> > > After that, we use dma_map_page_attrs with P1 device which supports
> > > IOMMU domain to get IOVA address. For this address, we will assign
> > > it to our ISP HW device to proceed.
> > >
> > > Below is the snippet for ISP P1 compose buffer initialization.
> > >
> > >         ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
> > >                                  MAX_COMPOSER_SIZE, &addr, GFP_KERNEL);
> > >         if (!ptr) {
> > >                 dev_err(dev, "failed to allocate compose memory\n");
> > >                 return -ENOMEM;
> > >         }
> > >         isp_ctx->scp_mem_pa = addr;
> >
> > addr contains a DMA address, not a physical address. Could we call it
> > scp_mem_dma instead?
> >
> > >         dev_dbg(dev, "scp addr:%pad\n", &addr);
> > >
> > >         /* get iova address */
> > >         addr = dma_map_page_attrs(dev, phys_to_page(addr), 0,
> >
> > addr is a DMA address, so phys_to_page() can't be called on it. The
> > simplest thing here would be to use dma_map_single() with ptr as the
> > CPU address expected.
> >
>
> We have changed to use ma_map_single() with ptr, but encounter IOMMU
> error. From the debug log of iommu_dma_map_page[3], we got
> 0x0000000054800000 instead of expected address: 0x0000000050800000[2].
> There is a address offset(0x4000000). If we change to use
> dma_map_page_attrs with phys_to_page(addr), the address is correct as we
> expected[2]. Do you have any suggestion on this issue? Do we miss
> something?

Sorry for the late reply. Could you show me the code changes you made
to use dma_map_single()? It would sound like the virtual address
passed to dma_map_single() isn't correct.

Best regards,
Tomasz

>
> [1]
> [    1.344786] __dma_alloc_from_coherent: 0x800000 PAGE_SHIFT:12
> device_base:0x0000000050000000 dma:0x0000000050800000
> virt_base:ffffff8014000000 va:ffffff8014800000
>
> [    1.346890] mtk-cam 1a000000.camisp: scp addr:0x0000000050800000
> va:ffffff8014800000
>
> [    1.347864] iommu_dma_map_page:0x0000000054800000 offset:0
> [    1.348562] mtk-cam 1a000000.camisp: iova addr:0x00000000fde00000
>
> [2]
> [    1.346738] __dma_alloc_from_coherent: 0x800000 PAGE_SHIFT:12
> device_base:0x0000000050000000 dma:0x0000000050800000
> virt_base:ffffff8014000000 va:ffffff8014800000
> [    1.348841] mtk-cam 1a000000.camisp: scp addr:0x0000000050800000
> va:ffffff8014800000
> [    1.349816] iommu_dma_map_page:0x0000000050800000 offset:0
> [    1.350514] mtk-cam 1a000000.camisp: iova addr:0x00000000fde00000
>
>
> [3]
> dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
>                 unsigned long offset, size_t size, int prot)
> {
>         phys_addr_t phys = page_to_phys(page);
>         pr_err("iommu_dma_map_page:%pa offset:%lu\n", &phys, offset);
>
>         return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot,
>                         iommu_get_dma_domain(dev));
> }
>
> [snip]
>
> Best regards,
>
> Jungo
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
