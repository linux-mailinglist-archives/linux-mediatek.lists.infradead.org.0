Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8145D6D866
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jul 2019 03:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwLXgBP8CMRr4mIWDqYewgD3LfVtFfelq3put4brtcc=; b=C12E5Qb5gomE7k
	G0bCr4REwi4BDq85RrbNTdMtkED7ZbnFR/hLkkVKd2p7Qntvd5x9++4Ab4NUkCh+HcHeF7D4huX0y
	+aiOpNalesqjVGF0X6SH+cI5e0eAYyKakuVn5yiMAKjgn9EAIhymsTD7lDO+oKpd5dVzZjyESo1ha
	z3AsV/SVhR6U6n/JFmH9IUPE8iOxFo4xoXmQ4OWvoZMyB1aj+quCEII5s5E0k4UcK9EKu9HZck6LL
	hlh5a14Qswc/zSL7nbxUTaCquH6hUV+tOKTW8Kjl2jijoH9W/oysIrQu3zA4+SF5lXU1xZ9kSTSzF
	BgEjoKMlXkI5Lvy+9tAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHjE-0006Oy-1T; Fri, 19 Jul 2019 01:30:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHix-0006Fq-Md; Fri, 19 Jul 2019 01:30:17 +0000
X-UUID: 39d335d9b5504f6a88b2d7a6e33d4636-20190718
X-UUID: 39d335d9b5504f6a88b2d7a6e33d4636-20190718
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1358665008; Thu, 18 Jul 2019 17:30:05 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 18:30:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by mtkexhb01.mediatek.inc
 (172.21.101.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 19 Jul 2019 09:30:02 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 19 Jul 2019 09:30:01 +0800
Message-ID: <1563499801.3884.0.camel@mtksdaap41>
Subject: Re: [PATCH v1 10/11] drm/mediatek: direct include of drm.h in
 mtk_drm_gem.c
From: CK Hu <ck.hu@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>
Date: Fri, 19 Jul 2019 09:30:01 +0800
In-Reply-To: <20190718161507.2047-11-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-11-sam@ravnborg.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_183015_745281_F422372D 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Thierry Reding <treding@nvidia.com>, Daniel
 Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?ISO-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-07-18 at 18:15 +0200, Sam Ravnborg wrote:
> Do not rely on including drm.h from drm_file.h,
> as the include in drm_file.h will be dropped.
> 

Acked-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_gem.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> index 9434f88c6341..ca672f1d140d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/dma-buf.h>
>  
> +#include <drm/drm.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_prime.h>



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
