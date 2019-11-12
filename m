Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF4CF986F
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 19:19:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLYKruLiQwTr0mhLu2dwplbG8xqmT7U1QhVj3gxrq1o=; b=FCXEMFiwTRK2+H
	dv7bxeUbZZ/GkC3HY08tJfHXDXyPSYeFBN3a5NC/7CuYGoI2YtlXpiDp0XdvFstwY5JxjYIMgUtxv
	WXtXeUgCjNsbg2zJtYcyh7bYK/3gz+GfkClnoXvhsMl+mudrw31S10RpMTSWdSnOLeeu4k1lL2lsd
	L3B+62S7G+/J442Z+t/EaqcbMJdD/UFoo/MHXrMzjmbQkWsG3WBsXwGIERlMZ7x5iSTgAkatY193l
	VnBPGXgYoktH90pYz12HmcYsiX+kMihnKCEF1m/ZZe6UiMlqSTyToeVXeIDgS/T10EaVw2QW25lM6
	GPo5DSsIgioqmYpHoZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUakn-0001Wj-G1; Tue, 12 Nov 2019 18:19:01 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUakd-0001OR-Ii; Tue, 12 Nov 2019 18:18:52 +0000
Received: by mail-ot1-f68.google.com with SMTP id c19so15108158otr.11;
 Tue, 12 Nov 2019 10:18:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XTjrI15sJKpXt7dvewwDXHz0pV+jFPaIY5CBR1+M5B8=;
 b=GtlS3cPl3u82RMNCZsaEkoG96tLlpe6qOSi6jcCRZvTrgHLiubX2lqpYV2Xr1WfwIN
 1uytoh6avP3OiB34qVcZonHXuNfWnaAf6FOeufvy5ouOa2lsgifX9LOZbmhSC4XEPMmA
 U9WfWWCeTpMMhmbJzAj8y7B8WiaTdgtSouabB/me8Jo+s5ZEtEZTMsWtFOGbqsf8HN0n
 Ahzq0yId7TLhLWf/9weFsCQcoMd6V/TzkVKIKh+KVQUHXtCjBy0DTbCxzBoKew+b5o2Z
 6rL0DWczTwc3AuWb+8iOA2SKZMpxbzewFpgz7ZhSS7Up5EPWRREKJBFq8f1pErdAdPJi
 v/GQ==
X-Gm-Message-State: APjAAAW0sOMTuLHFgGXr9eahk47CVN1HA7mlpZ4dXH/QoExs1KoPadJu
 zKJly4oPBJ3+i0uskJxssuy8Ez5jeXU8wN+kE0M=
X-Google-Smtp-Source: APXvYqzD+0NmN816zDyFVW7CaZTRm/xP/54mEwEWwWhYEoQSfE5Y17LnYKLFTjDPUOLhknTl9poWdDu1inn62pEqTEM=
X-Received: by 2002:a9d:5511:: with SMTP id l17mr2705329oth.145.1573582728911; 
 Tue, 12 Nov 2019 10:18:48 -0800 (PST)
MIME-Version: 1.0
References: <20191112141819.GA22076@localhost.localdomain>
In-Reply-To: <20191112141819.GA22076@localhost.localdomain>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 12 Nov 2019 19:18:37 +0100
Message-ID: <CAMuHMdW2aXF1dcs74joHu4q9xDoPAGmNFwUuVtPVSfFx9EgMmA@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_101851_613240_C94A7D08 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Patrice Chotard <patrice.chotard@st.com>, Paul Cercueil <paul@crapouillou.net>,
 Eric Anholt <eric@anholt.net>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Matti Vaittinen <mazziesaccount@gmail.com>, Ray Jui <rjui@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Sean Wang <sean.wang@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Stefan Wahren <wahrenst@gmx.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-oxnas@groups.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 3:18 PM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:
> Use newly added GPIO defines GPIO_LINE_DIRECTION_IN and
> GPIO_LINE_DIRECTION_OUT instead of using hard-coded 1 and 0.
>
> Main benefit is to make it easier to see which values mean IN and which
> OUT. As a side effect this helps GPIO framework to change the direction
> defines to something else if ever needed.
>
> Please note that return value from get_direction call on
> pinctrl-axp209 driver was changed. Previously pinctrl-axp209 might have
> returned value 2 for direction INPUT.
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

For:

>  drivers/pinctrl/pinctrl-rza1.c                |  5 ++++-
>  drivers/pinctrl/pinctrl-rza2.c                |  6 +++---

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
