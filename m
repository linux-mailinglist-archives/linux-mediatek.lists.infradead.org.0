Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353F316A5FE
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Feb 2020 13:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3agenPSkjdNpAk+yN2lPSY99PmNCae9A1oZHo2B7/4k=; b=tBydx5WpiuG5mj
	wPBZMIp+xT3shpI5JKnTloYPt+ufU+dpoQrC/ieL2Rtl2DsGntzu2aVIST2f1kyBUlxPiiJffaBi9
	t+xnxyfIMoolW6UPwrOA0mMNZ8ksDikWTf99eyYbok0pr8xQGNEmrlCPp0nnCrdozzQZ/TanWsA0n
	7v72DOwuqSYLRRBVq8XoaqGBFoH2zHIIwfLFZx46OedKIa/zYhQ2MCERy+7JTLkWUtJKycs8z3x3c
	P+5FS9Ylfex+R0tRnxHxLxdzE/k6DkZ3jtZ8s6/eOvQeAQEg/ZZzqqVDJdcsUF3P+FfKqZisKyX9B
	zX3tx0xmwgUjUF9XCzTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Cj3-0002Cr-He; Mon, 24 Feb 2020 12:20:41 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Cj0-0002Bf-3a; Mon, 24 Feb 2020 12:20:40 +0000
X-AuditID: c0a8fbf4-473ff70000004419-86-5e53bf889afe
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 53.8E.17433.88FB35E5; Mon, 24 Feb 2020 13:20:24 +0100 (CET)
Received: from WILL-MAIL002.REu.RohmEu.com ([fe80::e0c3:e88c:5f22:d174]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0487.000; Mon, 24 Feb 2020 13:20:12 +0100
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "broonie@kernel.org" <broonie@kernel.org>
Subject: Re: [RFC PATCH v3 4/8] regulator: rename regulator_linear_range to
 linear_range
Thread-Topic: [RFC PATCH v3 4/8] regulator: rename regulator_linear_range to
 linear_range
Thread-Index: AQHV58Bw3BR2Lobf/kermjlWXvyueKgqMeKAgAAHZAA=
Date: Mon, 24 Feb 2020 12:20:11 +0000
Message-ID: <d66373944b9afa9e2387d7bf95deb9d997906396.camel@fi.rohmeurope.com>
References: <cover.1582182989.git.matti.vaittinen@fi.rohmeurope.com>
 <f66749295e07448012c80c2054b1f14506d17d76.1582182989.git.matti.vaittinen@fi.rohmeurope.com>
 <20200224115349.GD6215@sirena.org.uk>
In-Reply-To: <20200224115349.GD6215@sirena.org.uk>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <7667C38386FA7740BDE72887EC73452E@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tb0wTZxzH89xd747ibY+1yCPub5fFiOGf+uLJQogme3HbkmnGiyVugFc4
 KbG05Noa2Zs1w27SRUAZwipVBBoZENGyTAVKXdNlYB1dB1SMzqQrMdNkkGHFAU52107h1f3u
 +f75PC9+D0tqLjBZbJXJKkomwaij1dT1nhVvznF/cWn+D6u78UR8hcINC50kvtw2oMIJ9w0K
 h/xzFG6JzdJ4yuEF+FxwQoXrugZoHA5fYvDi1HECe+NRFT7p/4XBk0PtNJ6siwB8pruRwo9O
 BAFuC48S2HMrQuAvju3C7Z4xCl9YviiL834VdidaSBxpC5PY4QsyONKTIHBo2Ip9jgiJ/VPv
 46VAmNjzOt9/th/wi49PUfz8jIPhL/3Rp+J7FvL4a67fGd7bW0/zd6MjNO939zP8YPfn/N1/
 PIBvbV8FfMP3vYD/eeYKwT/yvrb/5QPphXrBeqS4qtKUV3Qw3dDdllHTkH50NvqUsYM/1U6Q
 xiK4G/XdmaGcQM1q4DRAk+5jIPUzBlDr/VbSCViWhoXIeZtRAlqYg1qWu2jFQ8JlDj2eeKJS
 hE3wAJq7EqQVvxZ+ghyNh1P+d9DZrtGkhYJvo/HBWLKSgx+if1ffTaFuArR4ejrZnwZ3ossz
 p5N+AF9F9fY5QplJmIm891MoBCHqHgmTqTkDPYg/+/9ch3xLMUrpJ+F2NDCUl4ruQcP2eyA1
 v4m++TqWRHFwIxr/dpZqAptd6wiutbRrXdq1Lu1al+4Aql6AqoUqY6VgFQtyJdGWK5kN1fKn
 3FztBanFS1wFq4H3AoBgQQBsYQldBqf2FpdqXtKbK2oNgsVQJtmMoiUAEEvqtNwH4KNSDVch
 1H4mSubn0laW0mVy22InSzRQYR0WxRpReq6+wrI6xMV8culGSawUjx6qMlrXZIJNU8rVWVqL
 aKoQJcFmNZQp21FmkddDkTbI3M3Dcpyz1AjV8mkqegPsYJseuDtJNuj2dJIaymQ2iVmZXP2o
 bIWK1WAzvQA9BJks0G3iFpR7bJBf34uehzKCkBFvsfsVhFVYk7LsQK/5bf5Ts62vSN8y7zwX
 iv1kJLNzDy1amOjHJy66Coo6/oruaN6S8Fj/3lo8XapvivOFX9bubT7fHIJPtu9cao0P7WuX
 6mD+CvjunnH5oKD9MXT1iHbEcHNXdmPwq6e+kvzEeEflG+XPfCX8nUZP/hm9vXzf3pyxwQ7L
 r6ZT6us6ymIQCrJJySL8B5/2GPU6BAAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_042038_301469_93B39AC4 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "milo.kim@ti.com" <milo.kim@ti.com>,
 "andrei.stefanescu@microchip.com" <andrei.stefanescu@microchip.com>,
 "rafael@kernel.org" <rafael@kernel.org>, "tony@atomide.com" <tony@atomide.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "Laine, Markus" <Markus.Laine@fi.rohmeurope.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "sre@kernel.org" <sre@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "support.opensource@diasemi.com" <support.opensource@diasemi.com>,
 "sbkim73@samsung.com" <sbkim73@samsung.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Mutanen,
 Mikko" <Mikko.Mutanen@fi.rohmeurope.com>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello Mark,

On Mon, 2020-02-24 at 11:53 +0000, Mark Brown wrote:
> On Thu, Feb 20, 2020 at 09:36:10AM +0200, Matti Vaittinen wrote:
> > Rename the "regulator_linear_range" to more generic linear_range
> > as a first step towards converting the "regulator_linear_range"
> > to common helpers.
> 
> Doesn't this introduce a build break when applied by itself?  Patches
> should be bisectable, if you want to split things up you should
> introduce the new API then use it.

Uh, I need to double check but this shouldn't cause build break as only
the name of the struct is changed - and I intended to change it both in
regulator header and in all of the drivers using it at same time. Or
did I do some brainfart here?

I just wanted to minimize the changes in patch with the widest
audience.

Oh, after rebasing to linux  5.6-rc2 I see that there are few new users
of regulator_linear_range (I should have known that...) - natuarlly all
of the users need to be covered before applying this.

Br,
	Matti Vaittinen
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
