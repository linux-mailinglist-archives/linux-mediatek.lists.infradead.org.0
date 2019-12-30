Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB3012CBA8
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 02:30:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFuB7SEp60CSn4MTiT1uDItIOTIVndJgSeAXm6Umv04=; b=KPcoCJ53r/F/LM
	69lHmnLYVkVu/u/G7EbetD3fInHLeBBXvcBmWI9hFe8MNEt4an16pXOBbcMKoDjr8bQ8JpvoDPIIQ
	TS6ICmpXINlYCtRso8W/UxbC94DtkmjKF+I+gVIiFMjoY3lOILVA/wUgz2XGoVyylE2OTM8A6hmLq
	b82vX/E/InRqgiDcZuVDVVPvbvFhh7XLw/dDnnVsAqeET0JUyzzq+q2MKHAbk3G8okxXGyqqMCQvc
	g1HYMggXeTTDmgKpmVzxlQAxNp5JabShIW5tC5DDJxon4rNCsKGieRwLeihyqf5L4484QQnKkiSIQ
	830GtqEYvBdE9AMBk5Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iljtS-0002ej-Np; Mon, 30 Dec 2019 01:30:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iljtP-0002dd-3s
 for linux-mediatek@lists.infradead.org; Mon, 30 Dec 2019 01:30:49 +0000
X-UUID: 30fe81da94e6432481103c3ccd59531d-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=OpBMs91oE19syjj1K1kvYCtFSWX7sZYdpKP8h4EDQcE=; 
 b=KS+Zr9282cue6aCg40/OGkKy2BiSm9yaeDdRJAmjLatZE5//AaY+t3fuLV0RYls8QEq2ioC2ICGkOfxy7pnD4CEDsnUkQxZtAAMfqyc0vMULBReWDGMOIrYuewGsLLYAi9QQYSrBFHShlbZufpVkMlQO/c01IHTsW6ufwpo74LA=;
X-UUID: 30fe81da94e6432481103c3ccd59531d-20191229
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 640842117; Sun, 29 Dec 2019 17:30:39 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 17:30:52 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 09:30:13 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Dec 2019 09:29:22 +0800
Message-ID: <1577669436.25204.8.camel@mtkswgap22>
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
From: Miles Chen <miles.chen@mediatek.com>
To: Qian Cai <cai@lca.pw>
Date: Mon, 30 Dec 2019 09:30:36 +0800
In-Reply-To: <2EA70B54-A7E1-4C5A-A447-844A3FEA7E93@lca.pw>
References: <1577432670.4248.3.camel@mtkswgap22>
 <2EA70B54-A7E1-4C5A-A447-844A3FEA7E93@lca.pw>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_173047_157518_C2070969 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTEyLTI3IGF0IDA4OjQ2IC0wNTAwLCBRaWFuIENhaSB3cm90ZToNCj4gDQo+
ID4gT24gRGVjIDI3LCAyMDE5LCBhdCAyOjQ0IEFNLCBNaWxlcyBDaGVuIDxtaWxlcy5jaGVuQG1l
ZGlhdGVrLmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gSXQncyBub3QgY29tcGxldGUgc2l0dWF0aW9u
Lg0KPiA+IA0KPiA+IEkndmUgbGlzdGVkIGRpZmZlcmVudCBPT00gcGFuaWMgc2l0dWF0aW9ucyBp
biBwcmV2aW91cyBlbWFpbCBbMV0NCj4gPiBhbmQgd2hhdCB3ZSBjYW4gZG8gYWJvdXQgdGhlbSB3
aXRoIGN1cnJlbnQgaW5mb3JtYXRpb24uDQo+ID4gDQo+ID4gVGhlcmUgYXJlIHNvbWUgY2FzZXMg
d2hpY2ggY2Fubm90IGJlIGNvdmVyZWQgYnkgY3VycmVudCBpbmZvcm1hdGlvbg0KPiA+IGVhc2ls
eS4NCj4gPiBGb3IgZXhhbXBsZTogYSBtZW1vcnkgbGVha2FnZSBjYXVzZWQgYnkgYWxsb2NfcGFn
ZXMoKSBvciB2bWFsbG9jKCkgd2l0aA0KPiA+IGEgbGFyZ2Ugc2l6ZS4NCj4gPiBJIGtlZXAgc2Vl
aW5nIHRoZXNlIGlzc3VlcyBmb3IgeWVhcnMgYW5kIHRoYXQncyB3aHkgSSBidWlsdCB0aGlzIHBh
dGNoLiANCj4gPiBJdCdzIGxpa2UgYSBtaXNzaW5nIHBpZWNlIG9mIHRoZSBwdXp6bGUuDQo+ID4g
DQo+ID4gVG8gcHJvdmUgdGhhdCB0aGUgYXBwcm9hY2ggaXMgcHJhY3RpY2FsIGFuZCB1c2VmdWws
IEkgaGF2ZSBjb2xsZWN0ZWQNCj4gPiByZWFsIHRlc3QgY2FzZXMNCj4gPiB1bmRlciByZWFsIGRl
dmljZXMgYW5kIHBvc3RlZCB0aGUgdGVzdCByZXN1bHQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0K
PiA+IFRoZXNlIGFyZSByZWFsIGNhc2VzLCBub3QgbXkgaW1hZ2luYXRpb24uDQo+IA0KPiBPZiBj
b3Vyc2UgdGhpcyBtYXkgaGVscCBkZWJ1ZyAqeW91ciogcHJvYmxlbXMgaW4gdGhlIHBhc3QsIGJ1
dCBpZiB0aGF0IGlzIHRoZSBvbmx5IHJlcXVpcmVtZW50IHRvIG1lcmdlIHRoZSBkZWJ1Z2dpbmcg
cGF0Y2ggbGlrZSB0aGlzLCB3ZSB3b3VsZCBlbmQgdXAgd2l0aCBlbmRsZXNzIG9mIHRob3NlLiBJ
ZiB5b3VyIGdvYWwgaXMgdG8gc3RvcCBkZXZlbG9wZXJzIGZyb20gcmVwcm9kdWNpbmcgaXNzdWVz
IHVubmVjZXNzYXJpbHkgYWdhaW4gdXNpbmcgcGFnZV9vd25lciB0byBkZWJ1ZywgdGhlbiB5b3Vy
IHBhdGNoIGRvZXMgbm90IGhlbHAgbXVjaCBmb3IgdGhlIG1ham9yaXR5IG9mIG90aGVyIGRldmVs
b3BlcnPigJkgaXNzdWVzLg0KPiANCj4gVGhlIHBhZ2Vfb3duZXIgaXMgZGVzaWduZWQgdG8gZ2l2
ZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdG9wIGNhbmRpZGF0ZXMgdGhhdCBtaWdodCBjYXVzZSBp
c3N1ZXMsIHNvIGl0IG1ha2Ugc29tZXdoYXQgc2Vuc2UgaWYgaXQgZHVtcHMgdGhlIHRvcCAxMCBn
cmVhdGVzdCBtZW1vcnkgY29uc3VtZXIgZm9yIGV4YW1wbGUsIGJ1dCB0aGF0IGFsc28gY2x1dHRl
ciB0aGUgT09NIHJlcG9ydCBzbyBtdWNoLCBzbyBpdCBpcyBuby1nby4NCg0KWWVzLCBwcmludGlu
ZyB0b3AgMTAgd2lsbCBiZSB0b28gbXVjaC4gVGhhdCdzIHdoeSBJIHByaW50IG9ubHkgdGhlDQpn
cmVhdGVzdCBjb25zdW1lciwgYW5kIHRlc3QgaWYgdGhpcyBhcHByb2FjaCB3b3Jrcy4NCg0KSSB3
aWxsIHJlc2VuZCB0aGlzIHBhdGNoIGFmdGVyIHRoZSBicmVhay4gTGV0J3Mgd2FpdCBmb3Igb3Ro
ZXJzJw0KY29tbWVudHM/DQoNCg0KICAgTWlsZXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
