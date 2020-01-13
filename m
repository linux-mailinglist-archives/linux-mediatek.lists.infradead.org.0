Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F30138C29
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Jan 2020 08:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1SrCjbSVaqJ7KZfDrTt42U49qE3tMOfMcwelWlPlQ0=; b=eUQ+PDPTb0s9qG
	35rhY3ZrF/5tEj8fTKseXm08CpiEs93xbFECY8QjU+9yXV3RyNfIi5KPk6FKr5EDAxTfxlHMOwzA7
	0hb68j4AW0jPxIO4VBcbF781jfE0lGcAGy3M3P0nsnWy4HpuNSfbopQINbsNmvIjuZSSFRZefL5PE
	IALXm4FovEw2VqLxMURSUKQWBlIiFEajYj4Nd22T2A8mqhtDaOUg0P3YSKXs0ZkfVovC7Yi2nQIoU
	yD/pEjYM85Rndx+1YhVkBYhFGs+QXQPS4/WF1P8O/OveYcOjjmeKwrcgrx95NKOsMvsYvFLwqCbKm
	AijMucJs28Ht1Zyelyrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtps-0006oI-Hv; Mon, 13 Jan 2020 07:08:28 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtpp-0006nR-Ud
 for linux-mediatek@lists.infradead.org; Mon, 13 Jan 2020 07:08:27 +0000
Received: by mail-qk1-x743.google.com with SMTP id x129so7586054qke.8
 for <linux-mediatek@lists.infradead.org>; Sun, 12 Jan 2020 23:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Li93yx3mVpdyk7CJK6HDbuJvR+euWoOVK8hS+mAbZms=;
 b=kcDnCbCuetwq8A/q63qeQ4jlC3PQiMbt+cpgN4GqEKafeNFliKhFMJ77TQBfNM+uMZ
 GxLi2SFn3qZC0mWbqPvE/PEQhABJA3O7117XpPYMuoOfLQavmLT39YopEgBs/IEFEsCL
 YLeEodBlNKuV+NJxnyI4smhWZr8oxmFTdGnLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Li93yx3mVpdyk7CJK6HDbuJvR+euWoOVK8hS+mAbZms=;
 b=NZsDATQJEVlxBvmIZxFyGH+xGh13Qy7BdVmCfI12i6dE8hksxjs3eUqdu5M0mecDtL
 u0tm3MarWHgy8IALqNRovfP6cFFzcjd5nn5Q/OAOlfBJdv4rWCYLSmtefYt9ZzP7MIXd
 TL4DZYETaO3MFC9X63ze3hmzmz6a4QvDf1OzLKKSZU8/iVwGnDSMHeHhrU5PN4kS6zq+
 b5W5Fr6tJzNxgSnDkRXw8KBH+/RfdvQY7AkHSmo5xKNlVOncBCWHbjsbX6yw5BOypfN2
 bPl9xr6AWnVhGyQa0zqZbAGjpMD2zyy/ESZX4kK4iLacLTE918TqYeBDsCBY31VIqVYG
 rNsA==
X-Gm-Message-State: APjAAAVktjkOiK52iV73hMy4+MxGf1CjGgYOTn77M12rvAwt/d1aXNz6
 qdfTJaNHk9UZlr/dE2SdFRa98BmdZPWhDbFwiiMnRg==
X-Google-Smtp-Source: APXvYqy6PyadEbexQKem912USX21lARZeie9Bf+dUuy9LQm4s9hBnBrf7pNLiJG+vj+X6NMNYB/L+81jzgTCFcCmYQw=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr10243195qkg.457.1578899305001; 
 Sun, 12 Jan 2020 23:08:25 -0800 (PST)
MIME-Version: 1.0
References: <20200110145952.9720-1-matthias.bgg@kernel.org>
In-Reply-To: <20200110145952.9720-1-matthias.bgg@kernel.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 15:08:14 +0800
Message-ID: <CANMq1KCnLb04O3HWv_9HbkiDufN9_Kcapkg1wpT9ra28nJ6WFw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add MT6397 Pin Controller
To: matthias.bgg@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_230826_014914_CD3F8B74 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:00 PM <matthias.bgg@kernel.org> wrote:
>
> From: Matthias Brugger <matthias.bgg@gmail.com>
>
> The MT6397 mfd includes a pin controller. Add binding
> a description for it.
>
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

>
> ---
>
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> index a9b105ac00a8..ce22fca9d48b 100644
> --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> @@ -54,6 +54,11 @@ Optional subnodes:
>                 - compatible: "mediatek,mt6323-pwrc"
>         For details, see ../power/reset/mt6323-poweroff.txt
>
> +- pin-controller
> +       Required properties:
> +               - compatible: "mediatek,mt6397-pinctrl"
> +       For details, see ../pinctrl/pinctrl-mt65xx.txt
> +
>  Example:
>         pwrap: pwrap@1000f000 {
>                 compatible = "mediatek,mt8135-pwrap";
> --
> 2.24.0
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
