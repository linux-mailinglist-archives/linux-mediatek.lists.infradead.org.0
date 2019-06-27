Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F43058E40
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 01:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AAPOnEmWjcZNCPItfNb5lZVQ9jRpRQz6oLAV76VJfU=; b=B2DogTNWS5UhA6
	FcptXoD1y42kOGXgKv0bGgHTIrRtpwLD/1ndnX1WF6Gw1m0HknE+KDx6UWA2vt9nAowofpZO8TDHG
	8TsVSw4KU0800wHXbOSdNTyMhiLf73NLGduKvPRN40tLuc+4EKg7B7henZOPP3uBpwZgYFUyxqgwH
	m59GggNBdv3FTcyOK4iqW33f/mcsGL8Z9lzMzMNdKhKxDP363kdwi1IE4EQngyGRQMlz1bNb52LRG
	qk0JHITN1d+cWNExNsga0qr5vW5wVcqT7IFcGUmX/1NxfKb4qQLaguiPbx5BS8B1cpEUBsNH4EoXU
	lwyHyoZWsFexrTCKaODw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgdU9-0007vh-9t; Thu, 27 Jun 2019 23:07:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgdU5-0007v3-G5
 for linux-mediatek@lists.infradead.org; Thu, 27 Jun 2019 23:07:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so2084418plb.4
 for <linux-mediatek@lists.infradead.org>; Thu, 27 Jun 2019 16:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j8aV1JatTnCG9rEfKFqUjdOyDtVtjZrcPrKiiada/KQ=;
 b=PI8yun9rIYrfvJePU9ieiN5O/3Qk2VslkzAZJXq2L0EBRtjuK6USjOKgOZ7Sc3b+kf
 LPjwHijZrg/3NHKZAYZHn8P3h7xwVWlHnKoc2/RrtZtZgli4ONeW98tcloEtmOsMxT5m
 QVM3ftbNcbQGm+emV1Lijfg3U4M9T1XcPT5f6kW8AfUQ44udK7p25ZgMy/I2rTzLM34G
 mWCxIs5XIjjiXQdMjtLFVEc3ANV0UzH068BKZGk1INqR1RU80HQd+ujezyya4rmZvA5b
 u6sdkn++METQypcjKKe5RUomOOj0r19dOFdHGeJotVDCVz1KLCVeRTLX6reoAbhQrHhm
 kLvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j8aV1JatTnCG9rEfKFqUjdOyDtVtjZrcPrKiiada/KQ=;
 b=rTlZFJDm++qDkTP2I0jg8fFr9Qqd07CsEXnuasqwoNdhnXsru0/ty0m/TMzXVCeTRN
 tKNAXtDQaJR6ZWi76TPE4XRC1jZJvn4qMC+2JnPCB25S27JKcO8XMF8tBVHw7TpOEHcm
 C2lUG/O3jnUg02L4Sd+Fa16o5Bua+Ob12R21VlKJ92aQ2Qa4ZvIG7Y8boKFozm13PpJX
 gVJs/PMokbCDp9LzEBkpNuW/gG5WM0WFbfWUWDyFnyEOXrovjxBnuhJ+ZkyJVm/DZz78
 Ae8jVXSAnz6VnPSB78gj/oHtEhvX87+fhHJsDon/EYMvDuxrvUyg6nPNdZ9jejh2ww7W
 PJDQ==
X-Gm-Message-State: APjAAAUswAQZT7jL4Jg9YSLfxWpQ+A6G27NmVJ2uxbt5biyqdlkX30CQ
 hupFPSWwW3PTP6CYDQ4WvxDEnmY3NfnKGj3uDQgA8Q==
X-Google-Smtp-Source: APXvYqwWpZpvsnZI1MNBHv4VcBRtExkgggkF2GcyWY7FfmfWI8rEETy9DfUnxj5aU4wruEHdvjbqLbL5JkRgkd6QXzU=
X-Received: by 2002:a17:902:9f93:: with SMTP id
 g19mr7450025plq.223.1561676836363; 
 Thu, 27 Jun 2019 16:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190627221507.83942-1-nhuck@google.com>
In-Reply-To: <20190627221507.83942-1-nhuck@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Jun 2019 16:07:05 -0700
Message-ID: <CAKwvOdkYvuYTq=kV9yBWmStQ4GhMtpnp9dV5UvASQKeMwfu0Vw@mail.gmail.com>
Subject: Re: [PATCH] clk: mediatek: Fix -Wunused-const-variable
To: fparent@baylibre.com, sboyd@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_160717_567704_E121D0B5 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@linaro.org>,
 mturquette@baylibre.com, LKML <linux-kernel@vger.kernel.org>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 3:15 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang produces the following warning
>
> drivers/clk/mediatek/clk-mt8516.c:234:27: warning: unused variable
> 'ddrphycfg_parents' [-Wunused-const-variable] static const char * const
> ddrphycfg_parents[] __initconst = {
>
> This variable has never been used. Deleting it to cleanup the warning.

comparing this to `nfi1x_pad_parents`, it looks like this maybe should
be an entry in `top_muxes`, but there seem to be some magic constants
in those that I don't understand or know what we'd use for
`ddrphycfg_parents`.

Again, looking at `nfi1x_pad_parents` for reference, we see
`CLK_TOP_NFI1X_PAD_SEL` used with it and being defined in the device
tree bindings in include/dt-bindings/clock/mt8516-clk.h.  I would
guess that `CLK_TOP_DDRPHYCFG_SEL` should be used in `top_muxes` with
`ddrphycfg_parents`.

`CLK_TOP_DDRPHYCFG_SEL` appears in:
drivers/clk/mediatek/clk-mt8135.c
drivers/clk/mediatek/clk-mt8173.c
drivers/clk/mediatek/clk-mt2701.c
drivers/clk/mediatek/clk-mt7629.c
drivers/clk/mediatek/clk-mt7622.c
but not the translation unit in question:
drivers/clk/mediatek/clk-mt8516.c

in most of the above (except clk-mt2701.c which simply has 1
additional field but otherwise matching values, and clk-mt8135.c which
has 2 different values), it's added to a similarly named and typed
`top_muxes` as:

MUX_GATE(CLK_TOP_DDRPHYCFG_SEL, "ddrphycfg_sel", ddrphycfg_parents,
  0x040, 16, 1, 23),

even then `ddrphycfg_parents` shows up in the other translation units
in the same statement as `CLK_TOP_DDRPHYCFG_SEL`.

So questions to the maintainers I have:
1. Is the above `MUX_GATE` what should be added to `top_muxes` in
drivers/clk/mediatek/clk-mt8516.c?
2. If so, where? Is order of the array elements important.

If the answer to 1 is no, then we should take Nathan's patch.

>
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/523
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  drivers/clk/mediatek/clk-mt8516.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/clk/mediatek/clk-mt8516.c b/drivers/clk/mediatek/clk-mt8516.c
> index 26fe43cc9ea2..9d4261ecc760 100644
> --- a/drivers/clk/mediatek/clk-mt8516.c
> +++ b/drivers/clk/mediatek/clk-mt8516.c
> @@ -231,11 +231,6 @@ static const char * const nfi1x_pad_parents[] __initconst = {
>         "nfi1x_ck"
>  };
>
> -static const char * const ddrphycfg_parents[] __initconst = {
> -       "clk26m_ck",
> -       "mainpll_d16"
> -};
> -


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
