Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C366933AB2
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 00:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtmPEsBbhVxWtq5YFTVP/lnNBL1SC42XZBEPcqegbxw=; b=pwLjSHR5MNTf2W
	rb53AiwsUrDPpEAysRfUKHLJti6NBDYr2ajSBWZuLQP0PRGy6Mtw+6Y/iJr3EIgb7ztJu/tf4FZ0n
	KMdktqONON3Fy0SlZOsYR8BRo3UsbzwCt7hCue7PhNVoZ6RRR+dIApCqZymy933Usd+SuvHQetbp+
	xCqeLV7EqhcPEoGh0O1sZc742+zXkIeOag1uzpLvaI7AXBiV+eH+PWJfPdhcV8/axOtJclpFwYXLm
	ZW7UWz+UxOJ8cbzJLfQRzIeJU5kBO9FRoBZk4I9g9iGUcOFZuDBldoVbNSDYawyWmj+yi0VXspyk7
	5lY/PQPtVWe7shStdtJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXv4K-0002Hf-Dq; Mon, 03 Jun 2019 22:04:40 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXv4G-0002GZ-Ku
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 22:04:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 43CE3136E16AB;
 Mon,  3 Jun 2019 15:04:36 -0700 (PDT)
Date: Mon, 03 Jun 2019 15:04:35 -0700 (PDT)
Message-Id: <20190603.150435.519222045740513627.davem@davemloft.net>
To: sean.wang@mediatek.com
Subject: Re: [PATCH net v1 2/2] net: ethernet: mediatek: Use NET_IP_ALIGN
 to judge if HW RX_2BYTE_OFFSET is enabled
From: David Miller <davem@davemloft.net>
In-Reply-To: <1559348187-14941-2-git-send-email-sean.wang@mediatek.com>
References: <1559348187-14941-1-git-send-email-sean.wang@mediatek.com>
 <1559348187-14941-2-git-send-email-sean.wang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 03 Jun 2019 15:04:36 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_150436_682778_DFAD022C 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nbd@openwrt.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, mark-mc.lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: <sean.wang@mediatek.com>
Date: Sat, 1 Jun 2019 08:16:27 +0800

> From: Sean Wang <sean.wang@mediatek.com>
> 
> Should only enable HW RX_2BYTE_OFFSET function in the case NET_IP_ALIGN
> equals to 2.
> 
> Signed-off-by: Mark Lee <mark-mc.lee@mediatek.com>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
