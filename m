Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF0B74149
	for <lists+linux-mediatek@lfdr.de>; Thu, 25 Jul 2019 00:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qIQpl6hlGklMKCIt6RTLWlk/jgaMSqktYp+/Xy6hEA=; b=RSwDOjAdynvD69
	3xtZbbT+U7Na5SqAdJybTuYPiAplKqB4FqxY6Kb/3IouiVgqjZHVvpo7aZNLCeWB2dVrV5NOZpknl
	L4hRwNtoA2K+M74Qn46Z6FfrpbZ/6wpXxGWxwDImpj1wzlCs2Wzn++VDJWxup4lr6oQdRMyI1dMDr
	kFWZkGne8q6uTod+nQNECuOweS8P1FKetqEHBnm6WtS2CbvY3j9pNAdifSy8or67JcZ+TtH2k9nlZ
	ZbZLhyGY7zrZg9Sz2J7RnRbU9uyzsp4Q7xALXoIvZUU93yXWu9UiKBbASrPcOdwpmJ4ITzayb8SPW
	ynpyU7Kv87GYfnyjUHrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPXy-0004jF-4L; Wed, 24 Jul 2019 22:15:42 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPXs-0004XR-1H
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 22:15:37 +0000
Received: by mail-ua1-x944.google.com with SMTP id a97so19035382uaa.9
 for <linux-mediatek@lists.infradead.org>; Wed, 24 Jul 2019 15:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h6iTGbrUj20I8zXniTeQ544bNCuLGyZB+YlcvBGsDjw=;
 b=QjMnrXveL05m7SHFOkDi+a02nbwWABa8uU8sNtH30U4t6yef45p+bYczQ9t7NU/950
 mTkzHvr0KUu9Gz63UOr+C9TUeTOcrYKzHzRbGoLZrL02mYYBlsT+wdqezNU65Lmixk/C
 UBThtKqkwyQehSA5xllnpBSs2w4OYjl1HLulM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h6iTGbrUj20I8zXniTeQ544bNCuLGyZB+YlcvBGsDjw=;
 b=Fg6/PIiRQt/Ev1GsfiWfWOffk2e3OAGNqDpO62mK/RhAXouKM+KFCT2GmrE7eisk+e
 zGZwXippPRcPoMSDVoF1UV9d25E49WD/lGrSKgXJzj9DTxnBO6KkAQxA7IU41xkuV+B4
 laAxzX41/RUdKVlbL+a9VtU1ul0CAEkXPEkEudIqATQXILA/7gYV0EWdWfTfjp3CAv57
 ZlRdwOgFNjFGRl2Az8mtGaKN9sfA0rR9DqqC3lo7lH/IBnhemO9pvyc5BbYD0INe8ESL
 50saabl3g9glCrr+iOC5QFwUim0O1nOsE0jR2+4R7A83/nJ2dTqLX8/TnjlNjbTFELYP
 ETog==
X-Gm-Message-State: APjAAAXRsymw3LH0wffHVwGpNEsRoGqqD+cEGfl9obT5/68laaukw+Su
 n3xaJ384F2XEBQCF6p5fFheHf2TNDVoFgdp10iNC4Q==
X-Google-Smtp-Source: APXvYqx7BFn9iOZ2wlwR0mjBuA9rIFMZM3RWFpJKuC+0oBv8yw1N5p6TIxqSauPfez/DPzzJ4xYri1jiwaditw5mz3E=
X-Received: by 2002:ab0:614d:: with SMTP id w13mr34675942uan.66.1564006530811; 
 Wed, 24 Jul 2019 15:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190710021659.177950-1-dbasehore@chromium.org>
 <20190710021659.177950-3-dbasehore@chromium.org>
 <20190723091945.GD787@ravnborg.org>
In-Reply-To: <20190723091945.GD787@ravnborg.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Wed, 24 Jul 2019 15:15:19 -0700
Message-ID: <CAGAzgsonxAcOLxPSoP6Swab+AFPxWaxmC_tg87J=6Nes_awACg@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] drm/panel: set display info in panel attach
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_151536_113931_FDEFCB24 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Sam, thanks for pointing out the potential conflict.

On Tue, Jul 23, 2019 at 2:19 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Derek.
>
> On Tue, Jul 09, 2019 at 07:16:57PM -0700, Derek Basehore wrote:
> > Devicetree systems can set panel orientation via a panel binding, but
> > there's no way, as is, to propagate this setting to the connector,
> > where the property need to be added.
> > To address this, this patch sets orientation, as well as other fixed
> > values for the panel, in the drm_panel_attach function. These values
> > are stored from probe in the drm_panel struct.
>
> This approch seems to conflict with work done by Laurent where the
> ownership/creation of the connector will be moved to the display controller.
>
> If I understand it correct then there should not be a 1:1 relation
> between a panel and a connector anymore.


Can you point me to this work? I still see the lone drm_display_info
struct in the drm_connector struct. This seems to indicate that the
kernel still assume one display per connector.

>
> We should not try to work in two different directions with this.
> Laurent, can you comment on this?
>
> If we move forard with this patch, then all fields in drm_panel needs
> kernel-doc - preferably inline.
>
>         Sam
>
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 28 ++++++++++++++++++++++++++++
> >  include/drm/drm_panel.h     | 14 ++++++++++++++
> >  2 files changed, 42 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index 169bab54d52d..ca01095470a9 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> >   */
> >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> >  {
> > +     struct drm_display_info *info;
> > +
> >       if (panel->connector)
> >               return -EBUSY;
> >
> >       panel->connector = connector;
> >       panel->drm = connector->dev;
> > +     info = &connector->display_info;
> > +     info->width_mm = panel->width_mm;
> > +     info->height_mm = panel->height_mm;
> > +     info->bpc = panel->bpc;
> > +     info->panel_orientation = panel->orientation;
> > +     info->bus_flags = panel->bus_flags;
> > +     if (panel->bus_formats)
> > +             drm_display_info_set_bus_formats(&connector->display_info,
> > +                                              panel->bus_formats,
> > +                                              panel->num_bus_formats);
> >
> >       return 0;
> >  }
> > @@ -128,6 +140,22 @@ EXPORT_SYMBOL(drm_panel_attach);
> >   */
> >  int drm_panel_detach(struct drm_panel *panel)
> >  {
> > +     struct drm_display_info *info;
> > +
> > +     if (!panel->connector)
> > +             goto out;
> > +
> > +     info = &panel->connector->display_info;
> > +     info->width_mm = 0;
> > +     info->height_mm = 0;
> > +     info->bpc = 0;
> > +     info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > +     info->bus_flags = 0;
> > +     kfree(info->bus_formats);
> > +     info->bus_formats = NULL;
> > +     info->num_bus_formats = 0;
> > +
> > +out:
> >       panel->connector = NULL;
> >       panel->drm = NULL;
> >
> > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > index fc7da55f41d9..a6a881b987dd 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -39,6 +39,8 @@ enum drm_panel_orientation;
> >   * struct drm_panel_funcs - perform operations on a given panel
> >   * @disable: disable panel (turn off back light, etc.)
> >   * @unprepare: turn off panel
> > + * @detach: detach panel->connector (clear internal state, etc.)
> > + * @attach: attach panel->connector (update internal state, etc.)
> >   * @prepare: turn on panel and perform set up
> >   * @enable: enable panel (turn on back light, etc.)
> >   * @get_modes: add modes to the connector that the panel is attached to and
> > @@ -95,6 +97,18 @@ struct drm_panel {
> >
> >       const struct drm_panel_funcs *funcs;
> >
> > +     /*
> > +      * panel information to be set in the connector when the panel is
> > +      * attached.
> > +      */
> > +     unsigned int width_mm;
> > +     unsigned int height_mm;
> > +     unsigned int bpc;
> > +     int orientation;
> > +     const u32 *bus_formats;
> > +     unsigned int num_bus_formats;
> > +     u32 bus_flags;
> > +
> >       struct list_head list;
> >  };
> >
> > --
> > 2.22.0.410.gd8fdbe21b5-goog
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
