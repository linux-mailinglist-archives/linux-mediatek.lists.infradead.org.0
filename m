Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A41E1DF9BA
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 19:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIlH82gDFX9jed8AFqyJmHQM2mBDEoO5Y8iuttXVKjo=; b=rCrUP+ht6iKnDI
	KVhNRoaPCVzhbiU25oINX7C8RjTZwAo+OpVZFHcPJJQdqpNBjYsglcJv9QaZEguPhRdqpZ/zUlrdz
	bmULbvr9Lo/tbpqMeB4HLIDR8icLhGdrSTc6DFawzOxCJKJmLNZbBBeLw2LlIscWjLpZXqhhasPFh
	eLnu6zbMAC4hBLAIJ0FAItJmMQfqxIw7tcODbqmcJCpghpAwN+iyBFj+hZh66r4phrFQpmfRRWJC2
	9PpcQ+GxlkEOIJxXWwJrFjsdAXQvmvOHcqjrqjI345IEiDBrXUPM2hMVH2QQVkAkjjZBclDk84W3O
	U+1M467uHT5cPo94jfxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcYCP-0006G6-Kg; Sat, 23 May 2020 17:44:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcYC8-00063l-W3
 for linux-mediatek@lists.infradead.org; Sat, 23 May 2020 17:44:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jcYBo-0004nX-LL; Sat, 23 May 2020 19:44:04 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jcYBl-0005dS-0l; Sat, 23 May 2020 19:44:01 +0200
Date: Sat, 23 May 2020 19:44:00 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Yangtao Li <tiny.windzz@gmail.com>, thierry.reding@gmail.com
Subject: Re: [PATCH 30/32] pwm: hibvt: do some cleanup
Message-ID: <20200523174400.tzptmraqyn3uqrvf@pengutronix.de>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-30-tiny.windzz@gmail.com>
 <20200220204152.p6rublsssifvvnvk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220204152.p6rublsssifvvnvk@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_104425_055601_47D149E5 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-riscv@lists.infradead.org, festevam@gmail.com, f.fainelli@gmail.com,
 shc_work@mail.ru, khilman@baylibre.com, wens@csie.org, jonathanh@nvidia.com,
 linux-rockchip@lists.infradead.org, ludovic.desroches@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 slemieux.tyco@gmail.com, linux-pwm@vger.kernel.org, rjui@broadcom.com,
 s.hauer@pengutronix.de, mripard@kernel.org, vz@mleia.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 paul.walmsley@sifive.com, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sbranden@broadcom.com, nicolas.ferre@microchip.com, linux@prisktech.co.nz,
 palmer@dabbelt.com, kernel@pengutronix.de, shawnguo@kernel.org,
 claudiu.beznea@microchip.com, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 09:41:52PM +0100, Uwe Kleine-K=F6nig wrote:
> On Sun, Dec 29, 2019 at 08:06:08AM +0000, Yangtao Li wrote:
> > Use devm_platform_ioremap_resource() to simplify code.
> > 'i' and 'ret' are variables of the same type and there is no
> > need to use two lines.
> =

> I think I wouldn't have merged these two lines, but I don't feel strong
> here. The other 31 patches are clean replacements.
> =

> But I also don't think respining just for this minor thing is worth the
> effort, so:
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> for the whole series. (Not sure it is sensible to ack each patch
> individually, @Thierry, tell me if this simplifies things for you.)

I took a deeper look now and added Reviewed-by for all other patches to
ease application. So doing the same here:

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

FTR: I'd do the following now:

	for patch in 1216003 1216065 1216063 1216005 1216062 1216061 1216059 12160=
57 1216054 1216056 1216051 1216050 1216048 1216010 1216044 1216046 1216042 =
1216041 1216036 1216037 1216034 1216032 1216030 1216013 1216029 1216025 121=
6026 1216024 1216015 1216021 1216017 1216019; do

		pwclient git-am -m -s $patch && pwclient update -s "Accepted" -c "$(git r=
ev-parse HEAD)" $patch || break
	done

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
