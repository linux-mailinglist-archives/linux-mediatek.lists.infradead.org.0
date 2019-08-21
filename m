Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BADAB97E18
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 17:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8h1WpCpBlBwbfR9LqWRuH9Qg4TuMcbFrjsb0Gbo493M=; b=LFahy/464kXxd0
	rkBeB4u8GhlLOlAc5pViSo3ZA0TDLS+87+kpjs9nd/hzAJIkUjkpq55KA0XpTmTaPc0sk3R2w4p7O
	sHX8YmwnkQZZLWbw6iZAcz8oM6BzikVi6Yqf803dz3TqiNegADpEBbm8QQY/v/vI/wJC9XDq7zgTN
	qBNmEsvqdtCvTKYUeRh2r0OlZAZqWFkcTalcGbf7IX+hTRC/2UIgO6lDrkp2mXMBHybzdu2nuJQDh
	1FO0cyvdvBDqzHJuzjYE/Ed0CP8+EfXuDNf9tWgw5OY0egEuHkg8BVMJQaJMOCi5E3eDEJdTTJeWS
	fA7aEB5+A2r9DKoVoWBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SDW-0002j2-Ph; Wed, 21 Aug 2019 15:08:06 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SDL-0002Xm-5a
 for linux-mediatek@lists.infradead.org; Wed, 21 Aug 2019 15:07:57 +0000
Received: by mail-vk1-xa42.google.com with SMTP id t136so622393vkt.9
 for <linux-mediatek@lists.infradead.org>; Wed, 21 Aug 2019 08:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yoz2RIEoekI97TGDwNDb2cYuY4j2KA9YLKzO29oxa68=;
 b=bKoPdm41C+rt86wgtJEZwgf4WpRLlu7uiVMYEdZBNxIo2ki8MFlGUKMbhVAMe3ieZ1
 SNjpNYLICJ2KbpkDWAm2FWLMqMa+zirJcbb5DwZEqVav4uuxU75qfxkKsNGI+232Fz9s
 W+Nj5uoncJ1iZrtPOlwkzEsBmJgZxnVmGNxO6gNjBFQA1uXHa3TNhZ0/UlEfnrCa8016
 KyX4cHo9xAUIC5oOeui0GM4OhIt21o6BHDroDDUjZYT8CweLAeNBjndyIgwf2smXi16G
 D/EX3MYhAJHrNkw3JEnJ2k7WXEckjsLY9fzCgQJoB7LTSaNvFKwoYvXOEaSEO4pp1IZ5
 YqXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yoz2RIEoekI97TGDwNDb2cYuY4j2KA9YLKzO29oxa68=;
 b=LyDad86T+iJIfemhieAU2hamaTtYbI8SKDt1ecc/cJEvC8HdJcwcVy9K8GykpXMFVI
 JlXxfl6DnnhyBPiSd+RBAF1cyYw/nXFkYO/Yzs3JnNJ6+csFlwjmtWdEnREUki/hPtJl
 V9QZtQL+6z8XjHwCsXt/FEZtrSA0Lq6hvULaHrIDZ8hatdsB78+Y4qDDBM2z/+ou9bFz
 12bxsAc8zYlFYnOUD3nChhJgxl6XGA2fsveX6PTIyl3mDlPdX+VCZG0QVeYpOT+So/xu
 EaS+wCXU+ZQYvL2EBTmpRlgnYESo9WILBC+b45AWUJtKH/zahxedUJmk9XprEviqd+Oj
 SAnQ==
X-Gm-Message-State: APjAAAWT/x2ODJ/AqDASXeMqybkMg9misjRyBooENeMdt5eeaYgh8Drz
 XLoi0M3iaqU40+a5Ti8ByVQe0flwt2waUIXl4+e986bE
X-Google-Smtp-Source: APXvYqxIjlgM9kgim++G2hEIL2HAfU2N3YDY1R7j00eUtzDimP4T6y7m2Y4h8FTVzBRX/pvG3mUHIeFRN6musNiwflc=
X-Received: by 2002:ac5:c4f7:: with SMTP id b23mr5297907vkl.17.1566400073181; 
 Wed, 21 Aug 2019 08:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
 <1559438591.25015.0.camel@mhfsdcap03>
In-Reply-To: <1559438591.25015.0.camel@mhfsdcap03>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 21 Aug 2019 17:07:17 +0200
Message-ID: <CAPDyKFofoJKqnchJT-Bty9MMLDviiBWupf+MPmMtv+mRemVXLw@mail.gmail.com>
Subject: Re: fix controller busy issue and add 24bits segment support
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_080755_204417_6D7E5E10 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 2 Jun 2019 at 03:23, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> Hi Ulf,
>
> Gentle ping for this patch.

For some reason these patches didn't reach the patchtracker, hence I
have just not seen them.

Could you please re-post this so we can get this merged?

Kind regards
Uffe

>
> On Sun, 2019-05-19 at 15:57 +0800, Chaotian Jing wrote:
> > the below 2 patches fix controller busy issue when plug out SD card
> > and add 24bits segment size support.
> >
> > Chaotian Jing (2):
> >   mmc: mediatek: fix controller busy when plug out SD
> >   mmc: mediatek: support 24bits segment size
> >
> >  drivers/mmc/host/mtk-sd.c | 24 ++++++++++++++++++------
> >  1 file changed, 18 insertions(+), 6 deletions(-)
> >
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
