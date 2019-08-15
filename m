Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F448E7C7
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 11:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=psu23WQBO4x7GrVBd7x03EXMCnNVuEvXgvD0QKdVrkc=; b=iHS+hYrtw7mKOP34/DQmouwmm
	LlsJRhxeiv0q2zWS0spP0fFWbl0T9+ABCgUXy3ChK15pff+WIMepGx32FJLfqQC59GDALun3ZpWkX
	AE0cVEXQtCaLRzs5uia9JJc04NVdReBH3a1m7ahXVGVMoJU+Fo/XeRMYkRwAsDi6RcHB5gbLeKI9+
	KmONZVh0+DoQaaHDcdshaIiYtIwLjYudWnL38Qzbi34fbbcJCtGA8anQOwR6NqsQ4krEQvMG2Dygw
	93kVCYnKd0MmsS7e5gQ/s+OC7FZk7XWyiWhfUoJNm9xK+ibo90s/vpE6S6Q0+TgDO7LZrHJsmPghQ
	3CHcDghNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBk8-00079n-Gz; Thu, 15 Aug 2019 09:08:24 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBk2-00079L-WB
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 09:08:21 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 7D43EA153C;
 Thu, 15 Aug 2019 11:08:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id 2PtRDRrQpjUK; Thu, 15 Aug 2019 11:08:07 +0200 (CEST)
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>
References: <20190717125345.Horde.JcDE_nBChPFDDjEgIRfPSl3@www.vdorst.com>
 <a92d7207-80b2-e88d-d869-64c9758ef1da@denx.de>
 <20190814092621.Horde.epvj8zK96-aCiV70YB5Q7II@www.vdorst.com>
 <3ff9a0fc-f5ff-3798-4409-ed5b900e0b05@denx.de>
 <20190814130856.Horde.wzHL8_VRawJ8NIIk--BD18e@www.vdorst.com>
From: Stefan Roese <sr@denx.de>
Message-ID: <9bbc449b-bff2-448a-6b95-cc712c9353b8@denx.de>
Date: Thu, 15 Aug 2019 11:08:05 +0200
MIME-Version: 1.0
In-Reply-To: <20190814130856.Horde.wzHL8_VRawJ8NIIk--BD18e@www.vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_020819_389824_91572CD0 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgUmVuZSwKCk9uIDE0LjA4LjE5IDE1OjA4LCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4gUXVv
dGluZyBTdGVmYW4gUm9lc2UgPHNyQGRlbnguZGU+Ogo+IAo+PiBIaSBSZW5lLAo+Pgo+PiBPbiAx
NC4wOC4xOSAxMToyNiwgUmVuw6kgdmFuIERvcnN0IHdyb3RlOgo+IAo+IDxzbmlwPgo+IAo+Pj4g
R3JlYXQsIFRoYW5rcyBmb3IgYWRkcmVzc2luZyB0aGlzIGlzc3VlLgo+Pj4KPj4+IEkgaG9wZSB3
ZSBjYW4gY29sbGFib3JhdGUgdG8gYWxzbyBzdXBwb3J0IG10NzZ4OCBpbiBteSBQSFlMSU5LCj4+
PiBwYXRjaGVzIFswXVsxXS4KPj4+IEkgYW0gY2xvc2UgdG8gcG9zdGluZyBWMiBvZiB0aGUgcGF0
Y2hlcyBidXQgSSBhbSBjdXJyZW50bHkgd2FpdGluZyBvbiBzb21lCj4+PiBmaWJlciBtb2R1bGVz
IHRvIHRlc3QgdGhlIGNoYW5nZXMgYmV0dGVyLgo+Pgo+PiBJIGRvIGhhdmUgYSAiaGFja2lzaCIg
RFNBIGRyaXZlciBmb3IgdGhlIGludGVncmF0ZWQgc3dpdGNoIChFU1cpIGluIG15Cj4+IHRyZWUu
IElmIHRpbWUgcGVybWl0cywgSSdsbCB3b3JrIG9uIHVwc3RyZWFtaW5nIHRoaXMgb25lIGFzIHdl
bGwuIEFuZAo+PiB5ZXMsIGhvcGVmdWxseSB3ZSBjYW4gY29sbGFib3JhdGUgb24geW91ciBQSFlM
SU5LIHdvcmsgdG9vLgo+IAo+IEl0IGlzIG5vdCBvbmx5IHRoZSBzd2l0Y2ggZHJpdmVyIGJ1dCBh
bHNvIHRoZSBNZWRpYXRlayBldGhlcm5ldCBkcml2ZXIgdGhhdCBpcwo+IGNvbnZlcnRlZCB0byBQ
SFlMSU5LLiBTbyB3ZSBoYXZlIGEgY29uZmxpY3QgaW4gZWFjaCBvdGhlcnMgd29yay4KClllcywg
SSBhbSBhd2FyZSBvZiB0aGlzLgogIAo+IEkgZG9uJ3Qgbm8gd2hhdCB0aGUgcmlnaHQgd2F5IGlz
IHRvIGdvIGJ1dCBJIHdhcyB0aGlua2luZyBhYm91dCAyIG9wdGlvbnMKPiAKPiAxLiBMZXRzIHNh
eSB5b3VyIHdvcmsgZ29lcyBpbiBmaXJzdC4gSSByZWJhc2UgbXkgcGF0Y2hlcyBvbiB5b3VyIGNo
YW5nZXMuCj4gICAgICBXZSBjb2xsYWJvcmF0ZSB0byBjcmVhdGUgYW4gZXh0cmEgUEhZTElOSyBw
YXRjaCBvbnRvcCBvZiBteSB3b3JrCj4gZm9yIHlvdXIgU09DLgo+IDIuIE15IHBhdGNoZXMgZ29l
cyBpbiBmaXJzdCBhbmQgeW91IGFkYXB0IHlvdXIgcGF0Y2hlcyB0byB0aGF0Lgo+IAo+IFdoYXQg
ZG8geW91IHRoaW5rPwoKSXQgcmVhbGx5IGRlcGVuZHMgb24gdGhlIHRpbWluZywgd2hlbiB0aGUg
cGF0Y2hlcyBhcnJpdmUgaW4gdGhlIGtlcm5lbAoobmV0LW5leHQpLiBJZiB5b3VycyBtYWtlcyBp
dCBmaXJzdCwgSSdsbCByZWJhc2UgbXkgcGF0Y2ggb24gdG9wIG9mCnlvdXIgd29yay4gT3RoZXJ3
aXNlIHlvdSB3aWxsIG5lZWQgdG8gcmViYXNlIHlvdXJzLgogIAo+IEkgaGF2ZSBsYXRlc3QgY2hh
bmdlcyBoZXJlIFswXS4KPiAKPiBBbHNvIG15IG1vZHVsZXMgZGlkIGFycml2ZSBzbyBJIGNhbiB0
ZXN0IG15IGNoYW5nZXMuCgpUaGFua3MsClN0ZWZhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4
LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
