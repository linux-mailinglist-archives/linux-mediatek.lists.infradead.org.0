Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2402BEAA
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG30uZK7w9iOJLsLfNeytcGoTa8H7o9e+jwjGnyO28w=; b=jcd3F/mL6ry3Fs
	HIT/uCuU9kxrdJHftYQyC7aO/i/9OSVziZtwsB7AhwzjsE4P3DhL3I9KRhW3/7cHWQq5Mg0rW5m/8
	xZ6sQC2Xn2g9n2A7clBt+jOon/MWgUFohZbKx727MFHb8PkzUfdwq3LUI+bmFz5LpSrKzV7z+hZAe
	uvG/PWfyPqTbYLf4hz7rZ6t9bGb1t2AHmtO2wKTn+sIf5WuezhaI92Tah8OnO/e18LAX41hxAKYm3
	9EhCPY8fQzqXQkhm/PImjyrvSq4Ub69kZ5p7GR2U+TQoz/+STlFiJZekQKDajXHo7yF0YrVvaY+yQ
	ikQ23uDnwbz1OfTdE4OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVUmk-0002LB-QX; Tue, 28 May 2019 05:36:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUmh-0002Kc-I3; Tue, 28 May 2019 05:36:28 +0000
X-UUID: 79f525399f594e9dad2395890f38c957-20190527
X-UUID: 79f525399f594e9dad2395890f38c957-20190527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1926506958; Mon, 27 May 2019 21:36:02 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 22:36:01 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 13:35:59 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 13:35:59 +0800
Message-ID: <1559021759.15879.2.camel@mtksdaap41>
Subject: Re: [PATCH v2 24/25] drm/mediatek: respect page offset for PRIME
 mmap calls
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Tue, 28 May 2019 13:35:59 +0800
In-Reply-To: <1555403634.11519.11.camel@mtksdaap41>
References: <1553667561-25447-1-git-send-email-yongqiang.niu@mediatek.com>
 <1553667561-25447-25-git-send-email-yongqiang.niu@mediatek.com>
 <1555403634.11519.11.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_223627_600849_FDCDB874 
X-CRM114-Status: GOOD (  15.26  )
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

On Tue, 2019-04-16 at 16:33 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Wed, 2019-03-27 at 14:19 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > Respect page offset for PRIME mmap calls
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
> >  drivers/gpu/drm/mediatek/mtk_drm_gem.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> > index c230237..524e494 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> > @@ -144,7 +144,6 @@ static int mtk_drm_gem_object_mmap(struct drm_gem_object *obj,
> >  	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
> >  	 */
> >  	vma->vm_flags &= ~VM_PFNMAP;
> > -	vma->vm_pgoff = 0;
> >  
> >  	ret = dma_mmap_attrs(priv->dma_dev, vma, mtk_gem->cookie,
> >  			     mtk_gem->dma_addr, obj->size, mtk_gem->dma_attrs);
> > @@ -183,6 +182,12 @@ int mtk_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
> >  
> >  	obj = vma->vm_private_data;
> >  
> > +	/*
> > +	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
> > +	 * whole buffer from the start.
> > +	 */
> > +	vma->vm_pgoff = 0;
> > +
> >  	return mtk_drm_gem_object_mmap(obj, vma);
> >  }
> >  
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
