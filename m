Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49AA11CAED
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 11:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suDlz4O4IMio4W+nPvf5lrE1oZxqFF3tEQ2+caSuFw0=; b=iNTWQy2wiHGZ5B
	BwWIAEJI2TTUWzBOG0kaAes0pkRhVHOQka6LyHEjgIesDilxC8eQvaZgSXau9PG5kGSgEswT73lo5
	3AYQ53K2kxXZdP3hSMFDpmwMa9bwa3i6zdoLDDTaKnsl/lWBtCwwW0euzO7XC+HDBmXm/QAsiDJFD
	jRAagEC5EmpCCyr5dzbg301PqLmSYgtrWd6flko8Gmrrft+hMUrSLEAyK0Rp32nohz2D0Ql5UjUhF
	NNinJ9euAM8Kkx70C01OJg4UUjd1ac4gXbVHk9pJdom8JG+8v4ba3aZ7b/IPHGytzgbZ3dQT/UTyb
	9FRTI7Ol439MOufXZ3SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLmz-00086d-OV; Thu, 12 Dec 2019 10:33:45 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLm8-0007Ie-7n
 for linux-mediatek@lists.infradead.org; Thu, 12 Dec 2019 10:32:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id 9so1277190lfq.10
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Dec 2019 02:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VWL9+V2LMiT9o2FJLi3yEGGm0mbcqGKTZCNZjA3DyVQ=;
 b=JHNgQG4JaflzNKZS6SjnLq+BGIY0xKcrhawJ4qSCLadAe7hUlYSTTM6yg9Y3InFPme
 65GvyKU8ZgeTTvHCUQpLz3gdVifxv2sx5EB0maUrWRtmXnyQeQ2RzH4e6AwIIFn/Ocv0
 HbafD0hIdo8H/uCHiT0TBp2VElIGTB/axXoF4ZoG9VakftAWgZS11IgoT8MI8CaJ2S5P
 2tfrszsvlyNzhBe6mtgHXMJKQChMyGr5KV9reluXUNs2LuGTjNveZegBli/WGzmT/qJ3
 sLkdgkiLdb9gNFrmBa8EmK7AzxkqHOHCD9MBb052/a9h6FU3fjQSTfjAoXXWV9ze1b1q
 ZwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VWL9+V2LMiT9o2FJLi3yEGGm0mbcqGKTZCNZjA3DyVQ=;
 b=IrPgsvCPrCYKzpFU2TXU8HQf8z4VJFi94ntrd5CZNnFz7qvbOqu9RJZ5vuq7qT8/mO
 Px2i7q1KnByDsiwSddE/8QQfrcHSihJw58/k2rOrKU53eW3F/Dka4PJOcPxyuk2uBBMk
 i5hR2qHviXV6W2L+ZQSgdgbUwcjco2oTlzAUUdYsZCCC14vKHJASjBvRPgm2Z+NAKh+N
 44b5BGqkVAHpMW587a0i7uQuz7beTwFDqoGS7Ef9vBa+91Rl3ZglVdnpHTDqdceAEXfp
 Hl3nSSE2pgSCdtqUlgmuK1BruUpFDYYBvTO6EXk951v5dw8iMD8VuLC+cY0Qk1b+cd4V
 0hSw==
X-Gm-Message-State: APjAAAUGuVU7aaeAWl/jcmef6n82mkt7GUJU1PU+3mulJKzc+RSXs7Nh
 JduZ8xJ9/iUQNYckelCPBG78wKsjygHvYc3PcP033A==
X-Google-Smtp-Source: APXvYqywDQNwDMe4Gb7wNrl8nlViHTFAYbbKR8mGbYLzjghxmd/DxWHrpL44HVqLtiyMfWxK6a/Gv0MgTOUFix3M9V4=
X-Received: by 2002:a19:c0b:: with SMTP id 11mr5269617lfm.135.1576146770206;
 Thu, 12 Dec 2019 02:32:50 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
In-Reply-To: <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Dec 2019 11:32:39 +0100
Message-ID: <CACRpkdaDaM6wSfeeo6NARC0VibLMWWDDsN2LbLRooih3uGTvog@mail.gmail.com>
Subject: Re: [PATCH 4/5] pinctrl: sh-pfc: Use the correct style for SPDX
 License Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023252_310222_9535C937 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 5:46 PM Nishad Kamdar <nishadkamdar@gmail.com> wrote:

> This patch corrects the SPDX License Identifier style in
> header files related to Reneses Soc pinctrl driver.
> It assigns explicit block comment for the SPDX License Identifier.
>
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
>
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

I leave it to Geert to decide if he wants to pick this up for
sh-pfc or not.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
