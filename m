Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2069F8AC
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 05:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdWK9MkfaovLh4PWGaqIuT6niLTyDAsAZKGHt6A+yXc=; b=kizDe5g2I7ycdm
	03crNxFX5OSBQv9fj5TperHXOS6brZCH7+8V8rGY4wNrRQcrzBJwmUAZt+P7q9CeX4n1BcQG98v1Y
	201NBYJR9uxQG2GNE0PmmHpg+TSgaCYZ/1EXQ9lQP6dHIAty44iIbrd6lIEDABP76IQbKCOpnuU7f
	PAXlDb2jrWGJ2CSxZ/YFwPkrbh3NuKwNhbSzLxOE6ujRFs5sdR1py8teRNUD0IIpbgz9lah25zvO2
	sRyFatjiOBIOysGRJceuYNbmaTrFW49q82TjYUfnBisq+cd/x6Lk4sMmlnGf3bFM7zMUr/Wfpoabg
	k8UCAntbNZrLZB38YIEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oVD-0001A2-Ab; Wed, 28 Aug 2019 03:20:07 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oUs-0000ye-Oy; Wed, 28 Aug 2019 03:19:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 329E2153B831E;
 Tue, 27 Aug 2019 20:19:41 -0700 (PDT)
Date: Tue, 27 Aug 2019 20:19:40 -0700 (PDT)
Message-Id: <20190827.201940.2141115576553497735.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next v4 0/3] net: ethernet: mediatek: convert to
 PHYLINK
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190825174341.20750-1-opensource@vdorst.com>
References: <20190825174341.20750-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 27 Aug 2019 20:19:41 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_201946_814713_CE87B798 
X-CRM114-Status: UNSURE (   5.19  )
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
Cc: nelson.chang@mediatek.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, linux@armlinux.org.uk,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 sr@denx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Sun, 25 Aug 2019 19:43:38 +0200

> These patches converts mediatek driver to PHYLINK API.
> =

> v3->v4:
> * Phylink improvements and clean-ups after review
> v2->v3:
> * Phylink improvements and clean-ups after review
> v1->v2:
> * Rebase for mt76x8 changes
> * Phylink improvements and clean-ups after review
> * SGMII port doesn't support 2.5Gbit in SGMII mode only in BASE-X mode.
>   Refactor the code.

Series applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
