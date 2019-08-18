Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A17919B2
	for <lists+linux-mediatek@lfdr.de>; Sun, 18 Aug 2019 23:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZsF77TP8lJiHNsQrs75li02RScLXWXwIdrJZlol6Xk=; b=GMBQ00524AmdXP
	FMLZFtCtK+qWmAPTCidTeEjtjCHMTrN1NGwC0yZ2yqsdSKtlZh2cIYZBReiaSCw48iumt80mXaMY7
	aK4UjWV7pltbAdkg1TcMxqVGnOoRbMrYCimTld7xalTfBHLiD39oWxPwKmZdMRtyiPpULNnu0mxwb
	YcuvoXCQGlLVz14VPJDI7OQUltULc8tFMH/FRqrxRCYdX9C7GBMPrkWx7uy3GZ6YnO98nukm5vkLz
	exHIM1Lf+jixFqDx/ST9FW65Q6XpHeHYUOniOKrBIdwEPV2jP24xsmH0+OZNrFHz9BU93u+tjrsu6
	wN/MZoT96tenSXbItF2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzSYL-0007b1-IK; Sun, 18 Aug 2019 21:17:29 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzSYI-0007aj-TO
 for linux-mediatek@lists.infradead.org; Sun, 18 Aug 2019 21:17:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 70421145F4F53;
 Sun, 18 Aug 2019 14:17:26 -0700 (PDT)
Date: Sun, 18 Aug 2019 14:17:26 -0700 (PDT)
Message-Id: <20190818.141726.699941540105787008.davem@davemloft.net>
To: sr@denx.de
Subject: Re: [PATCH net-next 4/4 v3] net: ethernet: mediatek: Add MT7628/88
 SoC support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190816132325.28426-4-sr@denx.de>
References: <20190816132325.28426-1-sr@denx.de>
 <20190816132325.28426-4-sr@denx.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 18 Aug 2019 14:17:26 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_141726_945346_A1E2069D 
X-CRM114-Status: UNSURE (   8.18  )
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
Date: Fri, 16 Aug 2019 15:23:25 +0200

> This patch adds support for the MediaTek MT7628/88 SoCs to the common
> MediaTek ethernet driver. Some minor changes are needed for this and
> a bigger change, as the MT7628 does not support QDMA (only PDMA).
> 
> Signed-off-by: Stefan Roese <sr@denx.de>

Applied.

Please submit your patch series properly next time, which means including
a "[PATCH 0/N]" introductory posting which explains what the patch series
is doing, how it is doing it, and why it is doing it that way.

It not only provides a proper organizational object for your patch series,
it also makes less work for me because I can just reply to that single email
when I apply your series instead of having to reply to every single one
in the set.

Thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
