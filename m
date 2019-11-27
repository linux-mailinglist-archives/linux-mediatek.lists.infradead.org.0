Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FF810AA50
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 Nov 2019 06:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWRSgefz1ooDyab8yyzMr2RQUdwOD8oV7D0yYKLItlY=; b=PYLSXJvVNTG8vR
	bVlTjF7MAW63SyWocILwJhCaNF70muBpePHX8j8eRwHoHoonwD7k8E4xnY42ZW80gKLxxf6/V0ZhD
	8kZhQCg0ew5DBeUilE2v8rSqSprT3XoLL/NKx6rzMZfYQKTtuoKK2lnH6RfkOsGvN8G97WcSZr7AV
	FjMBcAtxytOT7CZbQDvI2XCNwbk8bpV/9dIqpmfMH0hCreHEVa/HpQwrkTEjXiQ0EpiG6f90Tal4A
	c5L6O1LZFu++N8GBe5oR5hHBy3uVJJJSb5LdlWaryHwO3NAPLfHt4Tc0qPDbXbOG0gKrQS+C5RXIc
	w9N7zq6vLXVXCgS+iV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZq4u-0006ij-Pg; Wed, 27 Nov 2019 05:41:28 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZq4g-0006YW-3N; Wed, 27 Nov 2019 05:41:17 +0000
Received: from marcel-macbook.fritz.box (p4FF9F0D1.dip0.t-ipconnect.de
 [79.249.240.209])
 by mail.holtmann.org (Postfix) with ESMTPSA id 25CC6CED06;
 Wed, 27 Nov 2019 06:50:04 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH] Bluetooth: btusb: Edit the logical value for Realtek
 Bluetooth reset
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191127030107.17604-1-max.chou@realtek.com>
Date: Wed, 27 Nov 2019 06:40:55 +0100
Message-Id: <E65E251A-53D0-4376-86FB-9EB1AA0074EA@holtmann.org>
References: <20191127030107.17604-1-max.chou@realtek.com>
To: Max Chou <max.chou@realtek.com>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_214114_289228_A14684F9 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Johan Hedberg <johan.hedberg@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Bluez mailing list <linux-bluetooth@vger.kernel.org>, alex_lu@realsil.com.cn,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Max,

> It should be pull low and pull high on the physical line for the Realtek
> Bluetooth reset. gpiod_set_value_cansleep() takes ACTIVE_LOW status for
> the logical value settings, so the original commit should be corrected.
> 
> Signed-off-by: Max Chou <max.chou@realtek.com>
> ---
> drivers/bluetooth/btusb.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)

patch has been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
