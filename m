Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AC28B990
	for <lists+linux-mediatek@lfdr.de>; Tue, 13 Aug 2019 15:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fZ0TPMVe86RwviPqD3pw6OQVC7pEGckSFYgKSf2u+H4=; b=HX8DWd6RvqedyaTTJbZJxouKA
	XiCRmxmmKLvJuTAzibBI/7Y2QAB+XDtB9tKh+IlYXRJ9eQWvaQH3db5I6ZU2tbzZqoGei5gjgIQ01
	4JnSilmYcTiRwToIeAujNZMaJlWAjMNQwAOLm8wJR1ZHtlgsCAXhW/qtpORAPfioBN9vu9usqsS2h
	aalmQLgsRr/usldcMtZzuEd2v/NC0hODfjhgLe9ryyQlLNtLEUgL2spogfPgQytzDyPAYI6UUvSgL
	AYRvTBTj2RpiwGVCv/oUkS7tsFHxsTk29c/DpTrDRFIXQytnMwNkEyso3YrU8Nvbx6BSpkhYXrw7w
	GtiW4/r3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWYR-00075e-GC; Tue, 13 Aug 2019 13:09:35 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWYN-0006tO-Uq
 for linux-mediatek@lists.infradead.org; Tue, 13 Aug 2019 13:09:33 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 3EBCDA335B;
 Tue, 13 Aug 2019 15:09:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 5zLXc_MXTiBD; Tue, 13 Aug 2019 15:09:24 +0200 (CEST)
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
To: Daniel Golle <daniel@makrotopia.org>
References: <20190717110243.14240-1-sr@denx.de>
 <20190717121506.GD18996@makrotopia.org>
From: Stefan Roese <sr@denx.de>
Message-ID: <b2258258-af40-3e0d-f771-a70428ec798f@denx.de>
Date: Tue, 13 Aug 2019 15:09:23 +0200
MIME-Version: 1.0
In-Reply-To: <20190717121506.GD18996@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_060932_147798_698E8891 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felix Fietkau <nbd@openwrt.org>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>,
 =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 17.07.19 14:15, Daniel Golle wrote:
> On Wed, Jul 17, 2019 at 01:02:43PM +0200, Stefan Roese wrote:
>> This patch adds support for the MediaTek MT7628/88 SoCs to the common
>> MediaTek ethernet driver. Some minor changes are needed for this and
>> a bigger change, as the MT7628 does not support QDMA (only PDMA).
> 
> The Ethernet core found in MT7628/88 is identical to that found in
> Ralink Rt5350F SoC. Wouldn't it hence make sense to indicate that
> in the compatible string of this driver as well? In OpenWrt we are
> using "ralink,rt5350-eth".

Okay. I'll use this ralink compatible instead in the next version.

Thanks,
Stefan

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
