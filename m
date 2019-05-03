Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A780E125D4
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 02:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow8kVVGQSt71aFbk2ylMvbyB3YZv9/XiEjA1h7mApOQ=; b=TLag1+rnsIyUlW
	RcgE6mpYG8r09GVL8u7CeHjiEZz1AHuzhi53dSCZKZtqcMKbCOPb9xaGCMLeKjMG8OTcvl7r95w9s
	V9CFnNJDtwFoSUv72NJNKAnIGwbzXPe/9fKiAhFG6v+RJALMQd1nNjMJ29dg62bfmFNJSMRg8Fv7F
	Mjs7+AryWRkHdl86M8WL5Lx9buC41L7Py/2b5/r/Y9zn0BEfe54Tc1invR+bTUa0XYG9k+BAbAM8o
	z+0OceJ7wOSdGKuNRLhZNqHl9KL6Xfb8alPOV6TOX8Tw3Ao20d0OnQxSDyD2etrt1s2zSh7YQvujK
	XAhSOPFaJLxDqfCjLsYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMMS0-0006Ux-5J; Fri, 03 May 2019 00:53:20 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMMRq-0006Nn-AL
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 00:53:12 +0000
Received: by mail-qt1-x842.google.com with SMTP id i31so4904645qti.13
 for <linux-mediatek@lists.infradead.org>; Thu, 02 May 2019 17:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KVq/ptxRQpcNDoBImsMtflPpiDxEADD8mGoV5ENJygU=;
 b=c6dGu3TEKj7g9svDOCStGyjCeqPcYYKRwURWSifIP+8gqyQCF49EtCmn9GEIMJmvZ+
 +XlleJDV98oHyazbTc1/pyV8Pq4dFtZ0dXMHf2HV25jqI1ggdC+Tm5bjGkgw5SeCL3pQ
 Lh6mBgMi6wK06jeVD64CwMDTA4fi9ClwjcUHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KVq/ptxRQpcNDoBImsMtflPpiDxEADD8mGoV5ENJygU=;
 b=fUyTQ7oWnlebRyzJmo72Oy9DXPlPcemMc8RQebrWhGmXJ2DG4IvTMeHWJ/FnHBeVEu
 CJq5snqJsi+gnAtgHzX2u80Znn7eiaurccwRaq0dp8lLp8CmofM80PY5mBE73xSGVzts
 +Jx5AnVU/VegfucMPZKb/tD54yfMQY6YqTNtUgsJhcXiN+CTrKuDOIoiVFG2ccbPhjt8
 bgPezB+BxLbadDJCOMV9NNl3BrjMq26XWpu69sS3zcxQ4M/A1/jmldwKo1Dicpf7ucHI
 JFeqko02lcIIkMGL4TiJPwOxeVQPgLUNd+dMiB7qQ/paUB/GXel2V5eKCRciQL+F0R9A
 4Y8w==
X-Gm-Message-State: APjAAAU9FL/FvTC49B8tGR26xK4chJxPLevkgCr50cnAFa1eXorLRxyz
 89TQoNcNw2tqgkdmMLTsEm8TNMlssljSKu0qIm+z7A==
X-Google-Smtp-Source: APXvYqyjWk4rmPJKNPpzClFQHuSGSaFCyCx4/b9+Xa9XJSK/iVmucGfYdCZ/C43Ww7mdO1NyQQxlzSgGtf4xZ3HO9bM=
X-Received: by 2002:ac8:1607:: with SMTP id p7mr6149088qtj.75.1556844788925;
 Thu, 02 May 2019 17:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190429032551.65975-1-drinkcat@chromium.org>
 <20190429032551.65975-2-drinkcat@chromium.org>
 <1556804888.28808.6.camel@mtksdaap41>
In-Reply-To: <1556804888.28808.6.camel@mtksdaap41>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 3 May 2019 08:52:58 +0800
Message-ID: <CANMq1KAugRiL+-bAFijEM7NngLSoOUQtN=rNV5+YYdJ12u+jVQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_175310_383467_463F24BF 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-gpio@vger.kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 9:48 PM Yingjoe Chen <yingjoe.chen@mediatek.com> wrote:
>
> On Mon, 2019-04-29 at 11:25 +0800, Nicolas Boichat wrote:
> > pinctrl variants that include pinctrl-mtk-common-v2.h (and not
> > pinctrl-mtk-common.h) also need to use mtk_eint_pm_ops to setup
> > wake mask properly, so copy over the pm_ops to v2.
> >
> > It is not easy to merge the 2 copies (or move
> > mtk_eint_suspend/resume to mtk-eint.c), as we need to
> > dereference pctrl->eint, and struct mtk_pinctrl *pctl has a
> > different structure definition for v1 and v2.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > Reviewed-by: Chuanjia Liu <Chuanjia.Liu@mediatek.com>
> > ---
> >  .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
> >  .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > index 20e1c890e73b30c..7e19b5a4748eafe 100644
> > --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > @@ -723,3 +723,22 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
> >
> >       return 0;
> >  }
> > +
> > +static int mtk_eint_suspend(struct device *device)
> > +{
> > +     struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> > +
> > +     return mtk_eint_do_suspend(pctl->eint);
> > +}
> > +
> > +static int mtk_eint_resume(struct device *device)
> > +{
> > +     struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> > +
> > +     return mtk_eint_do_resume(pctl->eint);
> > +}
> > +
> > +const struct dev_pm_ops mtk_eint_pm_ops = {
> > +     .suspend_noirq = mtk_eint_suspend,
> > +     .resume_noirq = mtk_eint_resume,
> > +};
>
> This is identical to the one in pinctrl-mtk-common.c and will have name
> clash if both pinctrl-mtk-common.c and pinctrl-mtk-common-v2.c are
> built.
>
> It would be better if we try to merge both version into mtk-eint.c, this
> way we could also remove some global functions.

Argh, I didn't think about the name clash, you're right. I guess the
easy way is to rename this one mtk_eint_pm_ops_v2 ...

As highlighted in the commit message, it's tricky to merge the 2 sets
of functions, they look identical, but they actually work on struct
mtk_pinctrl that are defined differently (in
pinctrl-mtk-common[-v2].h), so the ->eint member is at different
addresses...

I don't really see a way around this... Unless we want to change
platform_set_drvdata(pdev, pctl); to pass another type of structure
that could be shared (but I think that'll make the code fairly
verbose, with another layer of indirection). Or just assign struct
mtk_eint to that, since that contains pctl so we could get back the
struct mtk_pinctrl from that, but that feels ugly as well...

>
> Joe.C
>
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
