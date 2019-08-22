Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137E99A3AE
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 01:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPxMr6eMm01eTOxOezWeN1XldNuGNGK5eFBGSYi7OEY=; b=CkanXFlVMceP/3
	J/N0vsl7+tsEhtfZcrvRBiLr0n9r1/TbUx/R7T4qsuWJF4K96pjWD8uN/bMMUAT9ysZnDjPkBiw3L
	gEyl84/Sv7z4Hveh06hToNm6mF0/x6HZ4xeaiq4rD8uz9LW8Zkziil/FDsce1JtwOuxqVwkurTfhk
	9q5pJCflejY8XLsWzw81eHB7QF0AtG31HmwYpHWGCIjSwcoewsk8mq25PxHZdgBdPOYTCzHU1BS28
	PFz6DAGb1Tzjeu5QNTM6PLe7o+PQjolDlpS6f9mZHZAp25XvMFGn47LX4P7RZPVOqwK5sRtKZUL7u
	3QuEc+Fu16qZZo0xNCpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0wO3-0006VQ-8d; Thu, 22 Aug 2019 23:20:59 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0wNu-0006Pg-EF; Thu, 22 Aug 2019 23:20:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4AED01539D825;
 Thu, 22 Aug 2019 16:20:48 -0700 (PDT)
Date: Thu, 22 Aug 2019 16:20:47 -0700 (PDT)
Message-Id: <20190822.162047.1140525762795777800.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK
 and add support for port 5
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190821144547.15113-1-opensource@vdorst.com>
References: <20190821144547.15113-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 22 Aug 2019 16:20:48 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_162050_481849_C1620AEF 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Wed, 21 Aug 2019 16:45:44 +0200

> 1. net: dsa: mt7530: Convert to PHYLINK API
>    This patch converts mt7530 to PHYLINK API.
> 2. dt-bindings: net: dsa: mt7530: Add support for port 5
> 3. net: dsa: mt7530: Add support for port 5
>    These 2 patches adding support for port 5 of the switch.
> =

> v1->v2:
>  * Mostly phylink improvements after review.
> rfc -> v1:
>  * Mostly phylink improvements after review.
>  * Drop phy isolation patches. Adds no value for now.

This definitely needs some review before I'll apply it.

Thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
