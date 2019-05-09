Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8059018C72
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 May 2019 16:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOJQ0T0q6/xAOC9zmpNkOOsdaNcWzzL9gjdl8yeBflQ=; b=F5bPKAnnaxV6hQ
	Gblt5ThRi1+4FBLmF8akdVWOWYamcoKamHYEU7mRQtE2d4Nr+IGzQ4qSl/uWLYVyf9e64ROng4Sh9
	t38LjSHX3d8SkZY1v+v/8SAXqU/U8edYZHkUo/BK5lHfh+6alYhHijzRg+JkIX1vhsCLQn67FNB2c
	tSHm6BdOyl8s5gRkAo704hXZM+MWktCnakj7vgs+ymoWZV2aUSJT1aQEzrUF2pnX2i+4EMYjfjgt8
	zFtT86X3Bq2yKEb6BbxKlrreBGbql0VDKr44mlZGiB5yypBEHtyGy6N5sZBxCBpstjXJxcoll5dGX
	q9qL0+03BBEdq1iexgMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkS1-0000sU-L2; Thu, 09 May 2019 14:55:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkRx-0000T7-5A
 for linux-mediatek@lists.infradead.org; Thu, 09 May 2019 14:55:11 +0000
X-UUID: 56c6654f234a4514a0fc5cb622d7dd4d-20190509
X-UUID: 56c6654f234a4514a0fc5cb622d7dd4d-20190509
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 34504661; Thu, 09 May 2019 06:55:03 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 07:55:01 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 22:54:46 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 9 May 2019 22:54:46 +0800
Message-ID: <1557413686.23445.6.camel@mtkswgap22>
Subject: Re: [PATCH 3/3] hwrng: add mt67xx-rng driver
From: Neal Liu <neal.liu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Date: Thu, 9 May 2019 22:54:46 +0800
In-Reply-To: <20190509052649.xfkgb3qd7rhcgktj@gondor.apana.org.au>
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
 <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
 <12193108.aNnqf5ydOJ@tauon.chronox.de>
 <1557311737.11818.11.camel@mtkswgap22>
 <20190509052649.xfkgb3qd7rhcgktj@gondor.apana.org.au>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: DAF1C2FB982B2A5BC6E4832EA14731AB2E44B177010654C3FE819CDBF77FEEAE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_075509_204416_F3C5133A 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Thu, 2019-05-09 at 13:26 +0800, Herbert Xu wrote:
> On Wed, May 08, 2019 at 06:35:37PM +0800, Neal Liu wrote:
> > Hi Stephan,
> > 	We think the cast is fine, and it cannot guarantee the buf is
> > word-align.
> > 	I reference multiple rng driver's implementation and found it's common
> > usage for this. So it might be general usage for community. Is there any
> > suggestion that is more appropriate?
> 
> If you don't know whether it's unaligned or not then you should
> do an unaligned operation.

Hi Stephan/Herbert,
	My mistake. This buffer is allocated by kmalloc with larger than 32
bytes. So yes, it's word-align for sure.
	reference:
https://elixir.bootlin.com/linux/latest/source/drivers/char/hw_random/core.c#L590

	Thanks
Best Regards,
-Neal Liu



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
