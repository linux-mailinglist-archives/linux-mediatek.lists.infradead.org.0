Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ACA46D43
	for <lists+linux-mediatek@lfdr.de>; Sat, 15 Jun 2019 02:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMYucj5h+4Xs0Hyhivc1MCxXKmhQR18tB7EJHDAL5OQ=; b=L0ML1pHXPVKel7
	0CSwuuNhnPF+fXRzc4NE4m0o+GxubZcOZ3mOVuEaoG5Ugp26eIMAca+ZgnykRvdjG426NSdopUYaa
	Kt2mGJCYdvaFV7yT873P3MKrvq35FreoEvplvyIwXTT5rgDfMIaPoxcwvlmtXsiCJz+3f1xRLfF2b
	pFEjVBgTLLjoKKdftFpXgLnADWgYAO1iBvryo/34C057YIG9X5B+TLW90c2DByvA2ycd5/tvO/EFL
	0X5prlCUXy0nnFfBhUPeWED3CNw0EpMXq8Z6Y3B0/We+dg/8AKaypdvX4jE/T8mB9NNykoPAQ5WNF
	kzfITmRiu939OaqsSm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbwnF-0005Ak-Ti; Sat, 15 Jun 2019 00:43:41 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbwn0-0004zD-K1
 for linux-mediatek@lists.infradead.org; Sat, 15 Jun 2019 00:43:28 +0000
Received: by mail-vs1-xe41.google.com with SMTP id g24so2851239vso.8
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 17:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l6kNs3vEbtZJz4gwMNE28MUy8volKIouYnWugvC1QNU=;
 b=TJKsD2z1z6LHWkhgoQw49uj/KvYdTS4zbFAkQsUSVUQ3JEk20zJgrxRzVBZUGXky+U
 05mj3xF2RM3pjz4JVDJMHlBOWviTHw/Ksu/cCWRuiKqbTVSm3IQC/+NKQaFD89Z7owt4
 inHctQiUqxK3dyWeKKUR0/v4aWFYvh8U5FlKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l6kNs3vEbtZJz4gwMNE28MUy8volKIouYnWugvC1QNU=;
 b=F3TbFEZiSQ7J4Y5HA36Iwx8GqgeTEwMTnBpsL2Z2Cy35btVhYuH5zXKA3qjHBChEd0
 JSCNCE74vtJ34DD0nJFCvK3msYt6y0Hw8LMrU9ahAb9fFIrpID3syHfDFu0C9OYRGkX4
 pr/wjU/JNz2Tx3w64GjxXR63v9BsEWDTQ74y3OCTNJElaGPk5ivGXz2L6wk36A+5mopk
 lnHa9VfH37FdX8VfFvHfXqUl01qTrz1wbJaF/dUV1Pv7xmwBVyoaFbkpNMsA+5M0s+Az
 7tyiJT1+DcSTR/eo8SXTeJcoya0GccC66ULg9J95yceUhtZ39WmVpQkGwFAoHXg3oOLC
 xesA==
X-Gm-Message-State: APjAAAVcY0RUyKnb2h/IiEwkmEdQBx3gneNUOxJo9mYGiW57fhxnuzqm
 5LZNbGEb9MyrbdbMjPbOx/LMsUovIWtvfeRFJD1i0g==
X-Google-Smtp-Source: APXvYqyINzqLgoly97nAXbatYBIej847145lvC8l1Nj5Kjy8R4NBcmHdKvzptibuPr0Xq13NWsmWUIGgZWXDsSkN+Eo=
X-Received: by 2002:a67:7d13:: with SMTP id y19mr35490665vsc.232.1560559400933; 
 Fri, 14 Jun 2019 17:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-2-dbasehore@chromium.org>
 <20190612211807.GA13155@ravnborg.org>
In-Reply-To: <20190612211807.GA13155@ravnborg.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Fri, 14 Jun 2019 17:43:09 -0700
Message-ID: <CAGAzgsqgbr5rWpyWB1H_66=kxBRb7kw4wE7h34TJfE7eJ1mSQQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] drm/panel: Add helper for reading DT rotation
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_174326_664039_4AE69096 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 2:18 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Derek.
>
> On Mon, Jun 10, 2019 at 09:03:46PM -0700, Derek Basehore wrote:
> > This adds a helper function for reading the rotation (panel
> > orientation) from the device tree.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_panel.h     |  7 +++++++
> >  2 files changed, 48 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index dbd5b873e8f2..3b689ce4a51a 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -172,6 +172,47 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >       return ERR_PTR(-EPROBE_DEFER);
> >  }
> >  EXPORT_SYMBOL(of_drm_find_panel);
> > +
> > +/**
> > + * of_drm_get_panel_orientation - look up the rotation of the panel using a
> > + * device tree node
> > + * @np: device tree node of the panel
> > + * @orientation: orientation enum to be filled in
> The comment says "enum" but the type used is an int.
> Why not use enum drm_panel_orientation?
>

The binding is just an int value, but I can change it to the enum.

> > + *
> > + * Looks up the rotation of a panel in the device tree. The rotation in the
> > + * device tree is counter clockwise.
> > + *
> > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > + * rotation property doesn't exist. -EERROR otherwise.
> > + */
> Initially I read -EEROOR as a specific error code.
> But I gues the semantic is to say that a negative error code is returned
> if something was wrong.
> As we do not use the "-EERROR" syntax anywhere else in drm, please
> reword like we do in other places.
>
>
> Also - it is worth to mention that the rotation returned is
> DRM_MODE_PANEL_ORIENTATION_UNKNOWN if the property is not specified.
> I wonder if this is correct, as no property could also been
> interpretated as DRM_MODE_PANEL_ORIENTATION_NORMAL.
> And in most cases the roation property is optional, so one could
> assume that no property equals 0 degree.
>
>
>         Sam
>
> > +int of_drm_get_panel_orientation(const struct device_node *np, int *orientation)
> > +{
> > +     int rotation, ret;
> > +
> > +     ret = of_property_read_u32(np, "rotation", &rotation);
> > +     if (ret == -EINVAL) {
> > +             /* Don't return an error if there's no rotation property. */
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > +             return 0;
> > +     }
> > +
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     if (rotation == 0)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
> > +     else if (rotation == 90)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
> > +     else if (rotation == 180)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
> > +     else if (rotation == 270)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
> > +     else
> > +             return -EINVAL;
> > +
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL(of_drm_get_panel_orientation);
> >  #endif
> >
> >  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
> > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > index 8c738c0e6e9f..13631b2efbaa 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -197,11 +197,18 @@ int drm_panel_detach(struct drm_panel *panel);
> >
> >  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
> >  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              int *orientation);
> >  #else
> >  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >  {
> >       return ERR_PTR(-ENODEV);
> >  }
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              int *orientation)
> > +{
> > +     return -ENODEV;
> > +}
> >  #endif
> >
> >  #endif
> > --
> > 2.22.0.rc2.383.gf4fbbf30c2-goog

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
