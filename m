Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FED54DE1
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 13:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=guyQYzfhqFyORMe3UlnwcJm7SgXNYrSawEpcdi1Soh4=; b=q1rk8UhIiwwaHEQJDvzbxpki6
	bYp2xM/W5Wjk26jU0rDA9rJ9RaYXcLR+r7C6K1fPpozYEab4VuUs2B6CTtVE/iDZwfxPZ2t8LthoH
	SnAV0izLHastBsjsmeFklRpmXnu3cU7pAlYBozslv9rRL66gR4McYn2w/OAy73nodmloZFGNTpe4V
	z/VqHjYBFWs++8R3qp88/vy083wFCQBsH8EexdsU7fin3tteK0q0HUss0TEqjSPT3QiBW/ftKZ1b3
	+qN58vGTrmG4391UtDs9cc3bREpDujbuWBZCI8fstx4DUSE7NkGzGmJSubUTmOUrExhYQ5g4fj7VK
	gGNZAZ2NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfjri-0000kh-I4; Tue, 25 Jun 2019 11:43:58 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfjre-0000kD-Kx
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 11:43:56 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 948735FE8C;
 Tue, 25 Jun 2019 13:43:53 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="rykIg+K/"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 52A5F1CC9F46;
 Tue, 25 Jun 2019 13:43:53 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 52A5F1CC9F46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561463033;
 bh=LQRQ8DBAB6FIqn20MCfiPVLtJAFdlgGH6y1bLKjAEDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rykIg+K/HYYlQ3QQH13i560cCzuaQMCUn9of21ci1EfppRY1JDAzUmEqsTLMr3wtg
 SgeZ2/FR1WaDJjtwnpZxjYMR0D4rR+gw3ESqB+GJRUKs+4nPCYv85LGTQSiST3uMJP
 i0/dXDpQemn53nsPogHdHYUf/5pF3piezrDw+g6e0+21clRqYIN+wsS+DRlnWisAwq
 hWy9PY2obRNrNOV9vzv6D7acQckjl1K1eEE22v+d5W4gn9Q6LLRlDIaP5CT6mXyDvv
 cezHDtSUzcQ+kafOwk2fHX9TwFiQh/YoFqnDDiMjDoJT+kCLIDba+l8gPL9YsA9O5I
 /AYOogdqktXCA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 25 Jun 2019 11:43:53 +0000
Date: Tue, 25 Jun 2019 11:43:53 +0000
Message-ID: <20190625114353.Horde.4RpHmJ_wFvXA1oXtXG2oZSq@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Daniel Santos <daniel.santos@pobox.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <13c67cb7-b33e-f2b1-9d1e-d2882e0ff076@pobox.com>
In-Reply-To: <13c67cb7-b33e-f2b1-9d1e-d2882e0ff076@pobox.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_044354_970990_4FA0E3D1 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 vivien.didelot@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, linux-mips@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBEYW5pZWwgU2FudG9zIDxkYW5pZWwuc2FudG9zQHBvYm94LmNvbT46CgpIaSBEYW5p
ZWwsCgo+IE9uIDYvMjQvMTkgOTo1MiBBTSwgUmVuw6kgdmFuIERvcnN0IHdyb3RlOgo+PiBDb252
ZXJ0IG10NzUzMCB0byBQSFlMSU5LIEFQSQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4g
RG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL25ldC9kc2Ev
bXQ3NTMwLmMgfCAyMzcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4+
ICBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmggfCAgIDkgKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTg3IGluc2VydGlvbnMoKyksIDU5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZHNhL210NzUzMC5jIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCj4+IGluZGV4
IDMxODFlOTU1ODZkNi4uOWM1ZTRkZDAwODI2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9k
c2EvbXQ3NTMwLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCj4+IEBAIC0xMyw3
ICsxMyw3IEBACj4+ICAjaW5jbHVkZSA8bGludXgvb2ZfbWRpby5oPgo+PiAgI2luY2x1ZGUgPGxp
bnV4L29mX25ldC5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L29mX3BsYXRmb3JtLmg+Cj4+IC0jaW5j
bHVkZSA8bGludXgvcGh5Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcGh5bGluay5oPgo+PiAgI2lu
Y2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25z
dW1lci5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4+IEBAIC02MzMsNjMgKzYzMyw2
IEBAIG10NzUzMF9nZXRfc3NldF9jb3VudChzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsICAKPj4gaW50
IHBvcnQsIGludCBzc2V0KQo+PiAgCXJldHVybiBBUlJBWV9TSVpFKG10NzUzMF9taWIpOwo+PiAg
fQo+Pgo+PiAtc3RhdGljIHZvaWQgbXQ3NTMwX2FkanVzdF9saW5rKHN0cnVjdCBkc2Ffc3dpdGNo
ICpkcywgaW50IHBvcnQsCj4+IC0JCQkgICAgICAgc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikK
Pj4gLXsKPj4gLQlzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYgPSBkcy0+cHJpdjsKPj4gLQo+PiAt
CWlmIChwaHlfaXNfcHNldWRvX2ZpeGVkX2xpbmsocGh5ZGV2KSkgewo+PiAtCQlkZXZfZGJnKHBy
aXYtPmRldiwgInBoeS1tb2RlIGZvciBtYXN0ZXIgZGV2aWNlID0gJXhcbiIsCj4+IC0JCQlwaHlk
ZXYtPmludGVyZmFjZSk7Cj4+IC0KPj4gLQkJLyogU2V0dXAgVFggY2lyY3VpdCBpbmNsdWluZyBy
ZWxldmFudCBQQUQgYW5kIGRyaXZpbmcgKi8KPj4gLQkJbXQ3NTMwX3BhZF9jbGtfc2V0dXAoZHMs
IHBoeWRldi0+aW50ZXJmYWNlKTsKPj4gLQo+PiAtCQlpZiAocHJpdi0+aWQgPT0gSURfTVQ3NTMw
KSB7Cj4+IC0JCQkvKiBTZXR1cCBSWCBjaXJjdWl0LCByZWxldmFudCBQQUQgYW5kIGRyaXZpbmcg
b24gdGhlCj4+IC0JCQkgKiBob3N0IHdoaWNoIG11c3QgYmUgcGxhY2VkIGFmdGVyIHRoZSBzZXR1
cCBvbiB0aGUKPj4gLQkJCSAqIGRldmljZSBzaWRlIGlzIGFsbCBmaW5pc2hlZC4KPj4gLQkJCSAq
Lwo+PiAtCQkJbXQ3NjIzX3BhZF9jbGtfc2V0dXAoZHMpOwo+PiAtCQl9Cj4+IC0JfSBlbHNlIHsK
Pj4gLQkJdTE2IGxjbF9hZHYgPSAwLCBybXRfYWR2ID0gMDsKPj4gLQkJdTggZmxvd2N0cmw7Cj4+
IC0JCXUzMiBtY3IgPSBQTUNSX1VTRVJQX0xJTksgfCBQTUNSX0ZPUkNFX01PREU7Cj4+IC0KPj4g
LQkJc3dpdGNoIChwaHlkZXYtPnNwZWVkKSB7Cj4+IC0JCWNhc2UgU1BFRURfMTAwMDoKPj4gLQkJ
CW1jciB8PSBQTUNSX0ZPUkNFX1NQRUVEXzEwMDA7Cj4+IC0JCQlicmVhazsKPj4gLQkJY2FzZSBT
UEVFRF8xMDA6Cj4+IC0JCQltY3IgfD0gUE1DUl9GT1JDRV9TUEVFRF8xMDA7Cj4+IC0JCQlicmVh
azsKPj4gLQkJfQo+PiAtCj4+IC0JCWlmIChwaHlkZXYtPmxpbmspCj4+IC0JCQltY3IgfD0gUE1D
Ul9GT1JDRV9MTks7Cj4+IC0KPj4gLQkJaWYgKHBoeWRldi0+ZHVwbGV4KSB7Cj4+IC0JCQltY3Ig
fD0gUE1DUl9GT1JDRV9GRFg7Cj4+IC0KPj4gLQkJCWlmIChwaHlkZXYtPnBhdXNlKQo+PiAtCQkJ
CXJtdF9hZHYgPSBMUEFfUEFVU0VfQ0FQOwo+PiAtCQkJaWYgKHBoeWRldi0+YXN5bV9wYXVzZSkK
Pj4gLQkJCQlybXRfYWR2IHw9IExQQV9QQVVTRV9BU1lNOwo+PiAtCj4+IC0JCQlsY2xfYWR2ID0g
bGlua21vZGVfYWR2X3RvX2xjbF9hZHZfdCgKPj4gLQkJCQlwaHlkZXYtPmFkdmVydGlzaW5nKTsK
Pj4gLQkJCWZsb3djdHJsID0gbWlpX3Jlc29sdmVfZmxvd2N0cmxfZmR4KGxjbF9hZHYsIHJtdF9h
ZHYpOwo+PiAtCj4+IC0JCQlpZiAoZmxvd2N0cmwgJiBGTE9XX0NUUkxfVFgpCj4+IC0JCQkJbWNy
IHw9IFBNQ1JfVFhfRkNfRU47Cj4+IC0JCQlpZiAoZmxvd2N0cmwgJiBGTE9XX0NUUkxfUlgpCj4+
IC0JCQkJbWNyIHw9IFBNQ1JfUlhfRkNfRU47Cj4+IC0JCX0KPj4gLQkJbXQ3NTMwX3dyaXRlKHBy
aXYsIE1UNzUzMF9QTUNSX1AocG9ydCksIG1jcik7Cj4+IC0JfQo+PiAtfQo+PiAtCj4+ICBzdGF0
aWMgaW50Cj4+ICBtdDc1MzBfY3B1X3BvcnRfZW5hYmxlKHN0cnVjdCBtdDc1MzBfcHJpdiAqcHJp
diwKPj4gIAkJICAgICAgIGludCBwb3J0KQo+PiBAQCAtMTMyMyw2ICsxMjY2LDE3OCBAQCBtdDc1
MzBfc2V0dXAoc3RydWN0IGRzYV9zd2l0Y2ggKmRzKQo+PiAgCXJldHVybiAwOwo+PiAgfQo+Pgo+
PiArc3RhdGljIHZvaWQgbXQ3NTMwX3BoeWxpbmtfbWFjX2NvbmZpZyhzdHJ1Y3QgZHNhX3N3aXRj
aCAqZHMsIGludCBwb3J0LAo+PiArCQkJCSAgICAgIHVuc2lnbmVkIGludCBtb2RlLAo+PiArCQkJ
CSAgICAgIGNvbnN0IHN0cnVjdCBwaHlsaW5rX2xpbmtfc3RhdGUgKnN0YXRlKQo+PiArewo+PiAr
CXN0cnVjdCBtdDc1MzBfcHJpdiAqcHJpdiA9IGRzLT5wcml2Owo+PiArCXUzMiBtY3IgPSBQTUNS
X0lGR19YTUlUKDEpIHwgUE1DUl9NQUNfTU9ERSB8IFBNQ1JfQkFDS09GRl9FTiB8Cj4+ICsJCSAg
UE1DUl9CQUNLUFJfRU4gfCBQTUNSX1RYX0VOIHwgUE1DUl9SWF9FTjsKPj4gKwo+PiArCXN3aXRj
aCAocG9ydCkgewo+PiArCWNhc2UgMDogLyogSW50ZXJuYWwgcGh5ICovCj4+ICsJY2FzZSAxOgo+
PiArCWNhc2UgMjoKPj4gKwljYXNlIDM6Cj4+ICsJY2FzZSA0Ogo+PiArCQlpZiAoc3RhdGUtPmlu
dGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfR01JSSkKPj4gKwkJCWdvdG8gdW5zdXBwb3J0
ZWQ7Cj4+ICsJCWJyZWFrOwo+PiArCS8qIGNhc2UgNTogUG9ydCA1IGlzIG5vdCBzdXBwb3J0ZWQh
ICovCj4+ICsJY2FzZSA2OiAvKiAxc3QgY3B1IHBvcnQgKi8KPj4gKwkJaWYgKHN0YXRlLT5pbnRl
cmZhY2UgIT0gUEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJICYmCj4+ICsJCSAgICBzdGF0ZS0+aW50
ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUkpCj4+ICsJCQlnb3RvIHVuc3VwcG9y
dGVkOwo+PiArCj4+ICsJCS8qIFNldHVwIFRYIGNpcmN1aXQgaW5jbHVpbmcgcmVsZXZhbnQgUEFE
IGFuZCBkcml2aW5nICovCj4+ICsJCW10NzUzMF9wYWRfY2xrX3NldHVwKGRzLCBzdGF0ZS0+aW50
ZXJmYWNlKTsKPj4gKwo+PiArCQlpZiAocHJpdi0+aWQgPT0gSURfTVQ3NTMwKSB7Cj4+ICsJCQkv
KiBTZXR1cCBSWCBjaXJjdWl0LCByZWxldmFudCBQQUQgYW5kIGRyaXZpbmcgb24gdGhlCj4+ICsJ
CQkgKiBob3N0IHdoaWNoIG11c3QgYmUgcGxhY2VkIGFmdGVyIHRoZSBzZXR1cCBvbiB0aGUKPj4g
KwkJCSAqIGRldmljZSBzaWRlIGlzIGFsbCBmaW5pc2hlZC4KPj4gKwkJCSAqLwo+PiArCQkJbXQ3
NjIzX3BhZF9jbGtfc2V0dXAoZHMpOwo+PiArCQl9Cj4+ICsJCWJyZWFrOwo+PiArCWRlZmF1bHQ6
Cj4+ICsJCWRldl9lcnIoZHMtPmRldiwgIiVzOiB1bnN1cHBvcnRlZCBwb3J0OiAlaVxuIiwgX19m
dW5jX18sIHBvcnQpOwo+PiArCQlyZXR1cm47Cj4+ICsJfQo+PiArCj4+ICsJaWYgKCFzdGF0ZS0+
YW5fZW5hYmxlZCB8fCBtb2RlID09IE1MT19BTl9GSVhFRCkgewo+PiArCQltY3IgfD0gUE1DUl9G
T1JDRV9NT0RFOwo+PiArCj4+ICsJCWlmIChzdGF0ZS0+c3BlZWQgPT0gU1BFRURfMTAwMCkKPj4g
KwkJCW1jciB8PSBQTUNSX0ZPUkNFX1NQRUVEXzEwMDA7Cj4+ICsJCWlmIChzdGF0ZS0+c3BlZWQg
PT0gU1BFRURfMTAwKQo+PiArCQkJbWNyIHw9IFBNQ1JfRk9SQ0VfU1BFRURfMTAwOwo+Cj4gSSB3
b3VsZCBzdWdnZXN0IHVzaW5nIHRoZSBkZWZpbmVzCj4KPiAjZGVmaW5lIFBNQ1JfRk9SQ0VfU1BF
RUQJMHgwMDAwMDAwYyAvKiBvciBQTUNSX0ZPUkNFX1NQRUVEX01BU0sgKi8KPiAjZGVmaW5lIFBN
Q1JfRk9SQ0VfU1BFRURfMTAJMHgwMDAwMDAwMAo+ICNkZWZpbmUgUE1DUl9GT1JDRV9TUEVFRF8x
MDAJMHgwMDAwMDAwNAo+ICNkZWZpbmUgUE1DUl9GT1JDRV9TUEVFRF8xMDAwCTB4MDAwMDAwMDgK
Pgo+IGFuZCBhIHN3aXRjaCBzdGF0ZW1lbnQgc3VjaCBhcwo+Cj4gCXN3aXRjaCAoc3RhdGUtPnNw
ZWVkKSB7Cj4gCWNhc2UgU1BFRURfMTA6Cj4gCQltY3IgfD0gUE1DUl9GT1JDRV9TUEVFRF8xMDsK
PiAJCWJyZWFrOwo+IAljYXNlIFNQRUVEXzEwMDoKPiAJCW1jciB8PSBQTUNSX0ZPUkNFX1NQRUVE
XzEwMDsKPiAJCWJyZWFrOwo+IAljYXNlIFNQRUVEXzEwMDA6Cj4gCQltY3IgfD0gUE1DUl9GT1JD
RV9TUEVFRF8xMDAwOwo+IAkJYnJlYWs7Cj4gCX0KPgo+IFRoaXMgd2lsbCBjb21waWxlIHRoZSBz
YW1lIChpLmUsIHRoZSBtY3IgfD0gMCB3aWxsIG9wdGltaXplIGF3YXksIGV0Yy4pLAo+IHdoaWxl
IGFsbGV2aWF0aW5nIHRoZSBuZWVkIHRvIGludGltYXRlbHkga25vdyB0aGUgaGFyZHdhcmUgaW4g
b3JkZXIgdG8KPiBlYXNpbHkgdW5kZXJzdGFuZCB3aGF0IHRoZSBjb2RlIGlzIGRvaW5nIGF0IGEg
Z2xhbmNlLsKgIEl0J3MgYWxzbyBiZXR0ZXIKPiBmb3JtIGFzIHdlJ3JlIHRyZWF0aW5nIHRoZSB0
d28gYml0cyBhcyBhIGNvbXBvc2l0ZSB2YWx1ZSwgcmF0aGVyIHRoYW4KPiB0d28gc2VwYXJhdGUg
Yml0cy4KCkkgd2lsbCBjaGFuZ2UgaXQgYmFzZWQgb24geW91ciBzdXJnZXN0aW9uLgoKPgo+Cj4+
ICsJCWlmIChzdGF0ZS0+ZHVwbGV4ID09IERVUExFWF9GVUxMKQo+PiArCQkJbWNyIHw9IFBNQ1Jf
Rk9SQ0VfRkRYOwo+PiArCQlpZiAoc3RhdGUtPmxpbmsgfHwgbW9kZSA9PSBNTE9fQU5fRklYRUQp
Cj4+ICsJCQltY3IgfD0gUE1DUl9GT1JDRV9MTks7Cj4+ICsJCWlmIChzdGF0ZS0+cGF1c2UgfHwg
cGh5bGlua190ZXN0KHN0YXRlLT5hZHZlcnRpc2luZywgUGF1c2UpKQo+PiArCQkJbWNyIHw9IFBN
Q1JfVFhfRkNfRU4gfCBQTUNSX1JYX0ZDX0VOOwo+PiArCQlpZiAoc3RhdGUtPnBhdXNlICYgTUxP
X1BBVVNFX1RYKQo+PiArCQkJbWNyIHw9IFBNQ1JfVFhfRkNfRU47Cj4+ICsJCWlmIChzdGF0ZS0+
cGF1c2UgJiBNTE9fUEFVU0VfUlgpCj4+ICsJCQltY3IgfD0gUE1DUl9SWF9GQ19FTjsKPj4gKwl9
Cj4+ICsKPj4gKwltdDc1MzBfd3JpdGUocHJpdiwgTVQ3NTMwX1BNQ1JfUChwb3J0KSwgbWNyKTsK
Pj4gKwo+PiArCXJldHVybjsKPj4gKwo+PiArdW5zdXBwb3J0ZWQ6Cj4+ICsJZGV2X2Vycihkcy0+
ZGV2LCAiJXM6IFAlZDogVW5zdXBwb3J0ZWQgcGh5X2ludGVyZmFjZSBtb2RlOiAlZCAoJXMpXG4i
LAo+PiArCQlfX2Z1bmNfXywgcG9ydCwgc3RhdGUtPmludGVyZmFjZSwgcGh5X21vZGVzKHN0YXRl
LT5pbnRlcmZhY2UpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgbXQ3NTMwX3BoeWxpbmtf
bWFjX2xpbmtfZG93bihzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBwb3J0LAo+PiArCQkJCQkg
dW5zaWduZWQgaW50IG1vZGUsCj4+ICsJCQkJCSBwaHlfaW50ZXJmYWNlX3QgaW50ZXJmYWNlKQo+
PiArewo+PiArCS8qIERvIG5vdGhpbmcgKi8KPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgbXQ3
NTMwX3BoeWxpbmtfbWFjX2xpbmtfdXAoc3RydWN0IGRzYV9zd2l0Y2ggKmRzLCBpbnQgcG9ydCwK
Pj4gKwkJCQkgICAgICAgdW5zaWduZWQgaW50IG1vZGUsCj4+ICsJCQkJICAgICAgIHBoeV9pbnRl
cmZhY2VfdCBpbnRlcmZhY2UsCj4+ICsJCQkJICAgICAgIHN0cnVjdCBwaHlfZGV2aWNlICpwaHlk
ZXYpCj4+ICt7Cj4+ICsJLyogRG8gbm90aGluZyAqLwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9p
ZCBtdDc1MzBfcGh5bGlua192YWxpZGF0ZShzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBwb3J0
LAo+PiArCQkJCSAgICB1bnNpZ25lZCBsb25nICpzdXBwb3J0ZWQsCj4+ICsJCQkJICAgIHN0cnVj
dCBwaHlsaW5rX2xpbmtfc3RhdGUgKnN0YXRlKQo+PiArewo+PiArCV9fRVRIVE9PTF9ERUNMQVJF
X0xJTktfTU9ERV9NQVNLKG1hc2spID0geyAwLCB9Owo+PiArCj4+ICsJc3dpdGNoIChwb3J0KSB7
Cj4+ICsJY2FzZSAwOiAvKiBJbnRlcm5hbCBwaHkgKi8KPj4gKwljYXNlIDE6Cj4+ICsJY2FzZSAy
Ogo+PiArCWNhc2UgMzoKPj4gKwljYXNlIDQ6Cj4+ICsJCWlmIChzdGF0ZS0+aW50ZXJmYWNlICE9
IFBIWV9JTlRFUkZBQ0VfTU9ERV9OQSAmJgo+PiArCQkgICAgc3RhdGUtPmludGVyZmFjZSAhPSBQ
SFlfSU5URVJGQUNFX01PREVfR01JSSkKPj4gKwkJCWdvdG8gdW5zdXBwb3J0ZWQ7Cj4+ICsJCWJy
ZWFrOwo+PiArCS8qIGNhc2UgNTogUG9ydCA1IG5vdCBzdXBwb3J0ZWQhICovCj4+ICsJY2FzZSA2
OiAvKiAxc3QgY3B1IHBvcnQgKi8KPj4gKwkJaWYgKHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZX0lO
VEVSRkFDRV9NT0RFX1JHTUlJICYmCj4+ICsJCSAgICBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9J
TlRFUkZBQ0VfTU9ERV9UUkdNSUkpCj4+ICsJCQlnb3RvIHVuc3VwcG9ydGVkOwo+PiArCQlicmVh
azsKPj4gKwlkZWZhdWx0Ogo+PiArCQlsaW5rbW9kZV96ZXJvKHN1cHBvcnRlZCk7Cj4+ICsJCWRl
dl9lcnIoZHMtPmRldiwgIiVzOiB1bnN1cHBvcnRlZCBwb3J0OiAlaVxuIiwgX19mdW5jX18sIHBv
cnQpOwo+PiArCQlyZXR1cm47Cj4+ICsJfQo+PiArCj4+ICsJcGh5bGlua19zZXQobWFzaywgQXV0
b25lZyk7Cj4+ICsJcGh5bGlua19zZXQobWFzaywgUGF1c2UpOwo+PiArCXBoeWxpbmtfc2V0KG1h
c2ssIEFzeW1fUGF1c2UpOwo+PiArCXBoeWxpbmtfc2V0KG1hc2ssIE1JSSk7Cj4+ICsKPj4gKwlw
aHlsaW5rX3NldChtYXNrLCAxMGJhc2VUX0hhbGYpOwo+PiArCXBoeWxpbmtfc2V0KG1hc2ssIDEw
YmFzZVRfRnVsbCk7Cj4+ICsJcGh5bGlua19zZXQobWFzaywgMTAwYmFzZVRfSGFsZik7Cj4+ICsJ
cGh5bGlua19zZXQobWFzaywgMTAwYmFzZVRfRnVsbCk7Cj4+ICsJcGh5bGlua19zZXQobWFzaywg
MTAwMGJhc2VUX0Z1bGwpOwo+PiArCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9IYWxmKTsK
Pj4gKwo+PiArCWxpbmttb2RlX2FuZChzdXBwb3J0ZWQsIHN1cHBvcnRlZCwgbWFzayk7Cj4+ICsJ
bGlua21vZGVfYW5kKHN0YXRlLT5hZHZlcnRpc2luZywgc3RhdGUtPmFkdmVydGlzaW5nLCBtYXNr
KTsKPj4gKwlyZXR1cm47Cj4+ICsKPj4gK3Vuc3VwcG9ydGVkOgo+PiArCWxpbmttb2RlX3plcm8o
c3VwcG9ydGVkKTsKPj4gKwlkZXZfZXJyKGRzLT5kZXYsICIlczogdW5zdXBwb3J0ZWQgaW50ZXJm
YWNlIG1vZGU6IFsweCV4XSAlc1xuIiwKPj4gKwkJX19mdW5jX18sIHN0YXRlLT5pbnRlcmZhY2Us
IHBoeV9tb2RlcyhzdGF0ZS0+aW50ZXJmYWNlKSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQK
Pj4gK210NzUzMF9waHlsaW5rX21hY19saW5rX3N0YXRlKHN0cnVjdCBkc2Ffc3dpdGNoICpkcywg
aW50IHBvcnQsCj4+ICsJCQkgICAgICBzdHJ1Y3QgcGh5bGlua19saW5rX3N0YXRlICpzdGF0ZSkK
Pj4gK3sKPj4gKwlzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYgPSBkcy0+cHJpdjsKPj4gKwl1MzIg
cG1zcjsKPj4gKwo+PiArCWlmIChwb3J0IDwgMCB8fCBwb3J0ID49IE1UNzUzMF9OVU1fUE9SVFMp
Cj4+ICsJCXJldHVybiAtRUlOVkFMOwo+PiArCj4+ICsJcG1zciA9IG10NzUzMF9yZWFkKHByaXYs
IE1UNzUzMF9QTVNSX1AocG9ydCkpOwo+PiArCj4+ICsJc3RhdGUtPmxpbmsgPSAocG1zciAmIFBN
U1JfTElOSyk7Cj4+ICsJc3RhdGUtPmFuX2NvbXBsZXRlID0gc3RhdGUtPmxpbms7Cj4+ICsJc3Rh
dGUtPmR1cGxleCA9IChwbXNyICYgUE1TUl9EUFgpID4+IDE7Cj4+ICsKPj4gKwlzd2l0Y2ggKHBt
c3IgJiAoUE1TUl9TUEVFRF8xMDAwIHwgUE1TUl9TUEVFRF8xMDApKSB7Cj4+ICsJY2FzZSAwOgo+
PiArCQlzdGF0ZS0+c3BlZWQgPSBTUEVFRF8xMDsKPj4gKwkJYnJlYWs7Cj4+ICsJY2FzZSBQTVNS
X1NQRUVEXzEwMDoKPj4gKwkJc3RhdGUtPnNwZWVkID0gU1BFRURfMTAwOwo+PiArCQlicmVhazsK
Pj4gKwljYXNlIFBNU1JfU1BFRURfMTAwMDoKPj4gKwkJc3RhdGUtPnNwZWVkID0gU1BFRURfMTAw
MDsKPj4gKwkJYnJlYWs7Cj4+ICsJZGVmYXVsdDoKPj4gKwkJc3RhdGUtPnNwZWVkID0gU1BFRURf
VU5LTk9XTjsKPj4gKwkJYnJlYWs7Cj4+ICsJfQo+PiArCj4KPiBTYW1lIGFzIGFib3ZlOiBhZGQg
UE1TUl9TUEVFRF8xMCwgYW5kIGFuZCB3aXRoIFBNU1JfU1BFRUQgKG9yCj4gUE1TUl9TUEVFRF9N
QVNLIGlmIHlvdSBwcmVmZXIpLgoKU2FtZSBhcyBhYm92ZS4KCj4KPj4gKwlzdGF0ZS0+cGF1c2Ug
PSAwOwo+PiArCWlmIChwbXNyICYgUE1TUl9SWF9GQykKPj4gKwkJc3RhdGUtPnBhdXNlIHw9IE1M
T19QQVVTRV9SWDsKPj4gKwlpZiAocG1zciAmIFBNU1JfVFhfRkMpCj4+ICsJCXN0YXRlLT5wYXVz
ZSB8PSBNTE9fUEFVU0VfVFg7Cj4+ICsKPj4gKwlyZXR1cm4gMTsKPj4gK30KPj4gKwo+PiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkc2Ffc3dpdGNoX29wcyBtdDc1MzBfc3dpdGNoX29wcyA9IHsKPj4g
IAkuZ2V0X3RhZ19wcm90b2NvbAk9IG10a19nZXRfdGFnX3Byb3RvY29sLAo+PiAgCS5zZXR1cAkJ
CT0gbXQ3NTMwX3NldHVwLAo+PiBAQCAtMTMzMSw3ICsxNDQ2LDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkc2Ffc3dpdGNoX29wcyAgCj4+IG10NzUzMF9zd2l0Y2hfb3BzID0gewo+PiAgCS5waHlf
d3JpdGUJCT0gbXQ3NTMwX3BoeV93cml0ZSwKPj4gIAkuZ2V0X2V0aHRvb2xfc3RhdHMJPSBtdDc1
MzBfZ2V0X2V0aHRvb2xfc3RhdHMsCj4+ICAJLmdldF9zc2V0X2NvdW50CQk9IG10NzUzMF9nZXRf
c3NldF9jb3VudCwKPj4gLQkuYWRqdXN0X2xpbmsJCT0gbXQ3NTMwX2FkanVzdF9saW5rLAo+PiAg
CS5wb3J0X2VuYWJsZQkJPSBtdDc1MzBfcG9ydF9lbmFibGUsCj4+ICAJLnBvcnRfZGlzYWJsZQkJ
PSBtdDc1MzBfcG9ydF9kaXNhYmxlLAo+PiAgCS5wb3J0X3N0cF9zdGF0ZV9zZXQJPSBtdDc1MzBf
c3RwX3N0YXRlX3NldCwKPj4gQEAgLTEzNDQsNiArMTQ1OCwxMSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRzYV9zd2l0Y2hfb3BzICAKPj4gbXQ3NTMwX3N3aXRjaF9vcHMgPSB7Cj4+ICAJLnBvcnRf
dmxhbl9wcmVwYXJlCT0gbXQ3NTMwX3BvcnRfdmxhbl9wcmVwYXJlLAo+PiAgCS5wb3J0X3ZsYW5f
YWRkCQk9IG10NzUzMF9wb3J0X3ZsYW5fYWRkLAo+PiAgCS5wb3J0X3ZsYW5fZGVsCQk9IG10NzUz
MF9wb3J0X3ZsYW5fZGVsLAo+PiArCS5waHlsaW5rX3ZhbGlkYXRlCT0gbXQ3NTMwX3BoeWxpbmtf
dmFsaWRhdGUsCj4+ICsJLnBoeWxpbmtfbWFjX2xpbmtfc3RhdGUgPSBtdDc1MzBfcGh5bGlua19t
YWNfbGlua19zdGF0ZSwKPj4gKwkucGh5bGlua19tYWNfY29uZmlnCT0gbXQ3NTMwX3BoeWxpbmtf
bWFjX2NvbmZpZywKPj4gKwkucGh5bGlua19tYWNfbGlua19kb3duCT0gbXQ3NTMwX3BoeWxpbmtf
bWFjX2xpbmtfZG93biwKPj4gKwkucGh5bGlua19tYWNfbGlua191cAk9IG10NzUzMF9waHlsaW5r
X21hY19saW5rX3VwLAo+PiAgfTsKPj4KPj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNl
X2lkIG10NzUzMF9vZl9tYXRjaFtdID0gewo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZHNh
L210NzUzMC5oIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5oCj4+IGluZGV4IGJmYWM5MGY0ODEw
Mi4uNDFkOWExMzJhYzcwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmgK
Pj4gKysrIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5oCj4+IEBAIC0xOTgsNiArMTk4LDcgQEAg
ZW51bSBtdDc1MzBfdmxhbl9wb3J0X2F0dHIgewo+PiAgI2RlZmluZSAgUE1DUl9GT1JDRV9TUEVF
RF8xMDAJCUJJVCgyKQo+PiAgI2RlZmluZSAgUE1DUl9GT1JDRV9GRFgJCQlCSVQoMSkKPj4gICNk
ZWZpbmUgIFBNQ1JfRk9SQ0VfTE5LCQkJQklUKDApCj4+ICsjZGVmaW5lICBQTUNSX0ZPUkNFX0xO
S19ET1dOCQlQTUNSX0ZPUkNFX01PREUKPj4gICNkZWZpbmUgIFBNQ1JfQ09NTU9OX0xJTksJCShQ
TUNSX0lGR19YTUlUKDEpIHwgUE1DUl9NQUNfTU9ERSB8IFwKPj4gIAkJCQkJIFBNQ1JfQkFDS09G
Rl9FTiB8IFBNQ1JfQkFDS1BSX0VOIHwgXAo+PiAgCQkJCQkgUE1DUl9UWF9FTiB8IFBNQ1JfUlhf
RU4gfCBcCj4+IEBAIC0yMTgsNiArMjE5LDE0IEBAIGVudW0gbXQ3NTMwX3ZsYW5fcG9ydF9hdHRy
IHsKPj4gIAkJCQkJIFBNQ1JfVFhfRkNfRU4gfCBQTUNSX1JYX0ZDX0VOKQo+Pgo+PiAgI2RlZmlu
ZSBNVDc1MzBfUE1TUl9QKHgpCQkoMHgzMDA4ICsgKHgpICogMHgxMDApCj4+ICsjZGVmaW5lICBQ
TVNSX0VFRTFHCQkJQklUKDcpCj4+ICsjZGVmaW5lICBQTVNSX0VFRTEwME0JCQlCSVQoNikKPj4g
KyNkZWZpbmUgIFBNU1JfUlhfRkMJCQlCSVQoNSkKPj4gKyNkZWZpbmUgIFBNU1JfVFhfRkMJCQlC
SVQoNCkKPj4gKyNkZWZpbmUgIFBNU1JfU1BFRURfMTAwMAkJQklUKDMpCj4+ICsjZGVmaW5lICBQ
TVNSX1NQRUVEXzEwMAkJCUJJVCgyKQo+PiArI2RlZmluZSAgUE1TUl9EUFgJCQlCSVQoMSkKPj4g
KyNkZWZpbmUgIFBNU1JfTElOSwkJCUJJVCgwKQo+Pgo+PiAgLyogUmVnaXN0ZXIgZm9yIE1JQiAq
Lwo+PiAgI2RlZmluZSBNVDc1MzBfUE9SVF9NSUJfQ09VTlRFUih4KQkoMHg0MDAwICsgKHgpICog
MHgxMDApCj4KPiBDaGVlcnMsCj4gRGFuaWVsCgpHcmVhdHMsCgpSZW7DqQoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFp
bGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
