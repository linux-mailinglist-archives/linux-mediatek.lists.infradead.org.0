Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E591A7366
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 08:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r0gPoNu1Y+F2U9VTg4Xr8RwTsyFDvDf7ZtiQRZVcpOQ=; b=n4VGGLlyKWB5IGg+6iR5nruJg
	Qt6lJlDSwawIMy9YLTL3HT2PvuaIfCxHmTI36JbuZYGaRWHG58vnNr8nMx3/kCQ4KZulnyz6qbJpM
	QIsLh7s0fJ6BgQXeiXmGUjxLc8I7ZQe88XgSTGR9EV5YCCYFJpIvNcSr/m9FKKHGeA13qGIpdg7Ps
	5GBzHbZ1R1QV/+wS4wUMgWqG1gFlXslkZcL+/dWjNegmzGzGUnH+0SwsgsKHiYpQ+S0CucL2Qms0r
	7hcXYwfiIVihjNKJx2N36wL9561YoRAxjeoAkOKGDepLUrzhxYNiZzBmn0E9JFtuM3b3k1L9/zHLx
	ZzddCOdiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOEkh-00062O-KC; Tue, 14 Apr 2020 06:08:55 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOEkT-0005pg-Mi; Tue, 14 Apr 2020 06:08:43 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 491Zmc64yLz9txkH;
 Tue, 14 Apr 2020 08:08:32 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=swLCNyX7; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 4yni2YpdXT3P; Tue, 14 Apr 2020 08:08:32 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 491Zmc4L0Rz9txkG;
 Tue, 14 Apr 2020 08:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1586844512; bh=AyML/oaUiIiNPJKHTIdsIrbz6fYQpNyy/73cMAJtVGI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=swLCNyX719PsbdWXJyAjua3tpVkuZHN/PgaRAzIUI6j3FuSDm374UPnlGZYSrGzxT
 ndt6dm09KOl8ksmzmfqqYKRuIRIOuM5gK03jv/9oM2sodvHG7ZsAdW0K43bNG1m7AR
 C9uF0GCYNnsgDDdT0CCsxA/cfFfbv77mzxAhptqM=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 5B4A48B77D;
 Tue, 14 Apr 2020 08:08:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id IsbJC8uJ2iOV; Tue, 14 Apr 2020 08:08:33 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 997728B752;
 Tue, 14 Apr 2020 08:08:30 +0200 (CEST)
Subject: Re: [PATCH v2 2/2] crypto: Remove unnecessary memzero_explicit()
To: Waiman Long <longman@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Joe Perches
 <joe@perches.com>, Matthew Wilcox <willy@infradead.org>,
 David Rientjes <rientjes@google.com>
References: <20200413211550.8307-1-longman@redhat.com>
 <20200413222846.24240-1-longman@redhat.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <eca85e0b-0af3-c43a-31e4-bd5c3f519798@c-s.fr>
Date: Tue, 14 Apr 2020 08:08:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200413222846.24240-1-longman@redhat.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_230842_048832_E91820B0 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: samba-technical@lists.samba.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, cocci@systeme.lip6.fr, linux-wpan@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-crypto@vger.kernel.org,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-cifs@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

CgpMZSAxNC8wNC8yMDIwIMOgIDAwOjI4LCBXYWltYW4gTG9uZyBhIMOpY3JpdMKgOgo+IFNpbmNl
IGtmcmVlX3NlbnNpdGl2ZSgpIHdpbGwgZG8gYW4gaW1wbGljaXQgbWVtemVyb19leHBsaWNpdCgp
LCB0aGVyZQo+IGlzIG5vIG5lZWQgdG8gY2FsbCBtZW16ZXJvX2V4cGxpY2l0KCkgYmVmb3JlIGl0
LiBFbGltaW5hdGUgdGhvc2UKPiBtZW16ZXJvX2V4cGxpY2l0KCkgYW5kIHNpbXBsaWZ5IHRoZSBj
YWxsIHNpdGVzLiBGb3IgYmV0dGVyIGNvcnJlY3RuZXNzLAo+IHRoZSBzZXR0aW5nIG9mIGtleWxl
biBpcyBhbHNvIG1vdmVkIGRvd24gYWZ0ZXIgdGhlIGtleSBwb2ludGVyIGNoZWNrLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFdhaW1hbiBMb25nIDxsb25nbWFuQHJlZGhhdC5jb20+Cj4gLS0tCj4gICAu
Li4vYWxsd2lubmVyL3N1bjhpLWNlL3N1bjhpLWNlLWNpcGhlci5jICAgICAgfCAxOSArKysrKy0t
LS0tLS0tLS0tLS0KPiAgIC4uLi9hbGx3aW5uZXIvc3VuOGktc3Mvc3VuOGktc3MtY2lwaGVyLmMg
ICAgICB8IDIwICsrKysrLS0tLS0tLS0tLS0tLS0KPiAgIGRyaXZlcnMvY3J5cHRvL2FtbG9naWMv
YW1sb2dpYy1neGwtY2lwaGVyLmMgICB8IDEyICsrKy0tLS0tLS0tCj4gICBkcml2ZXJzL2NyeXB0
by9pbnNpZGUtc2VjdXJlL3NhZmV4Y2VsX2hhc2guYyAgfCAgMyArLS0KPiAgIDQgZmlsZXMgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYyBiL2Ry
aXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYwo+IGluZGV4
IGFhNGU4ZmRjMmIzMi4uODM1OGZhYzk4NzE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY3J5cHRv
L2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYwo+ICsrKyBiL2RyaXZlcnMvY3J5
cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYwo+IEBAIC0zNjYsMTAgKzM2
Niw3IEBAIHZvaWQgc3VuOGlfY2VfY2lwaGVyX2V4aXQoc3RydWN0IGNyeXB0b190Zm0gKnRmbSkK
PiAgIHsKPiAgIAlzdHJ1Y3Qgc3VuOGlfY2lwaGVyX3RmbV9jdHggKm9wID0gY3J5cHRvX3RmbV9j
dHgodGZtKTsKPiAgIAo+IC0JaWYgKG9wLT5rZXkpIHsKPiAtCQltZW16ZXJvX2V4cGxpY2l0KG9w
LT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtmcmVlKG9wLT5rZXkpOwo+IC0JfQo+ICsJa2ZyZWVf
c2Vuc2l0aXZlKG9wLT5rZXkpOwo+ICAgCWNyeXB0b19mcmVlX3N5bmNfc2tjaXBoZXIob3AtPmZh
bGxiYWNrX3RmbSk7Cj4gICAJcG1fcnVudGltZV9wdXRfc3luY19zdXNwZW5kKG9wLT5jZS0+ZGV2
KTsKPiAgIH0KPiBAQCAtMzkxLDE0ICszODgsMTEgQEAgaW50IHN1bjhpX2NlX2Flc19zZXRrZXko
c3RydWN0IGNyeXB0b19za2NpcGhlciAqdGZtLCBjb25zdCB1OCAqa2V5LAo+ICAgCQlkZXZfZGJn
KGNlLT5kZXYsICJFUlJPUjogSW52YWxpZCBrZXlsZW4gJXVcbiIsIGtleWxlbik7Cj4gICAJCXJl
dHVybiAtRUlOVkFMOwo+ICAgCX0KPiAtCWlmIChvcC0+a2V5KSB7Cj4gLQkJbWVtemVyb19leHBs
aWNpdChvcC0+a2V5LCBvcC0+a2V5bGVuKTsKPiAtCQlrZnJlZShvcC0+a2V5KTsKPiAtCX0KPiAt
CW9wLT5rZXlsZW4gPSBrZXlsZW47Cj4gKwlrZnJlZV9zZW5zaXRpdmUob3AtPmtleSk7Cj4gICAJ
b3AtPmtleSA9IGttZW1kdXAoa2V5LCBrZXlsZW4sIEdGUF9LRVJORUwgfCBHRlBfRE1BKTsKPiAg
IAlpZiAoIW9wLT5rZXkpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+ICsJb3AtPmtleWxlbiA9IGtl
eWxlbjsKCkRvZXMgaXQgbWF0dGVyIGF0IGFsbCB0byBlbnN1cmUgb3AtPmtleWxlbiBpcyBub3Qg
c2V0IHdoZW4gb2YtPmtleSBpcyAKTlVMTCA/IEknbSBub3Qgc3VyZS4KCkJ1dCBpZiBpdCBkb2Vz
LCB0aGVuIG9wLT5rZXlsZW4gc2hvdWxkIGJlIHNldCB0byAwIHdoZW4gZnJlZWluZyBvcC0+a2V5
LgoKPiAgIAo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFj
a190Zm0sIENSWVBUT19URk1fUkVRX01BU0spOwo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3Nl
dF9mbGFncyhvcC0+ZmFsbGJhY2tfdGZtLCB0Zm0tPmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RG
TV9SRVFfTUFTSyk7Cj4gQEAgLTQxNiwxNCArNDEwLDExIEBAIGludCBzdW44aV9jZV9kZXMzX3Nl
dGtleShzdHJ1Y3QgY3J5cHRvX3NrY2lwaGVyICp0Zm0sIGNvbnN0IHU4ICprZXksCj4gICAJaWYg
KGVycikKPiAgIAkJcmV0dXJuIGVycjsKPiAgIAo+IC0JaWYgKG9wLT5rZXkpIHsKPiAtCQltZW16
ZXJvX2V4cGxpY2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtmcmVlKG9wLT5rZXkpOwo+
IC0JfQo+IC0Jb3AtPmtleWxlbiA9IGtleWxlbjsKPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5
KTsKPiAgIAlvcC0+a2V5ID0ga21lbWR1cChrZXksIGtleWxlbiwgR0ZQX0tFUk5FTCB8IEdGUF9E
TUEpOwo+ICAgCWlmICghb3AtPmtleSkKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gKwlvcC0+a2V5
bGVuID0ga2V5bGVuOwoKU2FtZSBjb21tZW50IGFzIGFib3ZlLgoKPiAgIAo+ICAgCWNyeXB0b19z
eW5jX3NrY2lwaGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFja190Zm0sIENSWVBUT19URk1fUkVR
X01BU0spOwo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3NldF9mbGFncyhvcC0+ZmFsbGJhY2tf
dGZtLCB0Zm0tPmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RGTV9SRVFfTUFTSyk7Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIu
YyBiL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIuYwo+
IGluZGV4IDUyNDZlZjRmNTQzMC4uMDQ5NWZiYzI3ZmNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Y3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIuYwo+ICsrKyBiL2RyaXZl
cnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIuYwo+IEBAIC0yNDks
NyArMjQ5LDYgQEAgc3RhdGljIGludCBzdW44aV9zc19jaXBoZXIoc3RydWN0IHNrY2lwaGVyX3Jl
cXVlc3QgKmFyZXEpCj4gICAJCQlvZmZzZXQgPSBhcmVxLT5jcnlwdGxlbiAtIGl2c2l6ZTsKPiAg
IAkJCWlmIChyY3R4LT5vcF9kaXIgJiBTU19ERUNSWVBUSU9OKSB7Cj4gICAJCQkJbWVtY3B5KGFy
ZXEtPml2LCBiYWNrdXBfaXYsIGl2c2l6ZSk7Cj4gLQkJCQltZW16ZXJvX2V4cGxpY2l0KGJhY2t1
cF9pdiwgaXZzaXplKTsKPiAgIAkJCQlrZnJlZV9zZW5zaXRpdmUoYmFja3VwX2l2KTsKPiAgIAkJ
CX0gZWxzZSB7Cj4gICAJCQkJc2NhdHRlcndhbGtfbWFwX2FuZF9jb3B5KGFyZXEtPml2LCBhcmVx
LT5kc3QsIG9mZnNldCwKPiBAQCAtMzY3LDEwICszNjYsNyBAQCB2b2lkIHN1bjhpX3NzX2NpcGhl
cl9leGl0KHN0cnVjdCBjcnlwdG9fdGZtICp0Zm0pCj4gICB7Cj4gICAJc3RydWN0IHN1bjhpX2Np
cGhlcl90Zm1fY3R4ICpvcCA9IGNyeXB0b190Zm1fY3R4KHRmbSk7Cj4gICAKPiAtCWlmIChvcC0+
a2V5KSB7Cj4gLQkJbWVtemVyb19leHBsaWNpdChvcC0+a2V5LCBvcC0+a2V5bGVuKTsKPiAtCQlr
ZnJlZShvcC0+a2V5KTsKPiAtCX0KPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5KTsKPiAgIAlj
cnlwdG9fZnJlZV9zeW5jX3NrY2lwaGVyKG9wLT5mYWxsYmFja190Zm0pOwo+ICAgCXBtX3J1bnRp
bWVfcHV0X3N5bmMob3AtPnNzLT5kZXYpOwo+ICAgfQo+IEBAIC0zOTIsMTQgKzM4OCwxMSBAQCBp
bnQgc3VuOGlfc3NfYWVzX3NldGtleShzdHJ1Y3QgY3J5cHRvX3NrY2lwaGVyICp0Zm0sIGNvbnN0
IHU4ICprZXksCj4gICAJCWRldl9kYmcoc3MtPmRldiwgIkVSUk9SOiBJbnZhbGlkIGtleWxlbiAl
dVxuIiwga2V5bGVuKTsKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJfQo+IC0JaWYgKG9wLT5r
ZXkpIHsKPiAtCQltZW16ZXJvX2V4cGxpY2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtm
cmVlKG9wLT5rZXkpOwo+IC0JfQo+IC0Jb3AtPmtleWxlbiA9IGtleWxlbjsKPiArCWtmcmVlX3Nl
bnNpdGl2ZShvcC0+a2V5KTsKPiAgIAlvcC0+a2V5ID0ga21lbWR1cChrZXksIGtleWxlbiwgR0ZQ
X0tFUk5FTCB8IEdGUF9ETUEpOwo+ICAgCWlmICghb3AtPmtleSkKPiAgIAkJcmV0dXJuIC1FTk9N
RU07Cj4gKwlvcC0+a2V5bGVuID0ga2V5bGVuOwoKU2FtZSBjb21tZW50IGFzIGFib3ZlLgoKPiAg
IAo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFja190Zm0s
IENSWVBUT19URk1fUkVRX01BU0spOwo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3NldF9mbGFn
cyhvcC0+ZmFsbGJhY2tfdGZtLCB0Zm0tPmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RGTV9SRVFf
TUFTSyk7Cj4gQEAgLTQxOCwxNCArNDExLDExIEBAIGludCBzdW44aV9zc19kZXMzX3NldGtleShz
dHJ1Y3QgY3J5cHRvX3NrY2lwaGVyICp0Zm0sIGNvbnN0IHU4ICprZXksCj4gICAJCXJldHVybiAt
RUlOVkFMOwo+ICAgCX0KPiAgIAo+IC0JaWYgKG9wLT5rZXkpIHsKPiAtCQltZW16ZXJvX2V4cGxp
Y2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtmcmVlKG9wLT5rZXkpOwo+IC0JfQo+IC0J
b3AtPmtleWxlbiA9IGtleWxlbjsKPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5KTsKPiAgIAlv
cC0+a2V5ID0ga21lbWR1cChrZXksIGtleWxlbiwgR0ZQX0tFUk5FTCB8IEdGUF9ETUEpOwo+ICAg
CWlmICghb3AtPmtleSkKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gKwlvcC0+a2V5bGVuID0ga2V5
bGVuOwoKU2FtZSBjb21tZW50IGFzIGFib3ZlLgoKPiAgIAo+ICAgCWNyeXB0b19zeW5jX3NrY2lw
aGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFja190Zm0sIENSWVBUT19URk1fUkVRX01BU0spOwo+
ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3NldF9mbGFncyhvcC0+ZmFsbGJhY2tfdGZtLCB0Zm0t
PmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RGTV9SRVFfTUFTSyk7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvY3J5cHRvL2FtbG9naWMvYW1sb2dpYy1neGwtY2lwaGVyLmMgYi9kcml2ZXJzL2NyeXB0
by9hbWxvZ2ljL2FtbG9naWMtZ3hsLWNpcGhlci5jCj4gaW5kZXggZmQxMjY5OTAwZDY3Li42YWE5
Y2U3YmJiZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jcnlwdG8vYW1sb2dpYy9hbWxvZ2ljLWd4
bC1jaXBoZXIuYwo+ICsrKyBiL2RyaXZlcnMvY3J5cHRvL2FtbG9naWMvYW1sb2dpYy1neGwtY2lw
aGVyLmMKPiBAQCAtMzQxLDEwICszNDEsNyBAQCB2b2lkIG1lc29uX2NpcGhlcl9leGl0KHN0cnVj
dCBjcnlwdG9fdGZtICp0Zm0pCj4gICB7Cj4gICAJc3RydWN0IG1lc29uX2NpcGhlcl90Zm1fY3R4
ICpvcCA9IGNyeXB0b190Zm1fY3R4KHRmbSk7Cj4gICAKPiAtCWlmIChvcC0+a2V5KSB7Cj4gLQkJ
bWVtemVyb19leHBsaWNpdChvcC0+a2V5LCBvcC0+a2V5bGVuKTsKPiAtCQlrZnJlZShvcC0+a2V5
KTsKPiAtCX0KPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5KTsKPiAgIAljcnlwdG9fZnJlZV9z
eW5jX3NrY2lwaGVyKG9wLT5mYWxsYmFja190Zm0pOwo+ICAgfQo+ICAgCj4gQEAgLTM2OCwxNCAr
MzY1LDExIEBAIGludCBtZXNvbl9hZXNfc2V0a2V5KHN0cnVjdCBjcnlwdG9fc2tjaXBoZXIgKnRm
bSwgY29uc3QgdTggKmtleSwKPiAgIAkJZGV2X2RiZyhtYy0+ZGV2LCAiRVJST1I6IEludmFsaWQg
a2V5bGVuICV1XG4iLCBrZXlsZW4pOwo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAl9Cj4gLQlp
ZiAob3AtPmtleSkgewo+IC0JCW1lbXplcm9fZXhwbGljaXQob3AtPmtleSwgb3AtPmtleWxlbik7
Cj4gLQkJa2ZyZWUob3AtPmtleSk7Cj4gLQl9Cj4gLQlvcC0+a2V5bGVuID0ga2V5bGVuOwo+ICsJ
a2ZyZWVfc2Vuc2l0aXZlKG9wLT5rZXkpOwo+ICAgCW9wLT5rZXkgPSBrbWVtZHVwKGtleSwga2V5
bGVuLCBHRlBfS0VSTkVMIHwgR0ZQX0RNQSk7Cj4gICAJaWYgKCFvcC0+a2V5KQo+ICAgCQlyZXR1
cm4gLUVOT01FTTsKPiArCW9wLT5rZXlsZW4gPSBrZXlsZW47CgpTYW1lIGNvbW1lbnQgYXMgYWJv
dmUuCgo+ICAgCj4gICAJcmV0dXJuIGNyeXB0b19zeW5jX3NrY2lwaGVyX3NldGtleShvcC0+ZmFs
bGJhY2tfdGZtLCBrZXksIGtleWxlbik7Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3J5
cHRvL2luc2lkZS1zZWN1cmUvc2FmZXhjZWxfaGFzaC5jIGIvZHJpdmVycy9jcnlwdG8vaW5zaWRl
LXNlY3VyZS9zYWZleGNlbF9oYXNoLmMKPiBpbmRleCA0Mzk2MmJjNzA5YzYuLjRhMmQxNjI5MTRk
ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NyeXB0by9pbnNpZGUtc2VjdXJlL3NhZmV4Y2VsX2hh
c2guYwo+ICsrKyBiL2RyaXZlcnMvY3J5cHRvL2luc2lkZS1zZWN1cmUvc2FmZXhjZWxfaGFzaC5j
Cj4gQEAgLTEwODEsOCArMTA4MSw3IEBAIHN0YXRpYyBpbnQgc2FmZXhjZWxfaG1hY19pbml0X3Bh
ZChzdHJ1Y3QgYWhhc2hfcmVxdWVzdCAqYXJlcSwKPiAgIAkJfQo+ICAgCj4gICAJCS8qIEF2b2lk
IGxlYWtpbmcgKi8KPiAtCQltZW16ZXJvX2V4cGxpY2l0KGtleWR1cCwga2V5bGVuKTsKPiAtCQlr
ZnJlZShrZXlkdXApOwo+ICsJCWtmcmVlX3NlbnNpdGl2ZShrZXlkdXApOwo+ICAgCj4gICAJCWlm
IChyZXQpCj4gICAJCQlyZXR1cm4gcmV0Owo+IAoKCkNocmlzdG9waGUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcg
bGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
