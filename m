Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F92B787AC
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 10:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuD4gdj9Y5Tfm/cB7NmPfHmmFEYqLXFecJJO5042+tE=; b=ou+entXq+DTP69
	y0KGzvYs+qosnNrerdaJ3tFQgJGS9MHchuBbrms2rCeyRFKJoeVIiLbkz1aYoSQAyVTwAgemR/LrQ
	WCCTGzhaykC497YTvod/KTkojbtJu/W0T6RaH4FW2A5e6bbYL68znwPZcV5+fY8SXew3hJWYO2v5d
	ZiIkh+Qrdf3C/wMeaKwxgN/dPRfbm9xoCLSqPOYIXO/jinuEc0eoWq36f+cRW2kEm5oHOSfsa/OOz
	B+CBsfgvStoF7Rt69zxRMBfHynWUKoKcpTSPvhkrQlnpjt7O86EBVMDKIx2WBrV+oQ4i57lJ1AHI1
	hS6RXJXO9x1DQ7rlWxBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1En-0003rQ-Lw; Mon, 29 Jul 2019 08:42:33 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1Ej-0003qy-Ne; Mon, 29 Jul 2019 08:42:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 01:38:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="190500548"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2019 01:38:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 02/24] drm: Add drm_connector_init() variant with ddc
In-Reply-To: <53f5ded2971235e5b63c9a3ed4ed8bccf10c78f2.1563960855.git.andrzej.p@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1563960855.git.andrzej.p@collabora.com>
 <53f5ded2971235e5b63c9a3ed4ed8bccf10c78f2.1563960855.git.andrzej.p@collabora.com>
Date: Mon, 29 Jul 2019 11:42:43 +0300
Message-ID: <875znlp6yk.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_014229_808720_154CBB0B 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "David
 \(ChunMing\) Zhou" <David1.Zhou@amd.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, linux-rockchip@lists.infradead.org,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019, Andrzej Pietrasiewicz <andrzej.p@collabora.com> wrote:
> Allow passing ddc adapter pointer to the init function. Even if
> drm_connector_init() sometime in the future decides to e.g. memset() all
> connector fields to zeros, the newly added function ensures that at its
> completion the ddc member of connector is correctly set.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 19 +++++++++++++++++++
>  include/drm/drm_connector.h     |  5 +++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 068d4b05f1be..06fbfc44fb48 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -296,6 +296,25 @@ int drm_connector_init(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drm_connector_init);
>  
> +int drm_connector_init_with_ddc(struct drm_device *dev,
> +				struct drm_connector *connector,
> +				const struct drm_connector_funcs *funcs,
> +				int connector_type,
> +				struct i2c_adapter *ddc)

Playing the devil's advocate here a bit. What if you end up adding
another thing you need to initialize like this? Are you going to need
three more functions to account for the combinations? Init with ddc,
with foo, with ddc and foo? So I generally frown upon interfaces like
this.

If everyone thinks this is the way to go, I'm not going to stand in the
way, but personally I'd rather switch over all of i915 to a new version
of drm_connector_init() that just takes another parameter.

BR,
Jani.


> +{
> +	int ret;
> +
> +	ret = drm_connector_init(dev, connector, funcs, connector_type);
> +	if (ret)
> +		return ret;
> +
> +	/* provide ddc symlink in sysfs */
> +	connector->ddc = ddc;
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_connector_init_with_ddc);
> +
>  /**
>   * drm_connector_attach_edid_property - attach edid property.
>   * @connector: the connector
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 33a6fff85fdb..937fda9c1374 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1410,6 +1410,11 @@ int drm_connector_init(struct drm_device *dev,
>  		       struct drm_connector *connector,
>  		       const struct drm_connector_funcs *funcs,
>  		       int connector_type);
> +int drm_connector_init_with_ddc(struct drm_device *dev,
> +				struct drm_connector *connector,
> +				const struct drm_connector_funcs *funcs,
> +				int connector_type,
> +				struct i2c_adapter *ddc);
>  void drm_connector_attach_edid_property(struct drm_connector *connector);
>  int drm_connector_register(struct drm_connector *connector);
>  void drm_connector_unregister(struct drm_connector *connector);

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
