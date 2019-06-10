Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8443AF57
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 09:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujhoe9+91dY25fIwKvKsqUUaThXmq8VU41YKjrWbQVs=; b=Ff85Kf0yIM7yqS
	SXu8fm54Pt3HHkcMqUTKliANahXVfVHKRSzh5qzAPjerYoU06DXtIL/0S0ctoJ3JgFBPfwtRQu323
	w65lfXOdYMA9lN5F3J38eLJQdGfs57eDIIZQ2unMv7+pRBbZJTeyZquCD3N0QN9ev/UytaOcqMEnt
	hEPNeoZ3HLp6AOv5/ZUHOVQfW9zsb2QMW7IdoB0RMCpCL3frexAGj3lozekSi3384wTN/yHAFfm12
	cLFORpxaeb18G1ua4QaEBaP9zXTyBxmAW3MSJe3aYq6U3Rqc69hcj8nnEN1GJbgr5qnG0AQwPC724
	g/vAphb0zQyIJCSgv2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haETi-0005bU-Qs; Mon, 10 Jun 2019 07:12:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haETb-0005ad-VT
 for linux-mediatek@lists.infradead.org; Mon, 10 Jun 2019 07:12:22 +0000
X-UUID: 6343842b8cd0487d8dfd8bebb0a22469-20190609
X-UUID: 6343842b8cd0487d8dfd8bebb0a22469-20190609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1829276433; Sun, 09 Jun 2019 23:12:13 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 00:12:11 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 15:12:09 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 15:12:09 +0800
Message-ID: <1560150729.14203.11.camel@mtkswgap22>
Subject: Re: [PATCH] mt76: mt7615: add support for per-chain signal strength
 reporting
From: Ryder Lee <ryder.lee@mediatek.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Date: Mon, 10 Jun 2019 15:12:09 +0800
In-Reply-To: <64662021-8e5a-91b5-9afb-3c9005564d19@newmedia-net.de>
References: <3912a2863e858f3623ced61737836e42c7b19149.1560071167.git.ryder.lee@mediatek.com>
 <d6cfd2e9-4b2b-36ac-6cae-a34f74204801@newmedia-net.de>
 <1560132590.28258.5.camel@mtkswgap22> <1560140541.5606.12.camel@mtkswgap22>
 <64662021-8e5a-91b5-9afb-3c9005564d19@newmedia-net.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0BD6B986BECE4C40659DF7058A6D7B24417A93659896793BB653FCF3A5D280E92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_001220_022337_F618B730 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: Sean Wang <sean.wang@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-06-10 at 06:47 +0200, Sebastian Gottschall wrote:
> okay. curious is, that my variant works with sane results too.
> i will test your variant and check the results
> 
> Sebastian

Please don't top post as it's hard to track the thread.

More specifically, IBRSSI is obtained from packet's L-STF portion and
MTK HW PD (packet detection) will take it as a reference. (with
variation more or less)

As for RCPI which is calculated from packet's data portion. The other
MTK chipsets may use IBRSSI as their baseband couldn't report RCPI.

Ryder

> Am 10.06.2019 um 06:22 schrieb Ryder Lee:
> > On Mon, 2019-06-10 at 10:09 +0800, Ryder Lee wrote:
> >> On Sun, 2019-06-09 at 16:44 +0200, Sebastian Gottschall wrote:
> >>> according to my findings
> >>>
> >>> MT_RXV4_RCPI1 is part of rx descriptor 4 and not 3
> >>> so it must be rxdg4 = rxd[4] etc.
> >> RXV start from 1 in the code.
> >>
> >> That is: RXV1 <-> rxdg0, RXV2 <-> rxdg1 ...so RXV4 <-> rxdg3
> >>
> >>> however rxdg3 contains MT_RXV3_IB_RSSIRX which can be used for signal calculation.
> >>> i already wrote a similar code for this driver which i sended to felix a long time ago.
> >>> my variant looks like
> >>>                   status->signal = (FIELD_GET(MT_RXV3_IB_RSSIRX, rxdg3) - 220) / 2;
> >>>                   status->chain_signal[0] = (FIELD_GET(MT_RXV4_RCPI0, rxdg4) - 220) / 2;
> >>>                   status->chain_signal[1] = (FIELD_GET(MT_RXV4_RCPI1, rxdg4) - 220) / 2;
> >>>                   status->chain_signal[2] = (FIELD_GET(MT_RXV4_RCPI2, rxdg4) - 220) / 2;
> >>>                   status->chain_signal[3] = (FIELD_GET(MT_RXV4_RCPI3, rxdg4) - 220) / 2;
> > mt7615 actually doesn't use in-band RSSI for signal calculation, but it
> > occurs to me that i should modify the code to compare per-chain's
> > signal. Something like this:
> >
> > 		status->chain_signal[0] = to_rssi(MT_RXV4_RCPI0, rxdg3);
> > 		status->chain_signal[1] = to_rssi(MT_RXV4_RCPI1, rxdg3);
> > 		status->chain_signal[2] = to_rssi(MT_RXV4_RCPI2, rxdg3);
> > 		status->chain_signal[3] = to_rssi(MT_RXV4_RCPI3, rxdg3);
> > 		status->signal = status->chain_signal[0];
> >
> > 		switch (status->chains) {
> > 		case 0xf:
> > 			status->signal = max(status->signal,
> > 					     status->chain_signal[3]);
> > 		case 0x7:
> > 			status->signal = max(status->signal,
> > 					     status->chain_signal[2]);
> > 		case 0x3:
> > 			status->signal = max(status->signal,
> > 					     status->chain_signal[1]);
> > 			break;
> > 		default:
> > 			break;
> > 		}
> >
> >
> > I could send a v2 or you can take care of that.
> >
> > Ryder
> >
> >



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
