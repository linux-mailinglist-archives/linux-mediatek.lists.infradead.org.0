Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7063115BABB
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 09:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHDnzYnV1DwoC2rmEpmH465uPbHtuGmNu1cxSWE73ZA=; b=WSPSjPgA4l61nL
	tt3T3z01j1cXC6mcosj2eT7U+9WiISgDM9vH8V55DT1M/XK/J2uRBfZR3hMwmsmh+6RNqAOp/Nn1C
	shI6agILS4eKCVp6pGD8eFzAmSGLZwuzWO3uHGkmhKUZvAE2HnYFiO0a5bBV/+1E42mpZ5aGrzTtJ
	V/CEPnN9WwTE9kK9X7GO5Zqh2+DmtqK8qXl4Ms94znSAD7+4WRnbt8JVgHCaSQksqRBZfZg7gGIwc
	zJQhwBqfalwj/aiMePRN3L7Ds2UgeMC+bfik5hO4/xVO4TqGWDOg0Cx5NOMY5w2VzMcLU5FnvsEnn
	N108vaW9pMRenczZ4ugw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29oR-0002wq-9Y; Thu, 13 Feb 2020 08:25:31 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29o7-0002Wx-CL
 for linux-mediatek@lists.infradead.org; Thu, 13 Feb 2020 08:25:26 +0000
Received: by mail-qk1-x741.google.com with SMTP id w25so4894655qki.3
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Feb 2020 00:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OK0wietKvUZvwARAxmAdcE7mqGpP2688mkrFendJI3c=;
 b=mpc0JeM0+dOlAf+F/vCTYHoR+PUYA7VQeKJNhPzJStLAgkkRV03DFL99y9egz3e68P
 lPCoDzkpJvdoyiVMw6PB/Dlh0Xa4d+vZUYPZE19Q2YMPwFx6GqbOhqUZsM2yIvmMYB4C
 9GRN7zW46xO+BvOUOoI84rF0S+e8+9ZGjjrVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OK0wietKvUZvwARAxmAdcE7mqGpP2688mkrFendJI3c=;
 b=t9NPddH2sVH7VwVca4pkN5c6RWHUeFxL+MJPCdd7JQc+F90Cg5EAAbimY5ZCRKjIDM
 NwAi0prB0O3U4xxkiqNNVnJ4/bcZuovzr/qvZXZ832v/bNSmxAtUiSiVhVdemP32zkSC
 SWGHo/FFZ4upMNvDUrWgGatclJr9E8Da3qrV6X5hcdxISliw1ULj4XlDq2h6V1bdxH9+
 7rsrcTDxthGzH2gYtPE7SCmHagbau9UgpdnNIFfW74YUEUu+s98WldE4ejWfn8HLICKA
 1R+nW3jpsAPBoIjwQwZNHWm3BvwxWc7AlwUbNbHXXU26WtIo+qVRVmdgxF1M9ryHZmpO
 VVGg==
X-Gm-Message-State: APjAAAWU/Si/KEgshpi8ZnSM3mVXHTdjYbJUNeSV2GeaR10/5h85WZTW
 t7DpUnbI1xDChVKHjkEUDhfo5o9jYf0/JKTXFYVJvA==
X-Google-Smtp-Source: APXvYqz2tNr3c3qIVwpXL0Kiwvf19NSiJuWwJpM0OOB3yzEmPzpmBZQIrLG8zON5DYMYRdtNFRQMdyhNLsgoU/FJ9vY=
X-Received: by 2002:a37:6595:: with SMTP id
 z143mr11724807qkb.457.1581582310226; 
 Thu, 13 Feb 2020 00:25:10 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-8-drinkcat@chromium.org>
 <CANMq1KBL-S2DVKbCB2h_XNpfUro+pZ96-C5ft0p-8GX_tbXELQ@mail.gmail.com>
 <CAL_JsqLuo+2G2MjiwS9cwNhMV2pGBojXFGNqEfLv3fP-Y04mfA@mail.gmail.com>
 <CANMq1KCn5rrOrv2GjFh5Aau5Los4VVk=NMWAsvZiNuwoxyMVHA@mail.gmail.com>
In-Reply-To: <CANMq1KCn5rrOrv2GjFh5Aau5Los4VVk=NMWAsvZiNuwoxyMVHA@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 13 Feb 2020 16:24:59 +0800
Message-ID: <CANMq1KCD-Ut3bjEmtpPCgOf+KHyi9cw7QSsxcQrWU4h2juZCUQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] RFC: drm/panfrost: devfreq: Add support for 2
 regulators
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_002511_452294_102D3F70 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 3:57 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > [snip]
> > > But then there's a slight problem: panfrost_devfreq uses a bunch of
> > > clk_get_rate calls, and the clock PLLs (at least on MTK platform) are
> > > never fully precise, so we get back 299999955 for 300 Mhz and
> > > 799999878 for 800 Mhz. That means that the kernel is unable to keep
> > > devfreq stats as neither of these values are in the table:
> > > [ 4802.470952] devfreq devfreq1: Couldn't update frequency transition
> > > information.
> > > The kbase driver fixes this by remembering the last set frequency, and
> > > reporting that to devfreq. Should we do that as well or is there a
> > > better fix?

This one is my bad, I was missing this patch in my forklift to 4.19:
22bd4df9dadf46f drm/panfrost: devfreq: Round frequencies to OPPs

(should really try to boot that board on linux-next, but that's for
another time)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
