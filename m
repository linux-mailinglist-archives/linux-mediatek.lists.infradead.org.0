Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8529166B28
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Feb 2020 00:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RljpQVZFoDdC8fysAoXymMdnSZ09vOeMRRtD6WfIiZw=; b=PUB+W4XriXpxgK
	rUFDbLbra/CclKp+OHXXuIMUiPG6gM5U/KWEBKjgDJdko04nSuna1YH3d21ozb4DpQnF9MvWbyPdS
	sIp4+Iplsuy+LsXW9Rmy+lw+QHmyDckwIMe2wpDcZUEBh3yMtBTRekSgW1z7C390TW4oOl9pzJTe3
	4LwZlTmeZhj7l4se1p2notm76F2ZAnTVR2Icl5pS00H29rG92BML+c16RCkPOE4JYtuWk7K0cCpU0
	wU7D1xS4dVx8u8GCu/EjZTDX9J0wFRDuEwMOfo0zSFnVwZxcvdJK5vH8v7lx9aFN/uUc3LhCiO/fB
	xd/PJF9RVuqtsUJ86Rsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4vYU-0007sm-Kf; Thu, 20 Feb 2020 23:48:30 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4vYF-0007k0-KU; Thu, 20 Feb 2020 23:48:15 +0000
Subject: Re: [PATCH v8 1/6] drm/mediatek: Use regmap for register access
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
 <20200220172147.919996-2-enric.balletbo@collabora.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0b2046b9-90de-c894-7502-993b5df12e7a@infradead.org>
Date: Thu, 20 Feb 2020 15:48:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220172147.919996-2-enric.balletbo@collabora.com>
Content-Language: en-US
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2/20/20 9:21 AM, Enric Balletbo i Serra wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The mmsys memory space is shared between the drm and the
> clk driver. Use regmap to access it.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v8: None
> Changes in v7:
> - Add R-by from CK
> 
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 50 +++++++++++--------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 13 ++-----
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  2 +-
>  5 files changed, 30 insertions(+), 43 deletions(-)

Hi. Just a quick question:

Do you need to select REGMAP or one of its derivatives to make sure
that the proper interfaces are available for this driver?

thanks.
-- 
~Randy


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
