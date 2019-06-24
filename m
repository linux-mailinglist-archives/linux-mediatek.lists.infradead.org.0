Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0094151EE8
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 01:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnGhBxHZCkByIz64e1nLVW6//EsYYRG8hD3w2eZuYfY=; b=s0Itpmz9UrEqbt
	G6phpLYQLfyaSO2oI+C6IyzKcYSkJlcTeOdJQXb7SMSjTd+3xZWdW6vhah6isL+oNMSM1noDMjlqC
	TimmY5Ko+GHm6bzq0it5V/ZZN76uYa59TBNrZAgPGOzvueWr17zrWdwgQ7KVwzjvHgFeNjlI6B0C4
	LqEV68VUiCeKCXmPOcnvCGeBZyTCl7lxXhfph5lW9O+AofhCtHvUTqjw3j6krKYMMRenucf41F2ci
	NQOMZ4untWqXIn/YfuK3JPv7JcIrBcZG3dIIfIleBonMbzZkikQWFn9DyvcKIdatbMQruAU68UxZB
	g9dGfuzK+fFloP8/gFyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfY1S-0008MS-82; Mon, 24 Jun 2019 23:05:14 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfY1O-0007pg-3V
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 23:05:11 +0000
Received: by mail-ua1-x944.google.com with SMTP id c4so6345999uad.1
 for <linux-mediatek@lists.infradead.org>; Mon, 24 Jun 2019 16:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UUo1KrRDh5d7CTBF6eaNp9PxHrRcB6qM3gI926f1TeA=;
 b=WVw0EoU/h/EqUukaJvGtqujV+cXiSxfpwlH2O1mjOPjBOWZm7X31Fi0BEpRrTWYB9o
 o3CdLbtue0bwaz7Vgm1UpKlE0E0fSuldvTbmZ5qdmnnWwc+B2pMoaALrgyVv/folYTdx
 o5vrcJW2m//kZ2EHqvUqM4fL2R7S887YcxtaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UUo1KrRDh5d7CTBF6eaNp9PxHrRcB6qM3gI926f1TeA=;
 b=qUQxln9WY9jrVYKh7BU2zl58Yn0+eZA9ECcbt2njQQHzpkI2UlG4FKDgmxg/7+JxYf
 DjLaXZwg34KLsRiDqLrOGeP/e0alipOipy38vElXUz5Qvs5kNnjYYI/X3tZEPkm7GNjH
 +SG5pI8yj0NNXctFi5wDYfRSh6LbGSD+OemoQq1y7pkvE8Cqdkx3SY0a7VyDQ/G+0VWL
 XfC+vJZL8q2PyxwPHlsJvhTbCdqg5GW8iZ3CInKeCWwi0r4LW83MtNDjlaIAwYNaTmeE
 DhiAbe2eNdyBaidXGESK/aKGnjP/I6MqunoP4RnmpsElIKqxbKGRd2tvxfp3CaCDTT8M
 BRGQ==
X-Gm-Message-State: APjAAAV1CADuD2FlNInVy23E1neWcgMkloChLtHPGWwBx5K2uJCtl6gR
 O47wbntPTu8tn5M9dRbDeyQmbq1bna7haXEU1N8y5Q==
X-Google-Smtp-Source: APXvYqzGrtkWF399TOCeEibm6SiwufJW+tbfw85UkDFZQy9sMXwWQnNPBCZCk62frDzlYpVuKPp8w75505JQWMBjpNM=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr30915038uad.15.1561417505834; 
 Mon, 24 Jun 2019 16:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190622034105.188454-1-dbasehore@chromium.org>
 <20190622034105.188454-3-dbasehore@chromium.org>
In-Reply-To: <20190622034105.188454-3-dbasehore@chromium.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Mon, 24 Jun 2019 16:04:54 -0700
Message-ID: <CAGAzgsrhS_nsXqf83ivZS5qcfT+Ss0=pzshH_i2+-Hd1iVNgNA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] drm/panel: set display info in panel attach
To: linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_160510_201435_CBD1CE50 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 8:41 PM Derek Basehore <dbasehore@chromium.org> wrote:
>
> Devicetree systems can set panel orientation via a panel binding, but
> there's no way, as is, to propagate this setting to the connector,
> where the property need to be added.
> To address this, this patch sets orientation, as well as other fixed
> values for the panel, in the drm_panel_attach function. These values
> are stored from probe in the drm_panel struct.
>
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 28 ++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     | 14 ++++++++++++++
>  2 files changed, 42 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 507099af4b57..5690fca30236 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +       struct drm_display_info *info;
> +
>         if (panel->connector)
>                 return -EBUSY;
>
>         panel->connector = connector;
>         panel->drm = connector->dev;
> +       info = &connector->display_info;
> +       info->width_mm = panel->width_mm;
> +       info->height_mm = panel->height_mm;
> +       info->bpc = panel->bpc;
> +       info->panel_orientation = panel->orientation;
> +       info->bus_flags = panel->bus_flags;
> +       if (panel->bus_formats)
> +               drm_display_info_set_bus_formats(&connector->display_info,
> +                                                panel->bus_formats,
> +                                                panel->num_bus_formats);
>
>         return 0;
>  }
> @@ -128,6 +140,22 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  int drm_panel_detach(struct drm_panel *panel)
>  {
> +       struct drm_display_info *info;
> +
> +       if (!panel->connector)
> +               goto out;
> +
> +       info = &panel->connector->display_info;
> +       info->width_mm = 0;
> +       info->height_mm = 0;
> +       info->bpc = 0;
> +       info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +       info->bus_flags = 0;
> +       kfree(info->bus_formats);
> +       info->bus_formats = NULL;
> +       info->num_bus_formats = 0;
> +
> +out:
>         panel->connector = NULL;
>         panel->drm = NULL;
>
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 3564952f1a4f..760ca5865962 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -37,6 +37,8 @@ struct display_timing;
>   * struct drm_panel_funcs - perform operations on a given panel
>   * @disable: disable panel (turn off back light, etc.)
>   * @unprepare: turn off panel
> + * @detach: detach panel->connector (clear internal state, etc.)
> + * @attach: attach panel->connector (update internal state, etc.)
>   * @prepare: turn on panel and perform set up
>   * @enable: enable panel (turn on back light, etc.)
>   * @get_modes: add modes to the connector that the panel is attached to and
> @@ -93,6 +95,18 @@ struct drm_panel {
>
>         const struct drm_panel_funcs *funcs;
>
> +       /*
> +        * panel information to be set in the connector when the panel is
> +        * attached.
> +        */
> +       unsigned int width_mm;
> +       unsigned int height_mm;
> +       unsigned int bpc;
> +       int orientation;
> +       const u32 *bus_formats;
> +       unsigned int num_bus_formats;
> +       u32 bus_flags;

Should probably put these in a struct to ensure the connector and
panel have the same data types. Will do in a following patch if we
stay with this.

> +
>         struct list_head list;
>  };
>
> --
> 2.22.0.410.gd8fdbe21b5-goog
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
