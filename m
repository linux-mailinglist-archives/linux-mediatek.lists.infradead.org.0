Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715CC550C1
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 15:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRPHidC5J/BLxsO4lIKqf+QkbpTfaEocSVD1CwxBYJo=; b=smEe47aRd3NwIe
	Rq/l4JS0PZgtk7fl+4LkxgANini0Rm6Ssb1XQhsPVEm8uGSGk4UYyIVrM/zDfI98BFozz0TbORpQ6
	+Isb/ruN7y4dWCfa15a17xBMKIS8oRYMHvNqa9qA2LQh2SvuoswAlPAlvqwkcpAR8RKo8zJX9pLCM
	YQd11sESNHGUoJoh5K4T8dPZyrx1j4yV+DH6RuMQTyU6kNcPHOKUW8kIAIln2uhytCDw8zoVTm9c+
	3eGTZkDLfZw6ninwtmANT5aGB0ssTeRvrYY4Tpo31S0crd1KjkxMTMAQc7fAJeGB80x6E9qz5w8Y0
	IAdm7gooJlie8la78noQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflqu-0001zj-IN; Tue, 25 Jun 2019 13:51:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflqh-0001qm-RR
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 13:51:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id x144so5248875lfa.9
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NFgue3oKymAnPLqWEpKiFYxZqxdbMA1mAsgv3rYLpoE=;
 b=PdLfNuRX8o0MT8u/xnGoKn1MWuT+NeXfGGOEg8LQPuO8qtlaH+6/U/Se7HOmQPGW/t
 nhuOnnNj/Ur1cPp9pkrCWbCm946AeCXnyEcwO8F6uGppaYNGrImtYwVg4eqyZuYx4nw4
 VzpiyXCGGe1cmSCebquOcabusXBnFKLKt/BvnEHk5Iq9Ksp049DCVXNqpV90gE4KpAF6
 jIdbmoHFwr2O+yKyF5xOQ6KSyCo6vEP2VXoqEQKBLLqYGiyMWASrpQRYV9T68FD2svRX
 SLceTYFCOde44PwxP8DvJvoE815KPjsYOzE1qmOXi23IUTqltqJQloZd9osx4M9Eh944
 IQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NFgue3oKymAnPLqWEpKiFYxZqxdbMA1mAsgv3rYLpoE=;
 b=U6c+fzP+tRQldVU9FfqnH5hpnmWX51AiWvBxiYl3l5OtotVbGysBGz31fuIWCr9+xH
 8DP1M3hO8fNDvhEyKbfk8VipxG99OBHMhpDGanj49KB00yKdQZOZmDr0RjViOznyXUzq
 FkwNjtxc9Z7psoSSqIRTISkoJWoS/uHP5hx9qqnVzc52Q1If88Gma9+btXNA7U8YAehZ
 8WZ6pI3sGVWYTTXUZQobudZ87B6tVJ3sMVdIX1SziulGcJcYevvPM5yThPUjbV5FETsi
 RUBUH0Or4Wgf+SswqM3LUb5HMbIk9/+zzTBmiQl7VR1xTegeDMKUwOy+GRsxymjqNtSN
 z3qA==
X-Gm-Message-State: APjAAAVYX6ttAXpSrg0m3I816lIujt1+6hulg4B5T8P2Rk5WAhbSixYq
 J6jljmfIkXdZ5/z+zGgYvPeNwR6/+NgkeWCZX0yqig==
X-Google-Smtp-Source: APXvYqweuybTOeTfqTGsuOJxjLKJ6DVhGG8Um8M//OczH8cF/Z2EL92nk9R9z1tbGk4bZ7C0ouYVRfKXJe75pfgJjXU=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr25254433lfm.61.1561470662286; 
 Tue, 25 Jun 2019 06:51:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-2-drinkcat@chromium.org>
In-Reply-To: <20190429035515.73611-2-drinkcat@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 15:50:50 +0200
Message-ID: <CACRpkdZd+0_7xqaa05mqNzNxDC1kKmEv9LLRoSVYqTmO=+3iGA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mediatek: Ignore interrupts that are wake
 only during resume
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_065103_892273_5895C0F3 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 5:55 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> Before suspending, mtk-eint would set the interrupt mask to the
> one in wake_mask. However, some of these interrupts may not have a
> corresponding interrupt handler, or the interrupt may be disabled.
>
> On resume, the eint irq handler would trigger nevertheless,
> and irq/pm.c:irq_pm_check_wakeup would be called, which would
> try to call irq_disable. However, if the interrupt is not enabled
> (irqd_irq_disabled(&desc->irq_data) is true), the call does nothing,
> and the interrupt is left enabled in the eint driver.
>
> Especially for level-sensitive interrupts, this will lead to an
> interrupt storm on resume.
>
> If we detect that an interrupt is only in wake_mask, but not in
> cur_mask, we can just mask it out immediately (as mtk_eint_resume
> would do anyway at a later stage in the resume sequence, when
> restoring cur_mask).
>
> Fixes: bf22ff45bed ("genirq: Avoid unnecessary low level irq function calls")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

Patch applied for fixes.
Hm a late ACK made me miss this, sorry.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
