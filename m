Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E814BD6D08
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 03:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWGcd3kqXqDV0GSY9g778J2WBr99SkQ7rHUb/moiyg4=; b=U/mVgj/vfh3rdl
	1/H9JChFc0Hy+eKZ+1d+anAOd2uuHvDBjFAF6OY8R5PXUWUxy6Dsu1NjDMO5CWRcExNvH0ErJxCOJ
	/qg/cMr84VtnvuXX4+6J5rwRen+RS2DgkQqgPGneimpqFP4OHKFj7t2WOSbWUdFFXcZr1ozBJEIw4
	QJOPi0qHbYu6U/BSWBIJzJo/YoLK7pY70bPEUZlH+pcA+WDiiVsnBhtf+ZSnpGqjwJ6h3Wb8hVnG2
	spR5u8bm2Yxo5JJCHc+vyZmB+dKx9R0xV4cNL5XPkEW8acckDuJxigMBgLeENCCmawEK2VgfP8ttL
	UQ8GtabeKwTZBhUXwniw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKC06-0007vJ-9p; Tue, 15 Oct 2019 01:51:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKC03-0007up-EB; Tue, 15 Oct 2019 01:51:48 +0000
X-UUID: fdce1eabc98541a4ae91ecc03989ef39-20191014
X-UUID: fdce1eabc98541a4ae91ecc03989ef39-20191014
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1640927879; Mon, 14 Oct 2019 17:51:35 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 18:51:38 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 15 Oct 2019 09:51:36 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 15 Oct 2019 09:51:35 +0800
Message-ID: <1571104296.19130.67.camel@mhfsdcap03>
Subject: Re: [PATCH v2 3/4] iommu/mediatek: Use writel for TLB range
 invalidation
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Tue, 15 Oct 2019 09:51:36 +0800
In-Reply-To: <20191014211113.jq5qwe5pfonyocr3@willie-the-truck>
References: <1570627143-29441-1-git-send-email-yong.wu@mediatek.com>
 <1570627143-29441-3-git-send-email-yong.wu@mediatek.com>
 <20191011162950.yg4o77mlaicacne5@willie-the-truck>
 <1570861427.19130.65.camel@mhfsdcap03>
 <20191014211113.jq5qwe5pfonyocr3@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2A0569C4EE061B0093306730CED8C43106D58A6D2203E5BAA9BAE2B73DFF6B432000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_185147_475432_751BA108 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com, Nicolas
 Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-10-14 at 22:11 +0100, Will Deacon wrote:
> On Sat, Oct 12, 2019 at 02:23:47PM +0800, Yong Wu wrote:
> > On Fri, 2019-10-11 at 17:29 +0100, Will Deacon wrote:
> > > On Wed, Oct 09, 2019 at 09:19:02PM +0800, Yong Wu wrote:
> > > > Use writel for the register F_MMU_INV_RANGE which is for triggering the
> > > > HW work. We expect all the setting(iova_start/iova_end...) have already
> > > > been finished before F_MMU_INV_RANGE.
> > > > 
> > > > Signed-off-by: Anan.Sun <anan.sun@mediatek.com>
> > > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > > ---
> > > > This is a improvement rather than fixing a issue.
> > > > ---
> > > >  drivers/iommu/mtk_iommu.c | 3 +--
> > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > > > index 24a13a6..607f92c 100644
> > > > --- a/drivers/iommu/mtk_iommu.c
> > > > +++ b/drivers/iommu/mtk_iommu.c
> > > > @@ -187,8 +187,7 @@ static void mtk_iommu_tlb_add_flush(unsigned long iova, size_t size,
> > > >  		writel_relaxed(iova, data->base + REG_MMU_INVLD_START_A);
> > > >  		writel_relaxed(iova + size - 1,
> > > >  			       data->base + REG_MMU_INVLD_END_A);
> > > > -		writel_relaxed(F_MMU_INV_RANGE,
> > > > -			       data->base + REG_MMU_INVALIDATE);
> > > > +		writel(F_MMU_INV_RANGE, data->base + REG_MMU_INVALIDATE);
> > > 
> > > I don't understand this change.
> > > 
> > > Why is it an "improvement" and which accesses are you ordering with the
> > > writel?
> > 
> > The register(F_MMU_INV_RANGE) will trigger HW to begin flush range. HW
> > expect the other register iova_start/end/flush_type always is ready
> > before trigger. thus I'd like use writel to guarantee the previous
> > register has been finished.
> 
> Given that these are all MMIO writes to the same device, then
> writel_relaxed() should give you the ordering you need. If you look at
> memory_barriers.txt, it says:
> 
>   | they [readX_relaxed() and writeX_relaxed()] are still guaranteed to
>   | be ordered with respect to other accesses from the same CPU thread
>   | to the same peripheral when operating on __iomem pointers mapped
>   | with the default I/O attributes.

Thanks for this info. See it now. then I will delete this patch in next
version.

> 
> > I didn't see the writel_relaxed cause some error in practice, we only
> > think writel is necessary here in theory. so call it "improvement".
> 
> Ok, but I don't think it's needed in this case.
> 
> Will



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
