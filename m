Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8857313E11
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 May 2019 09:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJIZYicDaJwywObzt+c6x8LzXMe9J/Zyt4oeO3adnKk=; b=hUmA4vW70Ra7CV
	ixb2JgT5b9+esyHc/3bNL0gTsR7kAkYh1oVjYWoGS1kCXAGiZzgp28VUWyPY/M4r2Uq6UMIeljjff
	JWJaRj7211u/ARjkOagW7+wqR0nKmDC4s650zz1GS5thHGBKKvkNCCztsZvNdOlg84GpPY7KCBVuC
	gg4HceG0gGbuI4/WzjQ5XV0+Gbgs5bv3LjX7x7WsHRNqQ0gaHzzFVcLdQCFPOZ8KpF360XS//UcrD
	jp3fB8aKEltm+F963YXj39pt3zpPcMPvqXqh/paKtgOk+9jJrtDwf6uu2s/WamBo+CgcGfOjOaNM1
	CJ3DdgyO7zfTyogpDq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBGz-0004fI-1z; Sun, 05 May 2019 07:09:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBGl-0004WB-EH; Sun, 05 May 2019 07:09:08 +0000
X-UUID: 408b455e3c044c07bf42eeef8f4a4151-20190504
X-UUID: 408b455e3c044c07bf42eeef8f4a4151-20190504
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 391945471; Sat, 04 May 2019 23:09:01 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 May 2019 00:09:00 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs03n1.mediatek.inc
 (172.21.101.181) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 5 May 2019 15:08:58 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 May 2019 15:08:57 +0800
Message-ID: <1557040137.26455.60.camel@mhfsdcap03>
Subject: Re: [PATCH v2 0/5] MTK NAND driver improvements and fixes
From: xiaolei li <xiaolei.li@mediatek.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Sun, 5 May 2019 15:08:57 +0800
In-Reply-To: <20190430140833.08039a9f@xps13>
References: <20190430100250.28083-1-xiaolei.li@mediatek.com>
 <20190430140833.08039a9f@xps13>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_000907_486215_CE99BDF0 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKT24gVHVlLCAyMDE5LTA0LTMwIGF0IDE0OjA4ICswMjAwLCBNaXF1ZWwgUmF5
bmFsIHdyb3RlOgo+IEhpIFhpYW9sZWksCj4gCj4gWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRp
YXRlay5jb20+IHdyb3RlIG9uIFR1ZSwgMzAgQXByIDIwMTkgMTg6MDI6NDUKPiArMDgwMDoKPiAK
PiA+IFRoZSBmb2xsb3dpbmcgcGF0Y2ggc2V0IG1haW5seSBjb250YWluczoKPiA+ICogRml4IGxv
dyBsZXZlbCB0aW1lIGNhbGN1bGF0aW9uIG9mIHJlYWQvd3JpdGUgY3ljbGUgdG8gbWVldCB0UkNf
bWluCj4gPiAgIGFuZCB0V0NfbWluIHJlcXVpcmVtZW50cy4KPiA+ICogUmVmaW5lIFJFIyBwdWxz
ZSB3aWR0aCBjYWxjdWxhdGlvbiBhbmQgZGF0YSBzYW1wbGluZyB0byBpbXByb3ZlIHJlYWQKPiA+
ICAgcGVyZm9ybWFuY2UuCj4gPiAqIEFkZCBDUyB2YWxpZGl0eSBjaGVjay4KPiA+ICogRml4IG9v
YiBidWZmZXIgcG9pbnRlciB3cm9uZ2x5IHNldHRpbmcgYW5kIGVtcHR5IHBhZ2UgdGhyZXNob2xk
IHNldHRpbmcuCj4gPiAKPiA+IENoYW5nZXMgb24gdjIgcmVsYXRpdmUgdG86Cj4gPiAtLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ID4gCj4gPiB0cmVlICAgIDogZ2l0Oi8vZ2l0LmluZnJhZGVhZC5vcmcv
bGludXgtbXRkLmdpdAo+ID4gYnJhbmNoICA6IG1hc3Rlcgo+IAo+IFdlIGp1c3Qgc3dpdGNoZWQg
dG8gYSByZXBvc2l0b3J5IGhvc3RlZCBvbiBrZXJuZWwub3JnOgo+IGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L210ZC9saW51eC5naXQvCj4gbmFuZC9uZXh0
IGlzIHRoZSBicmFuY2ggZm9yIHRoaXMga2luZCBvZiBzZXJpZXMuCk9LLiBHb29kLgpUaGFua3Mg
Zm9yIHlvdXIgc2hhcmluZy4KPiAKPiBUaGFua3MsCj4gTWlxdcOobAoKVGhhbmtzLApYaWFvbGVp
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0
ZWsK
