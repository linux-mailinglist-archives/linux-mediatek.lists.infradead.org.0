Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C260C18C64D
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Mar 2020 05:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weMJqGZi0amGqG615Si4EtENNZRj9nnYf7sBVrrSULc=; b=iIWLSMXyyV15iR
	UsFraq9RQ57SMXIsqKfwsIvPepdCAo5mJfbUYK/WGCczo67uWpFwjcoCu52Myd48ihpIXOWwWG8dK
	GQ1Z05hlRCjNZt+ZO0cdFCSkXbhbzqW2jkTugJyAneEsQVcbiY6iJXEcH/24KEyV1rWbx47eZ1ldw
	oEOfhN/itmyIaBFfb9oSVy82IdNZ328Ma/XvXUMh8FSfwIlZ1doeciQExRSlvG5eFg5Vr6xlGvorb
	3ME6z0RnIXFxZ3bEiGKaZYuJiODUdgzQHLgJv2pFv647KSxa1imi2NA8fNGGykG6EDQN+4XW8JBYT
	Ic7g1UG8QqPhBlm9/G6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF90d-0001qp-Ax; Fri, 20 Mar 2020 04:11:47 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF90a-0001qT-7e
 for linux-mediatek@lists.infradead.org; Fri, 20 Mar 2020 04:11:45 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6594F158FAD8C;
 Thu, 19 Mar 2020 21:11:43 -0700 (PDT)
Date: Thu, 19 Mar 2020 21:11:42 -0700 (PDT)
Message-Id: <20200319.211142.227637721585547364.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [[PATCH,net]] net: dsa: mt7530: Change the LINK bit to reflect
 the link status
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200319134756.46428-1-opensource@vdorst.com>
References: <20200319134756.46428-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 19 Mar 2020 21:11:44 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_211144_278647_869FA99E 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, landen.chao@mediatek.com, f.fainelli@gmail.com,
 frank-w@public-files.de, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux@armlinux.org.uk, dqfext@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, andrew.smith@digi.com, vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Thu, 19 Mar 2020 14:47:56 +0100

> Andrew reported:
> =

> After a number of network port link up/down changes, sometimes the switch
> port gets stuck in a state where it thinks it is still transmitting packe=
ts
> but the cpu port is not actually transmitting anymore. In this state you
> will see a message on the console
> "mtk_soc_eth 1e100000.ethernet eth0: transmit timed out" and the Tx count=
er
> in ifconfig will be incrementing on virtual port, but not incrementing on
> cpu port.
> =

> The issue is that MAC TX/RX status has no impact on the link status or
> queue manager of the switch. So the queue manager just queues up packets
> of a disabled port and sends out pause frames when the queue is full.
> =

> Change the LINK bit to reflect the link status.
> =

> Fixes: b8f126a8d543 ("net-next: dsa: add dsa support for Mediatek MT7530 =
switch")
> Reported-by: Andrew Smith <andrew.smith@digi.com>
> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>

Applied and queued up for -stable, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
