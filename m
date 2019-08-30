Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C798DA301F
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 08:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbKCBfnC3qdN0cg5P/WMTjxfjqaz/t89ECzNtwesuto=; b=FsV6V/VeVAmZQi
	clU62wLXOqG+m8iTAOA62y5TUtbRNZpzHpwrS5vxs1K4Iy9TmXKlUiQWtdOGIR817FZaCJmpoZPX4
	muFErJVwnXvjdNs90yb15+JiLaGcAtBYyzyBmKAftdS+qSiiptdy/nzpCigjviLtI/BqKeGh7rdut
	Ip30AKfy5Zne0qlB2lpbSKBouYx0ZKBeHAfNN8cgAWF6qGUEov9HzGJyO1YzAsdOb6atQn8w3rxL5
	6xK5IlMximT8PDLqYgUVrknuk3Cm7DdMqhCgrOVNvPbNaSnTwqHKVZW2EJsQCctv5xgYtoXl7+CYm
	j8fA+0W42+r5htFWqOSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aYJ-0000G1-0X; Fri, 30 Aug 2019 06:38:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aY0-000058-MV; Fri, 30 Aug 2019 06:38:13 +0000
X-UUID: 666e83ed760c48708466104395e13dd5-20190829
X-UUID: 666e83ed760c48708466104395e13dd5-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 593901979; Thu, 29 Aug 2019 22:38:14 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:38:13 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 14:38:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:38:10 +0800
Message-ID: <1567147084.5942.24.camel@mtksdaap41>
Subject: Re: [PATCH v5, 32/32] drm/mediatek: add support for mediatek SOC
 MT8183
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 30 Aug 2019 14:38:04 +0800
In-Reply-To: <1567090254-15566-33-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-33-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3A53A6B57AF88A36690CA44703A5200786A336B147C0319BCC50C2D54FFA42BF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_233812_740267_B9D00594 
X-CRM114-Status: GOOD (  12.56  )
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

Hi, Yongqiang:

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add support for mediatek SOC MT8183
> 1.ovl_2l share driver with ovl
> 2.rdma1 share drive with rdma0, but fifo size is different
> 3.add mt8183 mutex private data, and mmsys private data
> 4.add mt8183 main and external path module for crtc create
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c  | 18 +++++++++
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c | 27 ++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c   | 69 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h   |  1 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 47 ++++++++++++++++++++++
>  5 files changed, 161 insertions(+), 1 deletion(-)
> 

[snip]

> @@ -613,6 +658,8 @@ static SIMPLE_DEV_PM_OPS(mtk_drm_pm_ops, mtk_drm_sys_suspend,
>  	  .data = &mt2712_mmsys_driver_data},
>  	{ .compatible = "mediatek,mt8173-mmsys",
>  	  .data = &mt8173_mmsys_driver_data},
> +	{ .compatible = "mediatek,mt8183-display",

This should be "mediatek,mt8183-mmsys".

Regards,
CK

> +	  .data = &mt8183_mmsys_driver_data},
>  	{ }
>  };
>  



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
