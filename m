Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D8916F836
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 07:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nu0hf8BauWnoqNViH8i8P5HHeu/OdyOMqEnMquy4has=; b=AR0RkOOR6D2UYu
	FxsRQuC3dAuYz1ckzltBWwejHvYSO2p+PIANu2tNHJVFwBEeTKny4dzKQwADY99Lh8JHm6QlAXv7G
	oe1NjoOYXb8puz3RJ+uC3gfdqI2HI9jcbMN3FSXxgsICMnR81hTBwUuIx1g0iKOejv/qTvFq3Wwpi
	F+mvt+BGt+LC9DS4S2RIvV+zRYbAbl3Ag9mmZE8D0ekugENlcxX7Q5UE65vDP8jL5ZzwHke6Zj6Mv
	3TWvKARADPnExuw+BYIcXI6lxdgcE6zlUN8rt9h26Nxd7FfAvoL0UPCGDp1ys61I4RCMsZoc54NcE
	jlqT1FOGfy0M3+CS9jlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6qU5-00039K-Vx; Wed, 26 Feb 2020 06:47:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6qTo-00030o-TJ; Wed, 26 Feb 2020 06:47:38 +0000
X-UUID: 5f3b22708ee74800967b7cd00c3f5c8a-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=sNVknrlIb9UubW2Xtv3IENlncX0Wt6DkRbVInod5eos=; 
 b=OGCs3kP2+/1CiLo9t89UXcoCLu3c5XZZ/2rMM09u8vdDOxWV6kLTKMmcrjtPDj2rlMS+vclVJjmCKZeiUdraShkOcoGkAQDXVUs6Q23RFyk/Ol+CuEunlI+nDaPXxvPSfqS2wsbuB8+KsSjtRFZyAf8/WoKB3LV7MWigEc2EC3A=;
X-UUID: 5f3b22708ee74800967b7cd00c3f5c8a-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1285811432; Tue, 25 Feb 2020 22:47:29 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 22:37:26 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 14:36:33 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 14:37:33 +0800
Message-ID: <1582698979.27773.17.camel@mbjsdccf07>
Subject: Re: [RESEND,PATCH 03/13] iommu/mediatek: Add mtk_iommu_pgtable
 structure
From: chao hao <Chao.Hao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Yong Wu <yong.wu@mediatek.com>
Date: Wed, 26 Feb 2020 14:36:19 +0800
In-Reply-To: <1581769046.32039.27.camel@mhfsdcap03>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
 <20191104115238.2394-4-chao.hao@mediatek.com>
 <1576498396.28043.78.camel@mhfsdcap03>
 <1577785148.30177.5.camel@mbjsdccf07>
 <1581769046.32039.27.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_224736_957880_34261D4D 
X-CRM114-Status: GOOD (  40.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anan Sun =?UTF-8?Q?=28=E5=AD=99=E5=AE=89=E5=AE=89=29?=
 <Anan.Sun@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Cui Zhang =?UTF-8?Q?=28=E5=BC=A0=E7=BF=A0=29?= <Cui.Zhang@mediatek.com>,
 Jun Yan =?UTF-8?Q?=28=E9=A2=9C=E5=86=9B=29?= <Jun.Yan@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 youlin.pei@mediatek.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 chao.hao@mediatek.com,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Miles Chen =?UTF-8?Q?=28=E9=99=B3=E6=B0=91=E6=A8=BA=29?=
 <Miles.Chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 fy.yang@mediatek.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Guangming Cao =?UTF-8?Q?=28=E6=9B=B9=E5=85=89=E6=98=8E=29?=
 <Guangming.Cao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, 2020-02-15 at 20:17 +0800, Yong Wu wrote:
> On Tue, 2019-12-31 at 17:39 +0800, chao hao wrote:
> > On Mon, 2019-12-16 at 20:13 +0800, Yong Wu wrote:
> > > On Mon, 2019-11-04 at 19:52 +0800, Chao Hao wrote:
> > > > Start with this patch, we will change the SW architecture
> > > > to support multiple domains. SW architecture will has a big change,
> > > > so we need to modify a little bit by more than one patch.
> > > > The new SW overall architecture is as below:
> > > > 
> > > > 				iommu0   iommu1
> > > > 				  |	    |
> > > > 				  -----------
> > > > 					|
> > > > 				mtk_iommu_pgtable
> > > > 					|
> > > > 			------------------------------------------
> > > > 			|		     |			 |
> > > > 		mtk_iommu_domain1   mtk_iommu_domain2  mtk_iommu_domain3
> > > > 			|                    |                   |
> > > > 		iommu_group1         iommu_group2           iommu_group3
> > > > 			|                    |                   |
> > > > 		iommu_domain1       iommu_domain2	    iommu_domain3
> > > > 			|                    |                   |
> > > > 		iova region1(normal)  iova region2(CCU)    iova region3(VPU)
> > > > 
> > > > For current structure, no matter how many iommus there are,
> > > > they use the same page table to simplify the usage of module.
> > > > In order to make the software architecture more explicit, this
> > > > patch will create a global mtk_iommu_pgtable structure to describe
> > > > page table and all the iommus use it.
> > > 
> > > Thanks for the hard work of this file. Actually this patch and the later
> > > ones confuse me. Why do you make this flow change? 
> > > for making the code "more explicit" or for adding multi-domain support
> > > in 13/13.
> > > 
> > > IMHO, the change is unnecessary.
> > > a) For me, this change has no improvement. currently we use a global
> > > mtk_iommu_get_m4u_data to get the M4U data. I will be very glad if you
> > > could get rid of it. But in this patchset, You use a another global
> > > mtk_iommu_pgtable to instead. For me. It has no improvement.
> > 
> > Thanks for you advice!
> > 
> > For current SW arch, all the IOMMU HW use the same page table, we can
> > use a global mtk_iommu_pgtable to discribe the information of page table
> 
> What's your plan if the 4GB iova range is not enough for us in future?
> Do you plan to add a new global mtk_iommu_pgtable again?
> 
> > and all the IOMMU attach it, I think that it is more clear and
> > unambiguous. For beginners, it maybe more easily explicable? 
> 
> I still don't get the necessity of this change. it is only for making
> code clear from your point for view, right?
> 
> This code has been reviewed for many years, I don't know why you think
> it is ambiguous. it is clear for me at lease. and I will complain that
> you add a new global variable in this change.
> 
> > > 
> > > b) This patchset break the original flow. device_group give you a
> > > software chance for initializing, then you move pagetable allocating
> > > code into it. But it isn't device_group job.
> > > 
> > 
> > As is shown above diagram, mtk_iommu_pgtable includes iommu_group and
> > iommu_domain,so we need to allocate mtk_iommu_pgtable and initialize it
> > in device_group firstly,and then execute the original flow, it only
> > changes place for creating mtk_iommu_pgtable and don't break original
> > device_group flow.
> 
> I understand you have to do this change after you adjust the structure.
> I mean that it may be not proper since allocating pagetable should not
> be done in device_group logically. From here, Could we get this change
> looks not good?.
> 
gentle ping ...

Dear Matthias and Joerg,
From mt6779 platform, mtk_iommu.c needs to support multiple domains for
different iova regions.About the change, there are some disagreements
among our internal. We hope to get your helps and advices:

Based on current SW architecture to support multiple domain, diagram is
as below:
                           iommu0   iommu1
                              |        |
                              ----------
                                   |
              ------------------------------------------
              |                    |                   |
         iommu_group1         iommu_group2        iommu_group3
              |                    |                   |
       mtk_iommu_domain1     mtk_iommu_domain2   mtk_iommu_domain3
              |                    |                   |
       iova region1(normal)  iova region2(CCU)   iova region3(VPU)
 
  PS: the information of page table is included struct mtk_iommu_domain

In my opinion, if all the iommus share the same page table(include all
iova regions) and different iova regions are created based on the page
table, we can put the information of page table to a global
structure(mtk_iommu_pgtable) and all the iommus attach it. It maybe make
the SW architecture look clearly.
New SW architecture diagram is as below(This patchset is based on it):

                           iommu0   iommu1
                              |        |
                              ----------
                                   |
                          mtk_iommu_pgtable
                                   |
              ------------------------------------------
              |                    |                   |
        mtk_iommu_domain1   mtk_iommu_domain2   mtk_iommu_domain3
              |                    |                   |
         iommu_group1         iommu_group2        iommu_group3
              |                    |                   |
         iommu_domain1       iommu_domain2        iommu_domain3
              |                    |                   |
       iova region1(normal)  iova region2(CCU)   iova region3(VPU)

From above new SW architecture, we will create a global page table
firstly(mtk_iommu_pgtable), and all the iommus can use it. The page
table can include 4GB iova space, different iova regions are created
based on it, so the information of pgtable needs to be created in
device_group.

I have two problems to consult you, can you provide some advices? Thanks
for Matthias and Joerg so much!
(1) I don't understand if the pgtable can be created in device_group ?
(2) In addition, can you help to review which SW architecture are more
reasonable or whether it is necessary to change current SW architecture
to support multiple domain ?


Dear Yong,
If I described ambiguously, please help to add extra explanation.
Thanks a lot.


> > > I can not decide if your flow is right. But if you only want to add
> > > support multi-domain, I guess you could extend the current "m4u_group"
> > > to a array "m4u_group[N]". It may be more simple. To make mt6779
> > > progress easily, I suggest you can use this way to support multi-domain
> > > firstly. Then you could send this new mtk_iommu_pgtable patchset for the
> > > code "more explicit" if you insist.
> 
> Could you help try this way if it could meet your requirement? Then
> let's compare which one is better.
> 
> 
> BTW, your patches(including v2) cause hangup as below since
> "data->m4u_dom" was uninitialized.
> 
> 
> Unable to handle kernel NULL pointer dereference at virtual address
> 0000000000000010
> ...
> pc : mtk_iommu_tlb_flush_page_nosync+0x38/0xb8
> lr : __arm_v7s_unmap+0x174/0x598
> ...
> Call trace:
>  mtk_iommu_tlb_flush_page_nosync+0x38/0xb8
>  __arm_v7s_unmap+0x174/0x598
>  arm_v7s_unmap+0x30/0x48
>  mtk_iommu_unmap+0x20/0x28
>  __iommu_unmap+0xa4/0xf8
>  iommu_unmap+0x44/0x90
> 
> > > 
> > > > The diagram is as below:
> > > > 
> > > > 	mtk_iommu_data1(MM)       mtk_iommu_data2(APU)
> > > > 		|			   |
> > > > 		|			   |
> > > > 		------mtk_iommu_pgtable-----
> > > > 
> > > > We need to create global mtk_iommu_pgtable to include all the iova
> > > > regions firstly and special iova regions by divided based on it,
> > > > so the information of pgtable needs to be created in device_group.
> > > > 
> > > > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > > > ---
> > > >  drivers/iommu/mtk_iommu.c | 84 +++++++++++++++++++++++++++++++++++++++
> > > >  drivers/iommu/mtk_iommu.h |  1 +
> > > >  2 files changed, 85 insertions(+)
> > > > 
> > > > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > > > index f2847e661137..fcbde6b0f58d 100644
> > > > --- a/drivers/iommu/mtk_iommu.c
> > > > +++ b/drivers/iommu/mtk_iommu.c
> > > > @@ -123,6 +123,12 @@ struct mtk_iommu_domain {
> > > >  	struct iommu_domain		domain;
> > > >  };
> > > >  
> > > > +struct mtk_iommu_pgtable {
> > > > +	struct io_pgtable_cfg	cfg;
> > > > +	struct io_pgtable_ops	*iop;
> > > > +};
> > > > +
> > > > +static struct mtk_iommu_pgtable *share_pgtable;
> > > >  static const struct iommu_ops mtk_iommu_ops;
> > > >  
> > > >  /*
> > > > @@ -170,6 +176,11 @@ static struct mtk_iommu_data *mtk_iommu_get_m4u_data(void)
> > > >  	return NULL;
> > > >  }
> > > >  
> > > > +static struct mtk_iommu_pgtable *mtk_iommu_get_pgtable(void)
> > > > +{
> > > > +	return share_pgtable;
> > > > +}
> > > > +
> > > >  static struct mtk_iommu_domain *to_mtk_domain(struct iommu_domain *dom)
> > > >  {
> > > >  	return container_of(dom, struct mtk_iommu_domain, domain);
> > > > @@ -322,6 +333,13 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
> > > >  {
> > > >  	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> > > >  
> > > > +	if (data->pgtable) {
> > > > +		dom->cfg = data->pgtable->cfg;
> > > > +		dom->iop = data->pgtable->iop;
> > > > +		dom->domain.pgsize_bitmap = data->pgtable->cfg.pgsize_bitmap;
> > > > +		return 0;
> > > > +	}
> > > > +
> > > >  	dom->cfg = (struct io_pgtable_cfg) {
> > > >  		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
> > > >  			IO_PGTABLE_QUIRK_NO_PERMS |
> > > > @@ -345,6 +363,61 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
> > > >  	return 0;
> > > >  }
> > > >  
> > > > +static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
> > > > +{
> > > > +	struct mtk_iommu_pgtable *pgtable;
> > > > +
> > > > +	pgtable = kzalloc(sizeof(*pgtable), GFP_KERNEL);
> > > > +	if (!pgtable)
> > > > +		return ERR_PTR(-ENOMEM);
> > > > +
> > > > +	pgtable->cfg = (struct io_pgtable_cfg) {
> > > > +		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
> > > > +			IO_PGTABLE_QUIRK_NO_PERMS |
> > > > +			IO_PGTABLE_QUIRK_TLBI_ON_MAP |
> > > > +			IO_PGTABLE_QUIRK_ARM_MTK_EXT,
> > > > +		.pgsize_bitmap = mtk_iommu_ops.pgsize_bitmap,
> > > > +		.ias = 32,
> > > > +		.oas = 34,
> > > > +		.tlb = &mtk_iommu_flush_ops,
> > > > +		.iommu_dev = data->dev,
> > > > +	};
> > > > +
> > > > +	pgtable->iop = alloc_io_pgtable_ops(ARM_V7S, &pgtable->cfg, data);
> > > > +	if (!pgtable->iop) {
> > > > +		dev_err(data->dev, "Failed to alloc io pgtable\n");
> > > > +		return ERR_PTR(-EINVAL);
> > > > +	}
> > > > +
> > > > +	dev_info(data->dev, "%s create pgtable done\n", __func__);
> > > > +
> > > > +	return pgtable;
> > > > +}
> > > > +
> > > > +static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
> > > > +				    struct device *dev)
> > > > +{
> > > > +	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
> > > > +
> > > > +	/* create share pgtable */
> > > > +	if (!pgtable) {
> > > > +		pgtable = create_pgtable(data);
> > > > +		if (IS_ERR(pgtable)) {
> > > > +			dev_err(data->dev, "Failed to create pgtable\n");
> > > > +			return -ENOMEM;
> > > > +		}
> > > > +
> > > > +		share_pgtable = pgtable;
> > > > +	}
> > > > +
> > > > +	/* binding to pgtable */
> > > > +	data->pgtable = pgtable;
> > > > +
> > > > +	dev_info(data->dev, "m4u%d attach_pgtable done!\n", data->m4u_id);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > >  static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
> > > >  {
> > > >  	struct mtk_iommu_domain *dom;
> > > > @@ -508,10 +581,21 @@ static void mtk_iommu_remove_device(struct device *dev)
> > > >  static struct iommu_group *mtk_iommu_device_group(struct device *dev)
> > > >  {
> > > >  	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> > > > +	struct mtk_iommu_pgtable *pgtable;
> > > > +	int ret = 0;
> > > >  
> > > >  	if (!data)
> > > >  		return ERR_PTR(-ENODEV);
> > > >  
> > > > +	pgtable = data->pgtable;
> > > > +	if (!pgtable) {
> > > > +		ret = mtk_iommu_attach_pgtable(data, dev);
> > > > +		if (ret) {
> > > > +			dev_err(data->dev, "Failed to device_group\n");
> > > > +			return NULL;
> > > > +		}
> > > > +	}
> > > > +
> > > >  	/* All the client devices are in the same m4u iommu-group */
> > > >  	if (!data->m4u_group) {
> > > >  		data->m4u_group = iommu_group_alloc();
> > > > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > > > index 132dc765a40b..dd5f19f78b62 100644
> > > > --- a/drivers/iommu/mtk_iommu.h
> > > > +++ b/drivers/iommu/mtk_iommu.h
> > > > @@ -61,6 +61,7 @@ struct mtk_iommu_data {
> > > >  	struct clk			*bclk;
> > > >  	phys_addr_t			protect_base; /* protect memory base */
> > > >  	struct mtk_iommu_suspend_reg	reg;
> > > > +	struct mtk_iommu_pgtable	*pgtable;
> > > >  	struct mtk_iommu_domain		*m4u_dom;
> > > >  	struct iommu_group		*m4u_group;
> > > >  	bool                            enable_4GB;
> > > 
> > > 
> > 
> > 
> 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
