Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC97FAF8E7
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 11:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMW45HYkdySsDM9Ao5tvWkRVaVX0V3649DLLaoBOP2w=; b=dBZpm9IqCruJoS
	n5+KOB82D0mxSm9FW+lN2n3FV07YqVE/Jrt+YrxyZTPs6LOMmDoAKHyWihjoA5ExXS2y6FqRihgYh
	qS+Nt1x1m6S4khqzBuhSi1Z3JDO0dbLHEEtR/SSuXRnfFo9GoWd6Eo4dPAx/QWBSS53FrUqqITD7y
	PB1IyRYFv5MwoK25qUYKeJcdLnx64JtH8D1qqeqOiqCU9VpzE39QeM6vzBnJyhDMsihi36hy1DkZB
	9VG/I2L3DO0V8ydGxfg6av/pY8c2zDqZr5zkZGw9bSVpr6HzNRtI82jS94JXSWQB0sRbb70/Zz40t
	IQdO6B5x9qH/ReL+27yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ywN-0004QD-Nf; Wed, 11 Sep 2019 09:29:31 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ywI-0004Ph-F8
 for linux-mediatek@lists.infradead.org; Wed, 11 Sep 2019 09:29:27 +0000
Received: by mail-lf1-x141.google.com with SMTP id x80so15900803lff.3
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 02:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=meoyF5qnG1EbOZhPqlVN2+IiExXsiF/sJ/BQgZ1twjI=;
 b=blO4zlD2kpj/8/v83jVkDYzwy/DXX2v+pWYr4ZysLvhmiPcDuXpCjOELy0K6cPbbn9
 PiJe1ObQU3MpmlNHhUm1/2yhq/++D7dAEH1evQfJ/NXRSYeMG74G+yHOJEivgjVKBR/g
 9VbTPqwbXk+V6n/gJ6fSbWfWvquIaEIzWeOlEaF2kAIeIJSklsoktwxpBHncLz+Flb0X
 DXOj0b7DdhqyW++P/hbwgvrE3+4tNpTftDM1ffmOOspcPY5QRQPG6Bl8TlP/8UbMHdfn
 LkshNjdIwBAxjKNDblUx0ex684BdzoLtfsOyaqHRxOP5WFspRavgJ+4pIDoOT1Delae7
 W0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=meoyF5qnG1EbOZhPqlVN2+IiExXsiF/sJ/BQgZ1twjI=;
 b=rA8CuUkE88YhbRIxOBBO+B+nGARSgEuLoJdTAv6IMg8zPjryvqV+gKDdLHJp4ZFHJF
 jzr82S2J1QlVwhyk59+82y7+cH81mJrS9Cvrs0XzP5CBj4rk82Yp91pF+KNeLlmmeYBW
 R+uYOkudfcawqLs2NVxBKz8VrYO0JM/cAjVWL/TOnv47FAIRj+lszbiFap2un68KfxUa
 RuF+vS4krvGK8K7zyWWla7py0O7yD5XGgj7WKezHd5ON2IL40kw7gIaSl+2rq94dRdY4
 yxQrkoyRbjf8M/SnO06Z2PDYMuJSjmMIdbxR4vQVQ4OWb7cWCnnLx3rPiVi+W387om5q
 /GTQ==
X-Gm-Message-State: APjAAAWh9ZDOsAoIK0scVOC2ZIPCB8qDrX9wR6ZeT/PN3DOm3LTHL9Oh
 XFMiHDXAVJSn4AKbP5JWFXM1i1LEr/AjOZMVFqbZ1w==
X-Google-Smtp-Source: APXvYqzOYZehJ5Xw3MxFgYRqFUIZbXMNBMiPJdnrux4Wxk8zVbXjZTviaBEscQ9wTzhD2drdfEvrsRgqL7YT5XRozlU=
X-Received: by 2002:a05:6512:25b:: with SMTP id
 b27mr24506530lfo.60.1568194164645; 
 Wed, 11 Sep 2019 02:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <1567662796-25508-1-git-send-email-light.hsieh@mediatek.com>
 <1567663210.1324.3.camel@mtkswgap22>
In-Reply-To: <1567663210.1324.3.camel@mtkswgap22>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 10:29:12 +0100
Message-ID: <CACRpkdY7Vpy-fBHSXnjby0kK_tDWBtZaCwjCGxFy4HWeJ1FgEg@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>, Sean Wang <sean.wang@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_022926_511706_36FEF49C 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 7:00 AM Light Hsieh <light.hsieh@mediatek.com> wrote:

> v2 is the same as v1 except that commit message is corrected according
> to Linus' comment for v1:
>
> 1. remove Change-Id lines
> 2. correct sysfs as debugfs

Looks OK to me, but i need Sean's review on this, Sean?

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
