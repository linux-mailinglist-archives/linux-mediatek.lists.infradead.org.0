Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFC6A748C
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Sep 2019 22:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSYaztQojePvwjpPX92HWYxM927muWZz3H4+wU/qvuQ=; b=UUwQrPrdeQ1qsN
	lhSJjJi0yzcM4JEKBb7WlYV6K0Xk2dpQzd0B4xN204doeDTx/CoLtxFPJpYZepJSt9Ld8NEPUV76K
	HNL+0wG2HBfARoT6S9o8DjA+lt7WU3Hz9Ek4I+aVguhT1l27U7DBWkWsGXA9Zlj2g8J5ndUgNmZ95
	0Qfrudg82tFgT0skmqXxSyzEdrlqmREN6qoQ0dc4AYIHLQz0JZ599gqmK06UGOO+hYfHnYa9JNvYq
	61DMrbg3mkElAdjlZHXdguKHoFemAe1I2dJuI93EKkjYKvKcZSIVTz1S6Ju6TgwHsYdvgJ59Wd3Wi
	gdBVqdN91ldtJ1UOEWSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FIR-0004Ed-1C; Tue, 03 Sep 2019 20:20:59 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FIC-00044S-7Y; Tue, 03 Sep 2019 20:20:45 +0000
Received: by mail-qt1-f181.google.com with SMTP id k10so11389564qth.2;
 Tue, 03 Sep 2019 13:20:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2NkeV/rCnXNPX/ZvyFHib3P3zhKIr/gYaYphEsUSBgg=;
 b=E3IYU2L1JYtHmaNB+jY2cxa+yMSsgeTG2ezpjuF1zPt6dersfolwFIpWNBmgVjX9NU
 XAS4dL9p+Fbsxqg0Njndf5vsT8sIa1fpQcUvBkr9PjFky6dsFmV+UDDr+Pupb62wiLaw
 ePbzMjEyysjzldaWq6XGnodCk+bJKL80NMSpyZ1ApBjo1/ke8Ae9LkUbzbzRK2LQQFoI
 +4oB27vjQBaC26OtQO7RM9v6SZgxkJOcqfCNwClIJ4xVUMLmylzgwUl/tOm+T3oXJjIg
 9cKlc/KVH1utZaaFXA4gCu8iN+RRiZihKpOXsFndhCDq3rTMwIEcPQwQoBf4m5KdHK9R
 ho1Q==
X-Gm-Message-State: APjAAAUQLhe1b9Eaen+Sx+abm+D650OUTwFivOSlv1oG+7/Brb5V5muB
 /3dWQrRZis7PsIexeUJct19Kpwx1wc1YmSAdVbU=
X-Google-Smtp-Source: APXvYqyM3hm5p30EB8rONaF15ts4cwBEEo9GhPJgbXULi0iP+cVXRJd0YtwPvH7HwbmGnyDl/n9Q1YD1bIuefo6iAvo=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr11946036qts.304.1567542043025; 
 Tue, 03 Sep 2019 13:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <8c860e37-3816-d75f-fc37-ce496905ba73@gmail.com>
In-Reply-To: <8c860e37-3816-d75f-fc37-ce496905ba73@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 22:20:27 +0200
Message-ID: <CAK8P3a05foJYvyMDYMh=0j1C3FPsMX=_JNYDB85ww37VwCfRTw@mail.gmail.com>
Subject: Re: [GIT PULL] arm: mediatek: soc driver updates for v5.4
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_132044_267700_0A48FC18 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.181 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 6:43 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> cmdq helper:
> reoder function parameter and change size of the parameters

Pulled into arm/drivers, thanks!

      Arnd

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
