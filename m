Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400A7BD851
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 08:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pn0Qb4Ng2F7P41cggh8mYxztGkzw4AXxEL4Gj1RetwY=; b=eBO3PI6GJil91H
	1lNZl3OS7O5Ka67qUmt993wutke1dqYZQCpsX5tj9IJkBWpz285TOjjfYtdaX9O91+bIOuoCbz5Pq
	iNpsZDPeJWMjbiLWAIxGrC8yyIr0U8TYFjzNZxD1swiqxsh0qTZA0kZqU9esbq3ubnzMsej0hN9SL
	G260QUQ954tosUrOIJsMhETApCtAnb1g4yKwVcizJldDhvK1Y4eJ+OteqsCZ05wuSUrseSWbfxwML
	GNw2J5n8OzvyjfrPvynGLut1OxT6J7AsaCewA5YmTip1zRq0gINB8DBGS7QaHceOHZnpZt9PPAwva
	iV+6Pn3dtlaolRiHPbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0ok-0006jT-44; Wed, 25 Sep 2019 06:30:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0od-0006il-9t
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 06:30:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iD0oQ-0000V4-7q; Wed, 25 Sep 2019 08:30:06 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iD0oN-0004YK-QR; Wed, 25 Sep 2019 08:30:03 +0200
Date: Wed, 25 Sep 2019 08:30:03 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v9 03/11] pwm: mediatek: remove a property "has-clks"
Message-ID: <20190925063003.aht4platmfalcqru@pengutronix.de>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-4-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568933351-8584-4-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_233019_347734_603F870D 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 06:49:03AM +0800, Sam Shih wrote:
> We can use fixed-clock to repair mt7628 pwm during configure from
> userspace. The SoC is legacy MIPS and has no complex clock tree.
> Due to we can get clock frequency for period calculation from DT
> fixed-clock, so we can remove has-clock property, and directly
> use devm_clk_get and clk_get_rate.
> =

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Acked-by: Uwe Kleine-K=F6 <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v9:
> Added an Acked-by tag

Argh, my name was croped and ended up in this state in
5c50982af47ffe36df3e31bc9e11be5a067ddd18. Thierry, any chance to repair
that? Something
like

	git filter-branch --msg-filter 'sed "s/Kleine-K=F6 /Kleine-K=F6nig /"' lin=
us/master..

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
