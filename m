Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0051B155079
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 03:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cIDy0mbMJmPt59UAD05eG00EkT5rlDoYxGZb7+Ay/U=; b=OpeaeY/DtLwe4Y
	9SQcvgdnhNqja4nVgndG5kwQ5LAsrfbz89Smm3W6q6Gwsh+OQBHgPyS/YaWVcIdjB0MHPREFqBwkV
	KtlV6PGLMvccNKcVCSKv8h5BWq9F5ndXGpw9BpECnKgNMNJ9gA83Ds+3t72DrQLa5DTmNwGzJsG0E
	TwWcpew923o/+ORgX4e0U+iYHBFXIIJu6wPSGWVNBPhqCCxiiQum0xDKEcYDRYcQ0Fa3FSZjT7+A7
	V3yfPWvTsngoBVq/5r/5hZeJnO9fXQT9Cc+fyfXx5i/cJ+u4E8LgyNXSP6rMKH7KOazUr1Rng2CH6
	FueD+jnwATWmDtV0WRzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izt17-0008Og-RH; Fri, 07 Feb 2020 02:05:13 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izt0j-0008Ej-S7
 for linux-mediatek@lists.infradead.org; Fri, 07 Feb 2020 02:04:51 +0000
Received: by mail-qk1-x742.google.com with SMTP id g195so707436qke.13
 for <linux-mediatek@lists.infradead.org>; Thu, 06 Feb 2020 18:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xQNdH8HSEiIzxaho14u/BEs8wUQb+GjAw81SGUP7GdU=;
 b=DRN9eI/n8c0Gcre3b5rd94tWww0SnkeFdjPCVRH56fDZ+ZMERq0Hh3FJ+fV3s0LvHW
 h4PA2j0WNkLvGAVkenJcVRH867RrT/K+yBxCm/rKUFacSo/t5jTnaJrDpwqeRb/l3vVi
 oX2RtZTG+BPEjvKnpzEhYgSreKrlzX82vQ8i0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xQNdH8HSEiIzxaho14u/BEs8wUQb+GjAw81SGUP7GdU=;
 b=CYrAjXUHUJTrwOcqjJ9hx4Y2UKq5D6J3DkcKE88QLhlY97T8FSU7d+eaVWDWprE1Bx
 p5KVSv0Q2/S1EnSrnupMOiakMyBeEW2fPfDRfAHSdoZu+vA0YmVHteh2S8Ypcl+foxEy
 WbWzjmRdZHhsEQO91Rt7tPQRk2liRWJfhnlSfhuz+NgJBtNjxH0ZLrhZo9IJrTwgdVk0
 jBzEdXNHYT0M0n0KtNumAFZ2KLGz25W6DfmPHhu9b8GKoWyykfiStjnRpJhJT47WK3+i
 AuoZjXUVIhNGom8Q1IxaaHrdk+2kh/jwoqSL69TgIzUnlIqIDKMN7+5QilvgufXedp8s
 9+HA==
X-Gm-Message-State: APjAAAXAf7UGXOmagYKLD6AJ9ru39T6fjGmc2M/7FQpSiQx/o3OOm3Bd
 E/7Aj8LW21t7sYRgi/GUsocwhgOyWadEtd2hFqVVcw==
X-Google-Smtp-Source: APXvYqxcjzJPaNQ7j6RLDf2aEpB3XRG9jMZeN0SjoJdxuKlWm+e9t5RltA8xoLZ41gghj4Zu8N4HnqZrFuiNRVisbZ4=
X-Received: by 2002:ae9:ebd8:: with SMTP id b207mr5472135qkg.353.1581041088699; 
 Thu, 06 Feb 2020 18:04:48 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-6-drinkcat@chromium.org>
 <b58a8cf9-3275-cf89-6dff-596aceeb8000@arm.com>
 <CANMq1KBcNr=1_poBHrA_SDo_h-5i3e5TMqASEVaDj5LevsRcOQ@mail.gmail.com>
 <CAPDyKFr4Vz1ihuFQNnhDLEnOs=BZ1n2wzw3CATgPcDXs9g54uA@mail.gmail.com>
 <CANMq1KBCd0wNgVAxAzxBwafHoafPExz07wKFhEWQFViAc0LL1Q@mail.gmail.com>
In-Reply-To: <CANMq1KBCd0wNgVAxAzxBwafHoafPExz07wKFhEWQFViAc0LL1Q@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Feb 2020 10:04:37 +0800
Message-ID: <CANMq1KCTxcfePJVMc72byn+Z-rrxsAC_BNwiqiTxxMY20sbeqw@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] drm/panfrost: Add support for multiple power
 domain support
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_180449_904663_2C96D858 
X-CRM114-Status: GOOD (  27.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Feb 7, 2020 at 10:04 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> Hi Ulf,
>
> On Mon, Jan 27, 2020 at 3:55 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Fri, 10 Jan 2020 at 02:53, Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > +Ulf to keep me honest on the power domains
> > >
> > > On Thu, Jan 9, 2020 at 10:08 PM Steven Price <steven.price@arm.com> wrote:
> > > >
> > > > On 08/01/2020 05:23, Nicolas Boichat wrote:
> > > > > When there is a single power domain per device, the core will
> > > > > ensure the power domains are all switched on.
> > > > >
> > > > > However, when there are multiple ones, as in MT8183 Bifrost GPU,
> > > > > we need to handle them in driver code.
> > > > >
> > > > >
> > > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > > ---
> > > > >
> > > > > The downstream driver we use on chromeos-4.19 currently uses 2
> > > > > additional devices in device tree to accomodate for this [1], but
> > > > > I believe this solution is cleaner.
> > > >
> > > > I'm not sure what is best, but it seems odd to encode this into the Panfrost driver itself - it doesn't have any knowledge of what to do with these power domains. The naming of the domains looks suspiciously like someone thought that e.g. only half of the cores could be powered, but it doesn't look like that was implemented in the chromeos driver linked and anyway that is *meant* to be automatic in the hardware! (I.e. if you only power up one cores in one core stack then the PDC should only enable the power domain for that set of cores).
> > >
> > > This is actually implemented in the Chrome OS driver [1]. IMHO power
> > > domains are a bit confusing [2]:
> > >  i. If there's only 1 power domain in the device, then the core takes
> > > care of power on the domain (based on pm_runtime)
> > >  ii. If there's more than 1 power domain, then the device needs to
> > > link the domains manually.
> > >
> > > So the Chrome OS [1] driver takes approach (i), by creating 3 devices,
> > > each with 1 power domain that is switched on/off automatically using
> > > pm_runtime.
> > >
> > > This patch takes approach (ii) with device links to handle the extra domains.
> > >
> > > I believe the latter is more upstream-friendly, but, as always,
> > > suggestions welcome.
> >
> > Apologies for the late reply. A few comments below.
>
> No worries, than for the helpful reply!

(s/than/thanks/... ,-P)

>
> > If the device is partitioned across multiple PM domains (it may need
> > several power rails), then that should be described with the "multi PM
> > domain" approach in the DTS. As in (ii).
> >
> > Using "device links" is however optional, as it may depend on the use
> > case. If all multiple PM domains needs to be powered on/off together,
> > then it's certainly recommended to use device links.
>
> That's the case here, there's no support for turning on/off the
> domains individually.
>
> > However, if the PM domains can be powered on/off independently (one
> > can be on while another is off), then it's probably easier to operate
> > directly with runtime PM, on the returned struct *device from
> > dev_pm_domain_attach_by_id().
> >
> > Also note, there is dev_pm_domain_attach_by_name(), which allows us to
> > specify a name for the PM domain in the DTS, rather than using an
> > index. This may be more future proof to use.
>
> Agree, probably better to have actual names than just "counting" the
> number of domains like I do, especially as we have a compatible struct
> anyway. I'll update the patch.
>
> > [...]
> >
> > Hope this helps.
> >
> > Kind regards
> > Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
