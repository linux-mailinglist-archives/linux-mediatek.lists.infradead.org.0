Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602B44F326
	for <lists+linux-mediatek@lfdr.de>; Sat, 22 Jun 2019 03:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iid/HGIS27ms11aUIsvrQlWFppjneQj0n1xKhFSC/1w=; b=nzJCabxbOv7+MN
	guScOmyrLYELtZJbtwdprDdcoZpNe3y6tKgOpAkOrmZoIPIWoZI08Q4/fKoZMXbPcGC1Cc6aEW1vo
	NCfO24yyN2EoTpMPLGh+I1b0NbydSP7/ONUqD0IG/ITw40ubO6eR2UOleD/f6Tw5QxIlFlRZVgROI
	cO3rZngelHvLOzZ0qAD/BIITEFQbMSLTPj519WC4e7XU5Xah92oei0FJkd4XHrdgnsrQyPRTM2AMY
	VObHwTd5+FJAC4gokoK9DTnXGV8b5pG5JyZ20I9EQOWI9e1sWTHPRLwDraz+9wfRNX5NWS/lIFU1L
	KHf5RBOI2uBGBliZTi7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heVFT-00042Z-4L; Sat, 22 Jun 2019 01:55:23 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heVFG-0003uy-TQ
 for linux-mediatek@lists.infradead.org; Sat, 22 Jun 2019 01:55:12 +0000
Received: by mail-vs1-xe42.google.com with SMTP id u124so5056484vsu.2
 for <linux-mediatek@lists.infradead.org>; Fri, 21 Jun 2019 18:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rJNwQ3mLV8c2DQL6zapl2FGuDETRbFo/82UxBr+AH6A=;
 b=dvw6+h32jWORvo7jMZPESQgSthDbn7z03u9GLjsid38O6nYq1at3dkhVnc+MFLAUfy
 XMWuL+lGSbdU4YUp+4DzaZDxDYW6Z8e8x/6ETdnfog16NJl7DmSRta5asKt5t2HKHSPo
 iLp6MEOb/l0yLyh0JhQe7+EJtudxCM2ivTJ3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rJNwQ3mLV8c2DQL6zapl2FGuDETRbFo/82UxBr+AH6A=;
 b=HmqI5XCZOvK8kp745Yqmkeh8WhidGj2+oxLkIwD5u71b4jYmcqIuaJbR5boVx0IM+r
 k78H3OMdU8GxBdnSgDupUim13hqrfWnZ1RVTs5b5Z9uyLq7J8IHy3Be8r2SQh5IzeeaY
 YgoJo0VHS9mdo3f7MEtPuIEhJso+sE9Qj/ZRiAkiWLoMqUrCkFmDMJ2BX+yDd/I8zRdJ
 AfUDzvWU3Be8G2GVtv8YZ9dH6oJTd7bQm2PN8cPeeBggZ87Dpp43AzRGTjMHRqrZE1OW
 4OUG0qiqFJIwJH9HWosJvuSv5xPd6bvZzf7bK7ytD8JTvOQn5ryyDFcCs8Ep6AygNPcD
 HmcQ==
X-Gm-Message-State: APjAAAX4rd084rH6ZmpBXpe6veGfK5en4uioztJI4OZQc0/K0/Ow93kl
 8wJ+C8OLDbM430UO+ZmVb3YTgJvOtl/j/YDpK02MRA==
X-Google-Smtp-Source: APXvYqxIUQ4BIsLDa7mjdOr3DxZ0fEYbaLvNVTh2X5FXEq12gxCyd4wyEmkfrQB7bvfwwvie1eNDWlSCYOg/Tnvc+qM=
X-Received: by 2002:a67:7d13:: with SMTP id y19mr57281881vsc.232.1561168509102; 
 Fri, 21 Jun 2019 18:55:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
 <20190611085722.GX21222@phenom.ffwll.local>
 <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com>
 <20190621091928.GA11839@ulmo>
In-Reply-To: <20190621091928.GA11839@ulmo>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Fri, 21 Jun 2019 18:54:57 -0700
Message-ID: <CAGAzgsqkJnc4jESSVMtYEQ4=DhmLVKbo_8CTk9cwH0j+55ZuTw@mail.gmail.com>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
To: Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_185510_976291_2E47306C 
X-CRM114-Status: GOOD (  26.33  )
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
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 2:19 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Tue, Jun 11, 2019 at 05:25:47PM -0700, dbasehore . wrote:
> > On Tue, Jun 11, 2019 at 1:57 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > >
> > > On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> > > > This adds the attach/detach callbacks. These are for setting up
> > > > internal state for the connector/panel pair that can't be done at
> > > > probe (since the connector doesn't exist) and which don't need to be
> > > > repeatedly done for every get/modes, prepare, or enable callback.
> > > > Values such as the panel orientation, and display size can be filled
> > > > in for the connector.
> > > >
> > > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > > ---
> > > >  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
> > > >  include/drm/drm_panel.h     |  4 ++++
> > > >  2 files changed, 18 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > > index 3b689ce4a51a..72f67678d9d5 100644
> > > > --- a/drivers/gpu/drm/drm_panel.c
> > > > +++ b/drivers/gpu/drm/drm_panel.c
> > > > @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> > > >   */
> > > >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> > > >  {
> > > > +     int ret;
> > > > +
> > > >       if (panel->connector)
> > > >               return -EBUSY;
> > > >
> > > >       panel->connector = connector;
> > > >       panel->drm = connector->dev;
> > > >
> > > > +     if (panel->funcs->attach) {
> > > > +             ret = panel->funcs->attach(panel);
> > > > +             if (ret < 0) {
> > > > +                     panel->connector = NULL;
> > > > +                     panel->drm = NULL;
> > > > +                     return ret;
> > > > +             }
> > > > +     }
> > >
> > > Why can't we just implement this in the drm helpers for everyone, by e.g.
> > > storing a dt node in drm_panel? Feels a bit overkill to have these new
> > > hooks here.
> > >
> > > Also, my understanding is that this dt stuff is supposed to be
> > > standardized, so this should work.
> >
> > So do you want all of this information added to the drm_panel struct?
> > If we do that, we don't necessarily even need the drm helper function.
> > We could just copy the values over here in the drm_panel_attach
> > function (and clear them in drm_panel_detach).
>
> Yeah, I think we should have all this extra information in the struct
> drm_panel. However, I think we need to more carefully split things such
> that the DT parsing happens at panel probe time. That way we can catch
> errors in DT, or missing entries/resources when we can still do
> something about it.

For now, I'll just put width, height, bpc, orientation, bus_flags, and
bus_formats in the drm_panel struct. Those are pretty consistently set
from either get_modes or prepare. The other thing those all have in
common is that the values don't change.

We could just add an entire drm_display_info struct inside drm_panel,
but I don't know if we can just copy that over or set a pointer
without breaking something else, since some of the values in the
drm_display_info struct are not set by the panel (but maybe set by
something else).

>
> If we start parsing DT and encounter failures, it's going to be very
> confusing if that's at panel attach time where code will usually just
> assume that everything is already validated and can't fail anymore.
>
> Thierry

Thanks for the review

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
