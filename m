Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7CF25E
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 11:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRMPZ9NmE/v70waYluFD8XXVpybNzeAculG+x2MEfzM=; b=Xg0S5JKRwjXURO
	nzfCgMltt7XV6A51MKYC/R00rzLAfRl2d7UdaZA3fugdaauSfNhXemk/p0AHFul68NzRqdJzmBZTE
	4tPKsR78QNebWYHIQdSUMuQV+avVwcu+GFvvz7uJyCj1aIrqPi0BWaYeI/fethZWsgT9mF+vrBAKA
	WOfn33P8+4XPJ7eFf/7dry57L1vqY7BpLA56Oslg1LgJ86FNjT4CcmTCbgUNTRITBTWPB5nEP58Sn
	rspF7a69bEn0uqPG/etiJfz32KnCsTsIJ9Eib7rTKs43P42UK9FVBxmOSv0kmVT3ItEvNUjXdt7aD
	LgzthOrq894peFwxS3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLOcF-0004U5-FU; Tue, 30 Apr 2019 08:59:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLOc3-0004Mz-96; Tue, 30 Apr 2019 08:59:48 +0000
X-UUID: 8075d1ff6a644be7874839f19ef3995c-20190430
X-UUID: 8075d1ff6a644be7874839f19ef3995c-20190430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 928871930; Tue, 30 Apr 2019 00:59:27 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 01:59:26 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 30 Apr 2019 16:59:23 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 16:59:23 +0800
Message-ID: <1556614763.24897.34.camel@mhfsdcap03>
Subject: RE: [PATCH 1/2] net-next: stmmac: add support for hash table size
 128/256 in dwmac4
From: biao huang <biao.huang@mediatek.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 30 Apr 2019 16:59:23 +0800
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B46DE20@DE02WEMBXB.internal.synopsys.com>
References: <1556519724-1576-1-git-send-email-biao.huang@mediatek.com>
 <1556519724-1576-2-git-send-email-biao.huang@mediatek.com>
 <78EB27739596EE489E55E81C33FEC33A0B46DE20@DE02WEMBXB.internal.synopsys.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_015946_785579_D47FEA0D 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
Cc: "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-04-29 at 09:00 +0000, Jose Abreu wrote:
> From: Biao Huang <biao.huang@mediatek.com>
> Date: Mon, Apr 29, 2019 at 07:35:23
> 
> > +#define GMAC_HASH_TAB(x)		(0x10 + x * 4)
> 
> You need to guard x here with parenthesis.
> 
> >  	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
> > -	unsigned int value = 0;
> > +	unsigned int value;
> > +	int i;
> > +	int numhashregs = (hw->multicast_filter_bins >> 5);
> > +	int mcbitslog2 = hw->mcast_bits_log2;
> 
> Reverse Christmas tree order here please.
OK.
> 
> Thanks,
> Jose Miguel Abreu



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
