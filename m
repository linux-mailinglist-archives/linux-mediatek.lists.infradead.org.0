Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D564D21628
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 May 2019 11:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUyRvEp7Fd8yieMspSm9oLQxkeztJ/JsdTSSm3d5v60=; b=GwtmP6s8kSw2JC
	afWIBDwyzTAQYOCpShqXeL82pHFt6y3dgBsfPkkaiEZHZpw2w+F0Vc+FkdSVPaLJ/oIAUTSRseprm
	+kTRBSzKJXCja24jC4mHsbBmYh2y86YvrHa1/rSH0eSOTreVkUBI9TdCeeTJ8z5m8Hqd475cK6R/8
	QnvA6Re/sGxL4Avuy5HjKA5WeDcyxccpIo3ypRPIobIAOuxq+ZO+2yBs31yi8XW4sFatYH9xwZxj7
	F7g55CN0EB6UhieR4Vhk/c5NOYo6k7GbDvbssUZ1VtoxRcMrNHJpy0aQvzVhpTFM9KM34FQ6y2WEy
	lacIbBvkPEQjMtIjVf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZ3f-0007UW-6n; Fri, 17 May 2019 09:21:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZ3V-0007Lh-IL; Fri, 17 May 2019 09:21:34 +0000
X-UUID: 44571fe1f5e0477f9175a59ffdaa130c-20190517
X-UUID: 44571fe1f5e0477f9175a59ffdaa130c-20190517
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 937721415; Fri, 17 May 2019 01:21:27 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 May 2019 02:21:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs03n1.mediatek.inc
 (172.21.101.181) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 17 May 2019 17:21:24 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 17 May 2019 17:21:22 +0800
Message-ID: <1558084882.26455.106.camel@mhfsdcap03>
Subject: Re: [PATCH v3 0/4] MTK NAND driver improvements and fixes
From: xiaolei li <xiaolei.li@mediatek.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Fri, 17 May 2019 17:21:22 +0800
In-Reply-To: <20190517101226.17b23550@xps13>
References: <20190507102541.34341-1-xiaolei.li@mediatek.com>
 <1558056767.26455.98.camel@mhfsdcap03> <20190517101226.17b23550@xps13>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_022133_613215_FD307B15 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA1LTE3IGF0IDEwOjEyICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+
IEhpIHhpYW9sZWksCj4gCj4geGlhb2xlaSBsaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+IHdy
b3RlIG9uIEZyaSwgMTcgTWF5IDIwMTkgMDk6MzI6NDcKPiArMDgwMDoKPiAKPiA+IEhpIE1pcXVl
bCwKPiA+IAo+ID4gU29ycnkgdG8gYm90aGVyIHlvdSwgYnV0IG1heSBJIGFzayBpZiBpdCBpcyBm
aW5lIHRvIGFjY2VwdCB0aGlzIHBhdGNoCj4gPiBzZXQgbm93LCBwYXRjaGVzIGFsbCB3aXRoIHlv
dXIgcmV2aWV3Lgo+IAo+IFdlIGFyZSBpbiB0aGUgbWlkZGxlIG9mIHRoZSBtZXJnZSB3aW5kb3cs
IHNvIHllcywgSSB3aWxsIHRha2UgeW91cgo+IHBhdGNoZXMsIGJ1dCBub3Qgbm93LgoKR290IGl0
LiBUaGFua3MgTWlxdWVsLgoKPiAKPiBUaGFua3MsCj4gTWlxdcOobAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5n
IGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
