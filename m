Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6586B11CAC9
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 11:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYmvC62t+Yrptbp2KERusRgNjz1DYqHcb5ANyRcDPnk=; b=XvZejWfLFFWkm6
	TnfKp7FyzBDduQYO5Le7CfDC+dvi3zGEPHR3gWZWiLg5oWYcZ5HJdPB/gYHCkI4/B8fnc4PSNUPXY
	Sn1u3SL+b6nnmoVtV2VrSQqU4pIuWUv2jICuVe+QqRjdwG0+aQB9vQMyFh0eDcruOZIhd+6UbCRkR
	M8KLgCsgTGjpTl1NuMF6ot6CRoegGAP3JHZ9HZEjgIgpIKqpSr99nd/r9HYkmg9f/6QPdsCFHwqmr
	V7XW7STqz+u5qQ8qNuBKY9IFrJoKXDN9s0VxFOW7vMPN8JV5iDnVKz/VWpwBoJnA/S9hRmk9quKS+
	bhtqhJaezyqmjN1/a4Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLkf-0006pr-EG; Thu, 12 Dec 2019 10:31:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLkb-0006n7-CD
 for linux-mediatek@lists.infradead.org; Thu, 12 Dec 2019 10:31:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id h23so1674538ljc.8
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Dec 2019 02:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f/qSsW2S4gXfFEnforjNWu8lIQGXL5dRAyt8kzqxpuE=;
 b=fZDuU0N+AhTbnEh57bnDJj1EoCK+XXOdr6IRYznjCaZ2psiaZrAXliK0OpPjZIvzbF
 J+bGHQCln9OElsWj5qV/aJmku0MM8+XM5E1VOo2lxS8DAKTrACMxIs8ly2lo3lJMjcGc
 yo36UrIw5c75fA5bjgLBm5l9+rj3f5JY37InHawthBG412gcb2xpPSWo/i1ebUH3/xqO
 iIvPB9blatrrjcfYXaqOd3ODAcYy/fbPaETF0PDm8BDsZLug0WpCfUiszAwRaO5Qgapk
 oGVZxlK0RdrD3aAxV9d6zrPmFqNrTcAAJKIgHtP2y99az+o0mkkeGORazWBi+vTKRuxW
 CyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f/qSsW2S4gXfFEnforjNWu8lIQGXL5dRAyt8kzqxpuE=;
 b=c0hFuuDD1xBf8lWrE1l36wMcd7zo450u7o1Bgk2gFLP8oegEBbqtSK2VnonOdfFDCB
 aVY1OXAl9ZsOZaEgjrGTRdQwbIKXTyEZCEWcpUIYz36quBcPzblta63UrXmbi5LCevst
 OFT1ORwUdE9pgzx67b49Fvsh444aWSXoOPearzwuZKn2hR7PguPuJlCOpIUdoLm0aGTv
 AnD+zFkIt7Z0Eas1gHeEbcDW0ZkPuKHUQv99V0Nik2GnukEM3YC/RCh/+a8HD4znBlVf
 MLDLBe/rX0oWdIx/Q9cpDeRRD3EXMKjY72jiqUwPbssd3SKpeb969rVw2wNDZlqqu+k2
 Y1dg==
X-Gm-Message-State: APjAAAVPzlnP/vg4M1NlbCfcYR4g3EOp67puwQaPQU6saPoAkWM9vx06
 vQVsWpQIBx0nJz5B06r3G5i2qBJdZCqF5IAYO3hkGg==
X-Google-Smtp-Source: APXvYqwfr5GivrQVvdc97Yn6qfrHgDDWWu2K/jPDNAvjTKnSaqEL3i8x5+An5WIHWQfkD9wCG6V18D2mfqh9hPgEK8s=
X-Received: by 2002:a2e:9ec4:: with SMTP id h4mr5428950ljk.77.1576146674969;
 Thu, 12 Dec 2019 02:31:14 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <2994fb2f3375790e832396cdbb0a279dc8c8839f.1574871463.git.nishadkamdar@gmail.com>
In-Reply-To: <2994fb2f3375790e832396cdbb0a279dc8c8839f.1574871463.git.nishadkamdar@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Dec 2019 11:31:03 +0100
Message-ID: <CACRpkdbgmY7ozr3auxQqB6vUvWAj+21-3aypGRG43+94W75wWQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] pinctrl: mediatek: Use the correct style for SPDX
 License Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023117_416268_C5F0E244 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Wed, Nov 27, 2019 at 5:42 PM Nishad Kamdar <nishadkamdar@gmail.com> wrote:

> This patch corrects the SPDX License Identifier style in
> header file related mediatek mt2712 pinctrl driver.
> For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used).
>
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
>
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
