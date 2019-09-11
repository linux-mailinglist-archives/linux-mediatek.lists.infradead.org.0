Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38799B02B1
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 19:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRvEHo9s16I4qdII4S7uVLXPPRnT+trA1GYT0fYZ5Sc=; b=C4+Mfwaf+G/Nrk
	Px9XabycdB+a5Z6HCEM+itu7kgkjuMzqWf3B/1ilki9lOd2GUj6su+JRyThaFpfHnIrbSKwJlwzLE
	IPfU+JV58AbFbH7+8LkqujvXSgGKwdLoE6/65GsCykiNipLXbozI97Ar2l0lm/NvriAHHlAULS3W/
	uPJ3LBvKH2sjgyQLboeksARxAk6WMMD43K/MqyF3MTN6eb60e2L+74UQaq0VZiGk2pbYoAo1JvYA9
	D6Nb36+T4QHXsAi0MyelUpK83yK3CN0CdOi3K7VVnqqGFPCE/eppES9u+eDIQK5joIptboksjZWp8
	a7itf4cISzc8spiymS7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86PO-0000Xk-LY; Wed, 11 Sep 2019 17:27:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86PG-0000Ta-2r
 for linux-mediatek@lists.infradead.org; Wed, 11 Sep 2019 17:27:54 +0000
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C895E20872
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 17:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568222868;
 bh=avmaTCGrf/lbFN8qYmfH/0IuryDuXNTXcd+Ii7NLHqM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UqKNTtbh3Cb1I2mku0SqTtgVtOpxoe4iz15c1OPEZUt79sIqqCQ7YylE1IEfb4K1O
 0T3IL+gm8mHrascQNABkSeLI5Vx0o9HOa9tsmMZGctnutgxvcejngJiu0INlkLMl54
 CvhIMgdSF5w5WSDweUcoSZZ/AJy2lUjJiTgpSzCc=
Received: by mail-wr1-f51.google.com with SMTP id a11so15740544wrx.1
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 10:27:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUtA8p7ceparRFCw/eAW4RFtIRQQT2SsLVERdUZOwcZUmzePseT
 RC6IGpABXfjQDTzW7LlT3YEW63TswDZiaWsKt0I=
X-Google-Smtp-Source: APXvYqyxQlQ0rE1nDNnXUWYV1saPJ4Y2RZ08uvicqCGXL1zEBlOw0R8w4NxllP0UAo/DIWobNk4NNw8nuCp+ukVevHM=
X-Received: by 2002:a5d:500b:: with SMTP id e11mr27169535wrt.285.1568222866298; 
 Wed, 11 Sep 2019 10:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <1567662796-25508-1-git-send-email-light.hsieh@mediatek.com>
 <1567663210.1324.3.camel@mtkswgap22>
 <CACRpkdY7Vpy-fBHSXnjby0kK_tDWBtZaCwjCGxFy4HWeJ1FgEg@mail.gmail.com>
In-Reply-To: <CACRpkdY7Vpy-fBHSXnjby0kK_tDWBtZaCwjCGxFy4HWeJ1FgEg@mail.gmail.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Wed, 11 Sep 2019 10:27:34 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzqj_AwXL7r0nxh=9G5o7P4YNJaugCAm_ZpJyBoPZu9BtQ@mail.gmail.com>
Message-ID: <CAGp9Lzqj_AwXL7r0nxh=9G5o7P4YNJaugCAm_ZpJyBoPZu9BtQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_102750_156855_2C3F3785 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Linus,

That looks OK to me too

Acked-by: Sean Wang <sean.wang@kernel.org>

On Wed, Sep 11, 2019 at 2:29 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Sep 5, 2019 at 7:00 AM Light Hsieh <light.hsieh@mediatek.com> wrote:
>
> > v2 is the same as v1 except that commit message is corrected according
> > to Linus' comment for v1:
> >
> > 1. remove Change-Id lines
> > 2. correct sysfs as debugfs
>
> Looks OK to me, but i need Sean's review on this, Sean?
>
> Yours,
> Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
