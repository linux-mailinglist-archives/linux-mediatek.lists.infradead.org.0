Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC55149F5D
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 Jan 2020 08:56:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO0qbYcHrKfelDC6TXccn6W0g1+3r6uv3pa1qBwBp2g=; b=Ldw4qXnh+L/B6b
	w5UCjmthVsuH3YSBFOlfoGVCg47vAtPS0qEhu3PZbBlPl+hj5Oak8FYRenTPwbaa4WwA0rS0KW2mT
	6FbVXGpmlqtveKtwxl7F/OFdqjyHd6mnH5ZfEsavfIXlZ+5PlvSX4ueCQrGq0Rk7mPIRRrOK/Ge+3
	qoZI0kbbWT+DPYDspB99sGS4pj0fOEUX00lu/zOadACyM36jjkE43p7QwuVivDpshOsRgncY27XgP
	22nRL/Ri1R8R6rIsWkwdtn+kvBuxdNKuuTvTukvU3ncfDJ1iEW4KLoJ2wY6DHizFE2jYKxVZJmBiF
	x7zi3QWnJS7wisuSAA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivzFY-0002CM-9d; Mon, 27 Jan 2020 07:56:00 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivzFM-00021f-2T
 for linux-mediatek@lists.infradead.org; Mon, 27 Jan 2020 07:55:49 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g23so5036528vsr.7
 for <linux-mediatek@lists.infradead.org>; Sun, 26 Jan 2020 23:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JisW5FdHqDfpueRuACrKxki3mS2+DqkIGJ6tqvYKBYg=;
 b=kSO/uE+41usEvH7ebSjUhk6e1/GR1kdSgxZbiRxsCAhlZoPKgznwup/h/2aiurqXba
 seFxgj3oUfrgEWcKa+G614+LeCAaTNBjCdbjJPXw0HZTQ7jIJIx56MVRyj5idy2Njihw
 1lvg7u/sCsRI9lQAUgiE+1pj3eYt3mM8RKqpvOqGY4GoQ8WpnDC8loBTB3RIAdXpJd1t
 uvhGn77x1mkhssxugQBP4QZX/BGJNtXHXbfds528PcECqhauXzE+uRrC+XgHw3VmoWxm
 cfiAWEvIJOhatU7LA2qPT3/WwEw8MlcDjWSC/qZE6TC9IgUl8qSgQSK+hpv1LKGzU+vi
 04YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JisW5FdHqDfpueRuACrKxki3mS2+DqkIGJ6tqvYKBYg=;
 b=CdYLTqTQnMgUNoQWVI6995KxSeV0o2LeXVUySFfSL0txAjG6wzzfgPMxPUC6PR8q/H
 jWEr7Qr+e5ZUbDchzOtM8OKJ9IuhsknCUYUp1+uur0ANj3MmjVgUFmUtYhtlKznvrs0L
 4Tw1HmRwoapIg9M8WpdJsnwB3qx7lkMEsbqNoxv/iY9X57yubhLoaLpRd7HjNJzdUYFp
 WgtL8pzTGvsOGgCiFLZz4BHFrYvKVcUuOMykW0EvYQMxObKiedDibdEIkjlfQ36HDWzl
 pD3S6lNu2YTUxUeE71uemgNMcWpqYYNxs1GkYG4l3mTyCWJcqq3sfjusXxtiyOgivLxD
 jIdQ==
X-Gm-Message-State: APjAAAXN11pPcJ5m1w/yhJ/H86wNpx/8fdMJeX/RSsiGViHv/igk7x1Z
 ifzA5Xf5LEi58MLPPALGsjfi+nn5dPe/QkWHWZirtg==
X-Google-Smtp-Source: APXvYqyL1TCg49AaeGX4CVUErd9kezem7knF5p9I+JWV1m4AIpmUm9yBXdiHxcp8rC0t9W4QBLYziKJLuXWuYii+iQs=
X-Received: by 2002:a67:ee02:: with SMTP id f2mr584267vsp.165.1580111746386;
 Sun, 26 Jan 2020 23:55:46 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-6-drinkcat@chromium.org>
 <b58a8cf9-3275-cf89-6dff-596aceeb8000@arm.com>
 <CANMq1KBcNr=1_poBHrA_SDo_h-5i3e5TMqASEVaDj5LevsRcOQ@mail.gmail.com>
In-Reply-To: <CANMq1KBcNr=1_poBHrA_SDo_h-5i3e5TMqASEVaDj5LevsRcOQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 27 Jan 2020 08:55:10 +0100
Message-ID: <CAPDyKFr4Vz1ihuFQNnhDLEnOs=BZ1n2wzw3CATgPcDXs9g54uA@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] drm/panfrost: Add support for multiple power
 domain support
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_235548_147985_B59AAD3E 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 at 02:53, Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> +Ulf to keep me honest on the power domains
>
> On Thu, Jan 9, 2020 at 10:08 PM Steven Price <steven.price@arm.com> wrote:
> >
> > On 08/01/2020 05:23, Nicolas Boichat wrote:
> > > When there is a single power domain per device, the core will
> > > ensure the power domains are all switched on.
> > >
> > > However, when there are multiple ones, as in MT8183 Bifrost GPU,
> > > we need to handle them in driver code.
> > >
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > ---
> > >
> > > The downstream driver we use on chromeos-4.19 currently uses 2
> > > additional devices in device tree to accomodate for this [1], but
> > > I believe this solution is cleaner.
> >
> > I'm not sure what is best, but it seems odd to encode this into the Panfrost driver itself - it doesn't have any knowledge of what to do with these power domains. The naming of the domains looks suspiciously like someone thought that e.g. only half of the cores could be powered, but it doesn't look like that was implemented in the chromeos driver linked and anyway that is *meant* to be automatic in the hardware! (I.e. if you only power up one cores in one core stack then the PDC should only enable the power domain for that set of cores).
>
> This is actually implemented in the Chrome OS driver [1]. IMHO power
> domains are a bit confusing [2]:
>  i. If there's only 1 power domain in the device, then the core takes
> care of power on the domain (based on pm_runtime)
>  ii. If there's more than 1 power domain, then the device needs to
> link the domains manually.
>
> So the Chrome OS [1] driver takes approach (i), by creating 3 devices,
> each with 1 power domain that is switched on/off automatically using
> pm_runtime.
>
> This patch takes approach (ii) with device links to handle the extra domains.
>
> I believe the latter is more upstream-friendly, but, as always,
> suggestions welcome.

Apologies for the late reply. A few comments below.

If the device is partitioned across multiple PM domains (it may need
several power rails), then that should be described with the "multi PM
domain" approach in the DTS. As in (ii).

Using "device links" is however optional, as it may depend on the use
case. If all multiple PM domains needs to be powered on/off together,
then it's certainly recommended to use device links.

However, if the PM domains can be powered on/off independently (one
can be on while another is off), then it's probably easier to operate
directly with runtime PM, on the returned struct *device from
dev_pm_domain_attach_by_id().

Also note, there is dev_pm_domain_attach_by_name(), which allows us to
specify a name for the PM domain in the DTS, rather than using an
index. This may be more future proof to use.

[...]

Hope this helps.

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
