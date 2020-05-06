Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD7A1C7BE5
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 23:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R14d0e/HQpc8OHvvB7hpKq0b4ryXMo3diyRQLcbAJUs=; b=NOQpcDeEIzJKb5
	81sbNocNHcFBcGKq7m2A0+1Q2HGKNFsb62vuHund9p+lgSr6JyS6DgsHslBdl92pNrqXvyeSGJarT
	NcUtexUCpW1brkEoamr9WpWtmhXwkOMQaOcbEeVwh/9vFgaNLMDlQgrhrwO0kqbOaESvtorqGXXsm
	aLQGSMGLz3LpU2Dul+HBbH17VsipChlgJf6svbpgLaJt1WItigWCsI8fU4MzazGfpSRjLbGM62FFH
	HxBqKUpu7/YbmyrT6yTE1VjaRyojOmKCdv5OsIi/pMqolvri8WA6kY35kN9zzF1RNKZDFNJC27tOi
	dZFXA4zE1qWYrLKo6ZEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWRCw-0005f9-2S; Wed, 06 May 2020 21:03:58 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWRCi-0005Ws-MN; Wed, 06 May 2020 21:03:45 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1EFDD121135B6;
 Wed,  6 May 2020 14:03:36 -0700 (PDT)
Date: Wed, 06 May 2020 14:03:35 -0700 (PDT)
Message-Id: <20200506.140335.840764188389232904.davem@davemloft.net>
To: zou_wei@huawei.com
Subject: Re: [PATCH -next] net: ethernet: mediatek: Make mtk_m32 static
From: David Miller <davem@davemloft.net>
In-Reply-To: <1588746450-35911-1-git-send-email-zou_wei@huawei.com>
References: <1588746450-35911-1-git-send-email-zou_wei@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 May 2020 14:03:36 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_140344_732053_0BA93CFB 
X-CRM114-Status: UNSURE (   5.82  )
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
Cc: nbd@openwrt.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 john@phrozen.org, matthias.bgg@gmail.com, Mark-MC.Lee@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Samuel Zou <zou_wei@huawei.com>
Date: Wed, 6 May 2020 14:27:30 +0800

> Fix the following sparse warning:
> 
> drivers/net/ethernet/mediatek/mtk_eth_soc.c:68:5: warning:
> symbol 'mtk_m32' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Samuel Zou <zou_wei@huawei.com>

Applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
