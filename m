Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16E81CE5C6
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 22:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grLc0cIqDXa3jajDBa8SJzKTpPXoaOhN8yUddAq4Sn4=; b=rIH2fPF28kiQ/M
	whNEsurfJHenvNdO8r5uu1T1uZ/p7sxCqfb2HbCUa+o+js1QFnfOywBayVcVlZT+VZFli2mHpR1Uo
	iRerFnL9tdu3uMnJIW9elT5ukQRVqsfecBlxKQiO4gzrcl7gXgEIHMT/ql9038i+yRlxwf0bNL5yv
	9SMThqdshO8d1QFpr7I1oqlrPMYEaec3PajV3++xgjQbcTX8g5uijh1fxIDfrIiuK1Sst9jQI+9Ct
	gXxGyndbZCTB8aQ2YJBjnn6j5ut9joGh+C0qJhAFNPboLgoot0EApaOptZSi++sZ3jOE820mHaQ5/
	hviB9rZw/VFjZtchjbzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFEu-0001wn-0d; Mon, 11 May 2020 20:41:28 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFEl-0001pU-Lh; Mon, 11 May 2020 20:41:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0599311F5F667;
 Mon, 11 May 2020 13:41:17 -0700 (PDT)
Date: Mon, 11 May 2020 13:41:17 -0700 (PDT)
Message-Id: <20200511.134117.1336222619714836904.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH v2 05/14] net: core: provide priv_to_netdev()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200511150759.18766-6-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
 <20200511150759.18766-6-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 11 May 2020 13:41:18 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_134119_710187_85F350EA 
X-CRM114-Status: UNSURE (   9.88  )
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
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 stephane.leprovost@mediatek.com, arnd@arndb.de, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 pedro.tsai@mediatek.com, fparent@baylibre.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 11 May 2020 17:07:50 +0200

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Appropriate amount of extra memory for private data is allocated at
> the end of struct net_device. We have a helper - netdev_priv() - that
> returns its address but we don't have the reverse: a function which
> given the address of the private data, returns the address of struct
> net_device.
> 
> This has caused many drivers to store the pointer to net_device in
> the private data structure, which basically means storing the pointer
> to a structure in this very structure.
> 
> This patch proposes to add priv_to_netdev() - a helper which converts
> the address of the private data to the address of the associated
> net_device.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Sorry, please don't do this.  We had this almost two decades ago and
explicitly removed it intentionally.

Store the back pointer in your software state just like everyone else
does.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
