Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C703061224
	for <lists+linux-mediatek@lfdr.de>; Sat,  6 Jul 2019 18:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1yidpIJmyZA/IiisZFIi2GGTFjEGXcVkPaC9zAaxEU=; b=s+UQ6tJ9j2qHE8
	exZMGsbFitkQK1ZkIICFOHodfS2qLxv2y2AuDaoBnq8/0xSP2eOQsnq3t6DH/s1GlV6xQZ8hIY+jz
	oTf9aqrWVVIUyvnisBI/RwQqbpP3x0d6RQfVtO0CmJsW9tDRwOouNiepxBMQazMKoMGLAcSUP2AUR
	K32HqqsuwPqgVN41oncXY9GmZDym+UaSwYK08fTbMsfV1PXrlkooSKG1T12uakvVavmpbFdktHEfS
	EOybWUkppohgObPPPPtxlso7K08Z/w3kJqcpufPVdFZzRJlLKURw0gv907KauTH04uGTXaPgD/lwU
	fpIOSi7WKDL1pQo/0Lfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjnMt-00043o-BK; Sat, 06 Jul 2019 16:16:55 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjnMm-00043S-Oi; Sat, 06 Jul 2019 16:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562429720;
 bh=v/j4XiFKCPBK6S3apqY0k2vzFHqTLRdaz8I12SI1NC0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CJHkPYNHKpYJZeE8b5exv7hkag9LhEEk+oMaVu7xO2FhAqyFGWXwh1VMzFLMBIQAt
 SUzlzlLPzNa+VycQIqxK3jP7pFWAWr+3NfSKAIasrPtmMrq1Jf0xTkOFJyAUjG4ip+
 eZ/Fmx5yUrwrEjw564ZtBuE2gG9/dHoIoBaWeMSc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [185.53.41.182] ([185.53.41.182]) by web-mail.gmx.net
 (3c-app-gmx-bs42.server.lan [172.19.170.94]) (via HTTP); Sat, 6 Jul 2019
 18:15:20 +0200
MIME-Version: 1.0
Message-ID: <trinity-a4e5f99f-00bc-4e90-9a48-64dbc6ba9c08-1562429720701@3c-app-gmx-bs42>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
Subject: Aw: Re: Re: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Date: Sat, 6 Jul 2019 18:15:20 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190705212448.GB12409@piout.net>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-4-frank-w@public-files.de>
 <20190704204336.GJ3692@piout.net>
 <trinity-7b1977bd-252b-4482-b708-cf704a9d3da1-1562340946396@3c-app-gmx-bs68>
 <20190705212448.GB12409@piout.net>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:HL+BGyIiUKA788YDI9SjshqIgoMva0CxAoF0FNbmiWgikilC3yiUX3XktaeBDjK0IKEwF
 M5OzAzR5nw+t+4CRs1I9g+sSK9MWMfSk/mKhmsVI5WIq/vtS3pVX1YuGkdLkf/v3EPW6LKS0H0fH
 MEGQbEULdeuovwyZr1yP9Tpo/P2sY+g5b5YLZja/sE2f9jGjj/jjGqHWsp1kdhzEMjXYJMc5vSNc
 dfl7xrTKVwXPYNGVBc9EZLwMTCrtuqST4Fgc+OvmRPpC724OLngAkRDCyKKMuFK307+DLk1V/cdV
 FQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dyLM7KxLlUY=:rEe9h1ie4NZfHvWUktHHgZ
 wGYyOhfZILpnEZ9Mc5xv/j/t5C7oJ/KSAvlrJYU5WMOFIXloz16TCcbtXrc+MXq5y+9Pp0yWn
 /fcu5HNIpjz8tXE9yfRZ6E7xrDRaCCxo66a0w6VTfpZypL+UJSarOf2DvVSf2GqRaFmXlPB69
 WNCtysh7zssF8h3itBz5jY/CtpUPdiL7ycY4Pgh37j0fDS0fn7nM8v2TR6osYKCBYrdTeFjHU
 HleenrgDa8iGGTiYyHUWzXCdNO2ppoUKiHnTSpBEFVXFxP7JIwvekGpFALoE3aRZeLT+fze9T
 4T+8fwwqzV5OHA+UJgFaHnCzgJr/NqZEvJb6bDNoeGi1kgrD+QBn7Vwm7dZQwKMsoZ9agtiA1
 +tPco/SEoeaAUgsQnmaIlPA6tUzYFTxuRbQqMYzOYDJWXtyxplXDcLueUlMvtLPYZcGQZWBME
 JASBkNFwFm4MjMeu5nzlgUuw6KDoyJm3cINY+DPewJc51PjyO5puYKREvSFnzKMKIfSsThaxN
 L1nE9hTZGtGw9cq4Npn6TC4mZFzVBU/P6rQ72e683HS4W0hRjzlmKxB7DeKv41qFQPhugeZFQ
 wlQRAG8d1atCBJ+ncStUtIuL8Ft/x3w/oFsEkK7VO6aTN5lyXftWeNXEqGPd0FWxquNe6FOq7
 UoSo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_091649_140695_0D75756F 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linus
 Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Mauro
 Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian
 Reichel <sre@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Gesendet: Freitag, 05. Juli 2019 um 23:24 Uhr
> Von: "Alexandre Belloni" <alexandre.belloni@bootlin.com>

> Let's say the RTC has been used to start your platform, then the irq
> handler will be called as soon as the irq is requested, leading to a
> null pointer dereference.

i cannot test this with my platform, but i have changed it in my repo

https://github.com/frank-w/BPI-R2-4.14/commits/5.2-poweroff-mainline

> Yes and IIRC, I did comment that the rtc change also had to be separated
> from 1/7.

also this is put in separate commit, can you take a look before i post v3?

> Also, I really doubt this new compatible is necessary at all as you
> could simply directly use mediatek,mt6397-rtc.

imho this can confuse because the wrong chip-name is used in dts

regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
