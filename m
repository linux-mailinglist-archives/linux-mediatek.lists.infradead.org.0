Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2090AA200
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 13:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLEEh/j0hGx6xSwZeKGUhsgBzrFSEjysrA8pvE07nNw=; b=rpVS15pWJhIPi/
	UZ5lsGB8XeeVW2q+0QM3FqJt1QPlr99L4s8GKaqzD0KOf7WvYM8wFdRqa1hJbAHOTdX7P6a+ialX1
	Rs8tOthGTHN4v5b6DR+0+B5h7/LvW8Y9sCi9ku2XMqAj5eOONt3EC40hihD0yzSFWst7cXWlChNVq
	P/nk7DHJ0fYPPBZvOKeLHuwQVpcLuPwVxnEjyNlrddUDPaJT8GQpZrRdwRArrLA28MTD+urm/Lxtr
	EatzbLPWdBQNOrwYjRvjbuse5JTz2Bv/79zmFZukfYh4wkKpqtPyrTygMUvBalBbLmMjf87SESH1o
	IZKyhM+ZAInuPxoNMdzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qGz-0001AE-Vv; Thu, 05 Sep 2019 11:49:57 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qGj-0000z6-2k
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 11:49:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id r4so4138597iop.4
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Sep 2019 04:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dowhile0-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=07XjWPhuRTiUsIcEUDNjhZ6tpZVcaU36P56dDdLY0Pk=;
 b=ZWbds64KtyFdL7uMmE4khRKKozzY0xYd0T6A3Tny14KpXb0FphtSgDL/hsu+4oIaZ7
 qSWAaYJj1gdQT5zpEe/pMQ1r0B9jA4p99pYF5auuV0lsHaO1WK3LKAu+TBes+C46ZjPC
 4hdMzofRj2D8m+e5jeUE+ZYSASN/gI5oNvI14A5OHw72kQKJT2reLGS+qQcYlpgQCRKO
 /uIn0Ojh2PDfYaBUxLQsUSj2bvx2jrGXq1Ysne+FcaVejETBSGgcP9NUpHm7aZ6UsUZ5
 Lnj1sBbCDxw63qe/KEUMBHboyeYAIVj+IDfyHG+BIihZMmXOUN18ScVwwWFEf79EkgC+
 GbJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=07XjWPhuRTiUsIcEUDNjhZ6tpZVcaU36P56dDdLY0Pk=;
 b=VtJzcxmv9WlH1Q/vcKGa38KYKc2vBTlqoSIS0wzcc58fseM5A65jXvE8SvDw+2R32m
 S3kDuzF1AOtvHoZ6SWciYBqvIafzbVDQhWMb6uFYDopjrDVh25qQbDX1uFouwSISK4fr
 tE8J3GLgfeYZihJ9OdW9KyXKFI9hYjbwi8uc+aMa3nJhWO6bdPai4YpPePdjqSSQAl8s
 XpEBTzumVQO+nMRr1v9HaYpRS7kbANReyxVZ3dLX7FTEyUz6D4uvbQXwqgKOySVgS8n/
 x8IAl7DdvbeZGz7MkBD2ylQkLiQzE7d/807ARwcJ1rbI4px/V6tjY3K0TxCD4NbKNeH+
 lKfQ==
X-Gm-Message-State: APjAAAXEyARe/DfPjook0V4VYb9Rlu/JJejfcym9TAIUXAU9irk35iTS
 ELbbCREjHfIjGi1OqANBGj0KMxeEHkHe/aY2PrS+EA==
X-Google-Smtp-Source: APXvYqyiGxGtl4n/7uL2NBTrtUM5FvEKngetPUXADWAWtMsSh3HfkH+hQtGoOy7IvevSfM/V35Ie24aKLw08l2LlsN4=
X-Received: by 2002:a5d:8f8d:: with SMTP id l13mr3726673iol.6.1567684179776;
 Thu, 05 Sep 2019 04:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-2-dongchun.zhu@mediatek.com>
 <20190905101406.GA2680@smile.fi.intel.com>
 <20190905104829.GB5475@paasikivi.fi.intel.com>
 <20190905113509.GD2680@smile.fi.intel.com>
In-Reply-To: <20190905113509.GD2680@smile.fi.intel.com>
From: Javier Martinez Canillas <javier@dowhile0.org>
Date: Thu, 5 Sep 2019 13:49:28 +0200
Message-ID: <CABxcv=knP+-x0O-Ga-Dy8WTNovHk6GfX4ZEv0vVjnQvwchuVzg@mail.gmail.com>
Subject: Re: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_044941_262819_AE3C38F1 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 drinkcat@chromium.org, srv_heupstream@mediatek.com, sam.hung@mediatek.com,
 shengnan.wang@mediatek.com, Tomasz Figa <tfiga@chromium.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 1:35 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Sep 05, 2019 at 01:48:30PM +0300, Sakari Ailus wrote:
> > On Thu, Sep 05, 2019 at 01:14:06PM +0300, Andy Shevchenko wrote:
> > > On Thu, Sep 05, 2019 at 03:21:41PM +0800, dongchun.zhu@mediatek.com wrote:
> > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > >
> > > > This patch is to add the Devicetree binding documentation and
> > > > MAINTAINERS entry for dw9768 actuator.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt | 9 +++++++++
> > > >  MAINTAINERS                                                     | 7 +++++++
> > >
> > > This should be:
> > > 1) two separate patches
> >
> > Why? The MAINTAINERS entry is usually added in the first patch needing it,
> > isn't it?
>
> Bindings are required to be a separate patch.
> Rob, is it still the case or am I mistaken?
>

According to the rule 0 in [1] it should be a separate patch indeed
and also use as subject "dt-bindings: <binding dir>: ..." which this
patch also doesn't follow.
So if I'm reading that document correctly, then I think the
maintainers entry should be added in patch 2/2 along with the driver.

[1]: https://www.kernel.org/doc/Documentation/devicetree/bindings/submitting-patches.txt

Best regards,
Javier

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
