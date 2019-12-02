Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447D410ECDE
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Dec 2019 17:12:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnbdIutAu9SqBypSLtsJw/Ba1VVkce8XgK1qG5zQAtg=; b=Z7yAZ/EJ7+Gn3s
	r/XmTlyxCK/uG49NSUqs7TkJfEmGW7GpZNSwEdcG5RaJHV9Gzl6k7KBJK2rAFClK54jQcXeh7aJMJ
	eF5iDAYJWrxpT7bkNuLyU9vHVerxSDaaP0vddK1NeLr0Vja3TjdlGhffC567oEVeLhKdZ1gA2JWRL
	yC116co0ZTNVCk+N2snr0piwRl9r792wKkDayaCajAi9V3NsMWStF6DP7JSOcQFd9SbgU+car9H8D
	zJX+1qXG5vAO15hObGC2RLZYjfn98yV1zGxWniO3Y2BImbxasCX4IQttxiN/9u32yykUuOyVT+8+s
	hJTwd7GzU57KzPkroBIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iboJI-00006O-5Y; Mon, 02 Dec 2019 16:12:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iboJ7-0008Q2-13
 for linux-mediatek@lists.infradead.org; Mon, 02 Dec 2019 16:12:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so45018977wrj.8
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Dec 2019 08:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Xv8o+WsUdwWC7CiaXpsHd5QUxK044+HKFw9W9npptk=;
 b=ig1O7d6GsDt4NBwP75X4Y5ujFXKgklak77SWNGcBuqnwXLGpk+P5XN90JKiEaf2DlT
 WrVdXQtvxPygQzaAZx5Wyn09al6SJ3AefSjaSRjKH65+vqyjjGV3AAI7blYUMk6bxxNU
 imZoAbvk8e7WIQaP2QJWb/dcdykPO0gubpktQ7rXHibDskvWbSc6e4RfKGeymd1SEHkQ
 rN4NCNH9RCYgSR8vJIq6oJKWcWEeRYOub/IGzL0nHFyW8U+kqcHiSk1Jtzj7DgCmQ2b1
 6mAr45FJYKlH47wLqjdCfiLeG38To+D9j+tZ1HBGdU1DBkzyDaikMHe5JMWjDCUZBREU
 +AIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Xv8o+WsUdwWC7CiaXpsHd5QUxK044+HKFw9W9npptk=;
 b=XoMkMMEURfokYaYMk4dXBORHt+AEd45+8L7hUy14PpL1pNANA7qclD8fRzdysZnnEO
 xFlN5QtSD+mmQYIE0KS0xZRKkgr81G7FNxuPlrF/iHM3NP+Ecd5TP46i8R/06QKqUKtL
 fOrcFVxJsX8kVkZPKtAOzQyShTsoZLZTnd9V9/H5Ye31o9rBEntWTmVjxzpP2EtODpBZ
 +UCKrhasaS8hhDKvC/EDtjI+49wLgqMRhjNwoZMSgziZsLi9LCZNAlcaVcW2ZGtsgmRe
 Zn+0ZXy37eqYwSfWOU3b6BmXYcXqM/B1mFlL9gnAddeYVThghxrqfVmk4VpPShsImAbI
 MabA==
X-Gm-Message-State: APjAAAWeSj9LG/zGSMYLSaWwU1F4sdBZiOAL4ysmHfXTfzE8A9EV6QXo
 RFQHfi4zDvDxQodKMKSAp6RCcrK2oLdTVrt9kOsElg==
X-Google-Smtp-Source: APXvYqxqte31rdFQPjtRI2d0z8l6rqekmUjNbkTYkhGQNfoYXbCoNDt/WGK3fQmslUDfdpQIN0cF13ot7mHRN/DXrE0=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr34600649wrv.0.1575303135165;
 Mon, 02 Dec 2019 08:12:15 -0800 (PST)
MIME-Version: 1.0
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
 <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
 <1575027046.24848.4.camel@mtkswgap22>
In-Reply-To: <1575027046.24848.4.camel@mtkswgap22>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 2 Dec 2019 16:12:09 +0000
Message-ID: <CAKv+Gu_um7eRYXbieW7ogDX5mmZaxP7JQBJM9CajK+6CsO5RgQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
To: Neal Liu <neal.liu@mediatek.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_081217_079134_D6FE13CD 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q3J5c3RhbCBHdW8gKOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Lars Persson <lists@bofh.nu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

(adding some more arm64 folks)

On Fri, 29 Nov 2019 at 11:30, Neal Liu <neal.liu@mediatek.com> wrote:
>
> On Fri, 2019-11-29 at 18:02 +0800, Lars Persson wrote:
> > Hi Neal,
> >
> > On Wed, Nov 27, 2019 at 3:23 PM Neal Liu <neal.liu@mediatek.com> wrote:
> > >
> > > For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> > > entropy sources is not accessible from normal world (linux) and
> > > rather accessible from secure world (ATF/TEE) only. This driver aims
> > > to provide a generic interface to ATF rng service.
> > >
> >
> > I am working on several SoCs that also will need this kind of driver
> > to get entropy from Arm trusted firmware.
> > If you intend to make this a generic interface, please clean up the
> > references to MediaTek and give it a more generic name. For example
> > "Arm Trusted Firmware random number driver".
> >
> > It will also be helpful if the SMC call number is configurable.
> >
> > - Lars
>
> Yes, I'm trying to make this to a generic interface. I'll try to make
> HW/platform related dependency to be configurable and let it more
> generic.
> Thanks for your suggestion.
>

I don't think it makes sense for each arm64 platform to expose an
entropy source via SMC calls in a slightly different way, and model it
as a h/w driver. Instead, we should try to standardize this, and
perhaps expose it via the architectural helpers that already exist
(get_random_seed_long() and friends), so they get plugged into the
kernel random pool driver directly.

Note that in addition to drivers based on vendor SMC calls, we already
have a RNG h/w driver based on OP-TEE as well, where the driver
attaches to a standardized trusted OS interface identified by a UUID,
and which also gets invoked via SMC calls into secure firmware.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
