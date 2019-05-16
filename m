Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E02205A2
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 13:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqExbyAKcxTL/HiiiM8Qox8dwJMCbWWHmOMTIWPUTiI=; b=fdgalufN+kjDZy
	gkC+7FSN+Po9zXPA4r4J1h+QvwUrDSFpczdQA33erAkPSo6CqDmc5/QFR5t/IsBqz6KDidfouSLOo
	FsRlGGSU7f6CKZlk19elzyi6ufxrAgdJ5s1gKhRZC9t1sO6rz7i2eFe1NhodV2q9h/SfcQMvA2btu
	mrknsyU42iyZjmjqUHCXve3Ta2w38PzHezqYxm61AN/k8WhQINaue95DmvbMC21rB/+svoN1f8o7d
	mwkQKH/h8NeeroiTY3bRRsaGb3kzinvhPGAj+z56tWYOcVMVYsgoNtHCusFBzpJhhXxbHn59G3PHu
	jiMbxIHV+JSrUS79C1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREzR-0001DB-Ru; Thu, 16 May 2019 11:56:01 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREzP-0001CW-3y
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 11:56:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id c17so2430804lfi.2
 for <linux-mediatek@lists.infradead.org>; Thu, 16 May 2019 04:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hO177V5YstoHgCwjJTd6QkNHj63uQ+DjBf4IdD4xe9U=;
 b=CUsyorl2ruAim6PW7M+EDIOkom4xJQXASAd8/umQpC24MPSnfKP1z/6sQVViheAjF0
 5EF6lw9qAc4E/11MOWdtZ2lMTogd4pz+rY65IAbvn5hJKCxL+SiUDPTXK282GvCmqoI2
 a+kpWjK+OlweLcp2FOnLoidRq0bCigIVTWoEXSiQCceK1hoY3IjV2kvY8FS2763FKYOx
 mmYRyQFEUN5P1zjdQKTaqL8RPcrTsLQCqiE5d2NcP9FjR/q3Qg+hsPXIOx8QdjBN+7uz
 t98bs17n0trMpRKcS3QNHg3KgD1RrGZIoEeGHYD36OZfMEBNLCuJ/AEhMCzHStHnMDah
 2jew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hO177V5YstoHgCwjJTd6QkNHj63uQ+DjBf4IdD4xe9U=;
 b=Y+pZnAtEgNITG95xzHgAZOXjA58c8IMDT/q9KSzFpgCAkXmoE+CfdE1kA/dMAdCD+V
 SpYDwljqXyyuQxrjJnDZNSQh3O1KIk0LgE7f1Ll5vWBk0JxrQUnDP54J02YqUfDI4i6B
 3XzkmZzQN7IropVFyYt7ae+T9PtlT9P4CPjkyuVxL+Pk1aGtG1SToJJGsyKD/+6u3RWc
 CCZ17D8To11YymyPqhN6nmXbguNZTr2gRmOVbblhvOvEyoWg0bUSeHr8lcLTqulTkOrS
 7063Iae1AEGQxWHtNbv1vxp6qUd/v1gVSPZE6glVfgWBsJJRxLJPjRkq1/mbC1fNts0O
 mcJg==
X-Gm-Message-State: APjAAAVqbf9yDvYLUeXiy6vii/tfhButipkGCUgHIutTkE6fWodKYA3y
 gjlyVMLWRMYjtvLg6N3pW6GZ6JnXm+kzpz+NvjizCA==
X-Google-Smtp-Source: APXvYqyZ8YtOPeMszJlq1lN+VhvgOvRHSsqzsCTDLezRY/k3Tb/Z9ZQ2wRmo8YDVATi18dFWIID2WHYRpAKSQEcvW8I=
X-Received: by 2002:a19:cd82:: with SMTP id d124mr11861237lfg.8.1558007757283; 
 Thu, 16 May 2019 04:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
In-Reply-To: <20190508073331.27475-1-drinkcat@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 13:55:46 +0200
Message-ID: <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_045559_167045_F5CA1B96 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> This adds support for wake sources in pinctrl-mtk-common-v2, and
> pinctrl-mt8183. Without this patch, all interrupts that are left
> enabled on suspend act as wake sources (and wake sources without
> interrupt enabled do not).
>
> Changes since v1:
>  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
>    recommended by Sean, to keep better separation between eint
>    and pinctrl-common features.
>
> Nicolas Boichat (2):
>   pinctrl: mediatek: Add pm_ops to pinctrl-paris
>   pinctrl: mediatek: mt8183: Add mtk_pinctrl_paris_pm_ops

All seems to look fair to me, but I need some official ACK from
Sean on these.

I see there is some discussion on a related patch set which
also has two patches so I am a but confused how mature the
two patch sets are? Are they at all related?

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
