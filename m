Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1FBA6AA6
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Sep 2019 16:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7GLsvD/WgmEusKn8UCFGeIgwjUBbkjjB6f+pzy9B+4=; b=dfjIxJtLxamyCY
	O7RtBfgdWX2p+jB2jss/WyxIA6xb/dm+ylQyBv0iQS9eb7mrB3KcSRQ3bI3muXTfJgbFn/+RWgKxR
	TRHYXfyPrDIl49tthErckW3NQwWkf1e8XlQMj7n3rUZHDQF07IUHjaoxZ+bhi+CbKuiQ64cGJzwfR
	gMVd0ffhO98KwWuLXVXDk6r0MPx4xb51BWrmUK4iUjua+Fo8EPFtSLTLbsaep/G4Edpi/4PZceqUn
	nRaysKYI6E+D5KdOKocKIUx0QIJWzVCWYIVy3xD+A+E7Kxz6P5zHkZVGaUwwyAnloE/RfPIgYRDyF
	y3KIJpaqYedFxU7pMm2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59Mz-00017X-7f; Tue, 03 Sep 2019 14:01:17 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Ml-0000xs-57; Tue, 03 Sep 2019 14:01:04 +0000
Received: by mail-qk1-f196.google.com with SMTP id s18so4986629qkj.3;
 Tue, 03 Sep 2019 07:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vkeTfc7M2XswgLvmLg2L8bchTrQWzutCAt1I7U2Lp9E=;
 b=WkT7gi09NcleSmtxSUtz653eItVAWi+E7RupngDDeTeO9ly4GoAi2dukQ9sJFPqtD3
 c2SiVJuAES8F3BstcBjpJmONngPMOGG3IUOhvMXz1F4VUZMP3oyzdqX7VrqGzT4W3jxh
 1QHl7WkxEiMfrmJsPUVKZJVveNNkAgZX6VwnQakyytYbyAyhGmCzqcZdI9BXIOXdM9Dt
 wNeAzzRkxOvZh9/sYxypzrZ83aW0b8u0FxU31OXWhnVo98WG3dZtV34NiU/WSbpGC0Yk
 4WHnPWoBm2QdeMRN9c+LUJ6JPV7U6PExw9L8C/eMnQ13qSh32jYjIJ6iBYOCoKO/qqpA
 pXcg==
X-Gm-Message-State: APjAAAWP2N9d+3ggcJGOFqKOgdQqMRRwfBzYogeLhWp7gqlv5fIieUWZ
 8KjkdWjnNhTGMiNmQ5IRSiMN/zVjgT3MSg+VueA=
X-Google-Smtp-Source: APXvYqygQ4tSXWucAEiUHsEecpiACDpKvaFBpFIrUG/drKfb0kuPKmXNrvSEhFiYOs+De/YdCIRfTUpG1woz3AgWc64=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr33423487qka.3.1567519259214; 
 Tue, 03 Sep 2019 07:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <def8fb77-fce4-097d-7ae2-8c4670bc09c1@gmail.com>
In-Reply-To: <def8fb77-fce4-097d-7ae2-8c4670bc09c1@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:00:43 +0200
Message-ID: <CAK8P3a2ta+B=5D3suEfF1UccLSFSbcGs7B3AxvqBSzx=nLfE1w@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: mediatek: dts64 updates for v5.4
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070103_197836_94CD9300 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 Mars Cheng <mars.cheng@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 6:42 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>   dt-bindings: irq: mtk, sysirq: add support for mt6779 (2019-08-23 17:50:07 +0200)
>
> ----------------------------------------------------------------
> mt8183:
> - fix pwrap interrupt number
> - add i2c notes
>
> dt-bindings:
> - add compatible for mt6779
> - add mt6779 uart and sysirq compatible

Pulled into arm/dt, thanks!

     Arnd

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
