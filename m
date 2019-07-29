Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1085D78845
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 11:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbzIO42h9cr8tZAqYdH9TWJrXEdtnZ+8/ucEtndr968=; b=Ec2kDP7fkmHQcD
	HAtDNg/uDGqbcjH6HPcIBnvqYRrX00ZE7NZ6AU4OTu3WZIlB7ilpfMclb6Rh0IOY4nhkhSX5vzT3k
	1pYaNGuoFRaIxypzZkWTONRLfncTdIUqg7hBCMgDozRtDEk2Qt0OPssqYHtUyw+C55iRMH+5fk+Tk
	TS3pXyjJ4fk/n+ahB8bE3CZa7rbXq7CCICpRN0FCE0WknSp2f/CmXfK192DAj6mpVigIxzkSVgcTE
	H1l9XUO4ITGh1sdjJcepfk2lgVBmttSgTXvs3xHYMn7emasYr4Fzc5bDvRZvGDkKrqgGhUx/z/8/A
	9966kX/s/Ng8BISlPRww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1ra-0003v5-Qp; Mon, 29 Jul 2019 09:22:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1rX-0003rV-KS
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 09:22:36 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hs1pz-0007uA-8k; Mon, 29 Jul 2019 11:20:59 +0200
Message-ID: <1564392057.7633.2.camel@pengutronix.de>
Subject: Re: [PATCH v6 10/24] drm/imx: imx-ldb: Provide ddc symlink in
 connector's sysfs
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 dri-devel@lists.freedesktop.org
Date: Mon, 29 Jul 2019 11:20:57 +0200
In-Reply-To: <bcfe39a0333df951a7d160b3a946c2c32e7eac7f.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <bcfe39a0333df951a7d160b3a946c2c32e7eac7f.1564161140.git.andrzej.p@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_022235_671249_9541E8BE 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Armijn Hemel <armijn@tjaldur.nl>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "David
 \(ChunMing\) Zhou" <David1.Zhou@amd.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, Jyri Sarha <jsarha@ti.com>,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 intel-gfx@lists.freedesktop.org, Shashank Sharma <shashank.sharma@intel.com>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-07-26 at 19:23 +0200, Andrzej Pietrasiewicz wrote:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

Thanks!

regards
Philipp

> ---
>  drivers/gpu/drm/imx/imx-ldb.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
> index de62a4cd4827..db461b6a257f 100644
> --- a/drivers/gpu/drm/imx/imx-ldb.c
> +++ b/drivers/gpu/drm/imx/imx-ldb.c
> @@ -462,9 +462,10 @@ static int imx_ldb_register(struct drm_device *drm,
>  		 */
>  		drm_connector_helper_add(&imx_ldb_ch->connector,
>  				&imx_ldb_connector_helper_funcs);
> -		drm_connector_init(drm, &imx_ldb_ch->connector,
> -				&imx_ldb_connector_funcs,
> -				DRM_MODE_CONNECTOR_LVDS);
> +		drm_connector_init_with_ddc(drm, &imx_ldb_ch->connector,
> +					    &imx_ldb_connector_funcs,
> +					    DRM_MODE_CONNECTOR_LVDS,
> +					    imx_ldb_ch->ddc);
>  		drm_connector_attach_encoder(&imx_ldb_ch->connector, encoder);
>  	}
>  

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
