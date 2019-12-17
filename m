Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988411222A4
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Dec 2019 04:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vcNxpkRdN5zNfhbbAhQj0zNd7BSqJQc3HjmBSw72SI=; b=gS2TGceVTLrBMu
	nk/CmWy3+rIlwP006XU7U9DgJoAPCLnTLiHw+omJxFOVBL2H2v9Hb8mI5jFrz509YuBBEyYXsbrAa
	bEr0GXR3pYe/JBFofGcVIpoz5wVrqqEgdxqxt1IHhPyM5G3cBAEIvnSL46Z8Mu1x33dDvxkfNI+nL
	KgHnWacejybnnZR5ms4ATS9mk9AzvdPhU8LJNVsamnqW925vuwm47AmjJS8xbphcHWqe2asrnPNK1
	MHIEVQWUilcD29H4P9ei60lj45r2Uy7Z0C9DxlfYtSk6OmCa0OWaSVfPHQSwAKttXfCdYGGLzcpnj
	uGojaJydfa4HT5gUHP5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih3VC-0002O6-S2; Tue, 17 Dec 2019 03:26:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih3V1-0002Ex-TR; Tue, 17 Dec 2019 03:26:17 +0000
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98DC320665;
 Tue, 17 Dec 2019 03:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576553174;
 bh=47QWm6h87QsQLH9MeRqumerTPY7a5GPPIoJOkaFh86Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E196dV08cVDGBrguXFLg7ZbVbHbtSeXQLMRM2uuzk3YaaNc/WnG57fEiYsOGTYRGd
 NlyM/+5BE+lrvCG4tzfUKcCVZVGX+oyEnipXHHj2kIx074xU3NdlkVz+h3WmpAhi+U
 Lokudv+7+ArCeQrl7XO6AIKUIo5nQ6fuCasAhZ1I=
Received: by mail-wm1-f52.google.com with SMTP id p17so1450573wma.1;
 Mon, 16 Dec 2019 19:26:14 -0800 (PST)
X-Gm-Message-State: APjAAAVlyBXR0sLj0DJxK9VE3ef08T95TGAFXayGKgw/ym6KOgMid6Ut
 vnNh/eRhlqtXuGwpIrZZGXYlja7wRZUykdZU+WE=
X-Google-Smtp-Source: APXvYqyi/kODA+aCa6GY+O+CLiFXju/r1hxujzR5u/QJ3+Scw3aSWc3tcBDeifj9xfMPc6i7kFxLAMrU8fChA/STtc0=
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr2603910wmh.94.1576553173160; 
 Mon, 16 Dec 2019 19:26:13 -0800 (PST)
MIME-Version: 1.0
References: <20191217030438.26657-1-jitao.shi@mediatek.com>
In-Reply-To: <20191217030438.26657-1-jitao.shi@mediatek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 17 Dec 2019 11:26:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65v+W3-fNwiC_0uN2RpFUBRu3iL2t+OaGHLjVHHWFJVwQ@mail.gmail.com>
Message-ID: <CAGb2v65v+W3-fNwiC_0uN2RpFUBRu3iL2t+OaGHLjVHHWFJVwQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] clocks don't disable when pwm_mtk_disp suspend
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_192615_974238_81B841D3 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 CK Hu <ck.hu@mediatek.com>, sj.huang@mediatek.com,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Tue, Dec 17, 2019 at 11:08 AM Jitao Shi <jitao.shi@mediatek.com> wrote:
>
> Changes since to v2:
>  - Edit commit msg.
>
> Changes since to v1:
>  - Edit commit msg.
>  - Remove the register trigger in probe.
>  - Rebase to v5.5-rc1.
>
> Changes in patches:
>  - match pwm_mtk_disp clock when suspend/resume
>  - trigger pwm_mtk_disp reg working after config
>
> Jitao Shi (2):
>   pwm: fix pwm clocks not poweroff when disable pwm
>   pwm: keep the trigger register after pwm setting.

Please add appropriate tags to your patches. These are not generic pwm
patches, but are specific to one driver.

Consider the prefix: "pwm: mtk-disp: " so others can filter out the
noise without looking at the content.

ChenYu

>
>  drivers/pwm/pwm-mtk-disp.c | 63 ++++++++++++--------------------------
>  1 file changed, 19 insertions(+), 44 deletions(-)
>
> --
> 2.21.0
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
