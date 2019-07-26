Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C9B77212
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 21:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Olf0rBQvTKK/IwzQp0Z4QdpvwtM3zKwL1xp5Swqvu4E=; b=eJzfTrpqikovsp
	S5xldXZumHa0oZNrzsi96/Qy0Y8jXTy1ZPmSPEZ8Ga/TBXtciQqcQ6n3LmQMdz7qPO1gg4+T2mTNj
	Z+9x2om4DuedhxejMf52kXLnwfOJSJ/8doD7/o80IUpyihny4Ke8713qFk96qT1jZaUMGQ484jIZ5
	YfzsQaWzsHeWzwPGrKkl/O/0NoqKJEaPlffJnmnSm4R62zDcKsQFaZWv5D+BILH2VsYclRa5tQOWq
	kYAeMpo7QbUvsO5mAXU+RPcf46WCBguSlndMSgtVO7GnhFcjaCZwZbo9sM+g/hJsS3nIgAnKFJ5Dc
	S0Rlb2PDQ2Z7cOkA7DhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5rd-0003sf-Gw; Fri, 26 Jul 2019 19:26:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5rY-0003sA-I9; Fri, 26 Jul 2019 19:26:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so52297913wrm.8;
 Fri, 26 Jul 2019 12:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i1x/W9cvqCqdKrAsLFfUMTzxaOba982qBR15ZIh1B5I=;
 b=jG0AC1jUs0xNcH4DibAkUm2JD1wpQ0M9l9jChVeKARiUeL+hQXheXALWiO0ql70mHL
 OMSiJyiotBhZyqX8gqAE4Da4VkpUoAE2vXi1sitZ06FWNfIrjYlg19s/5cAAAZMgWmnv
 ZFXYVV367/8FjZKL2+ArUECiFAa5monJyIlM8D1TT2gcqyvCneVfmkRmVd363FyD7Bhp
 6rhdhTqSwBBmt7VlcBWSGl/VVk4mxoMlfqtpLJc2fpBQeBrTcO+XrsMPTu0K7AtlTPFg
 vonafTRqVIUPLkylub2pdcBcSm837SHiPU4llas3rBrPP3OkJhYcTDOTFORy565tMFE9
 cQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i1x/W9cvqCqdKrAsLFfUMTzxaOba982qBR15ZIh1B5I=;
 b=gQmYncTgGmwHvrkXTfWdPvpHbvhfklL9vsdKeIS+wZWp0ipHEvukp/bUP7jVfiGOYF
 Rgvnde7O3d/E2+nWC6t0qQjpuwVFMxI8BAkTfkmC9KMAocqVc1G0RKPvMIHA55IKxddm
 S3TiGRjPThMobFDif6NKR1C1YKV4f4Fq+kxR2g1vwLtNN1/pTqBI6Q/jzHGv1dxQOkix
 XqpCNzb6lOk3YQvnj+2jUlk0ZcTUsxt7IbY+ztcjDT98McIg0MYr3/Pzfl0w7E48Nh0l
 Cp0Tk9Q4P2DShMWKDZ9F6Cilb329D2Tl2RXSG76vhGyNnsihP2Y5r0JrVshzxIZh2IeF
 W+cQ==
X-Gm-Message-State: APjAAAXoP7zRJGAylunnwmYAfYf1q4Dm1f0YyFvwdYfso6vNUsUOqzAl
 8XDshW7XWK2tpqW+qin4vlCcifGsX7i5+i9azDo=
X-Google-Smtp-Source: APXvYqwA/o+MX9TGuDPuDF4wOmaeCx1B0hxv0+aFhj7/3qKVNXuzevNZWXiiE8cdopOA3PW3GfdO1ovHJ72TzgzqOXA=
X-Received: by 2002:adf:dfc5:: with SMTP id q5mr706564wrn.142.1564169202189;
 Fri, 26 Jul 2019 12:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <0836f34238730afce3f4d6b13f5cf04f832b668a.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <0836f34238730afce3f4d6b13f5cf04f832b668a.1564161140.git.andrzej.p@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 26 Jul 2019 15:26:30 -0400
Message-ID: <CADnq5_PK91AGskWg+2GqyVk+fdq4XC6twdJ3bJvXTzjp5isxmw@mail.gmail.com>
Subject: Re: [PATCH v6 23/24] drm/radeon: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_122644_636949_DA5C08BF 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <mripard@kernel.org>, "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Sam Ravnborg <sam@ravnborg.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shashank Sharma <shashank.sharma@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, Allison Randal <allison@lohutok.net>,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Enrico Weigelt <info@metux.net>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Huang Rui <ray.huang@amd.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sandy Huang <hjc@rock-chips.com>, Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 1:29 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Use the ddc pointer provided by the generic connector.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Acked-by: Alex Deucher <alexander.deucher@amd.com>

> ---
>  drivers/gpu/drm/radeon/radeon_connectors.c | 142 +++++++++++++++------
>  1 file changed, 106 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
> index c60d1a44d22a..b3ad8d890801 100644
> --- a/drivers/gpu/drm/radeon/radeon_connectors.c
> +++ b/drivers/gpu/drm/radeon/radeon_connectors.c
> @@ -1870,6 +1870,7 @@ radeon_add_atom_connector(struct drm_device *dev,
>         struct radeon_connector_atom_dig *radeon_dig_connector;
>         struct drm_encoder *encoder;
>         struct radeon_encoder *radeon_encoder;
> +       struct i2c_adapter *ddc;
>         uint32_t subpixel_order = SubPixelNone;
>         bool shared_ddc = false;
>         bool is_dp_bridge = false;
> @@ -1947,17 +1948,21 @@ radeon_add_atom_connector(struct drm_device *dev,
>                 radeon_connector->con_priv = radeon_dig_connector;
>                 if (i2c_bus->valid) {
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                       if (radeon_connector->ddc_bus)
> +                       if (radeon_connector->ddc_bus) {
>                                 has_aux = true;
> -                       else
> +                               ddc = &radeon_connector->ddc_bus->adapter;
> +                       } else {
>                                 DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       }
>                 }
>                 switch (connector_type) {
>                 case DRM_MODE_CONNECTOR_VGA:
>                 case DRM_MODE_CONNECTOR_DVIA:
>                 default:
> -                       drm_connector_init(dev, &radeon_connector->base,
> -                                          &radeon_dp_connector_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_dp_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&radeon_connector->base,
>                                                  &radeon_dp_connector_helper_funcs);
>                         connector->interlace_allowed = true;
> @@ -1979,8 +1984,10 @@ radeon_add_atom_connector(struct drm_device *dev,
>                 case DRM_MODE_CONNECTOR_HDMIA:
>                 case DRM_MODE_CONNECTOR_HDMIB:
>                 case DRM_MODE_CONNECTOR_DisplayPort:
> -                       drm_connector_init(dev, &radeon_connector->base,
> -                                          &radeon_dp_connector_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_dp_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&radeon_connector->base,
>                                                  &radeon_dp_connector_helper_funcs);
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2027,8 +2034,10 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         break;
>                 case DRM_MODE_CONNECTOR_LVDS:
>                 case DRM_MODE_CONNECTOR_eDP:
> -                       drm_connector_init(dev, &radeon_connector->base,
> -                                          &radeon_lvds_bridge_connector_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_lvds_bridge_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&radeon_connector->base,
>                                                  &radeon_dp_connector_helper_funcs);
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2042,13 +2051,18 @@ radeon_add_atom_connector(struct drm_device *dev,
>         } else {
>                 switch (connector_type) {
>                 case DRM_MODE_CONNECTOR_VGA:
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                                 if (!radeon_connector->ddc_bus)
>                                         DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_vga_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                         radeon_connector->dac_load_detect = true;
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       rdev->mode_info.load_detect_property,
> @@ -2067,13 +2081,18 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         connector->doublescan_allowed = true;
>                         break;
>                 case DRM_MODE_CONNECTOR_DVIA:
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                                 if (!radeon_connector->ddc_bus)
>                                         DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_vga_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                         radeon_connector->dac_load_detect = true;
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       rdev->mode_info.load_detect_property,
> @@ -2098,13 +2117,18 @@ radeon_add_atom_connector(struct drm_device *dev,
>                                 goto failed;
>                         radeon_dig_connector->igp_lane_info = igp_lane_info;
>                         radeon_connector->con_priv = radeon_dig_connector;
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                                 if (!radeon_connector->ddc_bus)
>                                         DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_dvi_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       rdev->mode_info.coherent_mode_property,
> @@ -2155,13 +2179,18 @@ radeon_add_atom_connector(struct drm_device *dev,
>                                 goto failed;
>                         radeon_dig_connector->igp_lane_info = igp_lane_info;
>                         radeon_connector->con_priv = radeon_dig_connector;
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                                 if (!radeon_connector->ddc_bus)
>                                         DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_dvi_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       rdev->mode_info.coherent_mode_property,
>                                                       1);
> @@ -2205,15 +2234,20 @@ radeon_add_atom_connector(struct drm_device *dev,
>                                 goto failed;
>                         radeon_dig_connector->igp_lane_info = igp_lane_info;
>                         radeon_connector->con_priv = radeon_dig_connector;
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_dp_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (radeon_connector->ddc_bus)
> +                               if (radeon_connector->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_dp_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       rdev->mode_info.coherent_mode_property,
> @@ -2255,15 +2289,20 @@ radeon_add_atom_connector(struct drm_device *dev,
>                                 goto failed;
>                         radeon_dig_connector->igp_lane_info = igp_lane_info;
>                         radeon_connector->con_priv = radeon_dig_connector;
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_edp_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (radeon_connector->ddc_bus)
> +                               if (radeon_connector->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_edp_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
>                                                       DRM_MODE_SCALE_FULLSCREEN);
> @@ -2274,7 +2313,10 @@ radeon_add_atom_connector(struct drm_device *dev,
>                 case DRM_MODE_CONNECTOR_SVIDEO:
>                 case DRM_MODE_CONNECTOR_Composite:
>                 case DRM_MODE_CONNECTOR_9PinDIN:
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_tv_connector_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_tv_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_tv_connector_helper_funcs);
>                         radeon_connector->dac_load_detect = true;
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2294,13 +2336,18 @@ radeon_add_atom_connector(struct drm_device *dev,
>                                 goto failed;
>                         radeon_dig_connector->igp_lane_info = igp_lane_info;
>                         radeon_connector->con_priv = radeon_dig_connector;
> -                       drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
> -                       drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                                 if (!radeon_connector->ddc_bus)
>                                         DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &radeon_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                                   &radeon_lvds_connector_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
>                                                       DRM_MODE_SCALE_FULLSCREEN);
> @@ -2378,13 +2425,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
>
>         switch (connector_type) {
>         case DRM_MODE_CONNECTOR_VGA:
> -               drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
> -               drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                 if (i2c_bus->valid) {
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               ddc = &radeon_connector->ddc_bus->adapter;
>                 }
> +               drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                           &radeon_vga_connector_funcs,
> +                                           connector_type,
> +                                           ddc);
> +               drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                 radeon_connector->dac_load_detect = true;
>                 drm_object_attach_property(&radeon_connector->base.base,
>                                               rdev->mode_info.load_detect_property,
> @@ -2395,13 +2447,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                 connector->doublescan_allowed = true;
>                 break;
>         case DRM_MODE_CONNECTOR_DVIA:
> -               drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
> -               drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                 if (i2c_bus->valid) {
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               ddc = &radeon_connector->ddc_bus->adapter;
>                 }
> +               drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                           &radeon_vga_connector_funcs,
> +                                           connector_type,
> +                                           ddc);
> +               drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                 radeon_connector->dac_load_detect = true;
>                 drm_object_attach_property(&radeon_connector->base.base,
>                                               rdev->mode_info.load_detect_property,
> @@ -2413,13 +2470,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                 break;
>         case DRM_MODE_CONNECTOR_DVII:
>         case DRM_MODE_CONNECTOR_DVID:
> -               drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
> -               drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                 if (i2c_bus->valid) {
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               ddc = &radeon_connector->ddc_bus->adapter;
>                 }
> +               drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                           &radeon_dvi_connector_funcs,
> +                                           connector_type,
> +                                           ddc);
> +               drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                 if (connector_type == DRM_MODE_CONNECTOR_DVII) {
>                         radeon_connector->dac_load_detect = true;
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2436,7 +2498,10 @@ radeon_add_legacy_connector(struct drm_device *dev,
>         case DRM_MODE_CONNECTOR_SVIDEO:
>         case DRM_MODE_CONNECTOR_Composite:
>         case DRM_MODE_CONNECTOR_9PinDIN:
> -               drm_connector_init(dev, &radeon_connector->base, &radeon_tv_connector_funcs, connector_type);
> +               drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                           &radeon_tv_connector_funcs,
> +                                           connector_type,
> +                                           ddc);
>                 drm_connector_helper_add(&radeon_connector->base, &radeon_tv_connector_helper_funcs);
>                 radeon_connector->dac_load_detect = true;
>                 /* RS400,RC410,RS480 chipset seems to report a lot
> @@ -2458,13 +2523,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                 connector->doublescan_allowed = false;
>                 break;
>         case DRM_MODE_CONNECTOR_LVDS:
> -               drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
> -               drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
>                 if (i2c_bus->valid) {
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               ddc = &radeon_connector->ddc_bus->adapter;
>                 }
> +               drm_connector_init_with_ddc(dev, &radeon_connector->base,
> +                                           &radeon_lvds_connector_funcs,
> +                                           connector_type,
> +                                           ddc);
> +               drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
>                 drm_object_attach_property(&radeon_connector->base.base,
>                                               dev->mode_config.scaling_mode_property,
>                                               DRM_MODE_SCALE_FULLSCREEN);
> --
> 2.17.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
