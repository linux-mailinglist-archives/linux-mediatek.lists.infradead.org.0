Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31739C063
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 23:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiIE0z+WkChuQG2mSa5pk/D2nJDIhom9uVAMnzEINhs=; b=s8Btmgp8Y5bbkG
	YCFaodYWnruBYSHrggi3WLGavXe9GbtskC9uJCCEPeVn+b3XNG80SR3CD/2Woq6uCYDprWChl62Nr
	qcKkT66dV4X+mkJ33cMW7rXNoVFOnC7khlXP6a+y+YnQMO2hmvST6Lb9tJIHIPZ1qa+vvScwMocDT
	GgpusBb3OH1Kea6R5BWlg1REzj2RIHflmb3seomN52z17uE6Dej9uUKwjMOV91R26BD+u+lfTKZhD
	CSa2NypZXrJ66tyL/YTn9DmYvnloRwL+jX+U43nggCoHQq+r7blnrdRVqfAbJaWHb0oNsTpHhWqQd
	dAkHzcttDFM7lKvfZe8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1dU3-0002M6-KU; Sat, 24 Aug 2019 21:22:03 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1dTz-0002Lo-E3
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 21:22:00 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9358615252E02;
 Sat, 24 Aug 2019 14:21:58 -0700 (PDT)
Date: Sat, 24 Aug 2019 14:21:58 -0700 (PDT)
Message-Id: <20190824.142158.1506174328495468705.davem@davemloft.net>
To: maowenan@huawei.com
Subject: Re: [PATCH -next] net: mediatek: remove set but not used variable
 'status'
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190822063026.70044-1-maowenan@huawei.com>
References: <20190822063026.70044-1-maowenan@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 24 Aug 2019 14:21:59 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_142159_484473_0BDF8A27 
X-CRM114-Status: UNSURE (   4.14  )
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
Cc: nbd@openwrt.org, nelson.chang@mediatek.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 john@phrozen.org, matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Mao Wenan <maowenan@huawei.com>
Date: Thu, 22 Aug 2019 14:30:26 +0800

> Fixes gcc '-Wunused-but-set-variable' warning:
> drivers/net/ethernet/mediatek/mtk_eth_soc.c: In function mtk_handle_irq:
> drivers/net/ethernet/mediatek/mtk_eth_soc.c:1951:6: warning: variable status set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit 296c9120752b ("net: ethernet: mediatek: Add MT7628/88 SoC support")

This is not a standard commit tag, please use Fixes: or similar.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
