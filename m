Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C3E1D640E
	for <lists+linux-mediatek@lfdr.de>; Sat, 16 May 2020 22:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWHeEBonN3jijnAeg67MVzVBW2l4+kojxzZp4+E7Q1M=; b=iw7GpBGD/Duadr
	mZr3LISHDa94ZiIAUUp8PJely4VSsHl3ouWdwqh5srNeHbTcFHe2bnQfEGrQGkPb6wpTzrZKWqAt6
	gNK/lIi5DEnGAK9lLwHByqGC3AJtEyEtJ1v2fo5BgeV4x/cJtkzrDjnqdwAjqCEPpD3G3tA9zHvDk
	+OK24oHhyHrf5u5HldagJXT7LHVAu+pxX17qU963XHKGucyQIFW6M06mqMfVUvPaAtvgKxBI7+Mmz
	zLwYqv6Bbwgn/i4lQJwCOxriGL4GCfmpmHCWo7dagIxGfHPllfPH5IAAkwtO2JUnrLztsPXVk3vJF
	EQ/JL28Yn2dwUYsEkjiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja3lK-0004b7-Hp; Sat, 16 May 2020 20:50:26 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja3lH-0004aF-7p
 for linux-mediatek@lists.infradead.org; Sat, 16 May 2020 20:50:24 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1865C119447BD;
 Sat, 16 May 2020 13:50:13 -0700 (PDT)
Date: Sat, 16 May 2020 13:50:12 -0700 (PDT)
Message-Id: <20200516.135012.277283823891648494.davem@davemloft.net>
To: dqfext@gmail.com
Subject: Re: [PATCH REPOST] net: dsa: mt7530: fix roaming from DSA user ports
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200513151016.14376-1-dqfext@gmail.com>
References: <20200513151016.14376-1-dqfext@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 16 May 2020 13:50:13 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_135023_281445_9F80E2EE 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, fercerpav@gmail.com,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 riddlariddla@hotmail.com, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, foss@volatilesystems.org,
 szab.hu@gmail.com, matthias.bgg@gmail.com, vivien.didelot@gmail.com,
 tj17@me.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: DENG Qingfang <dqfext@gmail.com>
Date: Wed, 13 May 2020 23:10:16 +0800

> When a client moves from a DSA user port to a software port in a bridge,
> it cannot reach any other clients that connected to the DSA user ports.
> That is because SA learning on the CPU port is disabled, so the switch
> ignores the client's frames from the CPU port and still thinks it is at
> the user port.
> 
> Fix it by enabling SA learning on the CPU port.
> 
> To prevent the switch from learning from flooding frames from the CPU
> port, set skb->offload_fwd_mark to 1 for unicast and broadcast frames,
> and let the switch flood them instead of trapping to the CPU port.
> Multicast frames still need to be trapped to the CPU port for snooping,
> so set the SA_DIS bit of the MTK tag to 1 when transmitting those frames
> to disable SA learning.
> 
> Fixes: b8f126a8d543 ("net-next: dsa: add dsa support for Mediatek MT7530 switch")
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

Applied and queued up for -stable, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
