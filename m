Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9590512E5E9
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Jan 2020 12:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwC0a1XlKhLclFIWysanmBruNIX5lyAa6mL1IoWTiYo=; b=Nm2mH+yoX6litI
	nL7HF3sghD62It8xXGr4ylNbOdRW9kGpuowgDWrJjknraFpteggMON42mgw+z+SS6mQ/jMFVrB0UG
	tLMeGCmgDnMq8xIqAU1fNCXXS+RCR3OrsYjXpWdxTAplrzoQZP2lGzLqvs/wTdyT0A7nFpUQNLb7G
	OfMNd5whgxdwDwwBjwCsCHUIRmit5ikytAUq/cgtNkUZiExqMCOarTMMam8nFpD8S4Gx59u0ZW1yc
	jU+3cPAQHhFjEGjZMRLwrtv4xyFb9+u1hXAyi8zLVzENkcLWueGx6+M33WFWxuW08Hi++62SGO8A2
	lwRx+fROCswPScjzLRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imz6D-0008KM-NP; Thu, 02 Jan 2020 11:57:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imz64-0008BJ-NJ
 for linux-mediatek@lists.infradead.org; Thu, 02 Jan 2020 11:57:01 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1imz5p-0002XE-Hr; Thu, 02 Jan 2020 12:56:45 +0100
Message-ID: <9d98e6b7c82f3ed09a00d062fbcf6540b4c8d7e1.camel@pengutronix.de>
Subject: Re: [PATCH v7 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>, yong.liang@mediatek.com, 
 wim@linux-watchdog.org, linux@roeck-us.net, matthias.bgg@gmail.com, 
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, chang-an.chen@mediatek.com,
 freddy.hsin@mediatek.com
Date: Thu, 02 Jan 2020 12:56:45 +0100
In-Reply-To: <1577437494-738-3-git-send-email-jiaxin.yu@mediatek.com>
References: <1577437494-738-1-git-send-email-jiaxin.yu@mediatek.com>
 <1577437494-738-3-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_035700_753958_FA94D0CA 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-12-27 at 17:04 +0800, Jiaxin Yu wrote:
> Add reset controller API in watchdog driver.
> Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> ---
>  drivers/watchdog/mtk_wdt.c | 105 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 104 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 9c3d0033260d..c1bc19ab628e 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
[...]
> @@ -155,6 +248,7 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct mtk_wdt_dev *mtk_wdt;
> +	struct mtk_wdt_data *wdt_data;
>  	int err;
>  
>  	mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
> @@ -190,6 +284,13 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>  	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
>  		 mtk_wdt->wdt_dev.timeout, nowayout);
>  
> +	wdt_data = (struct mtk_wdt_data *)of_device_get_match_data(dev);

The cast is not necessary, otherwise

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
