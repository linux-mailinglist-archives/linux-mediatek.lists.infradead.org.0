Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB659B9D0
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 02:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PY+AuqiEfWst2mNu0qOSNyVmB2OhA+wKisOPt3hk278=; b=FZpYKe7MZnm8Xh
	cRn5ywCDqhL2vIGud8lgFjiLTCVLhAh49HUF5HUf/xnGrV1mfddd54TslJqcmNfuYfpfBQyz1Pwrk
	56WxG27waC7yuXxxs7h2OT1xiLEhCKsPW1DyT/Kc7ex9iTeQtEeOI1Npgp/Xxl2Wn7nvqAWG5UYe0
	i3O61sW1U6yRf+wwYr6ok3OvFn9KeyYmUAPIplV69nREYPHXPRgUj/rvlyQ3nrpWtUAKLkRy8+hC/
	3u2TVSCodxXOZ4gNb83Hgg0Rt3AAgF/6uRxh3tQhoZavAaUD1EtsJ9kxnrSNRc0jv1VJzO+dqdzuh
	Z02RxnbRgVaNy59EE0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1K4v-000593-1z; Sat, 24 Aug 2019 00:38:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1K4r-00058a-2i
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 00:38:46 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1K4h-00068G-MV; Sat, 24 Aug 2019 02:38:35 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1K4g-0000Se-Vg; Sat, 24 Aug 2019 02:38:34 +0200
Date: Sat, 24 Aug 2019 02:38:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v5 09/13] arm64: dts: mt7622: add a property "num-pwms"
 for PWM
Message-ID: <20190824003834.4cyq55yuvgubifw2@pengutronix.de>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
 <1566457123-20791-10-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566457123-20791-10-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_173845_131859_A0C2362A 
X-CRM114-Status: GOOD (  13.19  )
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

On Thu, Aug 22, 2019 at 02:58:39PM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> =

> This adds a property "num-pwms" for PWM controller.
> =

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt7622.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt7622.dtsi
> index d1e13d340e26..9a043938881f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
> @@ -439,6 +439,7 @@
>  			 <&pericfg CLK_PERI_PWM6_PD>;
>  		clock-names =3D "top", "main", "pwm1", "pwm2", "pwm3", "pwm4",
>  			      "pwm5", "pwm6";
> +		num-pwms =3D <6>;
>  		status =3D "disabled";
>  	};

FTR: The matching change to the binding is patch 7 in this series and
didn't get an Ack from the dt people yet.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
