Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C5829325
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 10:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+7iU9dX0oH8TUXtlDtuGtMDcMw9TNdEn1pfuEBnAQc=; b=lhtNziB4Z9tBS1
	DfDg3ZBXMF37cl8/PUib6M69KkTkOI7WZ6MFVcFmSgcxGZo8tk/dXNrVnVFeawruCJ2WXMgTKNMFp
	7aceV4zw2eiNGYXUCZR6r+fbl/+f7bV4V2CQrCB6gGnw80nHP2JP/gSrqfaDKIcdh5u+rDy/VEpZc
	fsmjhDgwMOlFOZD/Hr7rwZ3IVgr3QCv+gzl77cIMIw5FLdzfnZ03e72LD+9RUgQMWTXtA9VJhQrfk
	K/8ZY7XP35tXkqn9BdlDTQH+pT+PL049M6/ygyL805mXOXPgOrnazq+qDE2q0hKZORjxmo5wHz5Td
	izExoJzqRFsRa8P3oKAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5cU-0001ua-QC; Fri, 24 May 2019 08:32:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5cL-0001ne-3I; Fri, 24 May 2019 08:31:58 +0000
X-UUID: 1b216336aaa5489f85aae0f41523fe82-20190524
X-UUID: 1b216336aaa5489f85aae0f41523fe82-20190524
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 742423353; Fri, 24 May 2019 00:31:49 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 01:31:48 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 24 May 2019 16:31:46 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 16:31:44 +0800
Message-ID: <1558686704.24897.45.camel@mhfsdcap03>
Subject: RE: [v2, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
From: biao huang <biao.huang@mediatek.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Fri, 24 May 2019 16:31:44 +0800
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B92CDA0@DE02WEMBXB.internal.synopsys.com>
References: <1557802843-31718-1-git-send-email-biao.huang@mediatek.com>
 <1557802843-31718-2-git-send-email-biao.huang@mediatek.com>
 <1558679617.24897.43.camel@mhfsdcap03>
 <78EB27739596EE489E55E81C33FEC33A0B92CDA0@DE02WEMBXB.internal.synopsys.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_013157_145283_17DBB2A8 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "jianguo.zhang@mediatek.comi" <jianguo.zhang@mediatek.comi>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-05-24 at 08:24 +0000, Jose Abreu wrote:
> From: biao huang <biao.huang@mediatek.com>
> Date: Fri, May 24, 2019 at 07:33:37
> 
> > any comments about this patch?
> 
> Can you please test your series on top of this one [1] and let me know 
> the output of :
> # ethtool -t eth0
"ethtol -T eth0"? This patch only affect hash table filter, seems no
relation to timestamp.
> 
> Just to make sure that this patch does not introduce any regressions. The 
> remaining ones of the series look fine by me!
> 
> [1] 
which one? Did I miss anything here?
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> https://patchwork.ozlabs.org/project/netdev/list/?series=109699
> 
> Thanks,
> Jose Miguel Abreu



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
