Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2987E1A0E8C
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 15:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XubjhrMevUfnS5RvH5AP4QmmeVyq62Zafd6fXXhPYhE=; b=o8ojzyrpBBYVbP
	S77o42AcAgSHNBP6751ig6W8ji6DNXzj7Q2fJHEpKj7bR79SUtfDWGSZv+OtIfhDZaIxjqbhA0ytT
	5PrFUNUhBLvAuS1n5eLeRrOA07eUNs+5OZN45OxQsok0l0DD9Kmsh5dz8xaUN15O/NlDy/MG99mGT
	Q8Pv8Iimr8Ao/cmhUZ7f3wQY8u1cNLEQsyh9HRtr2eiZUiKFEeve63HbCrETZK/uaJ9CAt0Y3SH14
	PvQukb1BZLBZTR2zUwqeaeZHWBMIMnfu2AOGyApZnQy4cEJzOYcrnZ1wXZ+l0JavclijXdpF7ssMn
	fTFENdWvKngz0jOYwHBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoU9-0004KO-6m; Tue, 07 Apr 2020 13:41:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoU6-0004JV-FX
 for linux-mediatek@lists.infradead.org; Tue, 07 Apr 2020 13:41:47 +0000
X-UUID: c148d9b8e0f643e6bda04281e73ae024-20200407
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=I+Idz2kS2YO8DN7EbW71q3QgUKuFjlpxCMebxFehMZE=; 
 b=LDGiTVjxygBOmbSSvdxYCQmSpHbtihQnuFr4bslpdD7ArdBogzLYkIttZ3NSi/58Tz1Q6OkAzKL7BJ2xOEvys7aDdbC8ByQCOmusz54qDgdMrDdSNWhHxujp+1Gmal2mHJj6b4ykSswtjnd9Z04ZriY15n4PU0hXs162IxGQoS0=;
X-UUID: c148d9b8e0f643e6bda04281e73ae024-20200407
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 328450135; Tue, 07 Apr 2020 05:42:08 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 06:41:36 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 21:41:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 7 Apr 2020 21:41:23 +0800
Message-ID: <1586266885.31587.1.camel@mtksdaap41>
Subject: Re: [PATCH v1 1/1] pinctrl: mediatek: remove shadow variable
 declaration
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: <light.hsieh@mediatek.com>
Date: Tue, 7 Apr 2020 21:41:25 +0800
In-Reply-To: <1586255632-27528-1-git-send-email-light.hsieh@mediatek.com>
References: <1586255632-27528-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_064146_525863_11014B6B 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linus.walleij@linaro.org, sean.wang@kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2020-04-07 at 18:33 +0800, light.hsieh@mediatek.com wrote:
> From: Light Hsieh <light.hsieh@mediatek.com>
> 
> Remove shadow declaration of variable 'pullup' in mtk_pinconf_get()
> 
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> ---
>  drivers/pinctrl/mediatek/pinctrl-paris.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 83bf29c..8f75115 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -164,8 +164,6 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>  	case MTK_PIN_CONFIG_PU_ADV:
>  	case MTK_PIN_CONFIG_PD_ADV:
>  		if (hw->soc->adv_pull_get) {
> -			bool pullup;
> -
>  			pullup = param == MTK_PIN_CONFIG_PU_ADV;
>  			err = hw->soc->adv_pull_get(hw, desc, pullup, &ret);
>  		} else

Hi, Light,

What is this based on?
The code in v5.6 doesn't looks like this.

Joe.C


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
