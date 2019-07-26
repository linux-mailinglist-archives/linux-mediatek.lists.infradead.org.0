Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDD276B04
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 16:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMPl3XrLLzFVddy6TNy/25G24JbPu7I5ZbyQ8+9IWGI=; b=ey/+fXYsKQhCUF
	vSRYWopvzEmy1ob0yshtHK37bVi0+onFHu7X7hntgzMvaOHv/SUNVAaw/VRcDb2hZ5h2wp6/k7YRq
	CFWRJKp00zEdy9edo711to9speYVexSunSqWFFQ512RX2rQa6VcJ+k+h0try5tUw8lTLHc1IZrxT7
	hMXHhcvrOKab8nw8RQ/mF9/xNVbZFOGp2TwKeitt4iQ7fRqaBjgBESjRqSNGqi/hkskkFASAmIVZm
	VK60YxBVmph3MrELaDUlOY8AIghZhNRfiGHvLsYs2xmWdTRovsgbJ5oEqsKP/AWwC+17xLByPNi7n
	AP+ViZl9RvjBCpHkPqaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0qH-00084e-4s; Fri, 26 Jul 2019 14:05:05 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0qB-0007pd-I6
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 14:05:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so53402080edr.10
 for <linux-mediatek@lists.infradead.org>; Fri, 26 Jul 2019 07:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h4O4z+O+RC1JwnWktDyaiJMFv2NH81YwETYIA8cC4R4=;
 b=aw5WQtbsqLZ0f8nctZ02nXZA/NLGPbLx7lFP0F/tGyj5eow+za6vJHr/9xIVsd7jnU
 ICYACBFD9ozBMsUnq5wBnpaA1P5MkvkEaMvwi/UUfWLl/NLvdQdq4mOOsEUKDqD1+dzu
 FW4cq5+prK2G5oYhDDqTLWI43JgEgs9ZbmDCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h4O4z+O+RC1JwnWktDyaiJMFv2NH81YwETYIA8cC4R4=;
 b=ETF4TYz0qZmJ8abJO0mgzdozCIdGXjI/8bplh5pY/ZtBJW5rWEqTTB/iA1WqIEC6EL
 PVxyv0UcvMIznHQJiXjh4U9KZ0iBKwCW3hRZ4BBUyIUjpM9PL7d6L2XE0qeu/6fVk/zk
 75aiM7F/bWod2FntaRC+YFgo7O5RnWqA8dSS5HxSDZrXBCn1lNSG9YQoU+CCL6+w9OyT
 ffGBOhgObTkG5kONRenG/ehS+3Hvwgog3urkLUI7gvF0P9PEE4ysii5i24L2/yMCYShK
 Ab+KWy4uumkbxxWHH04FTywfeOYlryYxeTiyNs0gNo/njFaoPojAV/JixMRwMOO4rOtN
 N/bA==
X-Gm-Message-State: APjAAAUCK3RSzxynI0I8YDtCsG8kxRrGjEVXbZ6Y37Cfw7OYEEeOpvXH
 5EOxoFtmFlB0VyZ948u2zXGrmxJ0NFN1/g==
X-Google-Smtp-Source: APXvYqxo4n7hNR1puGmrL7cbBRfqQbieR69HslC4zKJBWDKv5RrZM24S+Ai6JIVrdKohQxFCeEosrQ==
X-Received: by 2002:a17:906:f85:: with SMTP id
 q5mr74183297ejj.192.1564149896648; 
 Fri, 26 Jul 2019 07:04:56 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id w13sm10264069eji.22.2019.07.26.07.04.54
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 07:04:55 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id n9so54676907wru.0
 for <linux-mediatek@lists.infradead.org>; Fri, 26 Jul 2019 07:04:54 -0700 (PDT)
X-Received: by 2002:adf:ed41:: with SMTP id u1mr97366899wro.162.1564149894620; 
 Fri, 26 Jul 2019 07:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
 <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07>
 <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org>
 <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
 <4460bc91-352a-7f3a-cbed-1b95e743ca8c@arm.com>
 <1564142386.1212.621.camel@mtksdccf07>
In-Reply-To: <1564142386.1212.621.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 26 Jul 2019 23:04:42 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BE1hAgYG-0OY_SEOcz2g4WLeCxP=6G=5xhLb++vewspw@mail.gmail.com>
Message-ID: <CAAFQd5BE1hAgYG-0OY_SEOcz2g4WLeCxP=6G=5xhLb++vewspw@mail.gmail.com>
Subject: Re: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To: Jungo Lin <jungo.lin@mediatek.com>, Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070459_625617_94236CA9 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Christoph Hellwig <hch@infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, ddavenport@chromium.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 8:59 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi Robin:
>
> On Fri, 2019-07-26 at 12:04 +0100, Robin Murphy wrote:
> > On 26/07/2019 08:42, Tomasz Figa wrote:
> > > On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
> > >>
> > >> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> > >>> Could you try dma_get_sgtable() with the SCP struct device and then
> > >>> dma_map_sg() with the P1 struct device?
> > >>
> > >> Please don't do that.  dma_get_sgtable is a pretty broken API (see
> > >> the common near the arm implementation) and we should not add more
> > >> users of it.  If you want a piece of memory that can be mapped to
> > >> multiple devices allocate it using alloc_pages and then just map
> > >> it to each device.
> > >
> > > Thanks for taking a look at this thread.
> > >
> > > Unfortunately that wouldn't work. We have a specific reserved memory
> > > pool that is the only memory area accessible to one of the devices.
> > > Any idea how to handle this?
> >
> > If it's reserved in the sense of being outside struct-page-backed
> > "kernel memory", then provided you have a consistent CPU physical
> > address it might be reasonable for other devices to access it via
> > dma_map_resource().
> >
> > Robin.
>
> Thank you for your suggestion.
>
> After revising to use dma_map_resource(), it is worked. Below is the
> current implementation. Pleas kindly help us to check if there is any
> misunderstanding.
>
> #define MTK_ISP_COMPOSER_MEM_SIZE               0x200000
>
>         /*
>          * Allocate coherent reserved memory for SCP firmware usage.
>          * The size of SCP composer's memory is fixed to 0x200000
>          * for the requirement of firmware.
>          */
>         ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
>                                  MTK_ISP_COMPOSER_MEM_SIZE, &addr, GFP_KERNEL);
>         if (!ptr) {
>                 dev_err(dev, "failed to allocate compose memory\n");
>                 return -ENOMEM;
>         }
>         p1_dev->composer_scp_addr = addr;
>         p1_dev->composer_virt_addr = ptr;
>         dev_dbg(dev, "scp addr:%pad va:%pK\n", &addr, ptr);
>
>         /*
>          * This reserved memory is also be used by ISP P1 HW.
>          * Need to get iova address for ISP P1 DMA.
>          */
>         addr = dma_map_resource(dev, addr, MTK_ISP_COMPOSER_MEM_SIZE,
>                                 DMA_BIDIRECTIONAL, DMA_ATTR_SKIP_CPU_SYNC);

This is still incorrect, because addr is a DMA address, but the second
argument to dma_map_resource() is a physical address.

>         if (dma_mapping_error(dev, addr)) {
>                 dev_err(dev, "Failed to map scp iova\n");
>                 ret = -ENOMEM;
>                 goto fail_free_mem;
>         }
>         p1_dev->composer_iova = addr;
>         dev_info(dev, "scp iova addr:%pad\n", &addr);
>
> Moreover, appropriate Tomasz & Christoph's help on this issue.

Robin, the memory is specified using the reserved-memory DT binding
and managed by the coherent DMA pool framework. We can allocate from
it using dma_alloc_coherent(), which gives us a DMA address, not CPU
physial address (although in practice on this platform they are equal
numerically).

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
