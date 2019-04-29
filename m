Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46B8E62D
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 17:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEyg2B9Umy3yPAp8moQAt8Q27DXRNSH9rvu119pCcQs=; b=Bu2rfwgHMAIAwj
	nGTg2dILdHHMMcSrH1h7Ju6ue8Oed8EHq9Lo4oNOBB/DnzGuAnZuzgIAn/1TMiwxZrWfwGTSnmsp5
	6HCxsw+Yx0eRtUj93BDe39I+hfAUHScqBxr3rLA5KelBszpvvvAnFPdALYW16qclaiCF7Lh+QI7md
	mTfg1VRzk4RL6bLmExbXVjm+uny3oMC8qbHtfRxuFs8m1p5b19iHXpWnNZfjj5I5f0tiAndFzABve
	eYF3MOuSF4aXmX/M5IwM8Qd13lMzY0OhjIYdWBL0Ho92NQSdq/JoyMimpHQtXrJuARa/s10Hc5Cgz
	/ljVFv42CPt/6HKPTH3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL882-0004mV-Hi; Mon, 29 Apr 2019 15:23:38 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL87u-0004gE-76; Mon, 29 Apr 2019 15:23:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 08:23:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="153294606"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Apr 2019 08:23:26 -0700
Received: from pgsmsx114.gar.corp.intel.com ([169.254.4.194]) by
 PGSMSX101.gar.corp.intel.com ([169.254.1.108]) with mapi id 14.03.0415.000;
 Mon, 29 Apr 2019 23:23:25 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>, Biao Huang
 <biao.huang@mediatek.com>, "davem@davemloft.net" <davem@davemloft.net>,
 Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
Thread-Topic: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
Thread-Index: AQHU/lXS6cVDj4S/ZU28LSGbOEZpuqZTPxvA//977gCAAIaNAA==
Date: Mon, 29 Apr 2019 15:23:24 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B75C0C2849@pgsmsx114.gar.corp.intel.com>
References: <1556519724-1576-1-git-send-email-biao.huang@mediatek.com>
 <1556519724-1576-3-git-send-email-biao.huang@mediatek.com>
 <AF233D1473C1364ABD51D28909A1B1B75C0C27ED@pgsmsx114.gar.corp.intel.com>
 <78EB27739596EE489E55E81C33FEC33A0B46E5B4@DE02WEMBXB.internal.synopsys.com>
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B46E5B4@DE02WEMBXB.internal.synopsys.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjdlMGE1ZTktYmNlZi00ZWQzLWJlZTItMzJmM2UyNzZmMThhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRGdwcHcwUGZCeDlYdXpYdzMwTytyQnZKNGp5ZmlLYmdWdjlzQ1JKZU9KWmU4cU95SnZwOUVqYUxSS1BnXC9xRDYifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_082330_265654_6D8B96B0 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: "Kweh, Hock Leong" <hock.leong.kweh@intel.com>,
 "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, "Voon,
 Weifeng" <weifeng.voon@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

>> What is the preference of the driver maintainer here?
>
>Your implementation doesn't need the mdelay() so I think we should follow
>your way once you also address the review comments from Andrew and me.
>
>Maybe you can coordinate with Biao and submit a C45 implementation that
>can be tested by both ?

Ok. We will address the review comments for that patch-series and resend the
v3 patch-series soonest and for Biao to test. 
 
Thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
