Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9231FD08B9
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 09:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ww+AybuW2X5sN9J2NVq7gcQywAfandyoJhgNAcGPa0=; b=o5B2DC0f2NQr+B
	d/I8quDiBfQ6X33nTIYFQOCSPDtLWneFmaqcwHYOhci5TFCk8/aOPP7jnUitY/GxGyTpFZuFtK5SF
	vdC08RzwQ4CqW8DYc41UI6ALHoCgUYejNFXJRAjVcXmWRaDT2AhcR57M3CcyvJy1Lefp4eKxTPcU3
	/b5UbTg2iag8bC/Q92v/igWw0OeL/8Kkq0UzbWpv+Il3Umgns0xfHizzJcWJIzJYUFUWtJJ/h5Wx0
	7RWLEc1NeyUh3zaC4zGGtR956tkHT2vsxECWqRygxrQtioa1mKf2XjGzXkY8wb2LcV2gGORYZLoLI
	52BgtAISgj8mF5gbQcLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6gR-0003O2-FM; Wed, 09 Oct 2019 07:46:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6gC-0003Ds-M5
 for linux-mediatek@lists.infradead.org; Wed, 09 Oct 2019 07:46:41 +0000
Received: by mail-lj1-x244.google.com with SMTP id l21so1457341lje.4
 for <linux-mediatek@lists.infradead.org>; Wed, 09 Oct 2019 00:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hZEfc+r3FkjJNXGg5OrQndZ7EVhjrXvy0Arp8Ba6y3Y=;
 b=wjvQivs+C+mNfu/kBT+oqZ7KD4q6+IZ5Kth6hhfGFbltlKdqAJ38C7ajvyZ31te4gJ
 C5EqhO//ZRTNxmVHsnWpL4FPvGmq6RGPaLctgOfRFcn64vZmRPcZzkMMWQJ5TtpYGxOS
 ++ZFPLLjrWzBCECqMtnDgmicGmA0oWmKIWQeYM/ZOxDhwuAVKbdEN/zSfWvAA3hLQZZq
 ubaT/P3ZZ59MYBEbi3oE/Ge+OFG+iQYKsWIiR5Ef3yKK7kivB5XTNZls9k74vNap0dO9
 ytr/crl5hSQEYBvLZjmMXVpBhkzUNMwtOdUVNlFdxRC9uu49L9C1IMRlaxaQ+WnE44XU
 dFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hZEfc+r3FkjJNXGg5OrQndZ7EVhjrXvy0Arp8Ba6y3Y=;
 b=LCB9GzI8XaTjuYzTrOJdiv0zViq93kI5phS4xgRiZoa8/iNjFdQr3plN2InL0e461T
 SHADWL/lbpvLE22lPoHkt76FjtHBD1iQDrszlyYY66JAq6QitrntKngB2cvyzNapQZLh
 k0vcT79EMi5zm+mwO6Rmsgar5pgLZm+NYL/lzM1nHyCnQ6GTCoVnSlDm+GYZWY/UlsHu
 bwZUFxu9Ro3MxiqjetHtGh/cek7Uu5LhuPrpXwX75lCtK7Bo3bPJt2keO4PFbGz6Mnmn
 HH+ccoQBqx7XO4A9+JJFPSgxKBfjCFXMWtXm0SYCElASnaYAGHM8/qa5LeKqAMlI6tGO
 3tpg==
X-Gm-Message-State: APjAAAWTl0akJ43dstqFSiGCi0YmWIFJlOf93Pl21QGuViP9j/1DbNqR
 X7k+PL+B32m1mVvOiq1MRtPbjMNO8zsaKKWEgVtESg==
X-Google-Smtp-Source: APXvYqzKb6yyez5/a7eDQjEjte0+mGMXwCtZbVyeffNWrWYP4x2euviqJJy4ezdD4TVfujVbQ0UR4GcHrwjyGqp8gXQ=
X-Received: by 2002:a2e:80d1:: with SMTP id r17mr1435527ljg.118.1570607198839; 
 Wed, 09 Oct 2019 00:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191006102953.57536-1-yuehaibing@huawei.com>
 <20191006102953.57536-7-yuehaibing@huawei.com>
In-Reply-To: <20191006102953.57536-7-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2019 09:46:27 +0200
Message-ID: <CACRpkdY5x3wG4h6Wm_L5OXWXB7SPqHimUFOQa2jOeqDETWciYg@mail.gmail.com>
Subject: Re: [PATCH -next 06/34] rtc: coh901331: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004640_728840_F5D95F00 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Baruch Siach <baruch@tkos.co.il>,
 Patrice CHOTARD <patrice.chotard@st.com>, Paul Cercueil <paul@crapouillou.net>,
 linux-tegra@vger.kernel.org,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rtc@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, Jon Hunter <jonathanh@nvidia.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Joel Stanley <joel@jms.id.au>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Sean Wang <sean.wang@mediatek.com>,
 Maxime Ripard <mripard@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 huang eddie <eddie.huang@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>, Andrew Jeffery <andrew@aj.id.au>,
 linux-stm32@st-md-mailman.stormreply.com,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tony Prisk <linux@prisktech.co.nz>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, Oct 6, 2019 at 12:32 PM YueHaibing <yuehaibing@huawei.com> wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
