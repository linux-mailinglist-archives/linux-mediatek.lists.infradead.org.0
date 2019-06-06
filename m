Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411193716B
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Jun 2019 12:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qJKYVB1gY4j66q5O26s73by0mvPk/BGWMO2vOlSHq5Q=; b=VyFRdpKDBkHpWnJUFYbpfDKhq
	GvXhh6fkSU7Puugec3X1NDFUjZlRMDydM77Y7i7bcB3kL9U0ZJTHLSUAweSv0iwL8jvS9t40pK3oc
	sF3JBRM9yQFYbfTa33JkenbFSzBDLILS1X6PwT91lpjuFsGlELOum8zq5FpTdA+cVqJX869uecU1P
	ObTqB5eheUwNDxt/JUoLZK1uPORot6mqqv8x6LcibfUefPjdDNmtkaAkV/5/4FesmjgOcB3zr8lam
	UDGbR6BBacTT++G9j9VjxREFQxzBCnM1nJ0joUxXHCRONI3WVHR8bjPfdh8TTLDEHPPAAFxBHolBB
	/aUfBn/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpQ1-0002dp-9Z; Thu, 06 Jun 2019 10:14:49 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpPw-0002dV-MK
 for linux-mediatek@lists.infradead.org; Thu, 06 Jun 2019 10:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=IVyG0+asKq/UCG7fsgR27xleEN4h1pxc9HyWAz1Nb+A=; 
 b=JdlD+A7ZvGDKeJH02nK2YNcVgPjSfugBFOPFlypfOjHjvJoxffzgnRKwsPh/cQ3EPGcGvn+/oAzIzX/I0pwoI6OGuefPKkFJI+Zhuwi3FI5z3PhmGZ+9uBZe9aka0TTDvcuTPWhb874ZXw82QKq3idv0DFZetf9qdp/pXn7vwKA=;
Subject: Re: [PATCH v3 1/2] mt76: mt7615: enable support for mesh
To: Ryder Lee <ryder.lee@mediatek.com>, Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
References: <a1ff446dfc06e2443552e7ec2d754099aacce7df.1559541944.git.ryder.lee@mediatek.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <a0a6f631-2eb1-87cc-5653-338c6126690c@newmedia-net.de>
Date: Thu, 6 Jun 2019 12:14:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a1ff446dfc06e2443552e7ec2d754099aacce7df.1559541944.git.ryder.lee@mediatek.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hYpQ1-0008Bc-SJ; Thu, 06 Jun 2019 12:14:49 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_031445_952040_64E1FE9A 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sean Wang <sean.wang@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

aW4gYWRkaXRpb24geW91IHNob3VsZCB0YWtlIGNhcmUgYWJvdXQgdGhpcyBwcm9ibGVtIHdoaWNo
IGlzIHJhaXNlZCB1cCAKaWYgU0FFIGlzIHVzZWQuIHNpbmNlIEFFUy1DTUFDIHJlcXVpcmVkIHRp
ZCB0byBiZSBub24gemVybwoKV0FSTklORzogQ1BVOiAyIFBJRDogMTUzMjQgYXQgCi9ob21lL3Nl
Zy9ERVYvbXQ3NjIxL3NyYy9yb3V0ZXIvcHJpdmF0ZS9jb21wYXQtd2lyZWxlc3MtMjAxNy0wOS0w
My9uZXQvbWFjODAyMTEva2V5LmM6MTA5NiAKbXQ3Nl93Y2lkX2tleV9zZXR1cCsweDU4LzB4OWMg
W210NzZdCk1vZHVsZXMgbGlua2VkIGluOiBzaG9ydGN1dF9mZSBnY20gZ2hhc2hfZ2VuZXJpYyBj
dHIgZ2YxMjhtdWwgbXQ3NjE1ZSAKbXQ3NiBtYWM4MDIxMSBjb21wYXQKQ1BVOiAyIFBJRDogMTUz
MjQgQ29tbTogd3BhX3N1cHBsaWNhbnQgVGFpbnRlZDogR8KgwqDCoMKgwqDCoMKgIFcgNC4xNC4x
MjMgIzEwNgpTdGFjayA6IDAwMDAwMDAwIDg3YzJkMDAwIDAwMDAwMDAwIDgwMDdkOGI0IDgwNDgw
MDAwIDgwNDgyYjljIDgwNjEwMDAwIAo4MDVhNDM5MAogwqDCoMKgwqDCoMKgwqAgODA1N2UyYjQg
ODU0ZmI5OWMgODdlZDA0NWMgODA1ZTQ3NjcgODA1NzgyODggMDAwMDAwMDEgODU0ZmI5NDAgCjgw
NWU5Zjc4CiDCoMKgwqDCoMKgwqDCoCAwMDAwMDAwMCAwMDAwMDAwMCA4MDY0MDAwMCAwMDAwMDAw
MCA4MTE0N2JiOCAwMDAwMDU4NCAwMDAwMDAwNyAKMDAwMDAwMDAKIMKgwqDCoMKgwqDCoMKgIDAw
MDAwMDAwIDgwNjUwMDAwIDgwNjUwMDAwIDIwMjAyMDIwIDgwMDAwMDAwIDAwMDAwMDAwIDgwNjEw
MDAwIAo4NzJiOWZlMAogwqDCoMKgwqDCoMKgwqAgODcyYTJiMTQgMDAwMDA0NDggMDAwMDAwMDAg
ODdjMmQwMDAgMDAwMDAwMTAgODAyMmQ2NjAgMDAwMDAwMDggCjgwNjQwMDA4CiDCoMKgwqDCoMKg
wqDCoCAuLi4KQ2FsbCBUcmFjZToKWzw4MDAxNTNlMD5dIHNob3dfc3RhY2srMHg1OC8weDEwMApb
PDgwNDJlODNjPl0gZHVtcF9zdGFjaysweDljLzB4ZTAKWzw4MDAzNDlmMD5dIF9fd2FybisweGU0
LzB4MTQ0Cls8ODAwMzQ2OGM+XSB3YXJuX3Nsb3dwYXRoX251bGwrMHgxYy8weDMwCls8ODcyYjlm
ZTA+XSBtdDc2X3djaWRfa2V5X3NldHVwKzB4NTgvMHg5YyBbbXQ3Nl0KWzw4NzYxMTY5MD5dIG10
NzYxNV9lZXByb21faW5pdCsweDdiNC8weGU5YyBbbXQ3NjE1ZV0KLS0tWyBlbmQgdHJhY2UgZTI0
YWViNGI1NDJlMGRlYSBdLS0tCgpBbSAwMy4wNi4yMDE5IHVtIDA4OjA4IHNjaHJpZWIgUnlkZXIg
TGVlOgo+IEVuYWJsZSBOTDgwMjExX0lGVFlQRV9NRVNIX1BPSU5UIGFuZCB1cGRhdGUgaXRzIHBh
dGguCj4KPiBTaWduZWQtb2ZmLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+
Cj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSB2MyAtIGZpeCBhIHdyb25nIGV4cHJlc3Npb24KPiBDaGFu
Z2VzIHNpbmNlIHYyIC0gcmVtb3ZlIHVudXNlZCBkZWZpbml0aW9ucwo+IC0tLQo+ICAgZHJpdmVy
cy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvaW5pdC5jIHwgNiArKysrKysKPiAg
IGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21haW4uYyB8IDEgKwo+
ICAgZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1LmMgIHwgNCAr
KystCj4gICBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3UuaCAg
fCA2IC0tLS0tLQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210
NzYvbXQ3NjE1L2luaXQuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3
NjE1L2luaXQuYwo+IGluZGV4IDU5ZjYwNGYzMTYxZi4uZjg2MGFmNmE0MmRhIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L2luaXQuYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L2luaXQuYwo+IEBA
IC0xMzMsNiArMTMzLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfaWZhY2VfbGlt
aXQgaWZfbGltaXRzW10gPSB7Cj4gICAJewo+ICAgCQkubWF4ID0gTVQ3NjE1X01BWF9JTlRFUkZB
Q0VTLAo+ICAgCQkudHlwZXMgPSBCSVQoTkw4MDIxMV9JRlRZUEVfQVApIHwKPiArI2lmZGVmIENP
TkZJR19NQUM4MDIxMV9NRVNICj4gKwkJCSBCSVQoTkw4MDIxMV9JRlRZUEVfTUVTSF9QT0lOVCkg
fAo+ICsjZW5kaWYKPiAgIAkJCSBCSVQoTkw4MDIxMV9JRlRZUEVfU1RBVElPTikKPiAgIAl9Cj4g
ICB9Owo+IEBAIC0xOTUsNiArMTk4LDkgQEAgaW50IG10NzYxNV9yZWdpc3Rlcl9kZXZpY2Uoc3Ry
dWN0IG10NzYxNV9kZXYgKmRldikKPiAgIAlkZXYtPm10NzYuYW50ZW5uYV9tYXNrID0gMHhmOwo+
ICAgCj4gICAJd2lwaHktPmludGVyZmFjZV9tb2RlcyA9IEJJVChOTDgwMjExX0lGVFlQRV9TVEFU
SU9OKSB8Cj4gKyNpZmRlZiBDT05GSUdfTUFDODAyMTFfTUVTSAo+ICsJCQkJIEJJVChOTDgwMjEx
X0lGVFlQRV9NRVNIX1BPSU5UKSB8Cj4gKyNlbmRpZgo+ICAgCQkJCSBCSVQoTkw4MDIxMV9JRlRZ
UEVfQVApOwo+ICAgCj4gICAJcmV0ID0gbXQ3Nl9yZWdpc3Rlcl9kZXZpY2UoJmRldi0+bXQ3Niwg
dHJ1ZSwgbXQ3NjE1X3JhdGVzLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9t
ZWRpYXRlay9tdDc2L210NzYxNS9tYWluLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRl
ay9tdDc2L210NzYxNS9tYWluLmMKPiBpbmRleCBiMGJiN2NjMTIzODUuLjU4NWU2N2ZhMjcyOCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9t
YWluLmMKPiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9t
YWluLmMKPiBAQCAtMzcsNiArMzcsNyBAQCBzdGF0aWMgaW50IGdldF9vbWFjX2lkeChlbnVtIG5s
ODAyMTFfaWZ0eXBlIHR5cGUsIHUzMiBtYXNrKQo+ICAgCj4gICAJc3dpdGNoICh0eXBlKSB7Cj4g
ICAJY2FzZSBOTDgwMjExX0lGVFlQRV9BUDoKPiArCWNhc2UgTkw4MDIxMV9JRlRZUEVfTUVTSF9Q
T0lOVDoKPiAgIAkJLyogYXAgdXNlIGh3IGJzc2lkIDAgYW5kIGV4dCBic3NpZCAqLwo+ICAgCQlp
ZiAofm1hc2sgJiBCSVQoSFdfQlNTSURfMCkpCj4gICAJCQlyZXR1cm4gSFdfQlNTSURfMDsKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1
LmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3UuYwo+IGlu
ZGV4IDQzZjcwMTk1MjQ0Yy4uZTgyMjk3MDQ4NDQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21jdS5jCj4gKysrIGIvZHJpdmVycy9uZXQv
d2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1LmMKPiBAQCAtNzU0LDYgKzc1NCw3IEBA
IGludCBtdDc2MTVfbWN1X3NldF9ic3NfaW5mbyhzdHJ1Y3QgbXQ3NjE1X2RldiAqZGV2LAo+ICAg
Cj4gICAJc3dpdGNoICh2aWYtPnR5cGUpIHsKPiAgIAljYXNlIE5MODAyMTFfSUZUWVBFX0FQOgo+
ICsJY2FzZSBOTDgwMjExX0lGVFlQRV9NRVNIX1BPSU5UOgo+ICAgCQl0eF93bGFuX2lkeCA9IG12
aWYtPnN0YS53Y2lkLmlkeDsKPiAgIAkJY29ubl90eXBlID0gQ09OTkVDVElPTl9JTkZSQV9BUDsK
PiAgIAkJYnJlYWs7Cj4gQEAgLTk2OCw3ICs5NjksNyBAQCBpbnQgbXQ3NjE1X21jdV9hZGRfd3Ri
bChzdHJ1Y3QgbXQ3NjE1X2RldiAqZGV2LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLAo+ICAg
CQkucnhfd3RibCA9IHsKPiAgIAkJCS50YWcgPSBjcHVfdG9fbGUxNihXVEJMX1JYKSwKPiAgIAkJ
CS5sZW4gPSBjcHVfdG9fbGUxNihzaXplb2Yoc3RydWN0IHd0YmxfcngpKSwKPiAtCQkJLnJjYTEg
PSB2aWYtPnR5cGUgIT0gTkw4MDIxMV9JRlRZUEVfQVAsCj4gKwkJCS5yY2ExID0gdmlmLT50eXBl
ID09IE5MODAyMTFfSUZUWVBFX1NUQVRJT04sCj4gICAJCQkucmNhMiA9IDEsCj4gICAJCQkucnYg
PSAxLAo+ICAgCQl9LAo+IEBAIC0xMDQyLDYgKzEwNDMsNyBAQCBzdGF0aWMgdm9pZCBzdGFfcmVj
X2NvbnZlcnRfdmlmX3R5cGUoZW51bSBubDgwMjExX2lmdHlwZSB0eXBlLCB1MzIgKmNvbm5fdHlw
ZSkKPiAgIHsKPiAgIAlzd2l0Y2ggKHR5cGUpIHsKPiAgIAljYXNlIE5MODAyMTFfSUZUWVBFX0FQ
Ogo+ICsJY2FzZSBOTDgwMjExX0lGVFlQRV9NRVNIX1BPSU5UOgo+ICAgCQlpZiAoY29ubl90eXBl
KQo+ICAgCQkJKmNvbm5fdHlwZSA9IENPTk5FQ1RJT05fSU5GUkFfU1RBOwo+ICAgCQlicmVhazsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUv
bWN1LmggYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tY3UuaAo+
IGluZGV4IGU5NmVmYjEzZmE0ZC4uMDkxNWNiNzM1Njk5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L21jdS5oCj4gKysrIGIvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWN1LmgKPiBAQCAtMTA1LDI1ICsxMDUs
MTkgQEAgZW51bSB7Cj4gICAjZGVmaW5lIFNUQV9UWVBFX1NUQQkJQklUKDApCj4gICAjZGVmaW5l
IFNUQV9UWVBFX0FQCQlCSVQoMSkKPiAgICNkZWZpbmUgU1RBX1RZUEVfQURIT0MJCUJJVCgyKQo+
IC0jZGVmaW5lIFNUQV9UWVBFX1RETFMJCUJJVCgzKQo+ICAgI2RlZmluZSBTVEFfVFlQRV9XRFMJ
CUJJVCg0KQo+ICAgI2RlZmluZSBTVEFfVFlQRV9CQwkJQklUKDUpCj4gICAKPiAgICNkZWZpbmUg
TkVUV09SS19JTkZSQQkJQklUKDE2KQo+ICAgI2RlZmluZSBORVRXT1JLX1AyUAkJQklUKDE3KQo+
ICAgI2RlZmluZSBORVRXT1JLX0lCU1MJCUJJVCgxOCkKPiAtI2RlZmluZSBORVRXT1JLX01FU0gJ
CUJJVCgxOSkKPiAtI2RlZmluZSBORVRXT1JLX0JPVwkJQklUKDIwKQo+ICAgI2RlZmluZSBORVRX
T1JLX1dEUwkJQklUKDIxKQo+ICAgCj4gICAjZGVmaW5lIENPTk5FQ1RJT05fSU5GUkFfU1RBCShT
VEFfVFlQRV9TVEEgfCBORVRXT1JLX0lORlJBKQo+ICAgI2RlZmluZSBDT05ORUNUSU9OX0lORlJB
X0FQCShTVEFfVFlQRV9BUCB8IE5FVFdPUktfSU5GUkEpCj4gICAjZGVmaW5lIENPTk5FQ1RJT05f
UDJQX0dDCShTVEFfVFlQRV9TVEEgfCBORVRXT1JLX1AyUCkKPiAgICNkZWZpbmUgQ09OTkVDVElP
Tl9QMlBfR08JKFNUQV9UWVBFX0FQIHwgTkVUV09SS19QMlApCj4gLSNkZWZpbmUgQ09OTkVDVElP
Tl9NRVNIX1NUQQkoU1RBX1RZUEVfU1RBIHwgTkVUV09SS19NRVNIKQo+IC0jZGVmaW5lIENPTk5F
Q1RJT05fTUVTSF9BUAkoU1RBX1RZUEVfQVAgfCBORVRXT1JLX01FU0gpCj4gICAjZGVmaW5lIENP
Tk5FQ1RJT05fSUJTU19BREhPQwkoU1RBX1RZUEVfQURIT0MgfCBORVRXT1JLX0lCU1MpCj4gLSNk
ZWZpbmUgQ09OTkVDVElPTl9URExTCQkoU1RBX1RZUEVfU1RBIHwgTkVUV09SS19JTkZSQSB8IFNU
QV9UWVBFX1RETFMpCj4gICAjZGVmaW5lIENPTk5FQ1RJT05fV0RTCQkoU1RBX1RZUEVfV0RTIHwg
TkVUV09SS19XRFMpCj4gICAjZGVmaW5lIENPTk5FQ1RJT05fSU5GUkFfQkMJKFNUQV9UWVBFX0JD
IHwgTkVUV09SS19JTkZSQSkKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tZWRpYXRlawo=
