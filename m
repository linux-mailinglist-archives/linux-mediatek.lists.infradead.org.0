Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562467D841
	for <lists+linux-mediatek@lfdr.de>; Thu,  1 Aug 2019 11:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivDqQfKYTCWi6KRmId1gU0ACiDHUd1o8Sds3fQmajRU=; b=RIYo8wdCeYnrqJ
	jsjlTUbwD2TlnI9YchgFOd/1Xhex2nyG/i6hm13Blak5y0mepXUHZy1jmlvr/LbTbPn1II3xKKf2s
	kBQiOmvW0yHQN5/zGb0gUliz2FmBx3O0V6yLz7swJ+NzaNz5Th4gkF1vn1mUAkqvJFBZPWb4Z3Fl6
	oh8uOR5p98UZkWm9lM82WTuiNc7zcARgsM+f6/HBSnDlnNGQDjdXWr2hv9BQKxRJkreDmGQ2WbkIe
	JczamlQ/VCrV2xsPe6NDBVIdVv3qRrBtuTWIWSEq5Jjy5wqtiVMaoilBL/S9VYu/rAZD2RYDtHJpz
	SxRcf56O+ULed8q2Yfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht74f-00014M-Eg; Thu, 01 Aug 2019 09:08:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht74c-00013v-Fr
 for linux-mediatek@lists.infradead.org; Thu, 01 Aug 2019 09:08:35 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ht735-0004xe-Fz; Thu, 01 Aug 2019 11:06:59 +0200
Message-ID: <1564650408.7439.11.camel@pengutronix.de>
Subject: Re: [PATCH 07/13] drm/mediatek: Provide ddc symlink in hdmi
 connector sysfs directory
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 dri-devel@lists.freedesktop.org
Date: Thu, 01 Aug 2019 11:06:48 +0200
In-Reply-To: <db323a3cdfd643cef65d796e959c16a14f105920.1564591626.git.andrzej.p@collabora.com>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
 <cover.1564591626.git.andrzej.p@collabora.com>
 <db323a3cdfd643cef65d796e959c16a14f105920.1564591626.git.andrzej.p@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_020834_528452_51934773 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Eric Anholt <eric@anholt.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Emil Velikov <emil.velikov@collabora.com>, "David \(ChunMing\)
 Zhou" <David1.Zhou@amd.com>, Mario Kleiner <mario.kleiner.de@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-msm@vger.kernel.org, CK Hu <ck.hu@mediatek.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Shashank Sharma <shashank.sharma@intel.com>, linux-tegra@vger.kernel.org,
 Leo Li <sunpeng.li@amd.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-31 at 18:58 +0200, Andrzej Pietrasiewicz wrote:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

> ---
>  drivers/gpu/drm/mediatek/mtk_hdmi.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index ce91b61364eb..f419765b7cc0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -1299,9 +1299,10 @@ static int mtk_hdmi_bridge_attach(struct drm_bridge *bridge)
>  	struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);
>  	int ret;
>  
> -	ret = drm_connector_init(bridge->encoder->dev, &hdmi->conn,
> -				 &mtk_hdmi_connector_funcs,
> -				 DRM_MODE_CONNECTOR_HDMIA);
> +	ret = drm_connector_init_with_ddc(bridge->encoder->dev, &hdmi->conn,
> +					  &mtk_hdmi_connector_funcs,
> +					  DRM_MODE_CONNECTOR_HDMIA,
> +					  hdmi->ddc_adpt);
>  	if (ret) {
>  		dev_err(hdmi->dev, "Failed to initialize connector: %d\n", ret);
>  		return ret;

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
