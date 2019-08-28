Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4EA0AEB
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 21:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkk/0/mFOztouofb3M4cfFFgvGYYfPsgqN7FR6snbqc=; b=tfdvdGTuhKbouS
	8Yqu6kD7WWQ/l0YOLBCVb5m5sznbYFeD7xVSUQVFJ6o6bEOfwb022zcmbstwIbZpFaoo6jj2j1tIo
	yFe2PVXCyyoMevKuMQWerUKD0I9qSn9zvx3wuFzgsuqipKPQSdB4zry8iyMs1cmKOW/ybi6hj1eXZ
	1gDdplEcBBU/tH3Z6PTom9jBrE8m7rBLfhKZFFWMK70jhpcMk6MRlRZPMDkun+kI9gNiUW1nF9Sj7
	UfHNuDO8rs2x9lFSy0sDrSAuJRiqiTW7CCwf0ntv7Wz95dkSNvD6WccoxJr/56Swbme4Mlt9WzVLE
	pA4s8MHIV0n5/y8/gCRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i344G-0007mu-Ir; Wed, 28 Aug 2019 19:57:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3442-0007eT-4o; Wed, 28 Aug 2019 19:57:07 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 60DD315341640;
 Wed, 28 Aug 2019 12:56:59 -0700 (PDT)
Date: Wed, 28 Aug 2019 12:56:58 -0700 (PDT)
Message-Id: <20190828.125658.1743313522645522716.davem@davemloft.net>
To: matthias.bgg@gmail.com
Subject: Re: [PATCH net-next v4 3/3] dt-bindings: net: ethernet: Update
 mt7622 docs and dts to reflect the new phylink API
From: David Miller <davem@davemloft.net>
In-Reply-To: <e45565b1-bb63-66af-16f6-5c7c1094dd67@gmail.com>
References: <20190825174341.20750-1-opensource@vdorst.com>
 <20190825174341.20750-4-opensource@vdorst.com>
 <e45565b1-bb63-66af-16f6-5c7c1094dd67@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 28 Aug 2019 12:56:59 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_125706_189734_FD9347F2 
X-CRM114-Status: UNSURE (   5.92  )
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
 opensource@vdorst.com, linux-mediatek@lists.infradead.org, john@phrozen.org,
 sr@denx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 28 Aug 2019 11:29:45 +0200

> Thanks for taking this patch. For the next time, please make sure that dts[i]
> patches are independent from the binding description, as dts[i] should go
> through my tree. No problem for this round, just saying for the future.

That's not always possible nor reasonable, to be quite honest.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
