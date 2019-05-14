Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C161E526
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 May 2019 00:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=569G+hP9zE0TNBzJvFJGFptbrQOT5w/EYz1Y4GGSb88=; b=VHVqQK6sQT53ml
	VxKAu8esPjm2z2pUygETxgrcF99aEsliG7rE2Pg/6/KYqfXAKhG/GzKeDO/sRb8XKjkC/h3zibZlt
	bg7pIX/pUs2dI1TG1BhFJ9nE8xSD3rCSv1ftnO6a/gDzR/XIOh3jsvq/LcYu2mX3utbt9uGH6Dsih
	Zil86zRP4DmDIcbQOwxMavHJRRgznikCF3PVpDIjsnKLViw6AIZX/ns+pSirueipx3GsW4/nLO/Ae
	PweNIbEkAwdZPpOoLg+vHktEo1z4uOqLhGzx05g4JkMzEGKKSyATiH1cwrmFivAlEPrM9UC66NFgW
	poi/Biyb9UiFpfU+oQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfqZ-0003Nq-CG; Tue, 14 May 2019 22:24:31 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfqQ-0003BZ-2N; Tue, 14 May 2019 22:24:23 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BED3B14BFF810;
 Tue, 14 May 2019 15:24:13 -0700 (PDT)
Date: Tue, 14 May 2019 15:24:13 -0700 (PDT)
Message-Id: <20190514.152413.759642243023046997.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [v3, PATCH 0/4] fix some bugs in stmmac
From: David Miller <davem@davemloft.net>
In-Reply-To: <1557805046-306-1-git-send-email-biao.huang@mediatek.com>
References: <1557805046-306-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 14 May 2019 15:24:14 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_152422_113877_9B3FF0BC 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.torgue@st.com, jianguo.zhang@mediatek.comi,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, boon.leong.ong@intel.com,
 joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


This series doesn't apply to my 'net' tree, mainly because something like
patch #3 is already in my tree.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
