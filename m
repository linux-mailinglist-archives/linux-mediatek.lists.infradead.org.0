Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015CDA9A4B
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 07:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T09BtbMMtiiMQxEZwxkQIAesUYpWuA3nBmuzoum1Hws=; b=KIBgdRWVkLOZzb
	FnIHMkCG4evPK9fSPWiYo1N3PpdPDz6y+sqk5jjtAf/u26Fr58dbzb/cMngbVKtcCJrIJwe+wORzi
	Nv8YRogGxb4AmHpNZnF2eVbquDL6Ex8NQ4tedNJx0BgaLCQZhXLm0nnGOmQ16FPP0ujJZTFHiciw4
	SXs2WIhXlUfqlZ713YQqD4MgMB/NqRP/QlWTrnNgzB/jpmsddzXwiCOlgN/gmX9BE7ioXPFznGicQ
	y4A2GRUE3SKtKTyyvGkEqthnB+ma/4fE8OHDELL0Md8Z3rijlfcgbn0ZgzNknJ4Dxz9Mlr4M1hyS+
	PMN6StkbDrQOWjcB0nsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5klQ-00020F-CZ; Thu, 05 Sep 2019 05:57:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5klM-0001zR-97; Thu, 05 Sep 2019 05:56:57 +0000
X-UUID: 021cec5728554d41a55a2e95c52b5397-20190904
X-UUID: 021cec5728554d41a55a2e95c52b5397-20190904
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 634166656; Wed, 04 Sep 2019 21:56:47 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 22:56:45 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 5 Sep 2019 13:56:38 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 13:56:37 +0800
Message-ID: <1567662999.18702.28.camel@mhfsdcap03>
Subject: Re: [PATCH v3 06/14] media: mtk-mdp: Get rid of mtk_smi_larb_get/put
From: Yong Wu <yong.wu@mediatek.com>
To: houlong wei <houlong.wei@mediatek.com>
Date: Thu, 5 Sep 2019 13:56:39 +0800
In-Reply-To: <1567570074.31301.19.camel@mhfsdcap03>
References: <mailman.21807.1567503573.19300.linux-mediatek@lists.infradead.org>
 <1567570074.31301.19.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B5594BCA8B000D0387E321BE740558961162944E3E3D0781D08371B12D3EAA0E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_225656_328944_A5F9645D 
X-CRM114-Status: GOOD (  16.45  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org, Nicolas
 Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, minghsiu.tsai@mediatek.com,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com, Robin
 Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 12:07 +0800, houlong wei wrote:
> Hi, Yong,
> 
> I have inline comment below.

Thanks for your review.

> 
> > MediaTek IOMMU has already added the device_link between the consumer
> > and smi-larb device. If the mdp device call the pm_runtime_get_sync,
> > the smi-larb's pm_runtime_get_sync also be called automatically.
> > 
> > CC: Minghsiu Tsai <minghsiu.tsai@mediatek.com>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> > ---
> >  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 38 ---------------------------
> >  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  2 --
> >  drivers/media/platform/mtk-mdp/mtk_mdp_core.c |  1 -
> >  3 files changed, 41 deletions(-)
> > 
> > diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> > index 9afe816..5985a9b 100644
> > --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> > +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> > @@ -9,7 +9,6 @@
> >  #include <linux/of.h>
> >  #include <linux/of_address.h>
> >  #include <linux/of_platform.h>
> > -#include <soc/mediatek/smi.h>
> >  
> >  #include "mtk_mdp_comp.h"
> >  
> > @@ -58,14 +57,6 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
> >  {
> >  	int i, err;
> >  
> > -	if (comp->larb_dev) {
> > -		err = mtk_smi_larb_get(comp->larb_dev);
> > -		if (err)
> > -			dev_err(dev,
> > -				"failed to get larb, err %d. type:%d id:%d\n",
> > -				err, comp->type, comp->id);
> > -	}
> 
> In previous design,mtk_mdp_comp_clock_on() is called by each MDP
> hardware component, and mtk_smi_larb_get() is also called for each MDP
> hardware component which accesses DRAM via SMI larb.
> 
> Since mdp device only contains mdp_rdma component, so
> pm_runtime_get_sync() will ignore other smi-larb clock. We need consider
> how to enable clocks of other smi-larb associated with other mdp
> component, e.g. mdp_wdma, mdp_wrot.
> 

Sorry, I'm not so familiar with mdp, thus, for MDP part, the test and
reviewing from Minghsiu or you is expected.

This patch only delete the smi interface literally. In my understanding,
mdp should call pm_runtime_get with the corresponding device, no matter
mdp_wdma or mdp_wrot device.

Of course I am not sure the mdp flow, If this patch affect its function,
please tell me. Also, If mdp driver need change correspondingly, I will
put it into this series like [12/14] of this patchset which is from
display.

[snip]



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
