Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BD015FF5
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 10:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2b2bzXBaUkGhE6Yk0iUMLuxJnHYB3r1LthxUDA1BrM=; b=GAHUyFZcDFYjyQ
	BCzo2Q9mx7sfZgHT2l9nzEucXS9km0kCs9mxmwxip8313QaYpdHMEBFBHnbhanWQfV0yDZnMhRvFG
	vXGCR1jocnrhf6Efvg2Wn7sX9cbpt3i00jk1EYiyC1SbhK3b9Joqs5Qy/HVcuDUmtZCzmtU21nKHM
	pjF/EgF9dhvP1/NMR12B6NfiOGxvQrYy5N+TimKcW0f0baklbKkzyMNFtVUAZOubx62+jpM83ruNN
	y57rAxok7J+gbNHxoNsV2wXfXAwnvQ6kUR0inyZhCwzF0p4T9BmhaAZ+Q05e09zIam3SzjKz6B0mg
	nQf8VujZyk/2Vy5cvK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvwM-0007Ly-27; Tue, 07 May 2019 08:59:10 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvwJ-0007KX-7f
 for linux-mediatek@lists.infradead.org; Tue, 07 May 2019 08:59:08 +0000
Received: by mail-qk1-x741.google.com with SMTP id c14so1281870qke.3
 for <linux-mediatek@lists.infradead.org>; Tue, 07 May 2019 01:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3aU3KdevIyzgXbG781UoZs1Bb4vUUWKNcMK076foDGU=;
 b=ON+p2hg7Pm2pamPArQ09UUBPZnXq1MgAYa2Q6ziX4dSU3Ex/qwkdxRfrmyQQKq4fo0
 CzdRAKKzu2/TUUbDJOleTBxNvkUtNAbVv6BJ5B8EVOF6ygVEtUfE2cih/mGrjoausodv
 pBx/sT84pXaXCG5QgM+6SgdQFHkYaLjmPAq9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3aU3KdevIyzgXbG781UoZs1Bb4vUUWKNcMK076foDGU=;
 b=HSaaqT5O3B1dCJHZlhz90AQyG4QLz+dF6rD+8gPNDwFU+RvtGz5fiSm8HZRzsFrcv2
 dvyouCDkroUtVhX5u32js5SNR2dM0B9wTB95LBgcGMVlevRXvDAZJkuSpt/uKCBUdCgz
 wJQlbW6cxJWdUOlgRIp0DcBcrndNaX8BxH8YZpKHTNL2ZI+r9C0m7d+p/3vjdpz8afHF
 lipaql+WRofpkQl0FQI3has86xniyPrwW1mRNO4sCeqqjeHjQPq1YD2S/MJjcDrL+C/G
 CvQBgVr+2Lgxk1tjm4UufsRPvVwaZNZf9Ohmc+x9fabuA3QjQqvxP2Rb7VLhp2r7W5C+
 ewKg==
X-Gm-Message-State: APjAAAU6TWGAqzH8kKI8Fyh4bJ2cb9RlXzuOl6pl0O6nzzIDUOTjEbMX
 UjrEtkZH/1ICYiPqfDltFIPNrDCszhx3FvxQshjxhQ==
X-Google-Smtp-Source: APXvYqwPpaxX5r4wI/jXxlXZQ/vWJkvg48WefXd+ah/jnuQKCFF2bVOLDxZdtW5Aili31vG0ozFXkzpJEG1lt+lr1Mk=
X-Received: by 2002:a05:620a:1641:: with SMTP id
 c1mr236605qko.103.1557219546010; 
 Tue, 07 May 2019 01:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-7-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-7-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 7 May 2019 16:58:40 +0800
Message-ID: <CAJMQK-i6oZ1dTbTXV2_nX+mGfZ7JcafRMKbb81YgPk67Gdbjbg@mail.gmail.com>
Subject: Re: [PATCH 6/8] thermal: mediatek: mt8183: fix bank number settings
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_015907_272118_1BD786D4 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
>
> From: Michael Kao <michael.kao@mediatek.com>
>
> MT8183_NUM_ZONES should be set to 1
> because MT8183 doesn't have multiple banks.
>
> Fixes: a4ffe6b52d27 ("thermal: mediatek: add support for MT8183")
> Signed-off-by: Michael Kao <Michael.Kao@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index 5c07a61..cb41e46 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -216,6 +216,9 @@ enum {
>  /* The total number of temperature sensors in the MT8183 */
>  #define MT8183_NUM_SENSORS     6
>
> +/* The number of banks in the MT8183 */
> +#define MT8183_NUM_ZONES               1
> +
>  /* The number of sensing points per bank */
>  #define MT8183_NUM_SENSORS_PER_ZONE     6
>
> @@ -503,7 +506,7 @@ struct mtk_thermal {
>
>  static const struct mtk_thermal_data mt8183_thermal_data = {
>         .auxadc_channel = MT8183_TEMP_AUXADC_CHANNEL,
> -       .num_banks = MT8183_NUM_SENSORS_PER_ZONE,
> +       .num_banks = MT8183_NUM_ZONES,
>         .num_sensors = MT8183_NUM_SENSORS,
>         .vts_index = mt8183_vts_index,
>         .cali_val = MT8183_CALIBRATION,

Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
