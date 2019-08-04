Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCF80ACF
	for <lists+linux-mediatek@lfdr.de>; Sun,  4 Aug 2019 14:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onHkSp9ToQqJsdC543dONp+cATFsMSPd4pXuE89GxiQ=; b=FjBw5xne1HAtku
	koqAoqTldufLkLzynU02v0NjbWvWGlng5srOiIpZonwFh8typ4i1vjJLKJbfVAfbmyA4lUCx57Ud9
	eOf8rgNRZIPUcXNMXXgGTDNzm0OMBAX3IK95cXLTDY1FGuFTy+9VHU9LOZXXzZsdw8jf8yonXgYDV
	H7SzZDGT528ujnEd/3IKq0V0nI/QxVFOshrBLCPszSx1fTDrhJTpDNmUB6MuMJwmZ6JayngqP/n2y
	m3VNIK4F/1SS65o8xvuzjNQ5F8yWc0Nh0UCQaKeELZALaQEMEgtx5sSAn4wm9RAF3MtXkRr+88XY6
	7eQjBViymrqGxxvsw8xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huFFu-0006QF-0L; Sun, 04 Aug 2019 12:04:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huFFp-0006Pl-Vt; Sun, 04 Aug 2019 12:04:51 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 91C9ECC;
 Sun,  4 Aug 2019 14:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564920278;
 bh=2SwOpdn+JsWJJ3YIUkfnJDRn8tRwvwWSqCNnPU/obLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e2qrSDC4m+7linuh4U0tX4WoTZLFLbWRikNUExG6T9mFEmXNNOgQ6bdB98G52bGcP
 b1qK/sMG06Mg9KraeCPnsSRfKXGEgIfbHXSwjDSiMkTDA4/z/LMPkVy6upg6msNkM0
 Y/l4WVpFHToSRb14NgmDlrX6OGlG9rTwrzLOXtUM=
Date: Sun, 4 Aug 2019 15:04:37 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v6 01/24] drm: Add ddc link in sysfs created by
 drm_connector
Message-ID: <20190804120437.GB4984@pendragon.ideasonboard.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <d470def6cd661b777faeee67b5838a4623c4010e.1564161140.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d470def6cd661b777faeee67b5838a4623c4010e.1564161140.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_050450_383954_8E97D28E 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Jyri Sarha <jsarha@ti.com>, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andrzej,

Thank you for the patch, and sorry for the late review (I've been
travelling for the past few weeks).

On Fri, Jul 26, 2019 at 07:22:55PM +0200, Andrzej Pietrasiewicz wrote:
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

The first sentence isn't very clear. The rest is mixing "ddc adapter"
and "i2c adapter". How about the following ?

"When the connector carries DDC signals, this field points to the I2C
adapter connected to the DDC signals, if any. When this field is not
NULL a symbolic link is created in the connector's sysfs directory to
expose the I2C adapter used by the connector."

Should we also mention that the field isn't meant to be set directly,
but shall be set with drm_connector_init_with_ddc() ?

"This field shall not be set directly by drivers, use
drm_connector_init_with_ddc() instead."

I'm also slightly concerned about the lifetime of this pointer, and what
would happen if the I2C adapter disappears while the connector is still
exposed to userspace, but I suppose this isn't a new issue, existing
code likely suffers from this.

With the updated documentation,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	 */
> +	struct i2c_adapter *ddc;
> +
>  	/**
>  	 * @null_edid_counter: track sinks that give us all zeros for the EDID.
>  	 * Needed to workaround some HW bugs where we get all 0s

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
