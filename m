Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDFC55AC2
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 00:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVrnBiAiJ5PFtDV/8n7YTzeuQfCryK2WeCdyRuzlG6s=; b=GmhvoNdoIzMbys
	dqNAF1cvWPzmrM1NLCVCVytUNnMcNv3EIqbR3VIZvFBNHRm5fEJUIVgzVXMf4TQNSWOWMgK6TRwhC
	rv+rJbtc38D35HqTMsYJnoeh15DrZ0KkhQjsnWy1dZI1/Ad/Xeua5I4menE1ea2UpmYo3+c7x0XHf
	35vAX3aRmymOwW2y5fm6RQgbwcupdSau8CBzTp2NjLk9cMQH1AdPZAx1WHAq97DoRpbVsX7LSPh0f
	jOyHsdRQBTMcV3V72ChoIfXwEV89EDcNxJ58AMk2q6GEH+xgT64Zur6msqBXRCs+cTOU/17PAZ4cm
	riMo6LskAYKZ2y2ANq8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftgs-00009b-PG; Tue, 25 Jun 2019 22:13:26 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftgV-0008BO-IX
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 22:13:05 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 190so239899vsf.9
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 15:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3n+LcMejLmcA2HmAuYiDTQTe/hLh9m1gb0zWqdGsK68=;
 b=VZCpcSruMkBN/fSuTzWYVVaGnaXStuxDTlxa6KFFowmHSW6v2Kp5xf+pb8sCdtaNmI
 xWDUgTBPVJTm3UOzht8hRhzYr5tvq5wbDau9K9ekcL7zkkOkPO6YsM415uZM6T3vh/XA
 fGfPjTr6Fy2AgIjssn8ZMUzqkRDozC0cHm7b8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3n+LcMejLmcA2HmAuYiDTQTe/hLh9m1gb0zWqdGsK68=;
 b=HnJ1tCzaf5ZS+yVxRGJkAYnA935+icJqRNYlsFAriKPmCrdzRP5RXvReClvEHtWR5F
 L2UyvKp3shTARB1iWfYEXjQUvRquPubvCkhVSlIhIeXbxxT477FLpaMnwCFRSANQph/W
 MQX5P0iuHU0TYui/s5M+/hs1ZAO30P3Vrk5J3jLDQlJBVlCXx/Gc1LuGsS0KVDJpCGY6
 +ekDhg4hjZLyo3XsGkCvSUjtUNf6pk/IFNsurquxVzke6Wb35I6gUb4P9atzoOon1oF9
 B1PU/sFKjkXeSKcZ9d7mSZmfpNIrOOUHBGizMWLjBDGOt5Ajvdw82IZkoyDDhpjmm7xU
 XggQ==
X-Gm-Message-State: APjAAAWO9zqcgrE17LNDg85JzPXIOoUxVZIxK0Pw7KQ9a1ztYoXtpxP0
 qD0sij+aQSjKxlL5hpqNWg54Wy7lE6TdwRW/EuAJ+Q==
X-Google-Smtp-Source: APXvYqxAFcpueCkXxA4fX5ZdmVpn9ubMtxiNatLRjWu9UrGeHKopzC5JOp9YWWvfIyG8W3lvQ5C/O8BukWSbyTUXEmY=
X-Received: by 2002:a67:cd9a:: with SMTP id r26mr780862vsl.152.1561500782182; 
 Tue, 25 Jun 2019 15:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190622034105.188454-1-dbasehore@chromium.org>
 <20190622034105.188454-2-dbasehore@chromium.org>
 <20190624203632.GA12316@ravnborg.org>
In-Reply-To: <20190624203632.GA12316@ravnborg.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 25 Jun 2019 15:12:51 -0700
Message-ID: <CAGAzgspnknoX_6zP4__tjQonxg53jjJj-xP=yrQydA2FhMG2JA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] drm/panel: Add helper for reading DT rotation
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151303_643283_A82C36C6 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
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

On Mon, Jun 24, 2019 at 1:36 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Derek.
>
> On Fri, Jun 21, 2019 at 08:41:02PM -0700, Derek Basehore wrote:
> > This adds a helper function for reading the rotation (panel
> > orientation) from the device tree.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 42 +++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_panel.h     |  7 +++++++
> >  2 files changed, 49 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index dbd5b873e8f2..507099af4b57 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -172,6 +172,48 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >       return ERR_PTR(-EPROBE_DEFER);
> >  }
> >  EXPORT_SYMBOL(of_drm_find_panel);
> > +
> > +/**
> > + * of_drm_get_panel_orientation - look up the rotation of the panel using a
> > + * device tree node
> > + * @np: device tree node of the panel
> > + * @orientation: orientation enum to be filled in
> > + *
> > + * Looks up the rotation of a panel in the device tree. The rotation in the
> > + * device tree is counter clockwise.
> > + *
> > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > + * rotation property doesn't exist. -EERROR otherwise.
> > + */
> This function should better spell out why it talks about rotation versus
> orientation.
>
> It happens that orientation, due to bad design choices is named rotation
> in DT.
> But then this function is all about orientation, that just happens to be
> named rotation in DT.
> And the comments associated to the function should reflect this.
>
> something like:
> /**
>  * of_drm_get_panel_orientation - look up the orientation of the panel using a
>  * device tree node
>  * @np: device tree node of the panel
>  * @orientation: orientation enum to be filled in
>  *
>  * Looks up the rotation property of a panel in the device tree.
>  * The orientation of the panel is expressed as a property named
>  * "rotation" in the device tree.
>  * The rotation in the device tree is counter clockwise.
>  *
>  * Return: 0 when a valid orientation value (0, 90, 180, or 270) is read or the
>  * rotation property doesn't exist. -EERROR otherwise.
>  */

I'll clear this up in the next patch set.

>
> This would at least remove some of my confusiuon.
> And then maybe add a bit more explanation to the binding property
> description too.

Tried this, yet I got told off for adding kernel details to the DT
documentation (which is frowned upon).

>
>         Sam
>
>
>
>
>
>
>
>
>
>
>
>
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              enum drm_panel_orientation *orientation)
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
> > index 8c738c0e6e9f..3564952f1a4f 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -197,11 +197,18 @@ int drm_panel_detach(struct drm_panel *panel);
> >
> >  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
> >  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              enum drm_panel_orientation *orientation);
> >  #else
> >  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >  {
> >       return ERR_PTR(-ENODEV);
> >  }
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              enum drm_panel_orientation *orientation)
> > +{
> > +     return -ENODEV;
> > +}
> >  #endif
> >
> >  #endif
> > --
> > 2.22.0.410.gd8fdbe21b5-goog

Thanks for the review

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
