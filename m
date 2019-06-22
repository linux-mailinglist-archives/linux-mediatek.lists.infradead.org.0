Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5814F931
	for <lists+linux-mediatek@lfdr.de>; Sun, 23 Jun 2019 01:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gW3cY1rhjYDkZmHVx8/QM+rct+D87hfsVWnw++kCbE=; b=i48z2b2ktvphfd
	rXRWGBmGpLZgZfO9CGC+ZS772yTuVT/QRkhjBDsm1OCr+b9iWaNo2Ilr30tJ8FuaeptAx6U2A1i73
	9a0iqAdKR+yMizCSztWCKcSXYnPPJReQPENGafS5UorcWkqSSN2HXiRpmgkkrIZ3qWbVIAIf06YPc
	yad+Bf4gdtGwejrvslmnGJcUM7iPd4WdZ6Qmp06xV9kBEq5fAdNBd+NoNssUdpfu89l+9umN//jyb
	JO9KJpi41io9s5WpVV59rL4iQ7PaW3zOXIRBz5fYXU1x51ExjOob/jEU0MX5U6z+NPoxXRUdtbxt8
	ojjQQIcHzsvEH9QNv4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hepuN-0002m7-RL; Sat, 22 Jun 2019 23:58:59 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hepuD-0002fi-3T
 for linux-mediatek@lists.infradead.org; Sat, 22 Jun 2019 23:58:50 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CF63E1540C18B;
 Sat, 22 Jun 2019 16:58:42 -0700 (PDT)
Date: Sat, 22 Jun 2019 16:58:42 -0700 (PDT)
Message-Id: <20190622.165842.918757451860285746.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH v2 net-next 0/2] net: mediatek: Add MT7621 TRGMII mode
 support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190620122155.32078-1-opensource@vdorst.com>
References: <20190620122155.32078-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 22 Jun 2019 16:58:43 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_165849_280730_F1E1EFB0 
X-CRM114-Status: UNSURE (   3.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Thu, 20 Jun 2019 14:21:53 +0200

> Like many other mediatek SOCs, the MT7621 SOC and the internal MT7530
> switch both supports TRGMII mode. MT7621 TRGMII speed is fix 1200MBit.
> =

> v1->v2: =

>  - Fix breakage on non MT7621 SOC
>  - Support 25MHz and 40MHz XTAL as MT7530 clocksource

Series applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
