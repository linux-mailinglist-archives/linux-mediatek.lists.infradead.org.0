Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AEF157017
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Feb 2020 08:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mapn77BbwoiV5J8LjxOv5kA7kjo+s2YSnByob2M075Q=; b=X5VS1HppHEsC+0
	6jIcR0C9f36aPZ4dacaBMkFH7Cvg1KgFjvcL6erGTwDk7TZU08g6ypOmAzm101BtPuZdSO6YpkLnz
	hZueXSwbcJ0NJQJOjp0VGPpBKrkfV09MNPgjzJcxpOHEkF6iPVbdmbNgBLfK53jD9qrw5CK5DhxV6
	nDK+8vcVksbjsUMmf5oioOpQ07jFuZi+4II86I/Fqt/2NdZKs2NVPPSitAIhcD5TQ6NPv8nCS6EjX
	DzNLv72gA1Vp7pMOs/v5ydKrKChAkogcnp8YBnGFFr0VIXVlC0r/RPD+/tXNv9EsFqSDqM96e3bJm
	6IhAkBuqvcc7NihOTgmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j13qf-0001oF-4l; Mon, 10 Feb 2020 07:51:17 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j13qW-0001i2-ML
 for linux-mediatek@lists.infradead.org; Mon, 10 Feb 2020 07:51:10 +0000
Received: by mail-vs1-xe44.google.com with SMTP id k188so3491082vsc.8
 for <linux-mediatek@lists.infradead.org>; Sun, 09 Feb 2020 23:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u3O+szgfwEJKuo4yzEkWiTVNHGumVBlqNQZE9NfjV7I=;
 b=QsC4PDi5ZlYbAjfw6pBUa0KPphhE/VVoGj6kVK1MAL7QZqo9wjmEBLb9Ikbb7Fp770
 o5u/R5ApawhiT5Waee9rnPrac69HShLMufZLupjUjI/CMI3snfnPnH5LdDWGPL7q39dr
 Evp1CxZoX8gCVNOonqGfUiXeiuwNtbZ+WegCEVukUffQd+2gilW7icSVWUk6sIYv749b
 slMXTUuMoGaFUwlQwE/ldzraKsne3DiELel3X/Jp70Dz80496OwgjZdM776TADILQLuO
 yAjl54QHAMbG0F+Y6cIXjrS11+kCEVl5NN47dW7kpuL4QC9qVts5HHxcSN5tLZgx3jY5
 Purg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u3O+szgfwEJKuo4yzEkWiTVNHGumVBlqNQZE9NfjV7I=;
 b=mWh/R4BKfgcTiOjCDEuZktLNeLZzg8hPmahm+APf1v1/Q0J0orp7RgF5b/UoyP4oWv
 OOgr3eXB+uvXPaDOgbpcIhh9IZnWR/ddzm+iBURUR0HOe3U9oBr9J3SIZVO0hBUykX4J
 1rRwfEp3HfkL1xTuVqX/CTvevH87Wi9TmR2pMplD+rjsGWUYeLrDkBlCVEf0A11O8FPe
 rdQeozObV/Xt9bH9HzJL3bWWB9qI667bkmwHiohw5klzyvwc/en+SWi9U3Davb6FCyZK
 WHh45UEzUGo/e6ZGs2wHBc1se1C5HWvFHazGj07dCi5/j8jdXzUhugSxdYV0A3sDOIgn
 n/cA==
X-Gm-Message-State: APjAAAVhjirzi0U0Ws6XcX0L95tSWjZZF1FHEYEVdexy29sFqmA9dqSc
 vqrLd+Wqt7UI6B1kRoxGWw7UpUSuZKa2N4DVuaBTpQ==
X-Google-Smtp-Source: APXvYqypbI21Yfdn+EA6ub6ed50JBoiEO60Ni/AfECIKY1ZvJ0o8EXmbyp6DUzxmNBzjRT7iyDPYhJySfgC8H0ANL9s=
X-Received: by 2002:a67:ee02:: with SMTP id f2mr5601456vsp.165.1581321061313; 
 Sun, 09 Feb 2020 23:51:01 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
 <CAPDyKFoz0gUkoofWkd6dFuOkRWqeeCDrv84UHyYYowAAgTiitw@mail.gmail.com>
 <CANMq1KA+3O+G+_r=xY98eK-in5i3HWg+4B4-ONk-6qWS3a9=0g@mail.gmail.com>
In-Reply-To: <CANMq1KA+3O+G+_r=xY98eK-in5i3HWg+4B4-ONk-6qWS3a9=0g@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Feb 2020 08:50:25 +0100
Message-ID: <CAPDyKFrq5KQ7CHnMSCv7GqzpQyVfDQgLYjUVzeweTwKR3AmM4g@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_235108_763592_0BD1DCD4 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 9 Feb 2020 at 13:50, Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Fri, Feb 7, 2020 at 10:26 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Fri, 7 Feb 2020 at 06:27, Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > When there is a single power domain per device, the core will
> > > ensure the power domain is switched on (so it is technically
> > > equivalent to having not power domain specified at all).
> > >
> > > However, when there are multiple domains, as in MT8183 Bifrost
> > > GPU, we need to handle them in driver code.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > Besides a minor nitpick, feel free to add:
> >
> > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> >
> > Kind regards
> > Uffe
> >
> > [snip]
> > > +static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
> > > +{
> > > +       int err;
> > > +       int i, num_domains;
> > > +
> > > +       num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
> > > +                                                "power-domains",
> > > +                                                "#power-domain-cells");
> > > +
> > > +       /*
> > > +        * Single domain is handled by the core, and, if only a single power
> > > +        * the power domain is requested, the property is optional.
> > > +        */
> > > +       if (num_domains < 2 && pfdev->comp->num_pm_domains < 2)
> > > +               return 0;
> > > +
> > > +       if (num_domains != pfdev->comp->num_pm_domains) {
> > > +               dev_err(pfdev->dev,
> > > +                       "Incorrect number of power domains: %d provided, %d needed\n",
> > > +                       num_domains, pfdev->comp->num_pm_domains);
> > > +               return -EINVAL;
> > > +       }
> > > +
> > > +       if (WARN(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs),
> > > +                       "Too many supplies in compatible structure.\n"))
> >
> > Nitpick:
> > Not sure this deserves a WARN. Perhaps a regular dev_err() is sufficient.
>
> Ah well I had a BUG_ON before so presumably this is already a little better ,-)
>
> You can only reach there if you set pfdev->comp->num_pm_domains >
> MAX_PM_DOMAINS in the currently matched struct panfrost_compatible
> (pfdev->comp->num_pm_domains == num_domains, and see below too), so
> the kernel code would actually be actually broken (not the device
> tree, nor anything that could be probed). So I'm wondering if the
> loudness of a WARN is better in this case? Arguable ,-)

I see. It's not a big a deal, so feel free to keep as is.

[...]

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
