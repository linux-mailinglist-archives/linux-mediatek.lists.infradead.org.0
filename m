Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D2A2BEA5
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3Hv/xtkddi5hkbixz4tncaoB8qssY9uPSNRwe4GEHQ=; b=Tt9RzX27OO97GS
	xGSmzP/nuzffBUJUwHYM/Gb5yxw81Ac3Bh7mrOaKS+xicq4x7iHr4Dg145bPibk7s6iYmD+sT53HF
	qyDTXV/urycKgmY3cEqSsOHNHe2xrmIoNPSC1HY/VCX5Ov1DykRF47zMfBdsfNJKb8pJg+pdvoXUW
	VkptkyEtqCVrv4Nc0XPluqnLI/OI/ZHjUzLlCl90PgRMyAbYz/GBnVDzLY+k8CWoEyFRhX09mS7EV
	J3R1FmjPNh8ekSJ22Jz5dsVG+HagpcEB1Y6+Mhl3M92yWXc1apwSHzVgXJHAp0WWt0CrczWR0+Bts
	ugG1eshf46xtetYISuhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVUm0-0001x3-9Z; Tue, 28 May 2019 05:35:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUlv-0001nB-62; Tue, 28 May 2019 05:35:42 +0000
X-UUID: 343c54c9b2a14a35b6f9036f7cbd6ef4-20190527
X-UUID: 343c54c9b2a14a35b6f9036f7cbd6ef4-20190527
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 212699397; Mon, 27 May 2019 21:35:32 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 22:35:31 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 13:35:29 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 13:35:29 +0800
Message-ID: <1559021729.15879.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 22/25] drm/mediatek: adjust ddp clock control flow
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Tue, 28 May 2019 13:35:29 +0800
In-Reply-To: <1555403090.11519.7.camel@mtksdaap41>
References: <1553667561-25447-1-git-send-email-yongqiang.niu@mediatek.com>
 <1553667561-25447-23-git-send-email-yongqiang.niu@mediatek.com>
 <1555403090.11519.7.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_223539_676582_5A417BB0 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Bibby.Hsieh@mediatek.com,
 airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Tue, 2019-04-16 at 16:24 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Wed, 2019-03-27 at 14:19 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > display hardware clock will not unprepare when
> > crtc is disable, until crtc is destroyed.
> > with this patch, hard clock will disable and unprepare
> > at the same time.
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>

This patch looks independent, so I've applied it to
mediatek-drm-fixes-5.2 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.2

Regards,
CK
> 
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 26 ++++++--------------------
> >  1 file changed, 6 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 0f97ee3..606c6e2 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -195,7 +195,7 @@ static int mtk_crtc_ddp_clk_enable(struct mtk_drm_crtc *mtk_crtc)
> >  
> >  	DRM_DEBUG_DRIVER("%s\n", __func__);
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
> > -		ret = clk_enable(mtk_crtc->ddp_comp[i]->clk);
> > +		ret = clk_prepare_enable(mtk_crtc->ddp_comp[i]->clk);
> >  		if (ret) {
> >  			DRM_ERROR("Failed to enable clock %d: %d\n", i, ret);
> >  			goto err;
> > @@ -205,7 +205,7 @@ static int mtk_crtc_ddp_clk_enable(struct mtk_drm_crtc *mtk_crtc)
> >  	return 0;
> >  err:
> >  	while (--i >= 0)
> > -		clk_disable(mtk_crtc->ddp_comp[i]->clk);
> > +		clk_disable_unprepare(mtk_crtc->ddp_comp[i]->clk);
> >  	return ret;
> >  }
> >  
> > @@ -215,7 +215,7 @@ static void mtk_crtc_ddp_clk_disable(struct mtk_drm_crtc *mtk_crtc)
> >  
> >  	DRM_DEBUG_DRIVER("%s\n", __func__);
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> > -		clk_disable(mtk_crtc->ddp_comp[i]->clk);
> > +		clk_disable_unprepare(mtk_crtc->ddp_comp[i]->clk);
> >  }
> >  
> >  static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> > @@ -615,15 +615,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  		if (!comp) {
> >  			dev_err(dev, "Component %pOF not initialized\n", node);
> >  			ret = -ENODEV;
> > -			goto unprepare;
> > -		}
> > -
> > -		ret = clk_prepare(comp->clk);
> > -		if (ret) {
> > -			dev_err(dev,
> > -				"Failed to prepare clock for component %pOF: %d\n",
> > -				node, ret);
> > -			goto unprepare;
> > +			return ret;
> >  		}
> >  
> >  		mtk_crtc->ddp_comp[i] = comp;
> > @@ -649,23 +641,17 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  		ret = mtk_plane_init(drm_dev, &mtk_crtc->planes[zpos],
> >  				     BIT(pipe), type);
> >  		if (ret)
> > -			goto unprepare;
> > +			return ret;
> >  	}
> >  
> >  	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
> >  				mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
> >  				NULL, pipe);
> >  	if (ret < 0)
> > -		goto unprepare;
> > +		return ret;
> >  	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> >  	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> >  	priv->num_pipes++;
> >  
> >  	return 0;
> > -
> > -unprepare:
> > -	while (--i >= 0)
> > -		clk_unprepare(mtk_crtc->ddp_comp[i]->clk);
> > -
> > -	return ret;
> >  }
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
