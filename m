Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA7CD6E8F
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 07:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jieaDA+UladWdW6pUBCPsHnu8ohMae3HWw3dn/9q4kI=; b=Nd+dsjfSfvriy1
	v3ajTM3mGqF/+Pn9eZnrkD0QR2fkMg19Dh15UREAD8Mjw7nCIIJwpXrBU1pHRVamH4Ab4Q/rCqD8u
	PjgePY6imEUa8WbT5IIBVBwenjTz7HkcKfble6yXEarrPljCX/0Ni8kCjBiEVlqBQOfPTufsMJK97
	yJuqFdG8iOtrVlXC8aoXm+sXt57HScPAHDpF+60sCVyCH2yaovRDeAKmPNgnFFzN6u94ALNULnnR2
	BCSTkYveHN6VdgI8tFSYQYSVRnBEyN4tLV5kqPOX/Sf1lId88gF9IFH10Xt99QJuZZJPuQaeATMPQ
	7JMdSRkXHh3ALvnJFbeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKFL3-0003FP-4Z; Tue, 15 Oct 2019 05:25:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKFKr-00036m-1P; Tue, 15 Oct 2019 05:25:30 +0000
X-UUID: 197af47228ae4eb895e9b48d404216fd-20191014
X-UUID: 197af47228ae4eb895e9b48d404216fd-20191014
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1329948242; Mon, 14 Oct 2019 21:25:17 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 22:25:22 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 15 Oct 2019 13:25:17 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 15 Oct 2019 13:25:16 +0800
Message-ID: <1571117118.19130.81.camel@mhfsdcap03>
Subject: Re: [PATCH v3 4/7] iommu/mediatek: Delete the leaf in the tlb flush
From: Yong Wu <yong.wu@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Tue, 15 Oct 2019 13:25:18 +0800
In-Reply-To: <20c74c20-864e-88af-3c58-ad3bb7600bcc@arm.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-5-git-send-email-yong.wu@mediatek.com>
 <20c74c20-864e-88af-3c58-ad3bb7600bcc@arm.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1320629692F0D088FC9AD967C2A18864D2766ABDB9AA66C650AFFE4EBC49898F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_222529_085439_B74CC2AF 
X-CRM114-Status: GOOD (  15.23  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, edison.hsieh@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-10-14 at 15:22 +0100, Robin Murphy wrote:
> On 14/10/2019 07:38, Yong Wu wrote:
> > In our tlb range flush, we don't care the "leaf". Remove it to simplify
> > the code. no functional change.
> 
> Presumably you don't care about the granule either?

Yes. I only keep "granule" to satisfy the format of "tlb_flush_walk",
then it's no need add a new helper function.

> 
> Robin.
> 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >   drivers/iommu/mtk_iommu.c | 16 ++++------------
> >   1 file changed, 4 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 8712afc..19f936c 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -174,8 +174,7 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
> >   }
> >   
> >   static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
> > -					   size_t granule, bool leaf,
> > -					   void *cookie)
> > +					   size_t granule, void *cookie)
> >   {
> >   	struct mtk_iommu_data *data = cookie;
> >   
> > @@ -219,14 +218,7 @@ static void mtk_iommu_tlb_sync(void *cookie)
> >   static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
> >   				     size_t granule, void *cookie)
> >   {
> > -	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
> > -	mtk_iommu_tlb_sync(cookie);
> > -}
> > -
> > -static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
> > -				     size_t granule, void *cookie)
> > -{
> > -	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
> > +	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, cookie);
> >   	mtk_iommu_tlb_sync(cookie);
> >   }
> >   
> > @@ -245,7 +237,7 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
> >   static const struct iommu_flush_ops mtk_iommu_flush_ops = {
> >   	.tlb_flush_all = mtk_iommu_tlb_flush_all,
> >   	.tlb_flush_walk = mtk_iommu_tlb_flush_walk,
> > -	.tlb_flush_leaf = mtk_iommu_tlb_flush_leaf,
> > +	.tlb_flush_leaf = mtk_iommu_tlb_flush_walk,
> >   	.tlb_add_page = mtk_iommu_tlb_flush_page_nosync,
> >   };
> >   
> > @@ -475,7 +467,7 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
> >   		spin_lock_irqsave(&dom->pgtlock, flags);
> >   
> >   	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
> > -				       false, data);
> > +				       data);
> >   	mtk_iommu_tlb_sync(data);
> >   
> >   	if (!is_in_gather)
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
