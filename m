Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051971D3E0F
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 21:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q406S9fdyEnJ0G/En+Og3orIEes/XeN27kWEtScN9rI=; b=MoaUnMJRRn9dhp
	HkUUAL2ZRKGikx1B5ZZRk/5mbH8lf25gnj4aC78jezLprGozz8Nk49KpqHBxl8zAXohQa/83+D9Xv
	jUk7VARxn+95I6RsbpqTcryKtG1qGviATfgFKw8OHUHzXwj3sSKSzj5UnnNpYdLyKDbYXYv8A8lzA
	K0QjKNNAyxhwKR7c8pkbX0vOaHlP1hhX6jdxsCvOVFoL+4WekPxAEk62n9XjQm8KEFyA4T2Xxw2sk
	eDIV9eVFfQHsqB+jxE2281frGCVSqwFJWXvIjwHX70XcaF77oC+BV1Yi957MIKAVio7evVJQPih9z
	x++PyclNjJcKG2iCGqPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJxm-0007pT-Ul; Thu, 14 May 2020 19:56:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJxd-0007hs-Gm; Thu, 14 May 2020 19:56:06 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EE51E128D3256;
 Thu, 14 May 2020 12:56:03 -0700 (PDT)
Date: Thu, 14 May 2020 12:56:03 -0700 (PDT)
Message-Id: <20200514.125603.1095750660571738939.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH v3 00/15] mediatek: add support for MediaTek Ethernet MAC
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 May 2020 12:56:04 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125605_555856_3A797F44 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 bgolaszewski@baylibre.com, stephane.leprovost@mediatek.com, arnd@arndb.de,
 corbet@lwn.net, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, pedro.tsai@mediatek.com, fparent@baylibre.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 andrew.perepech@mediatek.com, john@phrozen.org, matthias.bgg@gmail.com,
 kuba@kernel.org, Mark-MC.Lee@mediatek.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 14 May 2020 09:59:27 +0200

> Next we do some cleanup of the mediatek ethernet drivers directory and update
> the devres documentation with existing networking devres helpers.

I don't agree with the new devres stuff.

You have to be very careful with the ordering of when you map/unmap
registers, free up anciliary resources, etc. in relationship to when
the netdev unregister happens.

Please submit this driver without these controversial devres changes,
and then you can submit and discuss those changes separately later.

Thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
