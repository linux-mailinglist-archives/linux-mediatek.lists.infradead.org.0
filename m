Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67331C28B1
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Sep 2019 23:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F4mnwo2TweXLqV50KONXfwOJiBCFWEglm8aUKpt5KdY=; b=nqLIgvzbeoKryTu2qYqGcKx5W
	cw6m1z8nTGsGhFl+SDkg44+pTxq+At9Fs2aRIo4HuNS77u0rlByMRD9ujlBV7u89OheTehoyeoCFc
	KcL8tEsWwyJZLa7AUdTA2mBbvNmOS3mBDf/7+0hdTQ+Xeu8u3M9t4UYCfYCnE6TdqUGVfKUD2hNWn
	zHb/Z+1r4EWpdmd/4cWfEmPMd3ipbXUvSW25vY+fGBMHagocsnV3ofjwVqeH3kS7vv2WsXPP1Lbth
	EztCNsQ/tEuBhfkRJTsZSYh4pnhD07nrWcK7SwGRK7/6tV3VSgNlxmmSeuhLI8J6bOR25Zk+Ms7vx
	aqiLYvxDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF36a-0001Oa-7S; Mon, 30 Sep 2019 21:21:16 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF36O-0001Ej-01; Mon, 30 Sep 2019 21:21:05 +0000
Received: from webmail.gandi.net (webmail21.sd4.0x35.net [10.200.201.21])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay12.mail.gandi.net (Postfix) with ESMTPA id 6FEF2200005;
 Mon, 30 Sep 2019 21:20:50 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 01 Oct 2019 00:20:50 +0300
From: Cengiz Can <cengiz@kernel.wtf>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v2] i2c: i2c-mt65xx: fix NULL ptr dereference
In-Reply-To: <20190930152846.5062-1-fparent@baylibre.com>
References: <20190930152846.5062-1-fparent@baylibre.com>
Message-ID: <aa0487c21e1f9f04402f209358b18c75@kernel.wtf>
X-Sender: cengiz@kernel.wtf
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_142104_187135_1D919459 
X-CRM114-Status: UNSURE (   2.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: drinkcat@chromium.org, qii.wang@mediatek.com, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, hsinyi@chromium.org, matthias.bgg@gmail.com,
 linux-i2c-owner@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2019-09-30 18:28, Fabien Parent wrote:
> Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for 
> mt8183")
> Signed-off-by: Fabien Parent <fparent@baylibre.com>

Reviewed-by: Cengiz Can <cengiz@kernel.wtf>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
