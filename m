Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131593ADDB
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 06:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KZmwfjfwFSPKZsmlxc8rWJVsFpMSjPG58JtbxVjC+Y=; b=d46k4dwPdGiRng
	rq1Mf08NESmX/3pDI938UadWwgxi0y4PusUiJMgVoFVKcsOXj8xiWwYYu6S0/2V5gUrITT3zx9oZ3
	9Uh6ukkwWQdBExG9zu8VSZ/i7WYOuFmhvffm0q+0sPI7pUi5C35oNuzpkgEJSxspAe9d5wZ8bzlPQ
	vQG6gRhIUdi623BJsGgZFgAPiiLntqWeCKwtUo/tcriUAqbf6z6zYKYXnJsXF76ScRu90+UyYmdKa
	JTcFFRnZ1ovN4QZDx43mJaSTiqx6OXCLD0g/vr3DH7ZZWbLyroGyrizlUjHratb2j9IY1aMad/eKU
	4i6w/wt8/RLw1bHf/U4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haBpN-0002ls-GC; Mon, 10 Jun 2019 04:22:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haBpK-0002lP-7J
 for linux-mediatek@lists.infradead.org; Mon, 10 Jun 2019 04:22:35 +0000
X-UUID: 8a0a51081c8e476fa2ec57cdb282069a-20190609
X-UUID: 8a0a51081c8e476fa2ec57cdb282069a-20190609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1713853277; Sun, 09 Jun 2019 20:22:30 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 21:22:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 12:22:21 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 12:22:21 +0800
Message-ID: <1560140541.5606.12.camel@mtkswgap22>
Subject: Re: [PATCH] mt76: mt7615: add support for per-chain signal strength
 reporting
From: Ryder Lee <ryder.lee@mediatek.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Date: Mon, 10 Jun 2019 12:22:21 +0800
In-Reply-To: <1560132590.28258.5.camel@mtkswgap22>
References: <3912a2863e858f3623ced61737836e42c7b19149.1560071167.git.ryder.lee@mediatek.com>
 <d6cfd2e9-4b2b-36ac-6cae-a34f74204801@newmedia-net.de>
 <1560132590.28258.5.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_212234_269731_BC6F47CE 
X-CRM114-Status: GOOD (  11.74  )
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

On Mon, 2019-06-10 at 10:09 +0800, Ryder Lee wrote:
> On Sun, 2019-06-09 at 16:44 +0200, Sebastian Gottschall wrote:
> > according to my findings
> > 
> > MT_RXV4_RCPI1 is part of rx descriptor 4 and not 3
> > so it must be rxdg4 = rxd[4] etc.
> 
> RXV start from 1 in the code.
> 
> That is: RXV1 <-> rxdg0, RXV2 <-> rxdg1 ...so RXV4 <-> rxdg3
> 
> > however rxdg3 contains MT_RXV3_IB_RSSIRX which can be used for signal calculation.
> > i already wrote a similar code for this driver which i sended to felix a long time ago.
> > my variant looks like
> >                  status->signal = (FIELD_GET(MT_RXV3_IB_RSSIRX, rxdg3) - 220) / 2;
> >                  status->chain_signal[0] = (FIELD_GET(MT_RXV4_RCPI0, rxdg4) - 220) / 2;
> >                  status->chain_signal[1] = (FIELD_GET(MT_RXV4_RCPI1, rxdg4) - 220) / 2;
> >                  status->chain_signal[2] = (FIELD_GET(MT_RXV4_RCPI2, rxdg4) - 220) / 2;
> >                  status->chain_signal[3] = (FIELD_GET(MT_RXV4_RCPI3, rxdg4) - 220) / 2;

mt7615 actually doesn't use in-band RSSI for signal calculation, but it
occurs to me that i should modify the code to compare per-chain's
signal. Something like this:

		status->chain_signal[0] = to_rssi(MT_RXV4_RCPI0, rxdg3);
		status->chain_signal[1] = to_rssi(MT_RXV4_RCPI1, rxdg3);
		status->chain_signal[2] = to_rssi(MT_RXV4_RCPI2, rxdg3);
		status->chain_signal[3] = to_rssi(MT_RXV4_RCPI3, rxdg3);
		status->signal = status->chain_signal[0];

		switch (status->chains) {
		case 0xf:
			status->signal = max(status->signal,
					     status->chain_signal[3]);
		case 0x7:
			status->signal = max(status->signal,
					     status->chain_signal[2]);
		case 0x3:
			status->signal = max(status->signal,
					     status->chain_signal[1]);
			break;
		default:
			break;
		}


I could send a v2 or you can take care of that.

Ryder


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
