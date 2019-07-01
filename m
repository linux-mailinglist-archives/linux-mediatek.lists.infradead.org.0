Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89FD5BC07
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 14:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kV+u1EEcF+wKyDxTBvzSRZpdS7jqAMCp1EUKMstuyZk=; b=thwlWBdhNtu4p4RYun0ZHu7kz
	GwFoONFu4AR9CvDGWo8R98UJsdBxh7hpYPYqrk56hb2ctUn0Rs6zKCPo2+Tkr6PSA+1fuzMRocCG0
	lAkq00C2Un2aIc8YKE0DMJ1pXk3GQ1aoQlofUh0PqZEBU4lzOAARMZCocqy437Eo6z55aCany4rrZ
	r4hyITxYLkd6PjjsqlUsUPaE6oGXxzGl7srF1m+8QjigzkRbRCneb7yNC2UC7K9nXOFX9Q6LecmhU
	XT0yiIwK8Ju9ynthGXZR03CuEZtKDCOx9EPB9tMSAbHDMY/pC6h2iX8hW3wxJBGJwOz6I9sIJ//Sv
	T6edAca5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvg1-0006VP-Pm; Mon, 01 Jul 2019 12:44:57 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvfx-0006TH-J5
 for linux-mediatek@lists.infradead.org; Mon, 01 Jul 2019 12:44:55 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id D5BDF5FBBA;
 Mon,  1 Jul 2019 14:44:47 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="s0QcYMee"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 987321CEAE35;
 Mon,  1 Jul 2019 14:44:47 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 987321CEAE35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561985087;
 bh=HD07xirr5v6niPTGZlUhmDwV64b2Isb4hPBudEVnkxk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s0QcYMee9v616AwnQE7o/KyMHJxWrvg97rhqGBYBzqm7tI0neQIrXhvAbSBmhKD0+
 /juQUY3TY4xroXrrElNvz1V++cvQ9wtf5nM5LuobL7BkndHbv22WzCweGQqJsDDnTg
 87kZhwVKbdlzjOoza5+aDtYM8sMc3hljar5K7IK+h/VoQR/8VLA0qF5Y57clNp4C5S
 plDuc8y69EsLzYbknY1SYBI1wncJ+k1DJr7POylVHUzUE8yGeksp2qPsebQTWRJi7K
 ZuVu6tF653OM8/MM1J4JjnR9RkkGyelUFVjAy5w370fGK5xhltvIZCKNLgi+nq9057
 3mrWYN1W7NaFw==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 01 Jul 2019 12:44:47 +0000
Date: Mon, 01 Jul 2019 12:44:47 +0000
Message-ID: <20190701124447.Horde.RNUh-fSQf6XMauvPaGIYpKj@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Subject: Re: [PATCH] net: ethernet: mediatek: Fix overlapping capability bits.
References: <20190629122419.19026-1-opensource@vdorst.com>
 <CA+FuTSdr8HCRJTE8pEVxsga3N-xx-fEAxzKAAyPFWH6doVRHbQ@mail.gmail.com>
In-Reply-To: <CA+FuTSdr8HCRJTE8pEVxsga3N-xx-fEAxzKAAyPFWH6doVRHbQ@mail.gmail.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_054454_054745_C6DD256B 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 Network Development <netdev@vger.kernel.org>, sean.wang@mediatek.com,
 linux@armlinux.org.uk, vivien.didelot@gmail.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, David Miller <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxsZW1kZWJydWlqbi5rZXJuZWxAZ21haWwuY29t
PjoKCj4gT24gU2F0LCBKdW4gMjksIDIwMTkgYXQgODoyNCBBTSBSZW7DqSB2YW4gRG9yc3QgPG9w
ZW5zb3VyY2VAdmRvcnN0LmNvbT4gd3JvdGU6Cj4+Cj4+IEJvdGggTVRLX1RSR01JSV9NVDc2MjFf
Q0xLIGFuZCBNVEtfUEFUSF9CSVQgYXJlIGRlZmluZWQgYXMgYml0IDEwLgo+Pgo+PiBUaGlzIGNh
dXNlcyBpc3N1ZXMgb24gbm9uLU1UNzYyMSBkZXZpY2VzIHdoaWNoIGhhcyB0aGUKPj4gTVRLX1BB
VEhfQklUKE1US19FVEhfUEFUSF9HTUFDMV9SR01JSSkgY2FwYWJpbGl0eSBzZXQuCj4+IFRoZSB3
cm9uZyBUUkdNSUkgc2V0dXAgY29kZSBpcyBleGVjdXRlZC4KPj4KPj4gTW92aW5nIHRoZSBNVEtf
UEFUSF9CSVQgdG8gYml0IDExIGZpeGVzIHRoZSBpc3N1ZS4KPj4KPj4gRml4ZXM6IDhlZmFhNjUz
YThhNSAoIm5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBBZGQgTVQ3NjIxIFRSR01JSSBtb2RlCj4+
IHN1cHBvcnQiKQo+PiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VA
dmRvcnN0LmNvbT4KPgo+IFRoaXMgdGFyZ2V0cyBuZXQ/IFBsZWFzZSBtYXJrIG5ldHdvcmtpbmcg
cGF0Y2hlcyBbUEFUQ0ggbmV0XSBvciBbUEFUQ0gKPiBuZXQtbmV4dF0uCgpIaSBXaWxsZW0sCgpU
aGFua3MgZm9yIHlvdSBpbnB1dC4KClRoaXMgcGF0Y2ggd2FzIGZvciBuZXQtbmV4dC4KCj4KPj4g
LS0tCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oIHwgMiAr
LQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5o
ICAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oCj4+IGlu
ZGV4IDg3NmNlNjc5ODcwOS4uMmNiOGE5MTU3MzFjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKPj4gQEAgLTYyNiw3ICs2MjYsNyBAQCBlbnVt
IG10a19ldGhfcGF0aCB7Cj4+ICAjZGVmaW5lIE1US19UUkdNSUlfTVQ3NjIxX0NMSyAgICAgICAg
ICBCSVQoMTApCj4+Cj4+ICAvKiBTdXBwb3J0ZWQgcGF0aCBwcmVzZW50IG9uIFNvQ3MgKi8KPj4g
LSNkZWZpbmUgTVRLX1BBVEhfQklUKHgpICAgICAgICAgQklUKCh4KSArIDEwKQo+Pgo+PiArI2Rl
ZmluZSBNVEtfUEFUSF9CSVQoeCkgICAgICAgICBCSVQoKHgpICsgMTEpCj4+Cj4KPiBUbyBhdm9p
ZCB0aGlzIGhhcHBlbmluZyBhZ2FpbiwgcGVyaGFwcyBtYWtlIHRoZSByZXNlcnZlZCByYW5nZSBt
b3JlIGV4cGxpY2l0Pwo+Cj4gRm9yIGluc3RhbmNlCj4KPiAjZGVmaW5lIE1US19GSVhFRF9CSVRf
TEFTVCAxMAo+ICNkZWZpbmUgTVRLX1RSR01JSV9NVDc2MjFfQ0xLICBCSVQoTVRLX0ZJWEVEX0JJ
VF9MQVNUKQo+Cj4gI2RlZmluZSBNVEtfUEFUSF9CSVRfRklSU1QgIChNVEtfRklYRURfQklUX0xB
U1QgKyAxKQo+ICNkZWZpbmUgTVRLX1BBVEhfQklUX0xBU1QgKE1US19GSVhFRF9CSVRfTEFTVCAr
IDcpCj4gI2RlZmluZSBNVEtfTVVYX0JJVF9GSVJTVCAoTVRLX1BBVEhfQklUX0xBU1QgKyAxKQo+
Cj4gVGhvdWdoIEkgaW1hZ2luZSB0aGVyZSBhcmUgY2xlYW5lciBhcHByb2FjaGVzLiBQZXJoYXBz
IGRlZmluZSBhbGwKPiBmaWVsZHMgYXMgZW51bSBpbnN0ZWFkIG9mIGp1c3QgbXRrX2V0aF9tdXgg
YW5kIG10a19ldGhfcGF0aC4gVGhlbgo+IHRoZXJlIGNhbiBiZSBubyBhY2NpZGVudGFsIGNvbGxp
c2lvbi4KCllvdSBtZWFuIGluIGEgc2ltaWxhciB3YXkgYXMgZG9uZSBpbiB0aGUgZXRodG9vbC5o
IFswXT8KClVzZSBhIGVudW0gdG8gZGVmaW5lIHRoZSB1bmlxdWUgYml0cy4KCmVudW0gbXRrX2Jp
dHMgewoJTVRLX1JHTUlJX0JJVCA9IDAsCglNVEtfU0dNSUlfQklULAoJTVRLX1RSR01JSV9CSVQs
CglBTkQgU08gT04gLi4uLgp9OwoKQWxzbyBtb3ZlIHRoZSBtdGtfZXRoX211eCBhbmQgbXRrX2V0
aF9wYXRoIGluIHRvIHRoaXMgZW51bS4KClRoZW4gdXNlIGRlZmluZXMgdG8gY29udmVydCBiaXRz
IHRvIHZhbHVlcy4KCiNkZWZpbmUgTVRLX1JHTUlJICBCSVQoTVRLX1JHTUlJX0JJVCkKI2RlZmlu
ZSBNVEtfVFJHTUlJIEJJVChNVEtfVFJHTUlJX0JJVCkKClJlcGxhY2UgdGhlIE1US19QQVRIX0JJ
VCBhbmQgTVRLX1BBVEhfQklUIG1hY3JvIHdpdGggQklUKCkKCklzIHRoaXMgd2hhdCB5b3UgaGFk
IGluIG1pbmQ/CgpHcmVhdHMsCgpSZW7DqQoKWzBdOiAgCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCNMMTQw
MgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRp
YXRlawo=
