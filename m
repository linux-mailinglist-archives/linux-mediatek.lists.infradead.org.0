Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802196B297
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 01:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4pPvPGk68ICxvXJ56SYnvYGEWO4asTUXSfJrQVjyps=; b=Uxyid80SdUg1QI
	7huyBPxX/E0dbM4p3YKzEKHAxuweN4O66LitARWgStyILhfCNapCiInZN42cKl0Gn/8hYCBvu4o4W
	ChpKK1VeW9KjezBGlNq0YfrV9SJzXstYTY/syb8EPge9nVirogT0wPN9oH9d7+kHDQ9DkkChkDlvz
	DhW7mZ1yt1Ep/Ef5IBlOgcB3/ogybT+ZxADGwMyV2V0ONY3yZMUDn+4oZLH5gHz4OlMSURvYsLclD
	Zp/0M5hY6vwsJ/UkTTt59NvxeQ/DXvYB3Nvu6sm9xiunlXSOMc/KZgFm7U5cDzJaMsUFv5u8seyGi
	opt0TCNRDTsLHGcn2DDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnXMP-0003PD-Ns; Tue, 16 Jul 2019 23:59:53 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnXMA-0003E8-C8
 for linux-mediatek@lists.infradead.org; Tue, 16 Jul 2019 23:59:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id x22so16598424qtp.12
 for <linux-mediatek@lists.infradead.org>; Tue, 16 Jul 2019 16:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zfE+1oH2ev9A7CB6B7OCM0HfuvGIKPETwgwy1wYPeZk=;
 b=myAjYl3qrrjUdybw3rfkkqgxLpxX2EWxa6gWin7tovqVhvuC1kAEj0YUMz0a+INMKn
 k34dHtcAcHsWoDetwCiVgDi03O2ZbX6tn7T6FBnKsTPf2BLewHVVFqVnoOY7p/UiUCEe
 +2TMI/XehWPm3bOXRcM82WCBDwbCShBjLtw7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zfE+1oH2ev9A7CB6B7OCM0HfuvGIKPETwgwy1wYPeZk=;
 b=cqJBMT4JItxxo9e/vpjPaZDgGEZd9MD4U9x4SdIrLqu4IcWwzWoIWQoaE5ByRStFIE
 aDSgHsEHuyKhGp6nNp7+2yF95nQoxwtOfzzuSXAnqvfl4HQZHsbaA6XIvniAw8NM5ek5
 71W7MGCjsgjBGqz5rNxpyJPr+ZBRM6fRniviFYaLIe7eX0LB39G6XWe2wYOGUpVwX9ut
 ayxzyFuZb6qLuKqAGoDWnXPiOnExJXnCmO/iDZnlwbGf7I2gTEDdPV5eRpetrIVRtkqC
 C8FnNQrjUMD0ioCKDnPHD5mAjhUxq4AEJzvV3CEO5JK0w94f8DAJtsgAVJBljNa5RK+3
 i93w==
X-Gm-Message-State: APjAAAXAaxkXtGgilSgb76aise+jwmmAatqqtpOsVALSkGtP3g0pS0E2
 LpAIhsdb/3jbI5cO7DDT0+MQtrwpMdnT2z8ManYYgg==
X-Google-Smtp-Source: APXvYqyCn5WDabT9u/P+OGBvnjMb2lK0frfpzoQz2UZeeBoGFN9gytFn4nfFqeUwNxxQx3qvg3WhGoAnUFfps5oKIQ4=
X-Received: by 2002:aed:3b1c:: with SMTP id p28mr24024945qte.312.1563321575377; 
 Tue, 16 Jul 2019 16:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-7-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1562625253-29254-7-git-send-email-yongqiang.niu@mediatek.com>
From: Ryan Case <ryandcase@chromium.org>
Date: Tue, 16 Jul 2019 16:59:23 -0700
Message-ID: <CACjz--k0wVpxWTBXQeUHqm50RgvaCNkNb3DO+KviCOtq-e9gTQ@mail.gmail.com>
Subject: Re: [PATCH v4, 06/33] dt-bindings: mediatek: add mutex description
 for mt8183 display
To: yongqiang.niu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_165938_469350_A6994DA9 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 3:37 PM <yongqiang.niu@mediatek.com> wrote:
>
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
>
> This patch add mutex description for mt8183 display
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index bb9274a..4a22d49 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -53,6 +53,7 @@ Required properties (all function blocks):
>    For most function blocks this is just a single clock input. Only the DSI and
>    DPI controller nodes have multiple clock inputs. These are documented in
>    mediatek,dsi.txt and mediatek,dpi.txt, respectively.
> +  for MT8183 mutex, this hardware is always free run, has no clocks control

This should have capitalization, punctuation, and drop the trailing space.

It also reads a little strangely. You may want something like "An
exception is that the mt8183 mutex is always free running with no
clocks property."

>
>  Required properties (DMA function blocks):
>  - compatible: Should be one of
> --
> 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
