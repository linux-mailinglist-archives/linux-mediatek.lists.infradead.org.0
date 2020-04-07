Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956301A0E80
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 15:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LG5w2K2D0ZaIpPUfmITcsEI5naQ54LJrNPG2gO1iMSA=; b=C1KimMisl6qBVJ
	T7PKVOQbngI/xEbZfPYB/wmIKo2LfWfr2S7OsWvAjAdc7cH9P23MdMcdcIxzHqpDuxivHYV2Z/74I
	4L2mCLKilZ8wbi3i5ylP4s2Zx2nnBoRNO8duHTmHKOAVPJe28IwD2tevd7dwIHz9WLlU2YshC6jC4
	LqszOeUQ732mQZCUsjAPQXZ7F1DIaIi4Npr6jC3qm3C4hnYQD5o3mCTALs+15YxSYHC6AMFMqPbUq
	o3YF7jXTZd7lNEIn5IM0/FvDQRlJMqA70wDhJ2ygzwEh6MpYN9vsHXZ9CeJ6S5N7Y8N4cPnzH3655
	K4REOV/CXTUAXtGlOOgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoQ4-000197-Pw; Tue, 07 Apr 2020 13:37:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoQ1-000184-Bi
 for linux-mediatek@lists.infradead.org; Tue, 07 Apr 2020 13:37:35 +0000
X-UUID: 7bba737f981f4ca6ab50f8ae39fda00b-20200407
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=RdRXX8sbx8HHYtoWDp4+BPvE2rMumZFXzEadK6V6dIU=; 
 b=lDksy6K4DK1XyRS8e0PdFfIXujIgPFm/VGtUri29z71t1yAdTuiBZrKANH7cnfcqQzXFmcAr/B/2rc9dJsCuycXZrbZDsV4wze79KnAYCLgf7GPu8Dw8cLEYFhujIkRUQYXWLgHAt8v3ekT15W1K6mUSDEWk4qXpotxq18V8ZME=;
X-UUID: 7bba737f981f4ca6ab50f8ae39fda00b-20200407
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1280132738; Tue, 07 Apr 2020 05:37:50 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 06:37:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 21:37:11 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 7 Apr 2020 21:37:10 +0800
Message-ID: <1586266634.2221.0.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/1] pinctrl: mediatek: remove shadow variable
 declaration
From: Stanley Chu <stanley.chu@mediatek.com>
To: "light.hsieh@mediatek.com" <light.hsieh@mediatek.com>
Date: Tue, 7 Apr 2020 21:37:14 +0800
In-Reply-To: <1586255632-27528-1-git-send-email-light.hsieh@mediatek.com>
References: <1586255632-27528-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C46968FC8DEA5F527A542FEB4FA622A3AA2E7B501EEE4D5BA8AE4EEE90C277142000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_063733_405235_85437D50 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "sean.wang@kernel.org" <sean.wang@kernel.org>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Light,

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

Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
