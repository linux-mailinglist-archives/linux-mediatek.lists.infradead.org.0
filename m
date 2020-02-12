Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C17159EFE
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Feb 2020 03:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHdkuLOjtvOfEov9NhbT8qUnfSoDCOqNNuPG6o9ErQ4=; b=LtXb1AYhNizFQH
	Wr2cACY4tampv8empo+K2g7NrccpRJHv4xdTkXbetyX5ZAuX1Ldqt+HbPwc1ogRc5QqmQYg9DP9Wc
	PSjabOi+tcuBsGS4TDGKP22x2mNc+5UIIK/v+kxy873dvuRwewlLh37nc2wpXsFyOtQ1dnnLPSRMz
	Y6CT51H+8tWgpbR3hK3F4AnqCtiAamz9TLh/IgVqdeRaxfeaDVilfTVGfxe0WhVr1z0rpZQjc5+Pz
	W/qkh6jg2qfd4qpcE6NS2lX8gmAjBxJJoHBSSGoJKEPJzmqEfHdlSppAYE8j/vsj5gjTiAF6m3FoO
	1BYaxv71/n5UQucr2/2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hSN-0003Kp-0Y; Wed, 12 Feb 2020 02:08:51 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hSB-0003BQ-9D
 for linux-mediatek@lists.infradead.org; Wed, 12 Feb 2020 02:08:42 +0000
Received: by mail-qk1-x742.google.com with SMTP id q15so578891qke.9
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Feb 2020 18:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aO1UKgSaz5CktVcc4Y8RcygWfgexx86iGtyjlHVU3kc=;
 b=Ra4CJUVRnDxwoRk1QHlRr35m77IrmNP+H+pxr+bZOB0DUqvHsCjOXSRfGg8rh5YTc/
 bgIS4sXVXPWDN0WSvdb5FMIFOhtL88yKaI01xKq0D1/4ULI+kJq4x8UcjsWQePCqsrs8
 6+XGOuD6jIhd4dxdCqcpHLWlftWwwtVIkMYXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aO1UKgSaz5CktVcc4Y8RcygWfgexx86iGtyjlHVU3kc=;
 b=KZd+K3ske1TRHieuEFpLRkMUvTrVEfwwY7P6NAJgBdy2Oli5isBA+5XbQ56zxBFF4e
 UAFEPF2YOaZRsq7rNgBUCZVw1M/ryLv/p06nHXiVQsVSmIvnMRcsC29oEen8ueG1Vsck
 MnZlAef1jsBO4USESkasGrxz8YqdDVxppYqpz+wMMuoIMYv31et9vRCwkBCl2sFniTcu
 jBoqtzJTZqxn0tK1ciMqkmGxkOoy+AK6drrLcxqB65cUO/xTMdgTQz/w/X//gCBLB41D
 rbQNPwVDAp/GKrqYmFuizft3N7IDTmBFrSBkVjxOZO9itJJeYTzHR2dERXizDoYYL5e6
 PC3w==
X-Gm-Message-State: APjAAAUl1r92gRSujzBc+yBsh8PcSzFHwFs+fDX538RVQueJT9HyR/0f
 iMIEvBBN8dznbi2cCy73uRTazu9hLpc59DMGYkBPow==
X-Google-Smtp-Source: APXvYqwbzvTmz/rK3xPb+7Zh0OWCEANWSI8B0x6aGBv3LzyJNw2pam02x3/hzeuy9xsPHf377lq3HNhZe8a4gYL9G7M=
X-Received: by 2002:a05:620a:6d7:: with SMTP id
 23mr8405839qky.299.1581473317421; 
 Tue, 11 Feb 2020 18:08:37 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
 <CAL_JsqLshgzmhGGa+XibosSgk6R_9DQkDf12s793UZcvbQbxKw@mail.gmail.com>
 <CAGETcx_3-ZoVAf+Uf0Yo86pUU1nL4S4-jrS0eZi50yvhCO985g@mail.gmail.com>
In-Reply-To: <CAGETcx_3-ZoVAf+Uf0Yo86pUU1nL4S4-jrS0eZi50yvhCO985g@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 12 Feb 2020 10:08:26 +0800
Message-ID: <CANMq1KC2LEQ2iQzGDVAi+-x4Uy1LLB8JU-grTBVTL-iRej-t4A@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_180840_457084_883ADD42 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:09 AM Saravana Kannan <saravanak@google.com> wrote:
>
> On Tue, Feb 11, 2020 at 11:44 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > +Saravana
> >
> > On Thu, Feb 6, 2020 at 11:27 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > When there is a single power domain per device, the core will
> > > ensure the power domain is switched on (so it is technically
> > > equivalent to having not power domain specified at all).
> > >
> > > However, when there are multiple domains, as in MT8183 Bifrost
> > > GPU, we need to handle them in driver code.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > >
> > > ---
> > > [snip]
> > > +               pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
> > > +                               pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
> > > +                               DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
> >
> > We're in the process of adding device links based on DT properties.
> > Shouldn't we add power domains to that? See drivers/of/property.c for
> > what's handled.
>
> Rob,
>
> drivers/of/property.c doesn't enable the RPM_ACTIVE AND PM_RUNTIME
> flags. Wanted to start off conservative. But adding command line ops
> to change the default flags shouldn't be difficult. But before I do
> that, I want to change of_devlink to
> fw_devlink=<disabled|permissive|enabled>. May be I can extend that to
> "disabled, permissive, suspend, runtime".
>
> Nicholas,
>
> And the adding and removing of device links for power domains will be
> a 2 line change. I've been meaning to add a few more bindings like
> hwspinlocks and pinctrl. I can roll power domains support into that if
> you want.

Adding power domains makes sense to me, as there are a bunch of other
users (git grep dev_pm_domain_attach_by_name).

This seems to be a bit orthogonal to this patch though. If your
solution lands before this (and not something that is behind a command
line option), then I'm happy to make use of it. Either way, happy to
test things.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
