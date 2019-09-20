Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A05B90C9
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 15:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5aBfG3a5EWbmZngIe79RsBB9gsjBB5hc2BBPb6sw3E=; b=ngsdJdm8QBbH7h
	v4jmj3fueQ7ZOy3T/liiPK1+tOuRErM+kG9LYsY93WVmwh1OHhYZ5uz9YyWtKuAUbLu0sxAuOUiJZ
	mT/zqP5lpda83L5K5U/X2Q+lM55COUO1W6RVLlupgll6mEvnPkSEUVsFEcdK3jI3tNn2OAAhRP7Q/
	qI1vd+qsrWhN0/Hh5NvhWAunpxarbhTKqkfRq0cJQkiKldZu/yhdL3dSt20dZGes5oU1HKONIjSmz
	SvlZGElYGEr2pK1rC/kEoRS+Mv7VGgrsC8Sh/STHukYNHZr4lyGAtTBmr2uI/NOKHySeomitDKW1Z
	GetfrLCX9FOqjhSi3WHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJ7U-0002rQ-PV; Fri, 20 Sep 2019 13:38:44 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJ7L-0002im-NC; Fri, 20 Sep 2019 13:38:37 +0000
Received: by mail-oi1-f194.google.com with SMTP id w17so1753516oiw.8;
 Fri, 20 Sep 2019 06:38:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U7SYpu/IKv9A1L7ri1/PD+Qii7rDc6Mb4V84bwV3zu8=;
 b=B+dJw0mLnJLja9HCa3nitXewOABKEGm2okiB9FHnUQ4nu9aEHeQghRHkc7WYApDKmD
 5WIFg8a9hBHqoQF1swH+6C/xc2R39UlvUHYfHC2zN8AFs3BPcCcsqK4H2xl9yoczg8GA
 lL05xWka4lImPe01aa3Ge37YY3PUwGClSEdkOjZ3K/6q+b0iCMWnDLAEW4QRkwX+owo2
 Gt1wtZRiMzoYqdm4ZphkIx7tfNfaUblJaToQn4QJnptKsTAkzQ1ICd4htUsoLTndkfHH
 OgvUQ3kffgnDhIqGc+Y5I753QKAorbS4ESIJnvrtlsYtUvqL7h1ZVzXV1IcFWsBRr+fp
 feXw==
X-Gm-Message-State: APjAAAWvvvix20J1o24uaBFmF44L6IC1XaGy+cWQrO/ewOwcwq67Ad7r
 zempBkffboDgtvu3LKxS40DsHUEJD1yjnbaRI1I=
X-Google-Smtp-Source: APXvYqw67ydlVXFpRTDwDbvUAIeUNKLYEQkD97I8eV/GUwXmYJHJyeTNAxbYLZDN4ARUAYp+5lhdOdt3kja0FCIfhP8=
X-Received: by 2002:aca:f305:: with SMTP id r5mr2816182oih.131.1568986714503; 
 Fri, 20 Sep 2019 06:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <d80a685a-c3de-b9c9-ad32-e1da9308c393@web.de>
In-Reply-To: <d80a685a-c3de-b9c9-ad32-e1da9308c393@web.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Sep 2019 15:38:22 +0200
Message-ID: <CAMuHMdVD4ktoacaqWSRxGehmO3ULrcFXCSTQ=JaxrUWhCTw-Lg@mail.gmail.com>
Subject: Re: [PATCH] media: platform: Use devm_platform_ioremap_resource() in
 two functions
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_063835_755528_99864B38 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Himanshu Jha <himanshujha199640@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 11:30 AM Markus Elfring <Markus.Elfring@web.de> wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 11:20:48 +0200
>
> Simplify these function implementations by using a known wrapper function.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
