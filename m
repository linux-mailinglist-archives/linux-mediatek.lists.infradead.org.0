Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257A75F29
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 08:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6zs00f1nDEbYDHCF40iSd46jX1T6XczYkP5Z72y8AQ=; b=C67sqhGBKKDALM
	terKruhRqxQPokF4MTUVSYHOlpPTkoH/7oHqNMUlSD/ej7j+Si1ycnZ12NPPZ20T1O5l4ZsjqhG3l
	lf1I1rojnYNQDPvp7FA2LRwZMEvYOYej9amytnZBm9tpryihiiUvYKKUF/5wwNnqJXmJPhHvpmm0Q
	0Ty9WNWIyJFLc1ERhfRR9QSJcBN8GYPEIGs4UlX0mfzuQokFLUlE0urd0QKp+2k8YS+7klgNmAsyF
	3boMadyKHUPaR1mABeBPrSpdVlfAAumOr2cKt+yuTkKKPGG7Ol0MV973nVv7jharJgIpj7ZJGnHyb
	RuRmdGurPWFcJlyqmuwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqtrm-0001Ss-CP; Fri, 26 Jul 2019 06:38:10 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqtri-0001SP-F0; Fri, 26 Jul 2019 06:38:08 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 318B080349;
 Fri, 26 Jul 2019 08:38:01 +0200 (CEST)
Date: Fri, 26 Jul 2019 08:37:59 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v5 01/24] drm: Include ddc adapter pointer in struct
 drm_connector
Message-ID: <20190726063759.GB6443@ravnborg.org>
References: <cover.1563960855.git.andrzej.p@collabora.com>
 <e82d6aca4f8abc95834c8a36c101d153518bb1ac.1563960855.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e82d6aca4f8abc95834c8a36c101d153518bb1ac.1563960855.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QX4gbG5DAAAA:8
 a=hD80L64hAAAA:8 a=lhJ_FgXY410baidqpgAA:9 a=CjuIK1q_8ugA:10
 a=AbAUZ8qAyYyZVLSsDulk:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_233806_851706_ECC335F6 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 intel-gfx@lists.freedesktop.org, Shashank Sharma <shashank.sharma@intel.com>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andrzej.

Patch looks good, but one kernel-doc detail.

On Wed, Jul 24, 2019 at 03:59:23PM +0200, Andrzej Pietrasiewicz wrote:
> Add generic code which creates symbolic links in sysfs, pointing to ddc
> interface used by a particular video output. For example:
> 
> ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> 	-> ../../../../soc/13880000.i2c/i2c-2
> 
> This makes it easy for user to associate a display with its ddc adapter
> and use e.g. ddcutil to control the chosen monitor.
> 
> This patch adds an i2c_adapter pointer to struct drm_connector. Particular
> drivers can then use it instead of using their own private instance. If a
> connector contains a ddc, then create a symbolic link in sysfs.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
> ---
>  drivers/gpu/drm/drm_sysfs.c |  8 ++++++++
>  include/drm/drm_connector.h | 11 +++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index ad10810bc972..e962a9d45f7e 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -14,6 +14,7 @@
>  #include <linux/err.h>
>  #include <linux/export.h>
>  #include <linux/gfp.h>
> +#include <linux/i2c.h>
>  #include <linux/kdev_t.h>
>  #include <linux/slab.h>
>  
> @@ -294,6 +295,9 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
>  	/* Let userspace know we have a new connector */
>  	drm_sysfs_hotplug_event(dev);
>  
> +	if (connector->ddc)
> +		return sysfs_create_link(&connector->kdev->kobj,
> +				 &connector->ddc->dev.kobj, "ddc");
>  	return 0;
>  }
>  
> @@ -301,6 +305,10 @@ void drm_sysfs_connector_remove(struct drm_connector *connector)
>  {
>  	if (!connector->kdev)
>  		return;
> +
> +	if (connector->ddc)
> +		sysfs_remove_link(&connector->kdev->kobj, "ddc");
> +
>  	DRM_DEBUG("removing \"%s\" from sysfs\n",
>  		  connector->name);
>  
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 4c30d751487a..33a6fff85fdb 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -41,6 +41,7 @@ struct drm_property;
>  struct drm_property_blob;
>  struct drm_printer;
>  struct edid;
> +struct i2c_adapter;
>  
>  enum drm_connector_force {
>  	DRM_FORCE_UNSPECIFIED,
> @@ -1311,6 +1312,16 @@ struct drm_connector {
>  	 * [0]: progressive, [1]: interlaced
>  	 */
>  	int audio_latency[2];
> +
> +	/**
> +	 * @ddc: associated ddc adapter.
> +	 * A connector usually has its associated ddc adapter. If a driver uses
> +	 * this field, then an appropriate symbolic link is created in connector
> +	 * sysfs directory to make it easy for the user to tell which i2c
> +	 * adapter is for a particular display.
> +	 */
> +	struct i2c_adapter *ddc;

To help the reader could you add in the above a reference to
drm_connector_init_with_ddc() sp the reader is told how to init this
field.

Either add it in PATCH 2 - or merge patch 1 and 2.

	Sam

> +
>  	/**
>  	 * @null_edid_counter: track sinks that give us all zeros for the EDID.
>  	 * Needed to workaround some HW bugs where we get all 0s
> -- 
> 2.17.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
