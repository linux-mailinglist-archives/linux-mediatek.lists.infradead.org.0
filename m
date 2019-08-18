Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A773B919AE
	for <lists+linux-mediatek@lfdr.de>; Sun, 18 Aug 2019 23:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3UfEhp9i3EONrO9X5pBYZxKAJS8uoWrXVuicBNJAaw=; b=D3AwNackjBRNmR
	pOdh6K9qjniVyOycgIuNttgYKsjB88T0S3x6T27Yxmq8OPQw9n8TrVLl+57xYcAolOR1POybshhJW
	Ts/x229ZPdOaW26efdiqo7wjXmhHbMv0wsaKsUt7s7pWUpfBLGtvUeRcYRdMaiKk1U1JJQMphAE9f
	03qmZvFuVKLncaSHh7wS1IoM99jwaSVZiSwMTZuN12MJZucViFCPg06rHfaTyifFwDRWq60wKP65k
	MiyJ1eww8u98efnqB8Ayzl6eSzmulXTTrIY3Rg2wJohXKCmhQS58iXwMqGZhsPQRX/pZv3IXMmGeu
	mDQdJ8PGXyJz181ZxYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzSXE-0007VT-Qz; Sun, 18 Aug 2019 21:16:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzSXB-0007UO-28
 for linux-mediatek@lists.infradead.org; Sun, 18 Aug 2019 21:16:18 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AA864145F4F56;
 Sun, 18 Aug 2019 14:16:16 -0700 (PDT)
Date: Sun, 18 Aug 2019 14:16:16 -0700 (PDT)
Message-Id: <20190818.141616.811595483422495537.davem@davemloft.net>
To: sr@denx.de
Subject: Re: [PATCH net-next 3/4 v3] net: ethernet: mediatek: Rename
 NEXT_RX_DESP_IDX to NEXT_DESP_IDX
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190816132325.28426-3-sr@denx.de>
References: <20190816132325.28426-1-sr@denx.de>
 <20190816132325.28426-3-sr@denx.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 18 Aug 2019 14:16:16 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_141617_102378_E7266BE9 
X-CRM114-Status: UNSURE (   5.23  )
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
Cc: netdev@vger.kernel.org, sean.wang@mediatek.com, daniel@makrotopia.org,
 opensource@vdorst.com, linux-mediatek@lists.infradead.org, john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Stefan Roese <sr@denx.de>
Date: Fri, 16 Aug 2019 15:23:24 +0200

> Rename the NEXT_RX_DESP_IDX macro to NEXT_DESP_IDX, so that it better
> can be used for TX ops as well. This will be used in the upcoming
> MT7628/88 support (same functionality for RX and TX in this macro).
> 
> Signed-off-by: Stefan Roese <sr@denx.de>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
