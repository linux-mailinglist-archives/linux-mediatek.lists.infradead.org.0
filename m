Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1119B7C7A8
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 17:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0JSfacBBwB910LADaL8/3EaYww7izt/9X/fbhBa8fo=; b=RKMcImOAWPIYMV
	7WqHi/5URlUwWFr91cjz0rfPuoLkea+9zkNK98i/0cbf1E+zNQqI7wkng6Z8iNH6sATF5vRNA8OiN
	fKaEAj+Zb2auzEoxMMTfEh1OMauFAzWgl8aZnrcYQEwQVarxsEnfPQ461WOezIh0y3SMTvdGW8+xr
	vVuap4h+k5hryznQJPr7SFt6X5zDQEZzITMXm6bC4xFvurybMqv2SxrG87802GJUifPYswnx/0Pqd
	YBV7G5aAiYbrbZHIWpCe0bgEJGTr7ZDMtlMNeDdUjXVGJxZ0FxJdUK1GwZxthgTSsD1TOsuy5ZzVV
	+pz1aMhi1onoA9vRNJXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqvH-00073u-6g; Wed, 31 Jul 2019 15:53:51 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqv4-0006u9-HF; Wed, 31 Jul 2019 15:53:39 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 135E1140505AC;
 Wed, 31 Jul 2019 08:53:38 -0700 (PDT)
Date: Wed, 31 Jul 2019 08:53:37 -0700 (PDT)
Message-Id: <20190731.085337.207327464892923101.davem@davemloft.net>
To: geert+renesas@glider.be
Subject: Re: [PATCH] net: mediatek: Drop unneeded dependency on
 NET_VENDOR_MEDIATEK
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731131202.16749-1-geert+renesas@glider.be>
References: <20190731131202.16749-1-geert+renesas@glider.be>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 31 Jul 2019 08:53:38 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_085338_573497_FD5AA7F5 
X-CRM114-Status: UNSURE (   6.14  )
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
Cc: nbd@openwrt.org, nelson.chang@mediatek.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>
Date: Wed, 31 Jul 2019 15:12:02 +0200

> The whole block is protected by "if NET_VENDOR_MEDIATEK", so there is
> no need for individual driver config symbols to duplicate this
> dependency.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
