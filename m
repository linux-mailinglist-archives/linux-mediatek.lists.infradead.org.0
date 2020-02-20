Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47C2166111
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Feb 2020 16:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMJg+ctuhyb0KJ9vK5p00LLrsW3v9oFnEs8Q9OafZNg=; b=icR19xhcPQ7VqJ
	EB7Py0otP+6vBrFoNTGLVlx/DIcHNwqh+PU5Hg8mvMFAMe4Uc6XQANaNDmcPPGmUQrbtmNfHR0Mzb
	pDhJ32y+f8m/GIJUpO5YfG1Hnd6DYeqoSyYEHW/8GYYzWvLj4meZsaeWJDNA9uEtgJ6R4+RTNZSVc
	Cj9JA3XVfsZxeVJRoTTDZwXDY55QqgvfsfJirrsGEC4d7X3f44jyJ/YK7nRY7x8b178iW+7NApG75
	LulwqxHTUZvpt8RKbUR4+LxBqVB5a57k5commkw8QujFQtBN5hTTYeeY/XP83Z7UGfh+eOKsxIBdn
	H24uwwzNvTEKaDjwsx8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nrl-000128-8q; Thu, 20 Feb 2020 15:35:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nrd-0000w2-2Q
 for linux-mediatek@bombadil.infradead.org; Thu, 20 Feb 2020 15:35:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nyYfAxHT6CRHzAhL+Lfi1DTcyn2H/tLwm1L1QgCaoUc=; b=ah4g48g+tDnKuM7THDmP/W1LFo
 kAaA3msbdDYXUfFOGmyWdlTUeIF68GE9xNhXYNoTWQCkie/jEU3b1nTEyg4O5nuIDgxLiCOq2DaSE
 Li6rqz9RV3WbuUDHqbIJ10ObveBSJEqZl4/+/+5Fracw71SfKdFrF0mCSJt0IijsXTv1VBaJxuioa
 9bbYGVH581GoZ9g6vWx9Wih80uNEocARtShcR3rNizzQRAjgoOF+TkFqUQrx5gCw8qwmCIJaQM+v3
 yvy8+HaoNVTHa0q2k+hI9zDj5cMHWjGNJyre5XPZB15j8662CaxXa/TyHYicbNsv6ULtDaCW+3U8w
 jKQfp6AQ==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nWx-0005qa-8Q
 for linux-mediatek@lists.infradead.org; Thu, 20 Feb 2020 15:14:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id n18so4590899ljo.7
 for <linux-mediatek@lists.infradead.org>; Thu, 20 Feb 2020 07:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nyYfAxHT6CRHzAhL+Lfi1DTcyn2H/tLwm1L1QgCaoUc=;
 b=FB6lzG1QsIqJHCuslHP3XrKS96DyFbJ/GgtiTNNd+l2lp80jw0+yLLjt0yAnjFUU6/
 8WD/q9sg3t58MaC9meV35lDEcTrOtbdtPD1gGvBOTvftfV6FsjjVwS4RSzkAV6QEiTmI
 VkJrdusURrmMv0GCiczAYp9z8LUIdgMCgb5L33aNByuSoyffErjFIldKL9bea4/kpf8N
 RI/47mpW1GDKEPL7hpCsxbmnKlj2JtpAdfgYY/N13m1vHCq8UlzrBbEpSVbNXnebI2Jk
 7y7BA/Uxnxq6PfuBrRb+x1Z032LUiaaFim9zrrTNbinVCNYATV2YijjptrZYmbGw2eFb
 iKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nyYfAxHT6CRHzAhL+Lfi1DTcyn2H/tLwm1L1QgCaoUc=;
 b=SoPmReIfilzlGj+jqsQ8qohGBjbOC5NaMopxsyKmHZgOXUik7qH9cn6fHTEnIXq/iY
 Ja5H2Ka39es1f2ZA0ROifHpFNxzMhSZT1Ru77vDUhn+FnxznaOlK84NkmYLuISH9D+1q
 4FpOZzLeL45+wbjOR9QOwXufw7FNoJ+kiaAQkoxy3XsOlUtgVjluXgTvBra6h28K2hWY
 lj1JGoEQgr7MzToXaF7a+z/dGK58yzy7UGe9NkCm+crLR2BRnCasq4EpJhvMCrfBC43k
 ifr582a7rpkosLTSyoBPAtIPGUVL82k2BLhbzVlv21Yd+PhftSC8KMydhc+xUyqP+Oj4
 c+hQ==
X-Gm-Message-State: APjAAAVP2YunA2cER+3R5EnJolA+/UTw+ybAbeKfRmIWq0UcTGJ/Yr4I
 r5/dpXb45J5sVoZRJn5pGq2LP68ritquad70ymA/Iu3HlEM=
X-Google-Smtp-Source: APXvYqxtKVKfD5MHxlSSaj0Vz28Axw6Zu0+dlk/mKScpMhfCjU4oekoeWPt9CHiwud40m5c1q60F4dL0wXI2I30UJCs=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr18719210ljg.168.1582211654160; 
 Thu, 20 Feb 2020 07:14:14 -0800 (PST)
MIME-Version: 1.0
References: <20200218023625.14324-1-yuehaibing@huawei.com>
In-Reply-To: <20200218023625.14324-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 20 Feb 2020 16:14:03 +0100
Message-ID: <CACRpkdbgWj3FtKP2S1BcNDphYRS5G-c6-Ms1HGyrcOox8EFpOA@mail.gmail.com>
Subject: Re: [PATCH -next] pinctrl: mediatek: remove set but not used variable
 'e'
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_151423_551490_12CD1736 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@listd.org, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Light Hsieh <light.hsieh@mediatek.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 3:36 AM YueHaibing <yuehaibing@huawei.com> wrote:

> drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c: In function mtk_hw_pin_field_lookup:
> drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c:70:39: warning:
>  variable e set but not used [-Wunused-but-set-variable]
>
> Since commit 3de7deefce69 ("pinctrl: mediatek: Check gpio pin
> number and use binary search in mtk_hw_pin_field_lookup()"),
> it is not used any more, so remove it, also remove redundant
> assignment to variable c, it will be assigned a new value later
> before used.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied with Matthias Review tag.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
