Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CCC16B8B8
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Feb 2020 06:08:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBsCQ2X/xiGVqr/2aDgYcBpPF4OCsNmEffW0dT33UcI=; b=qOhrn39Li7vj2Z
	87NXj9djMRt87Hbq8n4c0b6aj+MBZchyt2vzVhOLZlue19+8s85wf/M4GpsubzVjQhS4TbDw7gqV8
	mlJsn1anvYqumgCNE7qTZ8xxcyVtIN4vFntwL7Ds7kIgGWzl6q1ueYFGAndn3sm92FQ6sLl2DEO4w
	0Rqx/5InsgGitRvjkuNoVKKpQc8VR5zqDfxUekbmfzj/BY5eNm0SJY+2AU849PXbfEyUsn7TbQYVc
	yOu6eZSJQIxdour3LERelkTtglwdmZwNBxAq16ihqzdFOgWiWXBB5Wjy3z06vb80R96++P/rGveg5
	lXt/Ty7PNgVmywXt9anA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SS2-00050i-5J; Tue, 25 Feb 2020 05:08:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SRn-0004pU-Tv; Tue, 25 Feb 2020 05:07:57 +0000
X-UUID: 7ffb3ae7994d45a9a050f143c1604cf8-20200224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/rtGSIQMd4B3KB57xrUi7K3ubIpRTDkINY3agOAnA5g=; 
 b=k6MaK41Z4INDrhlLEsvigYWeqTh9KMbVAE4ZQ0AUwAR/E6/XeZeuqynBxE/WxD1qeeiY7W6m6HsF1GYPTzQpTTLUSHUPGcjZs4u8fenJ3IydNtJ6BfnlT7x9HSypnkdAbgcTOR+2PeEMeKS5eV4IsmKz/Dev9txQai0K7pSeBEA=;
X-UUID: 7ffb3ae7994d45a9a050f143c1604cf8-20200224
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2019203508; Mon, 24 Feb 2020 21:07:50 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Feb 2020 21:08:25 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkexhb02.mediatek.inc (172.21.101.103) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 13:07:08 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 25 Feb 2020 13:07:28 +0800
Message-ID: <1582607261.2773.0.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: component type MTK_DISP_OVL_2L is not
 correctly handled
From: CK Hu <ck.hu@mediatek.com>
To: Phong LE <ple@baylibre.com>
Date: Tue, 25 Feb 2020 13:07:41 +0800
In-Reply-To: <1582162568.24713.0.camel@mtksdaap41>
References: <20200219141324.29299-1-ple@baylibre.com>
 <1582162568.24713.0.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_210755_970197_2DC3936B 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Phong:

On Thu, 2020-02-20 at 09:36 +0800, CK Hu wrote:
> Hi, Phong:
> 
> On Wed, 2020-02-19 at 15:13 +0100, Phong LE wrote:
> > The larb device remains NULL if the type is MTK_DISP_OVL_2L.
> > A kernel panic is raised when a crtc uses mtk_smi_larb_get or
> > mtk_smi_larb_put.
> > 
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 

Applied to mediatek-drm-fixes-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.6

Regards,
CK

> > Signed-off-by: Phong LE <ple@baylibre.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > index 1f5a112bb034..57c88de9a329 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > @@ -471,6 +471,7 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
> >  	/* Only DMA capable components need the LARB property */
> >  	comp->larb_dev = NULL;
> >  	if (type != MTK_DISP_OVL &&
> > +	    type != MTK_DISP_OVL_2L &&
> >  	    type != MTK_DISP_RDMA &&
> >  	    type != MTK_DISP_WDMA)
> >  		return 0;
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
