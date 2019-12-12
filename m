Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A28D11CAFC
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 11:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohwqQ/NwA2nZuq023FznrNXDIHkUyZsuiM7jOppbAgg=; b=uVz1+EUtjsT02I
	1tqHx8rZUAbh8GIRlxigIsYa/Iz7INRXBTfBm0XugEtIRw8kdDUCec+fcOOvlLWOhv80aPzk9R0r6
	GKKF545y1Z1pBPTQQRLe0yajxpomQQ06tqVhY/K4esuZiz+E/qk3Z8IRMQVpygCV2W1EnqSM5zVfI
	RAEvcO8UBC1H7a37BnFtaV2yB0LbsARWECjBDs3snVjTewgOLWCw72YzfhV/cLxu0tP4Dmv5CxXzS
	QZbDJuxTi4AER22a5PkMuzNJ0xujrOWvUND+ldWWE4hE9sx2cxe+nlwJioul0xtT/Jyo41O+YPXZa
	FFHhHdLij6tC8OWpcrcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLnp-0000Gn-VK; Thu, 12 Dec 2019 10:34:37 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLnd-000060-BI
 for linux-mediatek@lists.infradead.org; Thu, 12 Dec 2019 10:34:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id m30so1285253lfp.8
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Dec 2019 02:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7ExYrHwIdHCQw2WEYskGLMt3e4iRrFiC/gjDbaG279k=;
 b=v3r+vw4bQ6LcEOVMLroVVNcC+2Y/AzPkE2LJq2f1Lot631cAshif/11f31CHbINpBZ
 fmYSCuW3Mz1prOo0bUtBy4htaY7FdZw8KE8xeeA/HrFGWHPc78FthcjLfD0qk2Qs/CS7
 xkIn9QGDritjyD0ervG/Um3166uG0YKmRkjZ20pdgisOimHnx48OYbokM/CRMnZpn/7M
 /0Xe+CxEXmAKAEIuiWVi+nam8Xc2D9V60tSyQ+M0GWZqTunhuvoWa7UY+C17G+jarcXv
 Pi8/R8LvY9oJTetJPpFtkaAbWYxz+0lGaUdC68k3ZvRfCDiDhZ9gyadW0bJucGfP95tS
 q0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ExYrHwIdHCQw2WEYskGLMt3e4iRrFiC/gjDbaG279k=;
 b=Vegi+GIDQ1kJZOzTw2SXJYnAiM9QVtk13HaMv01gAY6cu00/DjeJwnCfwBMwQlI6NF
 pdxVbxCq8+JKzFuZeUpjjEN69YdO2LWCFy9+rJtmUsdWuDeHUwo0GKwwseulJ0wPB+P5
 lDdEvEZg2f1tK4Sn7wGerWF4HOgiVpDuHn8lbcaNquQ+Uoh7skMcN4RGsokeEdKnFrj+
 UNq0Xl4juIcT97RNV3+Omtx06rEDFdINVXT2ctAwukwF8XZbfpvFqOtehJu1DrCv50Zw
 /wxeQmEzlp3K9nhj6DdhFadViofB0Y7zIiaOgc4vvmckMEWPsYI5Gq/iYy3FwXzU1tO+
 EElg==
X-Gm-Message-State: APjAAAUhLaIDVkaBK5DVIYnR7YOrQvrfHa0R7oRCKv904FIHo3xpcqN6
 Mv4iuP8B7KVv1uzMeEXF647lxqlNGZNkcFfJjdRzcg==
X-Google-Smtp-Source: APXvYqwFQ1SvwLMAfhJKA9VEc7eUCJlGz9Lb+HFPgfR4cI1vkIqNPg8K3VY8f6gAcFuMk4OpAzItb0UELxQqJmkPvio=
X-Received: by 2002:a19:c0b:: with SMTP id 11mr5273188lfm.135.1576146863970;
 Thu, 12 Dec 2019 02:34:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <14bb695da50f7af8499e7dfc32c2ab753d92a3e9.1574871463.git.nishadkamdar@gmail.com>
In-Reply-To: <14bb695da50f7af8499e7dfc32c2ab753d92a3e9.1574871463.git.nishadkamdar@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Dec 2019 11:34:12 +0100
Message-ID: <CACRpkdZFH-5RuQ1yGape4j6ukVEY7u2s_TywLUNXnwx9jgHNwQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] pinctrl: stm32: Use the correct style for SPDX
 License Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023425_407196_628B3731 
X-CRM114-Status: UNSURE (   7.57  )
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

On Wed, Nov 27, 2019 at 5:47 PM Nishad Kamdar <nishadkamdar@gmail.com> wrote:

> This patch corrects the SPDX License Identifier style in
> header file related to STMicroelectronics pinctrl driver.
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
