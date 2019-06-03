Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5449C32ED8
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 13:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGF9RTcP3NIvl4q7bNI+Az+Nnm/3Z+3CFHcKMXHe4I0=; b=fLY0g2Uv8M8DlT
	8nGkQut2EaFC59SmUTbqMgYADJHSXULGo7dLUyF8N3Wxf5xeapH5rBiXV7yLNb0CYstm2YYJOSYyt
	3YaK8L7p3FLLq3nfrDG4VLmRNBN3X4QHOCdSZmnTHWr/CsMgCVfUKUyel8Ym8ubPri1gghjmEm3ga
	van4+dK+2PY0V7HNs9lybkWU/aBPbOpin7nSv2MruVEhYqZwaM712gLEdbQCXjO1wcVyJqPvHg61X
	zmSMYIpxmgsJ8u2aB+5XGRId0zvNpuAH2IsxuOeDptwbIPHu7gjJOh3hGC0jjtc0w47lw2c9AEtzH
	39fgjwSjQlhpWaEu8Jnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlKk-0005RX-SC; Mon, 03 Jun 2019 11:40:58 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlKb-0005KJ-IA; Mon, 03 Jun 2019 11:40:50 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 30711C1E73;
 Mon,  3 Jun 2019 11:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559562028; bh=JNgLsT7LPunYfej4pP5aCroqrdhvEaNr8asK8r1HI7Y=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=QnpyQMXRrAFzeVwuPSVQX9syBt+Hb02uRHs7Fs7uKpQolYd8MaUOTYFEKb3Tvkqt9
 ryS1+FR7+e8qYxHQFmZexwW9ROZau/gsFbKRW8YZxLn2JNuZh0RFRNvE3Kww/Cahjm
 /VUoCFFnV/yofaYRK2uhyZ+RJ7lRutTQ9dWPb1YmY7UW8cmdF60WTBv9hcvoxI4Aa1
 tw6oUYRs/E7Xfe8+LHapSeLdJuzhzEiI2BZQ0K/HHKSB/fX0xsfVFNPqGQUdZIPVMS
 dbyLdu/ckJRdYQAGzW7p+A4V8h3eT/bTrRTjx0LBuOmQ6nw2vvbDvdGQ7gKWFrOtEn
 NrO2YR068NpfA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 87BABA0067;
 Mon,  3 Jun 2019 11:40:40 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 3 Jun 2019 04:40:40 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Mon, 3 Jun 2019 13:40:37 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Biao Huang <biao.huang@mediatek.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "andrew@lunn.ch" <andrew@lunn.ch>
Subject: RE: [v2, PATCH 3/4] net: stmmac: modify default value of tx-frames
Thread-Topic: [v2, PATCH 3/4] net: stmmac: modify default value of tx-frames
Thread-Index: AQHVGa/XGYfQ4t70BkaeZd4pZlVHSKaJzoyA
Date: Mon, 3 Jun 2019 11:40:37 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B93B6DF@DE02WEMBXB.internal.synopsys.com>
References: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
 <1559527086-7227-4-git-send-email-biao.huang@mediatek.com>
In-Reply-To: <1559527086-7227-4-git-send-email-biao.huang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_044049_609017_AD0B96B8 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
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

From: Biao Huang <biao.huang@mediatek.com>

> the default value of tx-frames is 25, it's too late when
> passing tstamp to stack, then the ptp4l will fail:
> 
> ptp4l -i eth0 -f gPTP.cfg -m
> ptp4l: selected /dev/ptp0 as PTP clock
> ptp4l: port 1: INITIALIZING to LISTENING on INITIALIZE
> ptp4l: port 0: INITIALIZING to LISTENING on INITIALIZE
> ptp4l: port 1: link up
> ptp4l: timed out while polling for tx timestamp
> ptp4l: increasing tx_timestamp_timeout may correct this issue,
>        but it is likely caused by a driver bug
> ptp4l: port 1: send peer delay response failed
> ptp4l: port 1: LISTENING to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
> 
> ptp4l tests pass when changing the tx-frames from 25 to 1 with
> ethtool -C option.
> It should be fine to set tx-frames default value to 1, so ptp4l will pass
> by default.

I'm not sure if this is the right approach ... What's the timeout value 
you have for TX Timestamp ?

Thanks,
Jose Miguel Abreu

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
