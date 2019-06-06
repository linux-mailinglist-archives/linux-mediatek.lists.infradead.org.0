Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DD03816E
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Jun 2019 00:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9Bcm79GJLt81MTcRn+m6FnuYe6T6Jh37t0aV/g6udc=; b=AbA83cjFQUmWaY
	gmt2FU/LVaWVr2GzYsiGhZyMDECEFoafB10lQTWWlDFwzovfyf2CfgcTW9PR63qAg7CAh3HYciPza
	DFw6H87YzagP5oEww8tz1oaNGfczwFQMEDLWre9k+VHVG1pU8HEiz/4EkCzsEFkabaSUwR9lfp43y
	BMu8bRubSeC1NJ35LO/QQxd0D108Ce8obQ/tPX74f66gDiRU7qumDK93gX6Blltzc5zpVzXez0OGV
	6bXsXyZvMt1a5G/8CWI/ayyAPCM4f7PSnvvdNlQfErI4NmBx330/NVgQVhBzjm11zWcLOjrJAPYJn
	eWKZVJbESgp7fHpZ773w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1Lp-0004xC-MA; Thu, 06 Jun 2019 22:59:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1Jz-0004UL-Oj; Thu, 06 Jun 2019 22:57:43 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3F3A2089E;
 Thu,  6 Jun 2019 22:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559861842;
 bh=SbcmLhRUMEcKE2G1wyLK7KO1wG+abbZtFt5UzD5yYPM=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=fLZhLm4O0ZRtATNhW6LC8DXAUlbFw6Hdz13pkrUZtvPnELiNLq2VReUt+CngNwlGD
 knziL1f0OQGfjCRdXxjd2806IfTPb5FK3Bqi+Iypc9kJPU2k3iD6SJOu/EVG9uOHqL
 /MBIOc9pI1yZaqRGKB3VCU/QwOE9nbYVyujz1y3E=
MIME-Version: 1.0
In-Reply-To: <20190502121843.14493-2-fparent@baylibre.com>
References: <20190502121843.14493-1-fparent@baylibre.com>
 <20190502121843.14493-2-fparent@baylibre.com>
To: Fabien Parent <fparent@baylibre.com>, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, robh+dt@kernel.org,
 ryder.lee@mediatek.com, sean.wang@mediatek.com, wenzhen.yu@mediatek.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] clk: mediatek: add audsys clock driver for MT8516
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 15:57:21 -0700
Message-Id: <20190606225721.F3F3A2089E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_155728_928848_FEC133CC 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Fabien Parent (2019-05-02 05:18:43)
> Add audsys clock driver for MediaTek MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
