Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F8DCD1EA
	for <lists+linux-mediatek@lfdr.de>; Sun,  6 Oct 2019 14:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDhYDeTrWwmoAhoQvknhnJN+Zd+vKY+LJq1CWjxPfgw=; b=Vd545KVhZwdvE/
	Tiij38d9rRPH6SyT4mt4S9rFwwoEFxLVENlijhA/ShFYNSfCwCcYUOlO2djLsGtQ+UHccwSo429aZ
	aDkgoLy6x7DwEsaehKc1vUwZb14wF1UmpzTaoaQjt3ub9sgdKQqugfpA8sRJzx1pJ/vAi1CQg9LRr
	0HJb2Wth+GjUq1uRlVMRaWk5yc0/yrgD9YDkbeEir4gB9RwbKloh2bfr84HRobj5vmNTfeyDxijvy
	iXfgCo7c+sVpvS3XUWdZe9MR709KKMViawMnQ3n7yihNBlh0/mTzwOSSoWX1DHHfF7vCfsS1/p1Hs
	LALUUXa6tbidMo/6htjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH5k2-0001tS-Tn; Sun, 06 Oct 2019 12:34:26 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH5jy-0001r8-IM
 for linux-mediatek@lists.infradead.org; Sun, 06 Oct 2019 12:34:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570365236;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=+jNs+aIhzCrlui+txGTHIfOIsQHf0wQLk5jIMpzux4g=;
 b=lfVNajWZCeQowMcoX3i02tGdu5Qt95kpjiH4OlGOZnmDUFoDxW7l5VLNrE3FVP7Nre
 byxRIN0QbNubVoxBnFP74D0Ja1ZsaA/zyjnJcYRmw2L17gq8jxhcsVCu4jEFf+a7UGUW
 omGcih+FnLc8ugjQyq5wmbVHt7mXlJ0V/ar7fdqKOwFeuOVH8AAc7XsKV4PFS6PXv/wz
 UOHGCyKLm3vDLlMqznz+4Yr/GxEhj6fa4Hdvrp9SuUV7oflPgxS8YrI+uClxEDNSHIyD
 CrEtrxoRdnFJAZ/bSsGqmISbGvTj6krwRp/0YIvgJWCxBjUIENuABpgoURKSX4wIrF8r
 UzmQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzmt2bYDnKIKaws6YXTsc4="
X-RZG-CLASS-ID: mo00
Received: from oxapp01-01.back.ox.d0m.de by smtp-ox.front (RZmta 44.28.0 AUTH)
 with ESMTPSA id i07086v96CWqeEb
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sun, 6 Oct 2019 14:32:52 +0200 (CEST)
Date: Sun, 6 Oct 2019 14:32:52 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 jitao.shi@mediatek.com
Message-ID: <218822936.516770.1570365172065@webmail.strato.com>
In-Reply-To: <4df984a5-a917-753e-5870-7453f3d5438e@gmail.com>
References: <1570216148-22802-1-git-send-email-uli@fpond.eu>
 <4df984a5-a917-753e-5870-7453f3d5438e@gmail.com>
Subject: Re: [PATCH v19 0/2] PS8640 MIPI-to-eDP bridge
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev20
X-Originating-IP: 85.212.38.149
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_053422_753492_DC74E938 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, stonea168@163.com, ajaykumar.rs@samsung.com,
 architt@codeaurora.org, vpalatin@chromium.org, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 devicetree@vger.kernel.org, kernel@pengutronix.de, pawel.moll@arm.com,
 ijc+devicetree@hellion.org.uk, inki.dae@samsung.com, robh+dt@kernel.org,
 seanpaul@chromium.org, eddie.huang@mediatek.com, rahul.sharma@samsung.com,
 p.zabel@pengutronix.de, galak@codeaurora.org, enric.balletbo@collabora.com,
 andy.yan@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


> On October 5, 2019 at 1:16 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> 
> 
> Hi Uli,
> 
> On 04/10/2019 21:09, Ulrich Hecht wrote:
> > Hi!
> > 
> > This driver seems to have fallen by the wayside because, while otherwise
> > fine, it has a firmware update feature that requires a blob that is not in
> > the linux-firmware repo.[1]
> > 
> > Whatever the cause for that may be, the update code is entirely optional
> > (my chip works fine with whatever firmware is currently installed), so I
> > have removed it in order to get this merged after all. I have also
> > followed various trivial API changes that have piled up since 2016; see
> > the individual patches for details.
> > 
> > I'm using this driver on an Acer Chromebook R13 ("Elm"); see
> > https://github.com/uli/kernel/tree/elm-working-5.4.
> > 
> 
> Thanks for your effort to get things upstream.
> I just tried your branch on my R13. I had to do a trivial config change I had to
> do, as I don't have and care about the bluetooth FW right now.

Thank you for testing!

> But after that my screen keeps black. I was able to build and boot
> elm-working-5.3 and elm-working-5.2.
> 
> Unfortunatley I don't have a serial console on the Chromebook, so it's difficult
> to find out where it hangs. Can you please double check if your new
> elm-working-5.4 actually really works?

No, it doesn't. :( It seems I forgot to run mkimage/vbutil_kernel when testing...
I have pushed a fix to the elm-working-5.4 tree, and I will send a v20 tomorrow. Sorry for the inconvenience.

CU
Uli

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
