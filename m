Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026519EA85
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 16:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5syJhBdgafvm0Pi/DladC5eXtkimHP2brLhTRkUiaY=; b=Paihw1nPGdRXQ4
	bJugH0+eC2aR7uSVbMloC9U6SibXTawCzE+OJFrDQ6wQF6vt5QtzeTm8HfSLFbDLuuegdMJWkpJ/h
	P2O40EMSYzgKoGmzcss2OuOR3hSH7IP1QE4sEHuDLo3uClU1cum+Y/5ATfBVGzYfsf9CqoaxzmUjW
	fBVgz2CgFGaI6mQXZMNY/bKp6XoIlbbiSn0+Datt5PzqMKKIM+YF6w2jI3nFxHuhWyuGSsnU5PYJE
	DwYaifGhweuF00uuf8SEgwOKawzeteWOT/1zsTq0ZYK6kuA+nm5iTUQBf4pPggfaDDhUM2nlTeSJ4
	y/CF2JMm01Ju1KTVD9/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cDU-0007Z1-MI; Tue, 27 Aug 2019 14:13:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cDN-0007Vf-RX; Tue, 27 Aug 2019 14:12:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id i63so3209968wmg.4;
 Tue, 27 Aug 2019 07:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bqL76pZvJX6oxXXQMYVdqFr8OCaYeYlfpbidaI5nEcU=;
 b=C/7mUg700cIGcuEmzNg0M5Jyx5wYlsqiMFwDTZaw6KMsvbNPLNyYKqAq6/J0u8M1hX
 xZMh9fPQHbXrrVKCg3N4tWWZYYAdKxlrV3abgbvpIb0I48RwXboTzaQrniwsxOQa5Tob
 JvYZd8/Vdhr31OjSHOEFtuk+wukRm++dAbgKJHbDWimj2znYRum36YZeFwWmSwWH7QM/
 ji1c5zSoG0pWGRQUWI43Y36i27DfI1+Va8M6N5mIWKwkzMozdXcIpirt59L/AdXerR+d
 2vT0Xyya+j6lx1cmEw211OkPdYRrnM9i2lL2YKOsebq6114aJcu1rFQW2B96dskdpBUv
 1thw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bqL76pZvJX6oxXXQMYVdqFr8OCaYeYlfpbidaI5nEcU=;
 b=el0BCB/Rvn3Ct9/GkxzpwDHlYi3uvWZUIOyu0XQ6DXhXwcWFTWQEskn3P3SzPw5iUO
 VO1NK7VY+nnD/w9TBF7wHDXGBMT3fLx7xNjROs/5VdM3L5FUHhpNOfwi27CaldSSwdQT
 ko2fGhw8A0Xs70Vnl45HchiHJ0imHQxIBIeYWU1JfrlWWyKFD7HsyCiPg83TXcl5FOeC
 trOJ4+ES15fCOj0CzjcB/TtSkgpN4dO+xTZD7+Ru5doSCjR4fMo22vftiXl7pqzIIi9w
 uU9xMVpwBYvIdSqI8yKKFTMEB12/FTGhtlbYaQ94RhkVfEO2NXRvRs2Ds1RPZVVhiILR
 nOUQ==
X-Gm-Message-State: APjAAAV3qWI8Czg0bSajC21HgOVCm+nmBJFzhsYxk05w1khKj8wPcDLu
 3PiTX1zOiouM0dzQevnCxFP/RZJYeWVkIqNVqRw=
X-Google-Smtp-Source: APXvYqxeunwEgw3T9pLAlZGWyFQHK9xHYztkWAwvanfd/0EeNXB0met5PNNDtjMrHI5ddYGAReew7detAwbgKY/kKmY=
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr29120625wml.102.1566915171442; 
 Tue, 27 Aug 2019 07:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566845537.git.andrzej.p@collabora.com>
 <3c8b030bb89ec5aeafdb3c294cb6b3403d8c0601.1566845537.git.andrzej.p@collabora.com>
In-Reply-To: <3c8b030bb89ec5aeafdb3c294cb6b3403d8c0601.1566845537.git.andrzej.p@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 27 Aug 2019 10:12:38 -0400
Message-ID: <CADnq5_MVmw++Su+8mmpQSVhh7B7a3_FRw19JaRoPWv352tmPQA@mail.gmail.com>
Subject: Re: [PATCH RESEND 02/14] drm/radeon: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_071253_924320_E2F143C7 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Sean Paul <sean@poorly.run>, David Francis <David.Francis@amd.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Allison Randal <allison@lohutok.net>, CK Hu <ck.hu@mediatek.com>,
 Harry Wentland <harry.wentland@amd.com>, Uma Shankar <uma.shankar@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 Enrico Weigelt <info@metux.net>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Kukjin Kim <kgene@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 3:26 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Use the ddc pointer provided by the generic connector.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Acked-by: Alex Deucher <alexander.deucher@amd.com>

> ---
>  drivers/gpu/drm/radeon/radeon_connectors.c | 143 +++++++++++++++------
>  1 file changed, 107 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
> index c60d1a44d22a..62d37eddf99c 100644
> --- a/drivers/gpu/drm/radeon/radeon_connectors.c
> +++ b/drivers/gpu/drm/radeon/radeon_connectors.c
> @@ -1870,6 +1870,7 @@ radeon_add_atom_connector(struct drm_device *dev,
>         struct radeon_connector_atom_dig *radeon_dig_connector;
>         struct drm_encoder *encoder;
>         struct radeon_encoder *radeon_encoder;
> +       struct i2c_adapter *ddc = NULL;
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
> @@ -2344,6 +2391,7 @@ radeon_add_legacy_connector(struct drm_device *dev,
>         struct radeon_device *rdev = dev->dev_private;
>         struct drm_connector *connector;
>         struct radeon_connector *radeon_connector;
> +       struct i2c_adapter *ddc = NULL;
>         uint32_t subpixel_order = SubPixelNone;
>
>         if (connector_type == DRM_MODE_CONNECTOR_Unknown)
> @@ -2378,13 +2426,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
> @@ -2395,13 +2448,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
> @@ -2413,13 +2471,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
> @@ -2436,7 +2499,10 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
> @@ -2458,13 +2524,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
