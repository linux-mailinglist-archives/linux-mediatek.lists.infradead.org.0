Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E79156A22
	for <lists+linux-mediatek@lfdr.de>; Sun,  9 Feb 2020 13:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=un/qDQRVANdcdfEJPc9c/PuOKxh0G2aatTnBK7R9PE4=; b=YjmgA3FIf8fotv
	zY5tjjb8zKrZhsbxUfJKSYRV9LJGAAn7wfDd5Ez2+s6XP9pAx5y/y3TlAo2mn1oJzfdqM+QJpObXv
	AXbpmSw9Yq6HP4GbYdOSQJnRColN+J9AjwyrSEwgb6KRutcuSuFLR4QrikRE5EPYTstuum2Ukbixw
	oydV3rr8sTIL64PCm5GuRMlzVSalJlKqLAZPINUxad+WgRUdHgUYzT1gfJpjEa8eWKgE/1InVy2Pa
	4hD64p7hTZSOoavWikD0Tls9uLVuAnSvEhtxqNlFHkBjj38mPbVJEfTuPDbSMP6Vdhvf9uEz9GwBy
	I5xhRSfB7KTkbosti0oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0lw3-0001q7-1b; Sun, 09 Feb 2020 12:43:39 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0lw0-0001pL-0J
 for linux-mediatek@lists.infradead.org; Sun, 09 Feb 2020 12:43:37 +0000
Received: by mail-qk1-x742.google.com with SMTP id q15so3883190qki.2
 for <linux-mediatek@lists.infradead.org>; Sun, 09 Feb 2020 04:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/HDQIjj7/RoJLWTQe7Qn8xLRJWwhFZyZPFpixKZQtWc=;
 b=BslnAMPTFediwpaZFlp2heXASRgX8v8aUXs4aofs/vN0jqnkG+BxIvOnq4/ykzx/Eg
 OdYffEnc4QvF6RVCf74NmtRvLiqEzhYLuHxnSt160Yttiji8URM9DSLodTvmsws37OyT
 MzdF80b/1Gayu2vTVYQisVu6xLheXWBHCKEf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/HDQIjj7/RoJLWTQe7Qn8xLRJWwhFZyZPFpixKZQtWc=;
 b=L/pSnWiheemERqB57NkzcUxGMXPaNAQjMCBpkQGS3/pteJRXX2Df09I0T+iDjzKatq
 uslKuvcSato/N6i0HjjG8OkOexh7j0DuosQYhCz7r74eg7A34v/bdkbOOzWpG5bxCE32
 CTWWgzp7Uob90/aYFll5aVzpNz3vugCfqps6vHMAmM6+aYMZTr9ukvPViXs/lcN1WXYA
 J7n4eKut7beiqjxFy8eDM8M8svYrpjXSroAIT2fICMo4Xw7UosB7h+mNUWzR3ZxIbSQA
 hmlb2MSzJJ5/PKhWTex/dLDhATaGd6KSuURfWdKFKulIWWzAH87znaxRCFHUDD6o8rKF
 y2mg==
X-Gm-Message-State: APjAAAXqlpsEJBW84kq/WYABt8bdr5rlj0WNC7wmR3lFV4yFw3u6ICXD
 VcxcLzuRUECbni6lnIfjlVmDFT75GO04pTGOz6fAow==
X-Google-Smtp-Source: APXvYqxdIXhbGu82ZxdIZ0YX8kCfAxINMhvxHUzLab5jgw1p7s+PzJ92K93PdTlaojIxuAyxA6VD+5BjPwjbjN0wh1U=
X-Received: by 2002:a05:620a:1656:: with SMTP id
 c22mr6969362qko.144.1581252213254; 
 Sun, 09 Feb 2020 04:43:33 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org> <20200207135251.GA2952@kevin>
In-Reply-To: <20200207135251.GA2952@kevin>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sun, 9 Feb 2020 20:43:35 +0800
Message-ID: <CANMq1KBKmOzaF_JcCMz_zWvDdO=ipnr3sv-PvpUZinheKSX8FA@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_044336_072078_2D01F8BC 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 9:52 PM Alyssa Rosenzweig
<alyssa.rosenzweig@collabora.com> wrote:
>
> > +     for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> > +             if (!pfdev->pm_domain_devs[i])
> > +                     break;

(next time, please provide a tiny bit more context when quoting, I had
to look up to see where this comes from)
So this comes from panfrost_pm_domain_fini.

> I'm not totally familiar with this code, but should this be a break or
> just a continue?

Check how the domains are initialized in panfrost_pm_domain_init, they
are guaranteed to be "packed" at the beginning of the array, so there
can't be any holes, so break is safe.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
