Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7E2EA9DD
	for <lists+linux-mediatek@lfdr.de>; Thu, 31 Oct 2019 05:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/L5lSorz/l9Wk6S/fIAqdGfQ1oY1fncRmbQMGVUvAho=; b=JGUKarb+QR9MU+
	Q6RkEGp0zoAyzfEmgMDo/IjRoY+M0r/KIGxiTy9NbdMYep60AWQkhrO86vgVuvhtlTYQkSnlxYXDJ
	QlDS0700qIlGuJJygmwfmLnij86BT7qQqbqUTKatXgCqXHKL/RLjy9vKEQVrmU8zy9LDMh9K5vw4r
	520sSzdwXr1PWSOEJxkftlyxavU/pFVQS1DlVctOtR8KAzYtmIzdaHKWV8vpaFyPXbYpYwe8vUlG8
	qX22tpcd6Fu8wTYQOLEl7gISQZcOqFEDcfPiMBQtyFhsgETUBP+Jia2xEuisyh5dx1szbVoG0pbgf
	HmVVBOBaPYHPlr3Viq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ1uk-0006vY-S3; Thu, 31 Oct 2019 04:18:26 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ1uh-0006up-It
 for linux-mediatek@lists.infradead.org; Thu, 31 Oct 2019 04:18:24 +0000
Received: by mail-qt1-x843.google.com with SMTP id z17so6727307qts.9
 for <linux-mediatek@lists.infradead.org>; Wed, 30 Oct 2019 21:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nSHy1cjR1xkgmuZz3ish/LYbJAeXr+2guwTMfaEp/2Q=;
 b=dDi7VJOVxKs0r/d6rOSHZNa49pPy/2qkN3lVs78MtSJYQcuETyVvpU20XKacQl03rP
 Z5Oh4DMuEqvQYoqhlQhRSROYoKiONHSAtvDClYuFK9nQ3xXEyHTBNWnRVRAXAdw0UBBm
 kW+F0NYA3db0/9JquvnCHen6w5K8C2EOkgyrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nSHy1cjR1xkgmuZz3ish/LYbJAeXr+2guwTMfaEp/2Q=;
 b=D042YcEISlm61+nbCIG9HWx6i0Pnx1jWNVoZ9S/y7lguSkkX32KQJM9SB1kb3rC7eV
 +jgK8wMAszdcjbjch/LG0eHCEe8OQCNuZO19LoFSn4ChmwST2JszZJ6AxkKy4CKk3lvT
 NKzTG8ghKNlz2jJ37wOYT0QvIvusfGGYZ9ucP99iOFYCvLWDrN0wfHLpJ/Y1ZqILHjNJ
 3KRP1dZeDe60YtQRF5PscLchKTW6C6t05yyTvvzObdmDh2Z4AoFXV0q+iDd6EtuFxcQm
 lFyjMWg8yxvETRWBCnb94lNXpbD36JenektpI+b5nPoyRFLai1tSm5fwXIpjXUk0yXh0
 I4RQ==
X-Gm-Message-State: APjAAAUwDHe3XcuTp+6MjzEcJtKWTqjrMRJnGpshRMlal2k7FTrNo5aZ
 YbCjGT5ThIX8jKnQNvMrYTJlToq84QLZqsAxmkRvcA==
X-Google-Smtp-Source: APXvYqzvctBznLa1zRorcFn3nFNYxiVwCfSbZqxRisaWDLUronf8jK6QlXFzZaxUI1E4SGi5OziDzFPEZJ9JxHay74A=
X-Received: by 2002:a0c:b35c:: with SMTP id a28mr2755168qvf.238.1572495501348; 
 Wed, 30 Oct 2019 21:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20181116125449.23581-1-matthias.bgg@kernel.org>
 <20181116125449.23581-4-matthias.bgg@kernel.org>
In-Reply-To: <20181116125449.23581-4-matthias.bgg@kernel.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 31 Oct 2019 12:17:55 +0800
Message-ID: <CAJMQK-jHHAsBoL6Zcv8ZW1nRAD9NRjEbH1hnf9q418zGka8Vxg@mail.gmail.com>
Subject: Re: [PATCH v5 03/12] clk: mediatek: mt8173: switch mmsys to platform
 device probing
To: matthias.bgg@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_211823_648686_B6E43B0E 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Devicetree List <devicetree@vger.kernel.org>, sean.wang@mediatek.com,
 Matthias Brugger <mbrugger@suse.com>, David Airlie <airlied@linux.ie>,
 mturquette@baylibre.com, rdunlap@infradead.org, sboyd@codeaurora.org,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sean.wang@kernel.org, ulrich.hecht+renesas@gmail.com, wens@csie.org,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 laurent.pinchart@ideasonboard.com, Philipp Zabel <p.zabel@pengutronix.de>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Nov 16, 2018 at 12:54 PM <matthias.bgg@kernel.org> wrote:
>
> From: Matthias Brugger <mbrugger@suse.com>
>
> Switch probing for the MMSYS to support invocation to a
> plain paltform device. The driver will be probed by the DRM subsystem.
>
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---

> +
> +static struct platform_driver clk_mt8173_mm_drv = {
> +       .probe = mtk_mmsys_probe,
> +       .probe = mtk_mmsys_remove,
Should be .remove?

> +       .driver = {
> +               .name = "clk-mt8173-mm",
> +       },
> +};
> +module_platform_driver(clk_mt8173_mm_drv);
>
>  static void __init mtk_vdecsys_init(struct device_node *node)
>  {

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
