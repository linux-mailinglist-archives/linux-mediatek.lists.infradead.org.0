Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB965956FC
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 07:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6wWORYDgzmq5TOAG1qBi99MzEgzFPxWqJ2jfRgIed0=; b=DT1WOhrNupxhKx
	xIrZWSWBgwxaLIDcxG7ea6ZJQW/qc17WEXm6BXuZVMbI8PxOEjEJwk1sTdmQT+WaSQ2RiFFBK6zvC
	NvdmR/+SrnyCF/XnX7Mi0fBOro8jgRAfpVYVkC1QJ9INaSxL1D2oApRhLSquuRlxzMNrek8ZQF9Pm
	eVjQBXlHnEzglMRXylxf0D7j+PHkNKz4iuVErb9LmGdIWqM1Vi+k0CWqAQljIiW8s2AoT9FwHR8Ep
	eRRaR8bYl4r+WfQHobWr1x1IJb0fMD/z+28gCd1sLU17PVkEC/3R/t/Ko25kh8eiBDVbjqLVwlepQ
	cPaQbZpEki4rYvKhYsMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzx7V-0007Zb-T8; Tue, 20 Aug 2019 05:55:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzx7S-0007Z8-Eq
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 05:55:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzx7J-0003yO-E4; Tue, 20 Aug 2019 07:55:37 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzx7I-0001z2-Sd; Tue, 20 Aug 2019 07:55:36 +0200
Date: Tue, 20 Aug 2019 07:55:36 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v4 4/10] pwm: mediatek: use pwm_mediatek as common prefix
Message-ID: <20190820055536.xode62n3gk37ikqv@pengutronix.de>
References: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
 <1566265225-27452-5-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566265225-27452-5-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_225546_500330_E9767A08 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 09:40:19AM +0800, Sam Shih wrote:
> From: sam shih <sam.shih@mediatek.com>
> =

> Use pwm_mediatek as common prefix to match the filename.
> No functional change intended.
> =

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  drivers/pwm/pwm-mediatek.c | 117 ++++++++++++++++++-------------------
>  1 file changed, 58 insertions(+), 59 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> index a70b69a975c1..d85761ad5283 100644
> --- a/drivers/pwm/pwm-mediatek.c
> +++ b/drivers/pwm/pwm-mediatek.c
> @@ -1,12 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
> - * Mediatek Pulse Width Modulator driver
> + * MediaTek Pulse Width Modulator driver
>   *
>   * Copyright (C) 2015 John Crispin <blogic@openwrt.org>
>   * Copyright (C) 2017 Zhi Mao <zhi.mao@mediatek.com>
>   *
> - * This file is licensed under the terms of the GNU General Public
> - * License version 2. This program is licensed "as is" without any
> - * warranty of any kind, whether express or implied.

The license stuff is a separate change.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
