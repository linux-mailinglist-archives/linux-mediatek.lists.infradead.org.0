Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BF91ABAB6
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 10:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbgFHi0ELVEZa3YmVINCieLoWx4Oh0r1UsBJDeCVU2Y=; b=FMoBmeyE/cJe7S
	AzIZAndrqF+zrz9Bv/4RdSaSAaA00bCUKmsNcmrztKev9qk5/9ycrG9GKYhZgF8j94ffB5tvum7lO
	o6V8f2GVVvYB16Ry9xjHKSEybg6kaH5FE9jQypU7jWJHFRKdRp0J7mywEyKkqyuVz4ZTTcF3tADm7
	EDwgDf/NemPSwXJGLE2Gnf2Db5zfXZT2rrPxWnATIJ4GcdDNYOoXzT1pn2A/tr4FWcxj6IwppaLq+
	41T/tvIpYQ6NfmPQ7x8NNoGhjtGZo0xU4jwX85fYYNv0sqESmQfsjbTIMQSsrBtng7m9dyVZ17Mr4
	gUzuCAOOdwN6E4pbIKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzS0-0004hT-K9; Thu, 16 Apr 2020 08:00:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzRU-00035w-7D
 for linux-mediatek@lists.infradead.org; Thu, 16 Apr 2020 08:00:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id m19so4821017lfq.13
 for <linux-mediatek@lists.infradead.org>; Thu, 16 Apr 2020 01:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sSf8uFnlnhLwj095+FU8Hbn9FbYIuI6qLS2jyiMbwJQ=;
 b=HTAxsHI4NFhxBaCaDB1DX0kXLNVIdVACrlSB7snYNia/S5Dxaduy0HAuEa14nLUnwh
 NjZ4+XYPjdEbGPlQtY7xdMJfc4wJ/ln5C9TgyMxTXtHwoH/3GbMtvLTxpiYS9aqcmyYW
 mbmmqyhMSBrFgMNqsZX+qMFEZjAGKsUeyE7JBzpLP+9Up/4SXYnUWGousajsyQ4e/gG/
 tp7ZiTkE0B16NNSEFY2ltXz8lNF4pGmLiLTfLBUnAHZV/4xyXmd7/wSkdV3an3765q5j
 BOERqjZVvDAeOKg/YdyD/hrlM9y2S5+Lf1xyea9woIZQAmW4/C6KW/yyDMkY+8oW3KCN
 +2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sSf8uFnlnhLwj095+FU8Hbn9FbYIuI6qLS2jyiMbwJQ=;
 b=j1nxZnqgYSWw2qN/EyW0n3A81668CyalHuKxCRSPHbQ6DGGQxd/r3HCZiUktCTygRc
 CrTohQoeEm+EDpoSw9liJJRwFTWOnbyG1zQFzvJxpG7fV4wYAL0tvD2wU2mkOrmaXYWC
 TLrGs26gs3xDUp1SJCWeSXAOIk4bbI51pTKynA1xkTIDGmka75kz33mSquE9+gPYhjel
 YYkfrsHF9GpOVHjNZK9RA9AngR10IdadvVAu+hKn8Gl2BpAEV7UEvPwF/tzK8MMwizN2
 Jg5qHxOa/Urfj1508IMv39Be3/eb4hmMKrvCENtsWhFBWdB6hc2/Wb1FuQSAlti3oPFm
 cygA==
X-Gm-Message-State: AGi0PuZREZfK4xmyZ3CpbIqoGmf5dbajHlQoW5krdZLxouM/nzI5/ks0
 9hVwsYSlvw9u/53pbdEAZieeB1yklXKLpqq5q+HeeQ==
X-Google-Smtp-Source: APiQypKLGba57Vds1+EwidDyrePfi8s/BtJ+tvZbYfVRkMJ5bQ1HEXGS3YVge49dJY0iO94c5gudWNVEvYyk1g0PZ68=
X-Received: by 2002:ac2:4a9d:: with SMTP id l29mr5028454lfp.4.1587024009374;
 Thu, 16 Apr 2020 01:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <9feeb04805e5a406fe22a92e3f280abda39ddda4.1586289920.git.sean.wang@mediatek.com>
In-Reply-To: <9feeb04805e5a406fe22a92e3f280abda39ddda4.1586289920.git.sean.wang@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 09:59:58 +0200
Message-ID: <CACRpkdbUzwwcJqqPb=HVcDptMb1OqmRnYNzPuTMLz75LOsmSrQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] pinctrl: mediatek: make MediaTek pinctrl v2 driver
 ready for buidling loadable module
To: Sean Wang <sean.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_010012_376829_14687786 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 10:08 PM <sean.wang@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> In the future we want to be able to build the MediaTek pinctrl driver,
> based on paris, as kernel module. This patch allows pinctrl-paris.c, the
> external interrupt controller mtk-eint.c, and pinctrl-mtk-common-v2.c to
> be loadable as module.
>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
> v6->v7: no change

Managed to extract and apply the v7 version using the b4 tool,
thanks!

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
