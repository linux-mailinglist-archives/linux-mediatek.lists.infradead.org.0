Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D998CFCE7
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 16:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9PzcoTf579zZLnMBTYdIISONMfYaUrFw2v7d0hBn7A=; b=ZD2vXKz0Zv0yBb
	kxjXwnF0G8Z3L9vdPciyA1g7VzINbFPfsJUDKJnmMXTpzcb2PhrQErC0NvUEuh1M/ImDRM7Xh6ANO
	NTtvcvdsyO4kfRB2Cjx2UkqEEtxtC7866vPm88LQ/ekm620WkKJThgS5yZJyUR9yZjURJPlm+ZYjP
	iqLNuIzrj3gAR9bO2+tOzKpVhzNOxRUhmwNrnlZkO4kPhPW0qLU4PMzI4/C89Q0eTqG0ZGBv9BcVW
	vXgTCrgQl08nVFOcRup+WrnI1ze0cl15FgpUFKGVzB+kNqQ6pTK0q0iQBnV8pghGgbFBieWp/WMH9
	1cqlgtNnqeSO4uRbyCDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHquk-0005sm-7u; Tue, 08 Oct 2019 14:56:38 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHquY-0005kd-LQ
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 14:56:28 +0000
Received: by mail-yb1-xb44.google.com with SMTP id 206so5986399ybc.8
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 07:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sTRvcWuhsCDYM9nbsR+iqmjU/q191FPit5GKXH0WNCw=;
 b=KMSNlY73MWApM2LnJJ05n+pDdlTTB791f5huU/c6JQNIdCTYwu5MkPWBrSvcjOfwaJ
 RsIQQZmSbuw4lnEfKSiahEq5i1zzbr8exb3K+yZvrB88/MRZRDwfJE0uEVH86Nn9JU+g
 ucOEsnRc6GOLykNYKeJodJazifzD5v45OoQMGMMsy24WgeIvktRE9HHPLT+THzUJ0U56
 +O4i5niWNKzssNdcq0RQ/stQZ1Kg7JjqBeuRW5WjnD35EjEFcTyXJv9nbrvKfwqwnV7d
 u39UXN1UxhENUBpLUdibXVnm0FSA6IKRNt5ICPRuzTXP2yeWSg/vxwUvhUshH2yMywal
 4VHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sTRvcWuhsCDYM9nbsR+iqmjU/q191FPit5GKXH0WNCw=;
 b=uN9nsRbw0eLzL37WpVO0rb8FT0pTG1OeacHlPcO6FZNl0NwC903nPFvgH5SvfShA6b
 MzgwN134yFW6jaEJdvE4G/0NEVL7RDmSE0ni7PhKUHs0UH8uSluQSCZsex5ni2DqPtCh
 OeAZpmoWE9T+txfMKOYOavxbrSAT+nis2ah8J99Q+WliftLSbIHUHjqhzH4pzjRDZ4eS
 zoh/QaRFIbph7Mckla2iXdm23Ww4/FD+hOjp8yGWcHtNRqZhb+vWiZ8NW/qyZ2CMTZ/I
 ShX60fN2MC0cTu1dV2U+geWC0Kd5lqfqxzuRNxCq5gGqRCFxYEMSQSM7jMhxLzMedZDj
 Sq6w==
X-Gm-Message-State: APjAAAVXbJUouuAk0ixhme5UdAe5v9QYWbsiDCL5ZrwoixrWL7eCfq0Z
 vCxZ01Ovk0h9N9no6uwo7Rt3Mg==
X-Google-Smtp-Source: APXvYqxd3yI0Qoe4+zUlG7M7FCEqmfoW9HKyX9KBsgoGA3ualtp6JoAIN3/M6dE0Jb3/fTE37mcn/g==
X-Received: by 2002:a25:df87:: with SMTP id
 w129mr15524540ybg.121.1570546584814; 
 Tue, 08 Oct 2019 07:56:24 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id v15sm4644853ywa.39.2019.10.08.07.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 07:56:24 -0700 (PDT)
Date: Tue, 8 Oct 2019 10:56:23 -0400
From: Sean Paul <sean@poorly.run>
To: "dbasehore ." <dbasehore@chromium.org>
Subject: Re: [PATCH v8 1/4] drm/panel: Add helper for reading DT rotation
Message-ID: <20191008145623.GA85762@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-2-dbasehore@chromium.org>
 <20191007163822.GA126146@art_vandelay>
 <CAGAzgspJa1b1V06s3Om+OAbPLqWsWSptbVtQApEPAXDA7W-VSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGAzgspJa1b1V06s3Om+OAbPLqWsWSptbVtQApEPAXDA7W-VSQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_075626_729757_4D1C6441 
X-CRM114-Status: GOOD (  30.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Oct 07, 2019 at 03:12:00PM -0700, dbasehore . wrote:
> On Mon, Oct 7, 2019 at 9:38 AM Sean Paul <sean@poorly.run> wrote:
> >
> > On Wed, Sep 25, 2019 at 03:58:30PM -0700, Derek Basehore wrote:
> > > This adds a helper function for reading the rotation (panel
> > > orientation) from the device tree.
> > >
> > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> >
> > The patch LGTM, but I don't see it used anywhere later in the patch? Is there a
> > panel driver incoming?
> 
> Yeah, the boe-tv101wum-nl6 panel will use it. It's not in the patch
> currently sent upstream since I don't want to step on their toes, but
> I plan on sending a patch to add it as soon as that is merged.
> 
> I could hold back on this patch until that panel driver is merged too.

Yeah, I think it's probably best. I don't anticipate any changes will be
required, but it's always best to review the code end-to-end.

I haven't checked in on that review, but if it's close to landing, you can also
add a patch to this stack that is based on the in-flight patches. That way we can
get all the review out of the way and then when the panel lands, we can apply
your add-on with the rest of the series.

Sean

> Another alternative is to throw this into the generic drm_panel code,
> but there's no obvious place to put it since DRM seems to leave
> reading the DTS up to the panel drivers themselves.
> 
> >
> > Sean
> >
> > > ---
> > >  drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
> > >  include/drm/drm_panel.h     |  9 ++++++++
> > >  2 files changed, 52 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > index 6b0bf42039cf..0909b53b74e6 100644
> > > --- a/drivers/gpu/drm/drm_panel.c
> > > +++ b/drivers/gpu/drm/drm_panel.c
> > > @@ -264,6 +264,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> > >       return ERR_PTR(-EPROBE_DEFER);
> > >  }
> > >  EXPORT_SYMBOL(of_drm_find_panel);
> > > +
> > > +/**
> > > + * of_drm_get_panel_orientation - look up the orientation of the panel through
> > > + * the "rotation" binding from a device tree node
> > > + * @np: device tree node of the panel
> > > + * @orientation: orientation enum to be filled in
> > > + *
> > > + * Looks up the rotation of a panel in the device tree. The orientation of the
> > > + * panel is expressed as a property name "rotation" in the device tree. The
> > > + * rotation in the device tree is counter clockwise.
> > > + *
> > > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > > + * rotation property doesn't exist. -EERROR otherwise.
> > > + */
> > > +int of_drm_get_panel_orientation(const struct device_node *np,
> > > +                              enum drm_panel_orientation *orientation)
> > > +{
> > > +     int rotation, ret;
> > > +
> > > +     ret = of_property_read_u32(np, "rotation", &rotation);
> > > +     if (ret == -EINVAL) {
> > > +             /* Don't return an error if there's no rotation property. */
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > > +             return 0;
> > > +     }
> > > +
> > > +     if (ret < 0)
> > > +             return ret;
> > > +
> > > +     if (rotation == 0)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
> > > +     else if (rotation == 90)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
> > > +     else if (rotation == 180)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
> > > +     else if (rotation == 270)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
> > > +     else
> > > +             return -EINVAL;
> > > +
> > > +     return 0;
> > > +}
> > > +EXPORT_SYMBOL(of_drm_get_panel_orientation);
> > >  #endif
> > >
> > >  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
> > > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > > index 624bd15ecfab..d16158deacdc 100644
> > > --- a/include/drm/drm_panel.h
> > > +++ b/include/drm/drm_panel.h
> > > @@ -34,6 +34,8 @@ struct drm_device;
> > >  struct drm_panel;
> > >  struct display_timing;
> > >
> > > +enum drm_panel_orientation;
> > > +
> > >  /**
> > >   * struct drm_panel_funcs - perform operations on a given panel
> > >   *
> > > @@ -165,11 +167,18 @@ int drm_panel_get_modes(struct drm_panel *panel);
> > >
> > >  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
> > >  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> > > +int of_drm_get_panel_orientation(const struct device_node *np,
> > > +                              enum drm_panel_orientation *orientation);
> > >  #else
> > >  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
> > >  {
> > >       return ERR_PTR(-ENODEV);
> > >  }
> > > +static inline int of_drm_get_panel_orientation(const struct device_node *np,
> > > +             enum drm_panel_orientation *orientation)
> > > +{
> > > +     return -ENODEV;
> > > +}
> > >  #endif
> > >
> > >  #endif
> > > --
> > > 2.23.0.351.gc4317032e6-goog
> > >
> >
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
