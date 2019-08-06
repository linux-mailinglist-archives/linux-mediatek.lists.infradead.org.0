Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7763C832AE
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 15:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2f6ZYFUBJ4MeaoogxAVq4veDTp9qShjrBeUo2Y+Mmk=; b=LDPp1C6Wcj8Kbs
	IJ2PpuSLzwr1lIs0PDWdRXh6h/Tprtu9BbXLFZ5xY8gEOAhcMpArhHrwSmLhulYKia4LRBvvv/5Tf
	Bx/N7ozYK2r+B0aVBXOiUYbUM/iWipQKzf87ucZuzTeEzc/Wi33wEP1hTsk6YyNM5+8ASjvw05s01
	raRN60PDKZhfB3/i/iXYGbHG6F4UJLJ3Agc8gk0agtq7ntYeL9nHTAQEW6g+6XHY+BUgd95EiMtE7
	it+izmOJLQnqkbJX3r6khZS2hUR4p62T3zaIGcoqll0kWLIj9WCv3TnBa5n0MNHosqd2iNkx6wvG7
	fj/4GlT6GHJ0qO5HuR3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzUk-0003Jm-76; Tue, 06 Aug 2019 13:27:18 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzUW-0003A1-EY
 for linux-mediatek@lists.infradead.org; Tue, 06 Aug 2019 13:27:05 +0000
Received: by mail-qt1-x841.google.com with SMTP id h21so84418818qtn.13
 for <linux-mediatek@lists.infradead.org>; Tue, 06 Aug 2019 06:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QepbGpjxdz/Q+6YHfXtoICko0cdKUjwXX4QETCQHWj8=;
 b=bzIMi9FXppLRWZzJ/iI9ZBXddD4PnneBE9NT/UoqebYxXA7CflUoPASr63iMdGtUBG
 Jwrbq1C0xSH9LIN5UdVNoHQCog70zRvlWfB7azMbuC+6Jn+2u15izE38bZomNxKHYJPA
 e8DiwPrQ+XaxM+rGs6hoXZuGMfRItnU+HM0zGMnAj7UUKF0SIAz09R+NnAKrerpSGXvo
 Kk7yVf5KECa3Iu4C3uvBpsJTFTpzygQX5eZxFqN9d+WbjlebcyTfbAy0i1SXHYMSpD4x
 KL3f86a0sMYIS5P9c8H8iy217oBZ4vytmlRRjpGAea0rJ5QL8OH8+CDi3octHWy+DIhO
 biYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QepbGpjxdz/Q+6YHfXtoICko0cdKUjwXX4QETCQHWj8=;
 b=udmlff4q/eDZBS4Vllm76bRCQV7bpFEbNsU5jm2qcUgRfrQlpHgsR936mF6eZtuQpn
 jHO/TjKwXQ5Di0LOHziLUE9DeI5PxTOZEj464taBoSVeUbwWiIyJJeoZHo01gQcRMLQY
 iJXv8896LJ+quibsRgmEeSsJj2V8ujHQkhMUiKEHPYQ+ZV3KkXCAn/AFc11l9AkUODGP
 eINwSNgy6Hg3FefYgScUBwWfyA07LNvubXJtjhmLd1Cbhde1bOa4l5Z9F3QTBoOMKCXZ
 WnTSUgf+eihlGAkt3XeREw/L0h2jBl5uRSHPupRmDrLsXg9rlCZgKIMdgAsKFGnfNAn6
 txUw==
X-Gm-Message-State: APjAAAVmSJEKG9QXc/ACklheEq4Lu+gWg93U70K2guNR/WF6fphWtfGt
 vI7S3j9HTFU3SsmaDCAsuH0dm00A1yOybnTmaRIBPQ==
X-Google-Smtp-Source: APXvYqxjReH9a5RdVKP44/CxV4GA6MJPPJv6EhlnpRpk8YLqn8A8+xTkel+Txw9cXO0QR33NnMHiklTBqawLAq053vE=
X-Received: by 2002:ac8:253d:: with SMTP id 58mr3074770qtm.40.1565098022510;
 Tue, 06 Aug 2019 06:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <CACRpkdaBT24JPH_VsKtgp6fjWtVuqM50rXkDVYKmLHgR5hdJzA@mail.gmail.com>
 <1565077710.23705.21.camel@mhfsdcap03>
In-Reply-To: <1565077710.23705.21.camel@mhfsdcap03>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 15:26:50 +0200
Message-ID: <CACRpkdZ8LjG22QCA0tB+vMi7fPJNBiX-sL1+t0yZqcfRjMJF7Q@mail.gmail.com>
Subject: Re: [PATCH v8 00/11] add USB GPIO based connection detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_062704_489799_FF3ACB75 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 9:48 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> On Mon, 2019-08-05 at 12:06 +0200, Linus Walleij wrote:
> > On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> > But for just "hey I'm plugged in" we can surely keep this
> > ID on GPIO detection in the USB subsystem.
>
> Sorry, you mean provide a common API? could you please describe more
> clearer about your suggestion?

Sorry I am not suggesting anything, this code is fine.

But:

> > I just get a bit insecure about how we should ideally
> > handle these "funny-PHY's".

I am more thinking about which subsystem these things really
belong in. But let's keep it like this for the simple GPIO case.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
