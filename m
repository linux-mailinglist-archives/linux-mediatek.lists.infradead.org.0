Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DAC184D5
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 May 2019 07:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Mmwo/by+YHREL7c2l5ZUOXtUylQenLab+sCAyJfN3s=; b=Vlon0LzIhhZ1aq
	1h2l1lE8ieBqSg9ATlf2ZfAcWznmaTKPF6i0RFrixNAumy+67LFL55w+RGixp+NeshFujqRDjfg6L
	LglTAI+3I4RCueZhU5y3A7U85smcdgOHiBUjsOMT5Xj5jQ3dwdNnxQ+yN89AwMbbvbP+TQXeSylVV
	UGpv72opZR93Mjf9cX11sVauPIZRw+IfqvbZYTRNKQSSJr8LMH6JYfFx/LFfUmadPNUiAtv8R9ciJ
	5l4wzd7vOmqjt6mVIXx6hBd52TKmpjtGDbeqW4mABXhK88a908fYHcJENwiIwkTVVohIOrymU8mXV
	fCiVh0M0+6bA7z1i1FSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hObaZ-0002bD-Tm; Thu, 09 May 2019 05:27:27 +0000
Received: from [5.180.42.13] (helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hObaV-0002ak-PR
 for linux-mediatek@lists.infradead.org; Thu, 09 May 2019 05:27:25 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hOba7-0001EH-AS; Thu, 09 May 2019 13:26:59 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hObZx-0001bA-St; Thu, 09 May 2019 13:26:49 +0800
Date: Thu, 9 May 2019 13:26:49 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: [PATCH 3/3] hwrng: add mt67xx-rng driver
Message-ID: <20190509052649.xfkgb3qd7rhcgktj@gondor.apana.org.au>
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
 <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
 <12193108.aNnqf5ydOJ@tauon.chronox.de>
 <1557311737.11818.11.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557311737.11818.11.camel@mtkswgap22>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_222724_007811_915933D1 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Stephan Mueller <smueller@chronox.de>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 linux-crypto@vger.kernel.org, mpm@selenic.com, matthias.bgg@gmail.com,
 Crystal.Guo@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 06:35:37PM +0800, Neal Liu wrote:
> Hi Stephan,
> 	We think the cast is fine, and it cannot guarantee the buf is
> word-align.
> 	I reference multiple rng driver's implementation and found it's common
> usage for this. So it might be general usage for community. Is there any
> suggestion that is more appropriate?

If you don't know whether it's unaligned or not then you should
do an unaligned operation.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
