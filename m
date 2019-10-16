Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCDDD9BD1
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 22:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QaT5zwDTMGi2Kz4cwKUMJtoqnfeXbtZUDBDIffR33A=; b=Fn8pbyToOACSkS
	cjodKeI4L6PC7tZkQ21bUjzjmzV7hhicqmheA2CYmPiOufS833P4nttvXAOTCHzcSRwUnGkENqidc
	iP6iRA8lfF/sOaxzNBBxyHKwVitURSsivKUzNezF+9FE478hk0bKbfgzq0erQIg0hBCQwmMQZ+dTi
	c/L10VAEh9HPgv4czxF8USQKR39WtPYUy6W6eBtK0PgAAnTsmIbSizhxkEQFUTK/QkGnABTsDCxEH
	U0YcwjMC03vAEZJmKppinDeyHoQQb08nh1otjnJwUe+Wzk9NGv4lT+rl6Su4s83lPkmTsQbuuvFGe
	nNprXU1X1/ivhgRo+npw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKptu-00089J-VX; Wed, 16 Oct 2019 20:28:07 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKptM-0007eI-R1; Wed, 16 Oct 2019 20:27:34 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9FD3614398687;
 Wed, 16 Oct 2019 13:27:26 -0700 (PDT)
Date: Wed, 16 Oct 2019 13:27:26 -0700 (PDT)
Message-Id: <20191016.132726.112898872232866476.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [v2, PATCH] net: stmmac: disable/enable ptp_ref_clk in
 suspend/resume flow
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191015032444.15145-2-biao.huang@mediatek.com>
References: <20191015032444.15145-1-biao.huang@mediatek.com>
 <20191015032444.15145-2-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 16 Oct 2019 13:27:27 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_132732_900079_FFAF1C76 
X-CRM114-Status: UNSURE (   4.69  )
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com, jakub.kicinski@netronome.com,
 alexandre.torgue@st.com, boon.leong.ong@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 linux-mediatek@lists.infradead.org, mcoquelin.stm32@gmail.com,
 matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Tue, 15 Oct 2019 11:24:44 +0800

> disable ptp_ref_clk in suspend flow, and enable it in resume flow.
> 
> Fixes: f573c0b9c4e0 ("stmmac: move stmmac_clk, pclk, clk_ptp_ref and stmmac_rst to platform structure")
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>

Applied and queued up for -stable.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
