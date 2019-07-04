Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC2F5F709
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 13:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:
	From:Message-ID:MIME-Version:Reply-To:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkxpAbtZeu7XdXO1LI9tk850sFp5cqdtkItnt5pxWQM=; b=uCgKuT7zvyNorX
	7ER3OBSO8X7MMlD0HuUaKDP+yQDH3iwWqKFS7EOZKNOfdY+oVAVuyxgy0LAZuZ9ecgUreWOalbXYY
	MWd/vYzWBDcjmKt+HI6Vwh2IDwdixM6e87sKzgLEr06F3quwwyfOgY2D9TMe2Dxec7VEtAAhdk1sA
	6LmeiCYbrbeIDXcmH1GKRZ6O2kP/udXbk8Thy+ixwNfkHSmTI2FVPtt65kNsoiz657IX23NpatQ1u
	PVdA9PSp6r9MqZhFAmwN7BTG2e/+q8PnH1ngIEr86czxOOcMB1eJu6PKH8wmMALE/OjXsThDYxAVC
	SsTakksOCPaWii8baV8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizck-000336-DN; Thu, 04 Jul 2019 11:09:58 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizcT-0002s8-LC; Thu, 04 Jul 2019 11:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562238524;
 bh=xewwvH1K14MpwmyPyoSVm3soCqhRG4coEguzC5XFyRU=;
 h=X-UI-Sender-Class:From:Cc:Subject:Date:In-Reply-To:References;
 b=F5ztQ6oLQDxWBeKJRudGw4uO/Od6NHcZR42iKjQZwFNvXMU1LDkJcz++vnGjhGhkT
 rhKPJAk0CjVGVx6E4KYrz4r/6zYDVOF8Z62oh4MlWCmTeJdmMyWg6nyBRNPHdnNkk6
 4qALyoONjlAPb/+iANBotiT6pDWpFqR33aTqbqDk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.121] ([217.61.145.121]) by web-mail.gmx.net
 (3c-app-gmx-bs27.server.lan [172.19.170.79]) (via HTTP); Thu, 4 Jul 2019
 13:08:44 +0200
MIME-Version: 1.0
Message-ID: <trinity-bad65b37-f133-4f92-9513-965ecc0e0a0b-1562238524435@3c-app-gmx-bs27>
From: "Frank Wunderlich" <frank-w@public-files.de>
Subject: Aw: Re: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Date: Thu, 4 Jul 2019 13:08:44 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <24975910-cb06-7faf-998f-def23ca0891f@gmail.com>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-4-frank-w@public-files.de>
 <24975910-cb06-7faf-998f-def23ca0891f@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:jnRruknwXBDel+OIwmAlBlpZCo1GUcWSFiGCMCvsYCxnT6gNPN47MfQ8d+npte2+5ba3C
 pK6nsUiE1pbreDN5g7uwxCqoVPtzGFjzwnicn7H2HiakjJVH++0nWUZcvMTNbDw41XYyfHz1rvP5
 tyG636rnPhcTQmqemF8FuioIckboC/V+PRYo5xPNkhqnJzTMPGV8c9mOlJm7mL9gNnKhsJ51sgaA
 F2utj5iZ0sWUH8hx4axdegf1shPw2ITfHHB8OiUIm42I/vflDVjo4pyNj0d7P0Z8P9Qmr9ogiFQj
 I8=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5dO1uuC4GHI=:HuT9N7g5VLRtNrhu9OZLWM
 s4oHLi+F4JnZ1iuiGNv5fWp6Cawu+ZAFh+3ySZ/XyVDWcO/IoLj6PmevaQtIHibcXyMfldhFr
 H774L3+0s3jPi4KGidGirvKsHonDduG2z+L3Hn5rHCEArBIdknXuOxWNhrmImQjNPngJJeLcN
 AJAbSiX3wEcJQeshB2wsEWtNRopMrBOxtJZbIFBfnOPeRwwo8DEuVkaCYlpp4hz+0/zfIXXQi
 C97yBiCjPLdCIHjsXZ5FIKvjW49IX0pBxKczAEpkfnS2I9CRZNj/n/cISuJ58TiX3s4IcsraE
 +cxkjIKRljQ8Hva6SIjS3R6dPeEXAgsIsIxHYoGiSLg7IjKggeCViPlkbocioMjnsimIFQC1V
 DuNLmHO4HtIuuMWPuDlM7liEmbM9toxtmxxrq02GY+5zxJjdg/CN0JjoKEMogwcNSvPSUJSQ8
 FAKuYh05I68HWtL6BpvPtIfRieUKWEh7fVgNqET3U5VGelkjd5RuHrVWi6gF+quRLHFZdKXzx
 dRRAViLmvut6WTLCuFMLnYaIMCg7WkcaJkU0Ca+zAJNai39ND4MXdE2mvPGhy5qugJUijobm8
 0iieYHmAd1P9kqyoWbTqNZhVd2cK0Kh6doCKz0cYxypBjEwSttY0c7BBcptAgDVtFMz7wJlco
 CaQE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_040941_994521_9FB93E4D 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Linus
 Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro
 Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S .
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Gesendet: Donnerstag, 04. Juli 2019 um 11:13 Uhr
> Von: "Matthias Brugger" <matthias.bgg@gmail.com>

> It's up to the maintainer but I don't like patches doing clean-ups together with
> adding support for new HW, although it's a trivial one here.

i can split again to have clean-up and new functions separated

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
