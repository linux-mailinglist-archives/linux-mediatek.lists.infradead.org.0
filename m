Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ABC19885
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 May 2019 08:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLG0zzO8xS/apeWY+fcwwVPp6C9j2195KCi4YQFJcio=; b=DMbwDOZaSjNuLE
	30Y0hpuowNFao5S1LB92m55+DhDz3meGQ6aFFsZkGVzyWi6EuKXkIp6/sL5gea9RCfJNssJq5lSN2
	qU/PuTruMJSuXWlpx59gslvzrOdywocfcgyv4BfVr3YVnMS5xqgzyoijOHdH7a4uo3lBPHUb2Xbu0
	5VN2QVCvJjgBNBRybwYYmwiQBCNDyO+uduW35m4xFU+5xI9v7uLBrVLXItx5daw9DBZo7hbMAQXJf
	GP5gzHqP1MN7M1s1+eifJvpIIx5pYCvxN0r7zCjRfdAQ8ptWvddweMPeuwABkP43hOJhWV6Mfkm6G
	Ij3C/s7uu+ZgqtBp/pZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzCa-0007Yf-2I; Fri, 10 May 2019 06:40:16 +0000
Received: from orcrist.hmeau.com ([5.180.42.13] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzCV-00079s-Vh
 for linux-mediatek@lists.infradead.org; Fri, 10 May 2019 06:40:13 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hOzBj-0001Lo-Ph; Fri, 10 May 2019 14:39:23 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hOzBb-0004u3-V0; Fri, 10 May 2019 14:39:16 +0800
Date: Fri, 10 May 2019 14:39:15 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: [PATCH 3/3] hwrng: add mt67xx-rng driver
Message-ID: <20190510063915.kwqy3e5urs6j7ity@gondor.apana.org.au>
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
 <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
 <12193108.aNnqf5ydOJ@tauon.chronox.de>
 <1557311737.11818.11.camel@mtkswgap22>
 <20190509052649.xfkgb3qd7rhcgktj@gondor.apana.org.au>
 <1557413686.23445.6.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557413686.23445.6.camel@mtkswgap22>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_234012_170353_FCFD63EF 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, May 09, 2019 at 10:54:46PM +0800, Neal Liu wrote:
>
> Hi Stephan/Herbert,
> 	My mistake. This buffer is allocated by kmalloc with larger than 32
> bytes. So yes, it's word-align for sure.
> 	reference:
> https://elixir.bootlin.com/linux/latest/source/drivers/char/hw_random/core.c#L590

Yes you're right.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
