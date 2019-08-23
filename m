Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C849B307
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 17:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMboNzNNfZHwPU+/eTWwzdNIzWxDjlfOE8TYooBnlrU=; b=Sf7qsdUly67Q/c
	YsFX4FLQMjhLXa8TMKTT1JlzkDuE8h8BeDfu0D1TAQYey8SDA5EGVDcfhawSV33ZKmovCBnUA97Jh
	3XbgtSGfhBbZrRLu/UT29aXQH7lW9oxB4ISr29pdVLykCBeM8/XRFcGGcVeLBELzRuA5Tzyc/NpQq
	ioqBFU1ZLFTDfPYrQOpLVgGXz8Gd1fnWzzK5mjWNPoIJXdFh6sLN3O+lKrWq2p2hv3fAeRVjOj+jE
	Rz2Ansrc2pWqJ/v+RPvw3XczT858UmCbKhPOaJvg6TtBaijziPkXb0pLT+lfnaHda9QTDFaAYmxIK
	BcV7ICbSHaA6v1LYwtmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1BAa-0001nw-Rh; Fri, 23 Aug 2019 15:08:04 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1BAW-0001nU-M7
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 15:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566572864;
 bh=FJrNtZLJ9O8CMVkyLcr48QqzXGXcTSAtecZT8iHOtS4=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=Nj2jUYvlG8QdOfEBTnvGjnm76eu5nRMMP8HEsN7HpHqaaq2hoWpEPu1ivnURk98/G
 dHQwBcJmATIhnPhR9C8peNbwlg+Hi1p1vipxPsQKnxK6Lg7xWFk55FQ92mnP9+nuSL
 31EO8or1oJ+QJJ298ODQhBYAnTPslAaBfXtyt+bY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.159.16.108] ([80.187.106.162]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MSHax-1hdv0O471n-00TWaV; Fri, 23
 Aug 2019 17:07:44 +0200
Date: Fri, 23 Aug 2019 17:07:40 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <0fcdea56-c6fc-993d-1520-be40ff03df2d@gmail.com>
References: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
 <20190822193015.GK23391@sirena.co.uk>
 <trinity-5d117f0d-9f34-4a2b-8a12-1cd34152c108-1566505724458@3c-app-gmx-bs43>
 <20190823100424.GL23391@sirena.co.uk>
 <trinity-2f905f45-85d8-4343-8613-31dda5f7556f-1566561616610@3c-app-gmx-bs11>
 <0fcdea56-c6fc-993d-1520-be40ff03df2d@gmail.com>
MIME-Version: 1.0
Subject: Re: Aw: Re: Re: BUG: devm_regulator_get returns EPROBE_DEFER
 (5.3-rc5..next-20190822) for bpi-r2/mt7623/mt7530
To: linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <3545020D-0E15-4DD9-BAA4-D9D51DD32018@public-files.de>
X-Provags-ID: V03:K1:YsgQwbyNJz44H8WNTbQoqWkAoTTTDL9J/eJCT/HLtNKPUl5IbOZ
 2qolE6gCzfKGBluJMNwd9+DjK/WWWE44zCV/3ebKojRJAsBH/Xm8CtFziJnr1TXbhO/W9KZ
 Z7paSVQnHMHW3yij6GmzVAB3FD9PqPrSFoIVczfRxk9KUDsvFTjFPGcqw3qv78En5TSJPua
 1JKqGwJUlJ4In70JcYRdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GO77rwsP3rs=:jLlx2+yQG70PK0jBr7Wxjn
 /TZcsERFVnLm9DoScza92VJXMfGkdGhN+oeM3w7V64afP3VH36zKAZQ4x60IEar3rRDj9Z54b
 MyvqeKadYqRBZAgeQyB8PKFsyXDwW3V7eQWrStReKnP+4DPWAQBQej+PLNJaVGabtIvkKLUmi
 u/5hwBO8qBWatFuTW5SGVsfh6f57N4s4mU3RIn+OaBNfgE9Rt+RxxblTUNuT3oash53I9DsjS
 T2B0mFc5xjT0FZHlazxMkDE9d/6ftS50p2szwnAyGKNp8sCeEKn0cxlYbue5S5I9K9CfXHRHh
 EA9eVQZ5z89yAmPS+dfVr3BhkiL13RrWMSPBzzAKjUFDq5DyW/1Cs3Pz282oHwtEfCRpFdG6o
 xUOHqqEAYCegLNCf1wgyKOCj9KMu/2mM6M422HjqWYh+Gg/oiV0EWxnwCVCfjiJmqtoEnSkuL
 dUSjPk/rinxdNbUOMw6ntjn5SM+LWHhm4y/9mMpgHZOM1sGOyTZaxzjLmtmQdkspa2MQGRfI2
 WRlGrGFjaqjqXT5LhumllPpDBXjrDkMqhNmTX1uAIyN+/01I8vIzYlVMjensvBFZnivl7Ztg+
 BJhJrTFKp6NoiAoWBrifE3IkZmiVo2aa5iTYFA+tbyw127u+KcF8SHXEVFzhSdrSlwfdCN/ng
 LXAbCurctstKH1EKDbWwskAjd2pV4HgMYGphMEOrGl23AbP4qniTQqo+7rQYNw8RyeoaLruyw
 t3TTT6iURUz/pPUDwwP80wyWsjhaYuRFVKAtBdZQHxRtyoHMiMPVwvK0vZe26zAkO/8p4pR6v
 B2E7p6sgelu5jAYNOD2QmG487QHf70ia2GYEv6od0K1Wg061VDeA/29lOw+9Oh6n6dLGTqzTf
 K8Tk9axlK4LTq+PpuMI82QQP5ieHVY/O+OUk78NWRONqInx/+e61mzZHE/fEISB5cQO/z4NMH
 pTG+TTuFWoHEP+OU1fv8NYBJggAmBPyuY9om1uw8SiVWDJoJjVkJcOwc3ugoMv3bvTEAavsy2
 zSgll3zTWbqevaRlZwZzRhnAZPA8Dqs4FE7+UfEo8vgpSUO8raMj923DDXoI/puHimFFyEUn2
 6t81+l+P3+RxFWX/cmZJJF1ppO8wyvcspJtQhmAXaFP903FvthbQgKikJ2HvtQ0AJ9niTnEQb
 Lkt61DMWvWiHx1wVAJLYk9HBN6HhVZ+UkQusmz9iN7ZaMvqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_080801_056811_DFEC3880 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?ISO-8859-1?Q?Ren=E9_van_Dorst?= <opensource@vdorst.com>,
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi

Am 23. August 2019 16:43:47 MESZ schrieb Matthias Brugger <matthias.bgg@gmail.com>:
>On 23/08/2019 14:00, Frank Wunderlich wrote:
>> in working version i only get this message in dmesg which
>> looks like a device-binding:
>> 
>> mt6323-regulator mt6323-regulator: Chip ID = 0x2023

>> mt6397 1000d000.pwrap:mt6323: unsupported chip: 0x0

>These are commit IDs from linux-next. At least file from 20190822
>should
>pinpoint you to the correct commits.
>
>@frank: please don't use commit IDs from linux-next as the history
>get's
>rewritten every day and the IDs can change. Better search the tree to
>which they
>got applied and use the commit IDs from there (stating, of course,
>which tree
>you are looking at).

Is there any easy way to get the right tree?

Can you give me an example bases on this commit? I thought adding the commit-subject is enough to find it also in a dynamic tree

>Looking at commit
>a4872e80ce7d ("mfd: mt6397: Extract IRQ related code from core driver")
>
>you can see that it doesn't just move the code but also adds new logic
>in
>mt6397_irq_init(). :(

I take a look at this function,thank you pointing to it

>It seems your chip_id is not supported yet. So you will have to find
>out which
>one it is and add it to the switch.

have posted it above ;) (0x2023)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
