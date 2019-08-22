Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D3098F29
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 11:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcslEh2rskuV7hWhIrD+I6LO2u0X2QKmm44OTq0+HCk=; b=Gl4bQr/QUVkpet
	OfqDTiWe+LyBrrsJzdSbaufcMhhflpFdM30v+OCF/L6yNSX49oSdAmHWU2ihkrnmXa0Eq33ZhNSRL
	eslNvb9SjiasC15aGI54vJOpWqKA9UbyHDSCfv29Nb7Umg8mSc5OPE4DkL2fScpRtsiYkGYC9tBUw
	noIYb6kqqLn8jEqEZmbIL9CFTimCnrE+qllFgTlehs5rOQiyr4v1nZO0GYKvnJ9RnGXHS5NAAONbz
	vFyX8znq+seDLuLU79zWHFrneriydUy++4jDxZwo51KJABtCIJlAncoi3CB7qVYO5sYs76rYOGR6g
	ZU8JlwI966QnadtrHlTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jG1-00087y-NJ; Thu, 22 Aug 2019 09:19:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jEZ-00074M-32
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 09:18:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i0jER-0006yr-IT; Thu, 22 Aug 2019 11:18:11 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i0jEQ-0006Qz-IE; Thu, 22 Aug 2019 11:18:10 +0200
Date: Thu, 22 Aug 2019 11:18:10 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 2/2] pwm: pwm-mediatek: Add MT8516 SoC support
Message-ID: <20190822091810.5t3inn56npdvwnfy@pengutronix.de>
References: <20190805125848.15751-1-fparent@baylibre.com>
 <20190805125848.15751-2-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805125848.15751-2-fparent@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_021819_336357_95E13A3B 
X-CRM114-Status: UNSURE (   8.42  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 02:58:48PM +0200, Fabien Parent wrote:
> Add the compatible and the platform data to support PWM on the MT8516
> SoC.
> =

> Signed-off-by: Fabien Parent <fparent@baylibre.com>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

The change looks fine, there is however another series currently waiting
for application for this driver that conflicts with this one (I think).

Maybe it would be sensible to join your forces and produce a single
series without conflicts?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
