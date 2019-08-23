Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC579AAEE
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 10:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+1RH0K4OlivdNc73k+6VCEoCyw8wd9eN3diC1zQw0c=; b=uXKOIDBc494ooa
	ApXsQJhdrKiEp/BDCMH1zdswyjNSXkVbmXhDqOLU2FsmKcTyud/nXSg+djFYRTIZN83MFbDssIcVn
	i6gSoacrZhr20zBD6UDxBe3TAkXrOE9aTyTU0ZV/r+rMgmk2PE1OMPi3ASy/rnWuesxpo7tbIBLag
	2tNSpEQA6XrDoS3E/ZjZevpFvfVxMbjIFwcsFEBWPAe9ttYkAd8tv0+uceWgm3jmY5X/SC/BDm2w9
	uDOy+TG2ekaNeyYjkelpM8yZuLxCoHwm/i7zuzQxvSva6tc+u9i4iBMihwQgGuEcedcHg8tyjGb6M
	uOYtY6vleTE0OxUxTC3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Po-0007Wl-CL; Fri, 23 Aug 2019 08:59:24 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Pk-0007WG-MP
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 08:59:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id a30so6571422lfk.12
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 01:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GxUgalfpHvlU7G4S1EP7MwtQKJLrxEoCVtsJwnBq2SU=;
 b=w0B3dzBTa3+JyrZeVRsr9ly//+C08gCfIk8KvddiJai9vJRoezhj54mrdyVwb1cbFl
 sRPkN+bru2wP4dmVDTkn20UOrljSktzElsDLmYwfeNBsz3BkNKlwWa6y0Kr4+GWEfwG1
 YK9K3GDGdmw/+mt4yBZZ0rCBOvJ2wRiMivQwwjJJnFfQXf1LiACtdWqo7SnZbI9pSXdG
 FdguDX7EHD7VaI4fG3ApljZIFeKDUrSvlzeHp0Se0NWNeZNXwlDemX+J/tIyKK2beWBF
 YkS5UFt+u6TP+JMCmWolrRdMU/+bvPBegM8ACCpr9RWdg/IGiTuhMcKbWCZioaHt7WP/
 FWEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GxUgalfpHvlU7G4S1EP7MwtQKJLrxEoCVtsJwnBq2SU=;
 b=c4vWCWk4fzdkJaKfLUIBpfGMScs+XEXuBKPU2OSv1FQ1d2EzpeprZrSwxJupuig+cT
 t7YvD0V84pVKMUFt0iRf2Iqc4B6R1rlcojLbqwpKV0MzSOWhGwZdxUs+EWX8w0G5MqUT
 Fg8cdwxk/oVTcWkr5IahGVsH/4jfNvOEqs9a3OJNGNFwC3leNcBKMoSKrtZcYzUUABbD
 kM8i6fFew/IPoPs5ylmbqVWUaFX6DSbELC0RtBagTEwdGdwEWDLOsxO1rXJYR4ZfwnmV
 XWISH6urrE4xvDGErmFyN++wZx/Q2z0D/M9Hdnrgt//tHfznamcVJCLrmGxepfyXDb1w
 fxVA==
X-Gm-Message-State: APjAAAWzhqk+Wv0dlREX4F5un4Y1jt7npa+sB4O7UmQYrHLOBYORLqD4
 Uu4j7wt3iE2Pt3V9dBuqOwveqg11T2MOzBLpVIBmhQ==
X-Google-Smtp-Source: APXvYqw5ndRJYH6Pq0vRfXqvSpTurLxTZpp9+LCmk3CwLeQH9ygW2pVl8/ZMQ7YOPv6vJPkMu932f3Yxr6LWZ0GzqPI=
X-Received: by 2002:a19:ed11:: with SMTP id y17mr2096873lfy.141.1566550759342; 
 Fri, 23 Aug 2019 01:59:19 -0700 (PDT)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-7-git-send-email-mars.cheng@mediatek.com>
 <CAGp9LzoVwNxY8Q3G4hxpa7=orsEox+J0mNamag70wyjrGvDiZw@mail.gmail.com>
In-Reply-To: <CAGp9LzoVwNxY8Q3G4hxpa7=orsEox+J0mNamag70wyjrGvDiZw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 10:59:08 +0200
Message-ID: <CACRpkdbZY2vZBaEXDMsjLxA1NGYWirhCdspu0W-foXJX=Fd4yg@mail.gmail.com>
Subject: Re: [PATCH v2 06/11] pinctrl: mediatek: add pinctrl support for
 MT6779 SoC
To: Sean Wang <sean.wang@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_015920_730801_BA37335D 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Andy Teng <andy.teng@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 lkml <linux-kernel@vger.kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Mars Cheng <mars.cheng@mediatek.com>, mtk01761 <wendell.lin@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 8:12 PM Sean Wang <sean.wang@kernel.org> wrote:
> On Mon, Aug 19, 2019 at 2:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:
> >
> > This adds MT6779 pinctrl driver based on MediaTek pinctrl-paris core.
> >
> > Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> > Signed-off-by: Andy Teng <andy.teng@mediatek.com>
>
> Acked-by: Sean Wang <sean.wang@kernel.org>

Please look at the DT bindings as well when you have time, and
especially the "virtual GPIO" patch, I don't understand that at all.

I suspect the "virtual GPIO" is maybe more about something that
should be done by setting up the valid_mask in the gpio_chip
or something.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
