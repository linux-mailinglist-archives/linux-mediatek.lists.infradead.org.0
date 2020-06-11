Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDE91F6E51
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jun 2020 21:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3Gs2A0H6R79LOxI7q3/1yFS7YgkbO1L/GNtshyC2HA=; b=JpHAwPPZC2wkUQ
	Oz78oRw3ZuwVSuIq/2fHG39QhsGCT4uRyRE84Ch6PPRzqSKGdWLZfAZAvCqD5DFIwGwc4oihXMTG0
	HnuVRl2Suow7Rjva/7mscJRDkwyViTDwSzxXzJNVTLJnFYFT0Y1Yy3hYqQglB1t9XxMDQGnWBPfeA
	Vbn4UZelq5O4WWI5EYEMXExDGnNK8tK18vHTeb1kHBsTnG3nvwaqbg5dyoXZhLJUaUleGeQE4B8mN
	Vp3LG79OwsIvOZMxlfLOc/DeDEbWgOlgsQi01ebAKPrks+ab8oQniuoEDA0+KBUknA8NfTPYp/20A
	/i+rM1rifV1fpIefDZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjTFB-0001el-Qn; Thu, 11 Jun 2020 19:52:09 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjTEs-0001Sl-1R; Thu, 11 Jun 2020 19:51:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 361CB12866F22;
 Thu, 11 Jun 2020 12:51:41 -0700 (PDT)
Date: Thu, 11 Jun 2020 12:51:40 -0700 (PDT)
Message-Id: <20200611.125140.717118972991857444.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH] net: ethernet: mtk-star-emac: simplify interrupt handling
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200611140139.17702-1-brgl@bgdev.pl>
References: <20200611140139.17702-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 11 Jun 2020 12:51:41 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_125150_083428_598D77DE 
X-CRM114-Status: UNSURE (   5.15  )
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
Cc: stephane.leprovost@mediatek.com, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 fparent@baylibre.com, pedro.tsai@mediatek.com,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 11 Jun 2020 16:01:39 +0200

> Unfortunately after thorough testing of current mainline, we noticed the
> driver has become unstable under heavy load. While this is hard to
> reproduce, it's quite consistent in the driver's current form.

Maybe you should work to pinpoint the actual problem before pushing forward
a solution?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
