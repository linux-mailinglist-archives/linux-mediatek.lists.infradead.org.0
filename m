Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF647721B
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 21:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iBKIPgtw420UJP8iP0sHPgREFZ3Yl6TwfqkIZ1VQ74=; b=k+ZzFZ74EBPYl+
	aZ9AJmcsYpFRJUvz/bGh4jwEFqvV7Vq+g9CCWr3S77LuQpjcIBdRl/jVe8pz1mkTKKV3dKrTBXWL1
	OigAAl7ZNfaq4S3yGv56sUa1feF8d/3+YnC+55OL3JZsR9yDbz8CvHfxz0rT+vbdZKFbw+091HZCo
	chSqzHpkzw6V0ZbxhV0Jx3wfE9V4yNax0u8KoIhkz15Hg+hyA1wAaePVdEeZMU4Uanhqx4Ehc25wM
	0N9YQPfRDnVN6DLyDwT+Y3jeqw5eMJaRUlh87uxj8myKch+dU5Tt7/KE1RwJQ1HZSxnVpnwcPu1sz
	g8pgIX4kWEktdCKR3Zhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5tl-00041S-9Y; Fri, 26 Jul 2019 19:29:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5tf-00040N-QL; Fri, 26 Jul 2019 19:28:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id y4so55536840wrm.2;
 Fri, 26 Jul 2019 12:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WlhVURpZ/hpWKcZg6G7ubX3iip3/WarcwEPBASycLiI=;
 b=YGHzDAkDZGIIwKGCOA2L4uxQ1GrG4EGX0d3KOEE85zGlmZlXlJeQbJeKId2XJqrTZ4
 R4G05Dvuof3wZ3C8+eSkgMqFe/B9RYjsvsbFBjmRx57ZAsZFz0GibFjNW5jpz2Ehp2vn
 a1kuqoinV1PirvY3DAWvI6N67fz/ZAaoFULIkptRfLf26vYaI8qNf34ncqwlAqFYigKA
 fWGxjbG7XvbvaUfwe2PjweKMucOzsbNGmoxbVoJxANvCEvIrJdnSPsC1PNv2KnORXzbJ
 RjwM/LCAj3/jYLw7hPeHge6IjV4VNi4xp52l9fA5dICljkLwVq8zF9QS2MNN+9LB2ytM
 w9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WlhVURpZ/hpWKcZg6G7ubX3iip3/WarcwEPBASycLiI=;
 b=T0AgwuCT7KU7YTG68EorvewoR7UecdY69Ic89SJAKTaou/5QQlGqhPjXp5EY62F34+
 SizPKFUiFyioHNcB85gNNYhRHK2vRAYqah5xqi50fmMd6H2Z507bCOv8iL388bzK4q9w
 5Pyhkk20nlqRtmlpwChz9J6Gj/+E4nB+YkZQYpnM7ANLu6La25IXD22tndOmFL3jx0SJ
 0A9wmhzWq81Ybbt8JhvaeoFPlUgJkBRN4/RGELTLo701unuR1vIBjy1DjaboAhmohdvo
 VXsmIBiq1nIRLPGThDDNAR1fg9h9CpRIvUBqGCbFciF2hPQThOKJ33AqJxXXW9fsSvab
 YrjA==
X-Gm-Message-State: APjAAAUR15SfizxgDCMwZv4fWFwXIF4uEBaujJTbHXvDeXTgc71anAgr
 Wb2qYWV/UXTCP3VtdHyJzbRuFg01+BGyWMScYYE=
X-Google-Smtp-Source: APXvYqzpcFgYjr3nPHTNVylfPY0NzxJ0wYUeL465LJY8jLSGrpOSyOFC/q9RynZjA+7mDtyLVkXX+dHOYnQYjA1Sdy4=
X-Received: by 2002:adf:dfc5:: with SMTP id q5mr712193wrn.142.1564169334061;
 Fri, 26 Jul 2019 12:28:54 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <7fee0fa0d0f77af6595d283d5f3ae5d551475821.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <7fee0fa0d0f77af6595d283d5f3ae5d551475821.1564161140.git.andrzej.p@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 26 Jul 2019 15:28:42 -0400
Message-ID: <CADnq5_O1B59Q+68fJgtf_bn_=WQ9yrVPq-V5tL1VQ3+vzgf1Zw@mail.gmail.com>
Subject: Re: [PATCH v6 22/24] drm/amdgpu: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_122855_862029_DA43A2D0 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 Sandy Huang <hjc@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
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
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, Allison Randal <allison@lohutok.net>,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Huang Rui <ray.huang@amd.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 1:28 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Use the ddc pointer provided by the generic connector.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Note that this only covers the legacy display code.  The new DC
display code also needs to be converted.  See:
drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
With those updated as well:
Acked-by: Alex Deucher <alexander.deucher@amd.com>

> ---
>  .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 96 ++++++++++++++-----
>  1 file changed, 70 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> index 73b2ede773d3..ece55c8fa673 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> @@ -1505,6 +1505,7 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>         struct amdgpu_connector_atom_dig *amdgpu_dig_connector;
>         struct drm_encoder *encoder;
>         struct amdgpu_encoder *amdgpu_encoder;
> +       struct i2c_adapter *ddc = NULL;
>         uint32_t subpixel_order = SubPixelNone;
>         bool shared_ddc = false;
>         bool is_dp_bridge = false;
> @@ -1574,17 +1575,21 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                 amdgpu_connector->con_priv = amdgpu_dig_connector;
>                 if (i2c_bus->valid) {
>                         amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                       if (amdgpu_connector->ddc_bus)
> +                       if (amdgpu_connector->ddc_bus) {
>                                 has_aux = true;
> -                       else
> +                               ddc = &amdgpu_connector->ddc_bus->adapter;
> +                       } else {
>                                 DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       }
>                 }
>                 switch (connector_type) {
>                 case DRM_MODE_CONNECTOR_VGA:
>                 case DRM_MODE_CONNECTOR_DVIA:
>                 default:
> -                       drm_connector_init(dev, &amdgpu_connector->base,
> -                                          &amdgpu_connector_dp_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_dp_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&amdgpu_connector->base,
>                                                  &amdgpu_connector_dp_helper_funcs);
>                         connector->interlace_allowed = true;
> @@ -1602,8 +1607,10 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                 case DRM_MODE_CONNECTOR_HDMIA:
>                 case DRM_MODE_CONNECTOR_HDMIB:
>                 case DRM_MODE_CONNECTOR_DisplayPort:
> -                       drm_connector_init(dev, &amdgpu_connector->base,
> -                                          &amdgpu_connector_dp_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_dp_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&amdgpu_connector->base,
>                                                  &amdgpu_connector_dp_helper_funcs);
>                         drm_object_attach_property(&amdgpu_connector->base.base,
> @@ -1644,8 +1651,10 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         break;
>                 case DRM_MODE_CONNECTOR_LVDS:
>                 case DRM_MODE_CONNECTOR_eDP:
> -                       drm_connector_init(dev, &amdgpu_connector->base,
> -                                          &amdgpu_connector_edp_funcs, connector_type);
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_edp_funcs,
> +                                                   connector_type,
> +                                                   ddc);
>                         drm_connector_helper_add(&amdgpu_connector->base,
>                                                  &amdgpu_connector_dp_helper_funcs);
>                         drm_object_attach_property(&amdgpu_connector->base.base,
> @@ -1659,13 +1668,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>         } else {
>                 switch (connector_type) {
>                 case DRM_MODE_CONNECTOR_VGA:
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
>                                 if (!amdgpu_connector->ddc_bus)
>                                         DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_vga_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
>                         amdgpu_connector->dac_load_detect = true;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       adev->mode_info.load_detect_property,
> @@ -1679,13 +1693,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         connector->doublescan_allowed = true;
>                         break;
>                 case DRM_MODE_CONNECTOR_DVIA:
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
>                                 if (!amdgpu_connector->ddc_bus)
>                                         DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_vga_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
>                         amdgpu_connector->dac_load_detect = true;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       adev->mode_info.load_detect_property,
> @@ -1704,13 +1723,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         if (!amdgpu_dig_connector)
>                                 goto failed;
>                         amdgpu_connector->con_priv = amdgpu_dig_connector;
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
>                                 if (!amdgpu_connector->ddc_bus)
>                                         DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_dvi_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       adev->mode_info.coherent_mode_property,
> @@ -1754,13 +1778,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         if (!amdgpu_dig_connector)
>                                 goto failed;
>                         amdgpu_connector->con_priv = amdgpu_dig_connector;
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
>                                 if (!amdgpu_connector->ddc_bus)
>                                         DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_dvi_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       adev->mode_info.coherent_mode_property,
>                                                       1);
> @@ -1796,15 +1825,20 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         if (!amdgpu_dig_connector)
>                                 goto failed;
>                         amdgpu_connector->con_priv = amdgpu_dig_connector;
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dp_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (amdgpu_connector->ddc_bus)
> +                               if (amdgpu_connector->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_dp_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       adev->mode_info.coherent_mode_property,
> @@ -1838,15 +1872,20 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         if (!amdgpu_dig_connector)
>                                 goto failed;
>                         amdgpu_connector->con_priv = amdgpu_dig_connector;
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_edp_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (amdgpu_connector->ddc_bus)
> +                               if (amdgpu_connector->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_edp_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
>                                                       DRM_MODE_SCALE_FULLSCREEN);
> @@ -1859,13 +1898,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         if (!amdgpu_dig_connector)
>                                 goto failed;
>                         amdgpu_connector->con_priv = amdgpu_dig_connector;
> -                       drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_lvds_funcs, connector_type);
> -                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_lvds_helper_funcs);
>                         if (i2c_bus->valid) {
>                                 amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
>                                 if (!amdgpu_connector->ddc_bus)
>                                         DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       ddc = &amdgpu_connector->ddc_bus->adapter;
>                         }
> +                       drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
> +                                                   &amdgpu_connector_lvds_funcs,
> +                                                   connector_type,
> +                                                   ddc);
> +                       drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_lvds_helper_funcs);
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
>                                                       DRM_MODE_SCALE_FULLSCREEN);
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
