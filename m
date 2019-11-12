Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C2FF9864
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 19:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYZ9oEtmKqLzbvBYWL12bAjKslN2uTGul+gFzDi4iVE=; b=p52m65YYIlEN8l
	mGXihAelveb16LMilza91nIalOlc52huVeBuz556DcS3GlDCzrcJdJXw5xONpvD4JMVOZkhqdShrX
	Sk5Ir6EMz9YmkjcwIPERoToe8h+T77g1VvlKB0WyBKA09RS71BaQX/6JKW4dU4n6wtFwJ/oqJMKIy
	/JnTdjidQQ2wOkbNFFwuNnSPTUtGqX9redtA+yRGTAyf+/qoO2m3TWXnRBzqeTbIplC/t1xubb7Lz
	U/S/yzGoGkUPCMKj21oSYf2P0lMLVFIIkJhpwKivZesTD8BE1V84RXtlnCijGHkH6gftIsF8+y/BO
	c6OGXQy8S9t/sh0kz+4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUajo-0001Cy-2E; Tue, 12 Nov 2019 18:18:00 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUajf-00016P-L4; Tue, 12 Nov 2019 18:17:53 +0000
Received: by mail-oi1-f194.google.com with SMTP id s71so15682637oih.11;
 Tue, 12 Nov 2019 10:17:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=apbcn+4sF2345Jm7spGk7DwHgRpb64aZnTUJ4t12uLg=;
 b=IztddMtP/XjttEc4vNIaohOMc0/zcU5u9Z2FweW6NII3Grp2RD4HDdnofjQyZpzgnP
 RfrGt1RX8zRAEKrL4AenpTXUngSSRAR9srmUMkobw2frTW0WnKBOUSxDUAEAf4L7446A
 OmfvxKkNzjwkhg3vnV3MlYuRCN5m+Nd+lzUp13tXtgZ5ntIxp9z2FlaBck9h5jR/3mOC
 ugsjwpQXkMRmg7tDcrMY2jouAhlIgfLegm/8FHm2GEOtSsrTv+u3v0PFkWkYL9fIwJO6
 OSC4jNGURPqUn/GwdV6XMiKChpd7CcwOBYZ1dHMqVdkPoFkFZDqV45r1WVEcnC5fWI4s
 7BOg==
X-Gm-Message-State: APjAAAXIlFbgId51CvYvHyJeiW2WbqKQe8Q6fLfBwrz1hyUq4tTtAOjF
 U86+VSr/jFoYsrZLUd6Ay9G13zdhMQkrMClnBGBqmoQm
X-Google-Smtp-Source: APXvYqyVJRey7Eo3u6IB7XCIegs7fVJAoP+7XL/QcuCsEX4q0nKSDAcDk7fBaRLT6qKtY/fuhfTCipYmaHShCQVE3xE=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr258343oia.148.1573582670146; 
 Tue, 12 Nov 2019 10:17:50 -0800 (PST)
MIME-Version: 1.0
References: <20191112141748.GA22061@localhost.localdomain>
In-Reply-To: <20191112141748.GA22061@localhost.localdomain>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 12 Nov 2019 19:17:39 +0100
Message-ID: <CAMuHMdWUWPdRvVJ_pdDqUdZpahYCyjDDS0KWGw9JzjUjaunHQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: rza1: remove unnecerssary static inline
 function
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_101751_693308_7AC2D18D 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 3:18 PM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:

s/unnecerssary/unnecessary/

> Having static inline oneliner does not benefit too much when it is
> only called from another oneliner function. Remove some of the
> 'onion'. This simplifies also the coming usage of the gpiolib
> defines. We can do conversion from chip bits to gpiolib direction
> defines as last step in the get_direction callback. Drivers can
> use chip specific values in driver internal functions and do
> conversion only once.
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

As this is a dependency for 2/2, which will go in through the GPIO tree:

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
