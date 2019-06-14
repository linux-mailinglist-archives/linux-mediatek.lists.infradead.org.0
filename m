Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E5B450C3
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 02:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=As9NjhvazdwoIOcwMzcoDXLeSbh/DNF4oIIGGsOw6HY=; b=QeKf89uhyYa4mi
	pwk0VBc+7Wl/tZCMduAS2RTodiAY+G9cGcYNs2uxtAcylYCawnkuyIWQYFkAERlZvq3w1eyhpuP54
	uC86EwFz6i+qXnCTLgyDueFiSo+DXkUyznBUUq0VYnhzMMofdGuB8/nDkiXx7qhtv0+YtVy6dyUur
	WAlS1+dThENEXjCeusPpL1ueGpm1IFJh+cDXusOqSmoAqWTnpGen8FXUsad26F4NhXwqAx9ZapKIw
	CvJaqtSFmvTxVgjQZHVk+GOEq+BiYrLy7fbSb01Tq61G56/HmmXdaxwh3EECRipxLstMO58c4JSmL
	weS64NV6YZSfDhe79ogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbaDB-0001X0-KZ; Fri, 14 Jun 2019 00:36:57 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbaD1-0001NW-0q
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 00:36:48 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a186so672710vsd.7
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Jun 2019 17:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kvz44rB7tgJ0lFfHfKXCBCgyFSEqMN4h+J2Mv3vvphI=;
 b=YRTBrlE2LA8uxN3PfDev4WOSZ4TCRgathqM3/1KwUpGO755YbZ7mnN+QeS3kbrUx+m
 Z4HBVjV4H2pV1hTuQOtYcKJkpVd8+sXJdy4ASJAr8xzPotDqIxxySu2jgYytgEpTQ0vq
 Bl7zFudutTrWJYi7GuLOXu6X27Uc6/ypFvM9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kvz44rB7tgJ0lFfHfKXCBCgyFSEqMN4h+J2Mv3vvphI=;
 b=DHX8HBGhBl57gIiiU1GokSLOj73mGG4Cnwj5oQp75Lu8QR7YxYC/t0Gn39NfNptGio
 JUhS/JseqeTQVnbFtKV3T3HT8v2qv6KFIeRl/QoQyHuMOCAnoMCrduHG6Z5mYb4oVyJW
 pDF1GA23smbMhnHCsKEtqTrTj0v0siPB2tVg/k9M3QBhqo3Ejug6o1aN8ZJtrEeawTDR
 YSnMWkn/exgEdKg6ztWgIVm/TEStf7mpQ9I7/YJ1hmL4rT7OfV/x00EDcVLia5UPsHk5
 GzngUvtR2kY0HDjmNke2Z6xWhxfQZfBW+T1rx8KTyXc/nheY+qYqHlpXkmfzVT2HcsRx
 4W+w==
X-Gm-Message-State: APjAAAUwIqhBqZoUa37SvYex3hfSoI0h4j7qfVw2mwb2X1pcPqUe3ZNh
 lkakG6njNe6kfl1OkhGR0Q9sjDRpbDqcvQBc6Xu2iQ==
X-Google-Smtp-Source: APXvYqwTL6POXul88bkWpISrGlVLaKAoVDJaFXMv89Ef1GdZT2k2cGQZJDTzBLr/6j7plsyb3Poj9HWMfiJa4fFKTHk=
X-Received: by 2002:a67:ea42:: with SMTP id r2mr40062385vso.207.1560472604694; 
 Thu, 13 Jun 2019 17:36:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
 <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
 <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
In-Reply-To: <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Thu, 13 Jun 2019 17:36:33 -0700
Message-ID: <CAGAzgsrYAaHTuxpt2rQAVbCtx_fCZAd99hX19H4V4h6ZyHwbkw@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
To: Hans de Goede <hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_173647_061090_03341A5E 
X-CRM114-Status: GOOD (  29.08  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 David Airlie <airlied@linux.ie>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 5:33 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 12-06-19 02:16, dbasehore . wrote:
> > On Tue, Jun 11, 2019 at 1:54 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >>
> >> Hi,
> >>
> >> On 11-06-19 10:08, Jani Nikula wrote:
> >>> On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
> >>>> This removes the orientation quirk detection from the code to add
> >>>> an orientation property to a panel. This is used only for legacy x86
> >>>> systems, yet we'd like to start using this on devicetree systems where
> >>>> quirk detection like this is not needed.
> >>>
> >>> Not needed, but no harm done either, right?
> >>>
> >>> I guess I'll defer judgement on this to Hans and Ville (Cc'd).
> >>
> >> Hmm, I'm not big fan of this change. It adds code duplication and as
> >> other models with the same issue using a different driver or panel-type
> >> show up we will get more code duplication.
> >>
> >> Also I'm not convinced that devicetree based platforms will not need
> >> this. The whole devicetree as an ABI thing, which means that all
> >> devicetree bindings need to be set in stone before things are merged
> >> into the mainline, is done solely so that we can get vendors to ship
> >> hardware with the dtb files included in the firmware.
> >
> > We've posted fixes to the devicetree well after the initial merge into
> > mainline before, so I don't see what you mean about the bindings being
> > set in stone.
>
> That was just me repeating the official party line about devicetree.
>
> > I also don't really see the point. The devicetree is in
> > the kernel. If there's some setting in the devicetree that we want to
> > change, it's effectively the same to make the change in the devicetree
> > versus some quirk setting. The only difference seems to be that making
> > the change in the devicetree is cleaner.
>
> I agree with you that devicetree in practice is easy to update after
> shipping. But at least whenever I tried to get new bindings reviewed
> I was always told that I was not allowed to count on that.
>
> >> I'm 100% sure that there is e.g. ARM hardware out there which uses
> >> non upright mounted LCD panels (I used to have a few Allwinner
> >> tablets which did this). And given my experience with the quality
> >> of firmware bundled tables like ACPI tables I'm quite sure that
> >> if we ever move to firmware included dtb files that we will need
> >> quirks for those too.
> >
> > Is there a timeline to start using firmware bundled tables?
>
> Nope, as I said "if we ever move to ...".
>
> > Since the
> > quirk code only uses DMI, it will need to be changed anyways for
> > firmware bundled devicetree files anyways.
> >
> > We could consolidate the duplicated code into another function that
> > calls drm_get_panel_orientation_quirks too. The only reason it's like
> > it is is because I initially only had the call to
> > drm_get_panel_orientation_quirk once in the code.
>
> Yes if you can add a new helper for the current callers, then
> I'm fine with dropping the quirk handling from
> drm_connector_init_panel_orientation_property()
>

Ok, it sounds like having a special callback for quirks in the panel
orientation property is the best way to go. The handles the duplicate
code and devicetree bundles. If we need to fix something that's
specified in a devicetree, and we aren't willing to change it, we can
write the quirk code for that later.

> Regards,
>
> Hans

Thanks for the feedback

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
