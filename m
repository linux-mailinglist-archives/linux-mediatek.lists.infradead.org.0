Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D100B811F
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 21:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5P8dEhPFTUiTZPqeqF+PXirpPAWDRPKK4sXlysdwmmI=; b=tk8ICLiKE8Gf16
	EncdWEGp3+ebZF//cYUhkpSMjlOgL6pzkI1/p0aOrmT69SdPqG9xI9suXqv7iCKcP7YoWTpsoc9Er
	grB7y1UdRtd50LrwF14QqSYpoDw7xcE+Hba5OQW/7nR40sJXsQgFOqa3AmoJ1PbqxgEPyyd7/DJNF
	glXHxxWK59ZLqnsOLJJMDfZ0o+6mroF1BJT4jcZUee39iUwQ8WW3Sm01Ycw3ol16id9hQIFWC3fiQ
	/rG77e/275R+gTtYN6L9MpOJmklbzzMR1l6on2hST88BVlQ/Rt3Xc1nERAQHZjoYBS4Dnmmq7XLBR
	lgYs3HsiIrAwNr6X5K7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1fZ-0007VG-9B; Thu, 19 Sep 2019 19:00:45 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1fH-0007Hp-Ao; Thu, 19 Sep 2019 19:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568919580;
 bh=hj0v1Dk284VBCCqtbevoonaHYwBxNHrfdQxj3+1olfo=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=Q3ls9dDaa3lO23ToTcVtAxpChrkrT67aZVQKDBGAWOCCrvsABcWRYXnWiuyIoimY0
 5z/z7hnxea5Qoy+C30DO7BORwklbHAWP4H/Kw0K8Vwx0cuD+UMdUDUHnkQfNdMSaMW
 QU0gINfMFb8OWKPNbB7O7wUPJUuoG2sB9og87XgA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.10.26] ([80.208.215.153]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MbAgq-1hdtp60qym-00ba2G; Thu, 19
 Sep 2019 20:59:40 +0200
Date: Thu, 19 Sep 2019 20:59:35 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <1567059876.15320.3.camel@mtksdaap41>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
 <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
 <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
 <trinity-a57f08bb-e30e-4e74-911c-c40e335d00da-1566580580817@3c-app-gmx-bs75>
 <1567059876.15320.3.camel@mtksdaap41>
MIME-Version: 1.0
Subject: Re: Aw: Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related
 code from core driver
To: linux-mediatek@lists.infradead.org,
 Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <904EC97A-486D-4C22-9D36-838D25EB7A6F@public-files.de>
X-Provags-ID: V03:K1:row03C78r7NZowZd8aVAl1Eeyaqqfenw5BZOEshUX8lFBJvuhz4
 T+PL7oTN1F06ozQi0+zBKKCvCjoji4fkxqRZYCs4Niyy/E2/wOLW0QO2w/ZBpvxECmQWl/i
 A6QlqHL6V32iBPMdpj4GYf0evMqUF1ziUcKsrai89pMK9PRtGVWj6HXo3RI2nn0FwZR5Jz+
 lrl7R4R95drFfoDuQz9Wg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e7BeDAeyJjA=:q/h5IzV1+NgCc3T9CmosSg
 5EqJDfGKXmoIHjQZkXq8oJq+sjZkfSZvZPdGHFckLlVfGVh5bL98PsKt6DGldZNBHN1p8Yh22
 gSANqdGmtfpzBVbqmWzawdC++Qo/URhEqfAYw5t/5jtZQaPbcETwtqJhaTocnUeRNq7O2m10k
 +giTC5JeqqoydXT5s7p06GpravF0F08jWcA1B5/BtR05ITCeHOhJlIF+gHZD50PqFOALYnfUn
 oOaARwN2zGdGdZRmVB579kngNnoqBcIyI7A0dnwrs1o4TvpFvkvUVHvJ6xIxglodmj0yYnHDz
 JJIWTw93tIZ/s66GZQ2dKEkq2Ds7+KW6e3GysK20VR1rX3r/Ll0iL4tJDV19WRY+oPTqiuipD
 c0Qh1fvK+ew0WTzxbaASsidqATQNvDEOrhKcGvhawSEAYIXo3jI769l7TEelE0RtDp5pon/xq
 wWSbWtnDb4smBSrqADxXE1aXBh0gLJTgwO0s6Qy/sJSvmXyaCP8yfExTQypOoDE51gkDR/l7V
 UoINLG06vd6EaqaYgJgy+92YLhugFzupIcVSP2ZDdHOo/c3bbPSvPWFwyyrPTXR3aDDR4bzWF
 N9xPJZWCLNeqql2BqXyX/BNWPLRwJM49HBfIUJs7OHpYn0pMV5XYI5KM/Zf78qiVNQZ5YHYvV
 3uiAjYU849vUmDCkwmCFJjZoLqKbEwgaTmKmS9A9i1gE89hEsHOiIa2Qf5Bng9H1Utnysq3lC
 KdssfnlXSmZa4CPktrrC9DqVjtUr+2hVZjujLB5vpumb884hT0Ruz886H/4GQg4ZsL5/K51Kj
 ugJHHH0LTsFdQVGGoFFr1jMdoy/cMDU/jBAnoa9lunXk+b5hPlMLrmEHOjGu0CJU0WRq/yggs
 QpXzZpFp6ulWwdKNnN2ZZL0OnX3r45zjcx4Vf3qOT6nGLoDlXaBfaHwwPyp0+1Krq7N8uJMl5
 sO+lQ9qXsLMNxRaU0Trv/0E0bjZPFylaGGXPnau15KgXPiuInFIgwlcU3Q8XsNvo7xXtO4873
 6sw++dLvqQu+fBI0pzrJnYwVph+StTcKRW0+qHJ0LrQQZPM/pgplDHHPdV5vBUrMBG1hH3IeL
 wXBRjnkwpGFFAeyz10TtMtqXJHcIpt9wvcc4camaPl5slaFI3rCrt8Xq3qhpBimk5htF+VdVU
 MYhdw0Cjsxc6opGMtremMxOcVHEMcGiCD7lqvu66REZg68HyRdcLnZzDXqYv9H75zooPiMPzE
 bdHoJ3bB+sx8eukAEEgyWXBXIGQge/cIOeL7NxJyMbLQgww1Yphgbj/o7mgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_120027_880062_D32A7D34 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: frank-w@public-files.de
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 =?ISO-8859-1?Q?=22Ren=E9_van_Dorst=22?= <opensource@vdorst.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi

When is new version ready? First 2 patches are still in next for 5.4 and i see no fix so i guess it is still broken.

Regards Frank

Am 29. August 2019 08:24:36 MESZ schrieb Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>:
>Hi Frank/Matthias,
>
>Thanks for your comments.
>The root cause seems I didn't split the code well.
>I will fix it in the next version.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
