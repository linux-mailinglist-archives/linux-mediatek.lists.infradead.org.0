Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C87CCE993
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 18:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvWekLx/KWUEnhOwT+1QRnk6nGWMoY2Ta3SDuGn4rGc=; b=epOlvoBU9A5GjV
	kc3vLPNzuAv5XbnME17QwD+QMRqlc4JYHK1+RjEoNS7zPuDe9u18/xEkmKDLMsxEH1WHIq3b5xs9Y
	H6p9sNU7cv7g/0toJn3yNF6NOvJ80nLPXcE5juokYtHEP5Dj6x2sHL9H/BKMcXOFKzzzrw1TUqEXl
	RH4BHW25GuLFu4e0Iib3sLLBAskJX/eLvZd1QkNsuxE9/tOIY48Xpy/mnYZM1c0oTCObQ2aay8a0e
	YUlXnqOmlr+iFVFWSr7J0P/Pefff8tz7f465WmDy4y8LPcmdnOe81pDtMFKbdJ0vBPJgT06aWs80u
	F6Yw2W+nX1GLPTPM0jKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHW7r-00026q-Ax; Mon, 07 Oct 2019 16:44:47 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHW7n-00026A-IL
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 16:44:45 +0000
Received: by mail-yb1-xb41.google.com with SMTP id k10so1696419ybs.5
 for <linux-mediatek@lists.infradead.org>; Mon, 07 Oct 2019 09:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mS7sB/58XsSxkboHmbK13TsSVS2ybGG0SGJkhPLzIRA=;
 b=FJqwZjxVOe6UsLTNkV6cNOcVkQDkC4KclLXXo4pRQPaTooIORzEaZBlqgEJeBPOOD3
 IJQUhOl2gpWpgG1j1CKSDYGLzeqAVgiFW2TicYYsu+Q1pQl+4rWLpGMHSz+gmo8/sdef
 4xi+IBkorshJTxmB9ad2V6X1MF6kmcgw7GD5sR4YoOZv9/m5a1pYaTFZgtIn+WkJUzB6
 9LJed7khMsczg24yP8Qh6TOa8wiJN2M8PC9lyanJtYECU2f8MvPAwAe983h359YDoDZ3
 K2zL4QAkwA3zmBcxhurUBINhBfwbLvkPULM+XvXvbImd6H3qCjdwP8yYXR+0QdCI9Zw/
 gWKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mS7sB/58XsSxkboHmbK13TsSVS2ybGG0SGJkhPLzIRA=;
 b=XoG1Y8CGLQJPolA0nsKQoVMxWxVDikDFUNNR+ZDp7ozPkf+OvT7YzrEVAWRcBpZHzT
 TeCnZWAR3tyRYuyaQTc8oJDK/0NNsfFQQ7HE8Ampx7O3BnXY8OOC5du6dthfroskqZI0
 yeMxsutEQTdv49JG7qLk2JEOUP5rwQa6fOw7U1MtgKlRPG1/9l8kzpJ9SLTBKxZy02jS
 T08IO/dVj15H4Ozdtz4R2tqaePOxyJp4YpfpJ+CnkVpr46f7HWJtP/0H6BnMeJ415CBk
 TZWxLGh5rR5IwRK0IIy5vjH03Fw67h2pjBhmVLLt/CVy6vaqbv/KRfai2HL2c6ILl5a1
 dYhA==
X-Gm-Message-State: APjAAAW39T15OQ+lYIiJqzZHnNXrdzCJss28uoXnO8iWczrENxmX72ew
 z7wvYw4WTS7wqdnU3AYPiK9qHA==
X-Google-Smtp-Source: APXvYqwPFh/oPWw5D1v70gKt9HcmvrDgbglMJChBEx8hH0KZ84ySsjUBo3BnYKMDcqeaE3bgeD+pGA==
X-Received: by 2002:a25:8107:: with SMTP id o7mr11026920ybk.292.1570466682206; 
 Mon, 07 Oct 2019 09:44:42 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id p204sm4078445ywp.110.2019.10.07.09.44.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:44:41 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:44:41 -0400
From: Sean Paul <sean@poorly.run>
To: "dbasehore ." <dbasehore@chromium.org>
Subject: Re: [v8,2/4] drm/panel: set display info in panel attach
Message-ID: <20191007164441.GB126146@art_vandelay>
References: <20190925225833.7310-3-dbasehore@chromium.org>
 <20190929052307.GA28304@jamwan02-TSP300>
 <CAGAzgspEA0mcEHwgxyWWh3Gn-iC+a21g5GUrhsRJrTHQ_OAYqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGAzgspEA0mcEHwgxyWWh3Gn-iC+a21g5GUrhsRJrTHQ_OAYqQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_094443_615327_9CABFE0E 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 nd <nd@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 04:14:54PM -0700, dbasehore . wrote:
> On Sat, Sep 28, 2019 at 10:23 PM james qian wang (Arm Technology
> China) <james.qian.wang@arm.com> wrote:
> >
> > On Wed, Sep 25, 2019 at 03:58:31PM -0700, Derek Basehore wrote:
> > > Devicetree systems can set panel orientation via a panel binding, but
> > > there's no way, as is, to propagate this setting to the connector,
> > > where the property need to be added.
> > > To address this, this patch sets orientation, as well as other fixed
> > > values for the panel, in the drm_panel_attach function. These values
> > > are stored from probe in the drm_panel struct.
> > >
> > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > > ---
> > >  drivers/gpu/drm/drm_panel.c | 28 +++++++++++++++++++++
> > >  include/drm/drm_panel.h     | 50 +++++++++++++++++++++++++++++++++++++
> > >  2 files changed, 78 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > index 0909b53b74e6..1cd2b56c9fe6 100644
> > > --- a/drivers/gpu/drm/drm_panel.c
> > > +++ b/drivers/gpu/drm/drm_panel.c
> > > @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> > >   */
> > >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> > >  {
> > > +     struct drm_display_info *info;
> > > +
> > >       if (panel->connector)
> > >               return -EBUSY;
> > >
> > >       panel->connector = connector;
> > >       panel->drm = connector->dev;
> > > +     info = &connector->display_info;
> > > +     info->width_mm = panel->width_mm;
> > > +     info->height_mm = panel->height_mm;
> > > +     info->bpc = panel->bpc;
> > > +     info->panel_orientation = panel->orientation;
> > > +     info->bus_flags = panel->bus_flags;
> > > +     if (panel->bus_formats)
> > > +             drm_display_info_set_bus_formats(&connector->display_info,
> > > +                                              panel->bus_formats,
> > > +                                              panel->num_bus_formats);
> > >
> > >       return 0;
> > >  }
> > > @@ -126,6 +138,22 @@ EXPORT_SYMBOL(drm_panel_attach);
> > >   */
> > >  void drm_panel_detach(struct drm_panel *panel)
> > >  {
> > > +     struct drm_display_info *info;
> > > +
> > > +     if (!panel->connector)
> > > +             goto out;
> > > +
> > > +     info = &panel->connector->display_info;
> > > +     info->width_mm = 0;
> > > +     info->height_mm = 0;
> > > +     info->bpc = 0;
> > > +     info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > > +     info->bus_flags = 0;
> > > +     kfree(info->bus_formats);
> > > +     info->bus_formats = NULL;
> > > +     info->num_bus_formats = 0;
> > > +
> > > +out:
> > >       panel->connector = NULL;
> > >       panel->drm = NULL;
> > >  }
> > > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > > index d16158deacdc..f3587a54b8ac 100644
> > > --- a/include/drm/drm_panel.h
> > > +++ b/include/drm/drm_panel.h
> > > @@ -141,6 +141,56 @@ struct drm_panel {
> > >        */
> > >       const struct drm_panel_funcs *funcs;
> > >
> >
> > All these new added members seems dupliated with drm_display_info,
> > So I think, can we add a new drm_plane_funcs func:
> >
> > int (*set_display_info)(struct drm_panel *panel,
> >                         struct drm_display_info *info);
> 
> I don't disagree personally, since I originally wrote it this way, but
> 2 maintainers, Daniel Vetter and Thierry Reding, requested that it be
> changed. Unless that decision is reversed, I won't be changing this.
> 

Reading back the feedback on v1, I don't think anyone said they were against
storing a drm_display_info struct in drm_panel (no one really weighed in on
it one way or another). IMO duplicating a bunch of fields feels pretty icky.

I think most fields in drm_display_info have pretty reasonable defaults, so I'd
recommend just storing a copy in drm_panel. As Thierry suggests, we can
populate the dt parts in probe (orientation) and then copy over all or a subset
of the struct to connector on attach.

Sean

> >
> > Then in drm_panel_attach(), via this interface the specific panel
> > driver can directly set connector->display_info. like
> >
> >    ...
> >    if (panel->funcs && panel->funcs->set_display_info)
> >                 panel->funcs->unprepare(panel, connector->display_info);
> >    ...
> >
> > Thanks
> > James
> >
> > > +     /**
> > > +      * @width_mm:
> > > +      *
> > > +      * Physical width in mm.
> > > +      */
> > > +     unsigned int width_mm;
> > > +
> > > +     /**
> > > +      * @height_mm:
> > > +      *
> > > +      * Physical height in mm.
> > > +      */
> > > +     unsigned int height_mm;
> > > +
> > > +     /**
> > > +      * @bpc:
> > > +      *
> > > +      * Maximum bits per color channel. Used by HDMI and DP outputs.
> > > +      */
> > > +     unsigned int bpc;
> > > +
> > > +     /**
> > > +      * @orientation
> > > +      *
> > > +      * Installation orientation of the panel with respect to the chassis.
> > > +      */
> > > +     int orientation;
> > > +
> > > +     /**
> > > +      * @bus_formats
> > > +      *
> > > +      * Pixel data format on the wire.
> > > +      */
> > > +     const u32 *bus_formats;
> > > +
> > > +     /**
> > > +      * @num_bus_formats:
> > > +      *
> > > +      * Number of elements pointed to by @bus_formats
> > > +      */
> > > +     unsigned int num_bus_formats;
> > > +
> > > +     /**
> > > +      * @bus_flags:
> > > +      *
> > > +      * Additional information (like pixel signal polarity) for the pixel
> > > +      * data on the bus.
> > > +      */
> > > +     u32 bus_flags;
> > > +
> > >       /**
> > >        * @list:
> > >        *
> 
> Thanks for the review

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
