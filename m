Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FBFA1A40
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 14:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1nZoBlKNOevdNtREFS7SoH84dAEy1phXgMEcGkZLWI=; b=I3xiFOO8P1daFr
	I1V5V0DcP2IrQ8Ru6D4fqKm4BdzlDaG59rhVyjFDpVHBTTGeKJlgiEdB5aZQNIglHxn0UgPJPc+ig
	VUd0DSqvYGzEXVfM2NQh4v637VSpEOFXi3VZSB1+4s84pxIF/dWZuoOqGVc8btptEX9K33MA5GIUK
	Ry1vThawUKdATRF0vyUgxU6O+qQ3F1t6mKDmuRo0zvRidiZ1gp8gN03ccakQ8oQdgl1IDbhoX4xrb
	fL7cDlGHVy7Ns89lXoN6+PmSvYBzYEe6wlgb41ee5LgKlL+fRhZSTWhEUMUgGAxEfW97TaZRRiXmI
	m5ysy6j/2OOh3FtWxc8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JiW-00087V-BT; Thu, 29 Aug 2019 12:39:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3JiJ-0007zV-2H; Thu, 29 Aug 2019 12:39:44 +0000
X-UUID: c3bc01c33c8e438cbcdb6dd48426fcc6-20190829
X-UUID: c3bc01c33c8e438cbcdb6dd48426fcc6-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1173285293; Thu, 29 Aug 2019 04:39:43 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 05:39:41 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n2.mediatek.inc
 (172.21.101.79) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 29 Aug 2019 20:39:34 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 20:39:33 +0800
Message-ID: <1567082367.30648.2.camel@mhfsdcap03>
Subject: Re: [PATCH v4, 12/33] drm/mediatek: split DISP_REG_CONFIG_DSI_SEL
 setting into another use case
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 29 Aug 2019 20:39:27 +0800
In-Reply-To: <1563341736.29169.15.camel@mtksdaap41>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-13-git-send-email-yongqiang.niu@mediatek.com>
 <1563341736.29169.15.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1AB6CD6AEFA081CDD571265A6B6FA16D64076F9D817FB5E376E91E95D5153CED2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_053943_114895_649087B9 
X-CRM114-Status: GOOD (  17.30  )
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
Reply-To: yongqiang.niu@mediatek.com
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 13:35 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Tue, 2019-07-09 at 06:33 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > Here is two modifition in this patch:
> > 1.bls->dpi0 and rdma1->dsi are differen usecase,
> > Split DISP_REG_CONFIG_DSI_SEL setting into anther usecase
> > 2.remove DISP_REG_CONFIG_DPI_SEL setting, DPI_SEL_IN_BLS is 0 and
> > this is same with hardware defautl setting,
> > 
> 
> You move 2 register setting out of the path from BLS to DPI0, does this
> path still work? Please make sure that all modification could work on
> all supported SoC.
> 
> Regards,
> CK
> 

DPI_SEL_IN_BLS is 0 and this is same with hardware default setting as
description in patch.
the removed sentence is useless.


> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> > index d015c1a..47b3e35 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> > @@ -400,10 +400,9 @@ static void mtk_ddp_sout_sel(void __iomem *config_regs,
> >  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> >  		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
> >  			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> > +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> >  		writel_relaxed(DSI_SEL_IN_RDMA,
> >  			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> > -		writel_relaxed(DPI_SEL_IN_BLS,
> > -			       config_regs + DISP_REG_CONFIG_DPI_SEL);
> >  	}
> >  }
> >  
> 
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
