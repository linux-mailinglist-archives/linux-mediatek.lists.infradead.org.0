Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3621E84C1
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 19:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8a9ggItxT7oWg4ivUc1bwmUKRw1WfrgXQufSIF5PUw=; b=qB4IU0y6MwWCyC
	uS1g5oMPmBO9VryliVLpxzJnoWEgGB6x/ruu5rc3WPqqRH4RnD5wgV3YhkMNo9kYN8hufTUdzcPWO
	6zucbeA3xpegG0wqVa9HygVHcRYKxcaLRNimqLNmibpCVH31YHVbkxCuBpHWVRdVrCdSBAwEIoHV5
	zfPJA0sEGdFlely7kByDoBuemzi6sIw0s965GbEdwBv6kb4JcHaFPoa3iTkbFEU6jS2eCtE/TwScU
	ewSzSqztkS9enPAoYk/9k38FF2aRLA5n3lDBv3W1I7JzvcAglRbQnW8jct86qf2mdhsw+NVkfm9gV
	ZMiL7J8PUV1dLhcjqrzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeimC-0007nc-4U; Fri, 29 May 2020 17:26:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeim9-0007mz-8R
 for linux-mediatek@lists.infradead.org; Fri, 29 May 2020 17:26:34 +0000
Received: by mail-io1-xd42.google.com with SMTP id q8so160049iow.7
 for <linux-mediatek@lists.infradead.org>; Fri, 29 May 2020 10:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z8OACykXjIzxNzzYJDcQomDu+bSaXx9nM76v7J1rnOc=;
 b=N4jmxuBRHu9i+7FFNASFaQjN4abnqiZo4PhPXmtm959rzOBOSm+7Huvel2yMZOGL6J
 L3YDrdL0zD8zpqbQ04ZWiR4x4O3kagbBm6APPFB13kSMk3H1QROQY+2vIF1ZldyGqRDF
 bAqJl18vR4TiVZQr/619DbLOoqewiS/BKYAMfJOp9Jj+S+C/J3VS8STRCBBSmsSkaksb
 ApY3WPl8R/Eic5rKAOi0eDW1pnrW2e+US63v/lpJ9u7BBUa2IFu/beqHQ72ET5FqhBIi
 lt/RcnyklXiCgf7y8HknKN3BSNFEwTssq3fjHwaUyqIQmXDKR6d1H5VWpqgkblSyq2n9
 SueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z8OACykXjIzxNzzYJDcQomDu+bSaXx9nM76v7J1rnOc=;
 b=X4mAj+C7wfsf0+SWC8hj39yFCvDABP+ilIMPJCiSbnH27THIRlwk4yCDnsjtyI2RQU
 9E14VUbRQXEAKvbEIVWGTtt5CobP5hKziIy58IFF//YnQ4Xr0gsdNZx5jTnlXXhznpJk
 jsv0uWrs4Ht+IDknmPVnvHnfKDs0PmQHKyR6qAA/tZcAEVvPO8HIRy4ZMdd3SpQCSbJc
 6ZxKfC43/oFzpJ27nXO7xHEwb8y6Id5zIfV235oV4rjbTW2o0oZ0jTruZ8362j5o7h+S
 ZEuNFK7gOFJ9tTNWqQsUZnm36KRw6yGesBMyijdH7vgFWXb5UN6G9IG/sM6L5VysQXQt
 TH6Q==
X-Gm-Message-State: AOAM533MsNxN5UfcZkCoQ+1HLRO4dRYMEc9mUfysMzlmBcaK4poEb8z5
 e8h9vORP3dpwfwxIDA3xfN074MSmNc8h6RhVJsPEiw==
X-Google-Smtp-Source: ABdhPJwbz0o/jI3+dVTtyWVPjpigszAYMfgQJZaWm9/WbEOU+YXtNt0QJXWVbd3dmvHCuLQo0DqWifEdtyW1qHfQRg4=
X-Received: by 2002:a6b:38c4:: with SMTP id f187mr7311468ioa.205.1590773192031; 
 Fri, 29 May 2020 10:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
 <20200529110915.GH4610@sirena.org.uk>
 <CA+Px+wVSwJK-=75chKLjSEe3bPRtV2wD95W5D_pdR0Pw0G470A@mail.gmail.com>
 <20200529130539.GK4610@sirena.org.uk>
In-Reply-To: <20200529130539.GK4610@sirena.org.uk>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Sat, 30 May 2020 01:26:20 +0800
Message-ID: <CA+Px+wVhXoU=BdBmMW0sdPtUrnQH+Kn6dkFdW-n67qEDGceCEQ@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102633_307938_5D56C182 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 howie.huang@mediatek.com, Takashi Iwai <tiwai@suse.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 9:05 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, May 29, 2020 at 07:22:43PM +0800, Tzung-Bi Shih wrote:
> > On Fri, May 29, 2020 at 7:09 PM Mark Brown <broonie@kernel.org> wrote:
>
> > > What is DMIC one wire mode?  This doesn't sound like something I'd
> > > expect to vary at runtime.
>
> > It means: 1 PDM data wire carries 2 channel data (rising edge for left
> > and falling edge for right).
>
> I thought that was normal for DMICs - is this selecting between left and
> right or something?

Not sure what is the common name but use the same context here.

MT6358 accepts up to 2 PDM wires for 2 DMICs.
If one wire mode is on, MT6358 only accepts 1 PDM wire.
If one wire mode is off, MT6358 merges L/R from 2 PDM wires into 1
I2S-like to SoC.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
