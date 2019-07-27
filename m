Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377E777C0A
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 23:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zMJrU2xzsYc0kLMCFW7BJs9j2xKPu+/P8GbKatWM+K4=; b=hZ6nLcnL+Z9p4ll6KAHz4TUQE
	WlLlGUSKsUQnYrqL27pJnfjLXuhp7oukmmLC/C6qyA3aY8mtQ1nRm7nHcPYUIXQQ5Y5Shy5oyagXG
	H2Ee7bPb8f0dsquRQ7guMxAwrx2WBOBHvImELY3LNOh+72FXgXal5kvozhep8a2y2IrRklRf8t0OR
	ZhMPstOAbO9FGhyxjiYyhGwO7tu6WEhYI7VRIRgLIEv2z9FD0Ob2HYNbYUHDpFCSkksSqiVJ6D4Sa
	e1VhIQ7Mt00Bfc7zjX9Qvwj3a/RU+i8CAiXI1YxEAIuRoLwmLmSTAH1RS9AUvAuXELfZVLhCYZXap
	42yHiSDTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrUDU-0004L8-1p; Sat, 27 Jul 2019 21:27:00 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hrUDP-0004Kd-2B
 for linux-mediatek@lists.infradead.org; Sat, 27 Jul 2019 21:26:57 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id E77FC5FCC5;
 Sat, 27 Jul 2019 23:26:51 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="jsFd+ABS"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id A197B1D2D645;
 Sat, 27 Jul 2019 23:26:51 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com A197B1D2D645
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1564262811;
 bh=SFR3bUVvIq6pX0wkGHe6MZLI5+Iv395Kikc+l/TDe6o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jsFd+ABSum56iaZQcEk9e1dqBnhKVibiNGz4Chwm09e9/lBqqn/e8SugXWaRRJo6U
 pozgPieVCYa55VZHuVF91iMGi8v8gAg8ALChLkx1jHwqQDu9cPBEpbZxGa9atCM9R3
 Ss1R5D/uKHZXqeVNMrLYTP0TtpQpcrD7G6W3ZdlFqp1KdAki5SUXqJJSWs2lHr81tY
 2BJ7CN6SFjvJdL9PSvnOyzx+PhAaNDP9gkETOmV4ujz1WGQp26lenmBByahoO9FAXS
 WoIPHmghIaX7QejI4r0qSkUNmX58WP7+dicye1VXj/2qFdYqm6Nmf8m1nYjH/HT84l
 FhK11V2npDkeg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 27 Jul 2019 21:26:51 +0000
Date: Sat, 27 Jul 2019 21:26:51 +0000
Message-ID: <20190727212651.Horde.WrWPsZ4JpBQzJT2cFdGafCP@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next 3/3] net: dsa: mt7530: Add support for port 5
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-4-opensource@vdorst.com>
 <20190727185315.GU1330@shell.armlinux.org.uk>
In-Reply-To: <20190727185315.GU1330@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_142655_523352_7CF15B7B 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9y
Zy51az46Cgo+IE9uIFdlZCwgSnVsIDI0LCAyMDE5IGF0IDA5OjI1OjQ5UE0gKzAyMDAsIFJlbsOp
IHZhbiBEb3JzdCB3cm90ZToKPj4gQWRkaW5nIHN1cHBvcnQgZm9yIHBvcnQgNS4KPj4KPj4gUG9y
dCA1IGNhbiBtdXhlZC9pbnRlcmZhY2UgdG86Cj4+IC0gaW50ZXJuYWwgNXRoIEdNQUMgb2YgdGhl
IHN3aXRjaDsgY2FuIGJlIHVzZWQgYXMgMm5kIENQVSBwb3J0IG9yIGFzCj4+ICAgZXh0cmEgcG9y
dCB3aXRoIGFuIGV4dGVybmFsIHBoeSBmb3IgYSA2dGggZXRoZXJuZXQgcG9ydC4KPj4gLSBpbnRl
cm5hbCBQSFkgb2YgcG9ydCAwIG9yIDQ7IFVzZWQgaW4gbW9zdCBhcHBsaWNhdGlvbnMgc28gdGhh
dCBwb3J0IDAKPj4gICBvciA0IGlzIHRoZSBXQU4gcG9ydCBhbmQgaW50ZXJmYWNlcyB3aXRoIHRo
ZSAybmQgR01BQyBvZiB0aGUgU09DLgo+Cj4gLi4uCj4KPj4gQEAgLTEzODEsMTUgKzE1MDYsMTkg
QEAgc3RhdGljIHZvaWQgbXQ3NTMwX3BoeWxpbmtfdmFsaWRhdGUoc3RydWN0ICAKPj4gZHNhX3N3
aXRjaCAqZHMsIGludCBwb3J0LAo+PiAgCXBoeWxpbmtfc2V0X3BvcnRfbW9kZXMobWFzayk7Cj4+
ICAJcGh5bGlua19zZXQobWFzaywgQXV0b25lZyk7Cj4+Cj4+IC0JaWYgKHN0YXRlLT5pbnRlcmZh
Y2UgIT0gUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01JSSkgewo+PiArCWlmIChzdGF0ZS0+aW50ZXJm
YWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUkpIHsKPj4gKwkJcGh5bGlua19zZXQobWFz
aywgMTAwMGJhc2VUX0Z1bGwpOwo+PiArCX0gZWxzZSB7Cj4+ICAJCXBoeWxpbmtfc2V0KG1hc2ss
IDEwYmFzZVRfSGFsZik7Cj4+ICAJCXBoeWxpbmtfc2V0KG1hc2ssIDEwYmFzZVRfRnVsbCk7Cj4+
ICAJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMGJhc2VUX0hhbGYpOwo+PiAgCQlwaHlsaW5rX3NldCht
YXNrLCAxMDBiYXNlVF9GdWxsKTsKPj4gLQkJcGh5bGlua19zZXQobWFzaywgMTAwMGJhc2VUX0hh
bGYpOwo+PiAtCX0KPj4KPj4gLQlwaHlsaW5rX3NldChtYXNrLCAxMDAwYmFzZVRfRnVsbCk7Cj4+
ICsJCWlmIChzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9NSUkpIHsKPj4g
KwkJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9IYWxmKTsKPj4gKwkJCXBoeWxpbmtfc2V0
KG1hc2ssIDEwMDBiYXNlVF9GdWxsKTsKPj4gKwkJfQo+PiArCX0KPgoKSGkgUnVzc2VsbCwKClRo
YW5rcyBmb3IgeW91ciByZXZpZXcgYW5kIG1hbnkgdXNlZnVsIGNvbW1lbnRzIGFuZCBleHBsYW5h
dGlvbnMuCgo+IEFzIHBvcnQgNSBjb3VsZCB1c2UgYW4gZXh0ZXJuYWwgUEhZLCBhbmQgaXQgc3Vw
cG9ydHMgZ2lnYWJpdCBzcGVlZHMsCj4gY29uc2lkZXIgdGhhdCB0aGUgUEhZIG1heSBwcm92aWRl
IG5vdCBvbmx5IGNvcHBlciBidXQgYWxzbyBmaWJlcgo+IGNvbm5lY3Rpdml0eSwgc28gcG9ydCA1
IHNob3VsZCBwcm9iYWJseSBhbHNvIGhhdmUgMTAwMGJhc2VYIG1vZGVzCj4gdG9vLCB3aGljaCB3
b3VsZCBhbGxvdyBzdWNoIGEgUEhZIHRvIGJyaWRnZSB0aGUgc3dpdGNoIHRvIGZpYmVyLgoKSSBz
aGFsbCBhZGQgdGhlIDEwMDBiYXNlWCBtb2Rlcy4KCk15IGRldmljZSwgVWJpcXVpdGkgRWRnZVJv
dXRlciBYIFNGUCwgaGFzIHRoaXMgc2V0dXAuClBvcnQgNSBpcyBjb25uZWN0ZWQgdG8gYSBhdDgw
MzMgcGh5IHdoaWNoIGFjdHMgYXMgYSBSR01JSS1TZXJEZXMgY29udmVydGVyIGZvcgp0aGUgU0ZQ
IGNhZ2UuIEFjY29yZGluZyB0byB0aGUgZGF0YXNoZWV0IGl0IG9ubHkgc3VwcG9ydCAxMDBCQVNF
LUZYIGFuZAoxMDAwQkFTRS1YLiBXaXRoIGJvb3RzdHJhcCByZXNpc3RvcnMgdGhlIFBIWSBpcyBw
dXQgaW4gUkdNSUktU2VyRGVzIDEwMDBCQVNFLVgKbW9kZS4KClRoZSBwcm9ibGVtIEkgaGFkIGlz
IHRoYXQgdGhlIGN1cnJlbnQgbWFpbmxpbmUgZHJpdmVyIGRvZXNuJ3Qgc3VwcG9ydCAgCnRoaXMg
bW9kZQpzbyBJIGhhZCB0byBoYWNrIGl0IGluIG15c2VsZiBbMF1bMV0uIEkgcHJvYmFibHkgZG9p
bmcgdGhlIHdyb25nIHRoaW5nIHdpdGggbXkKcGh5IGRyaXZlci4gRHJpdmVyIHdvcmtzIGZvciBt
ZSwgaXQgZGV0ZWN0cyBhIGxpbmsgYW5kIHNldHMtdXAgYSAxZ2JpdCBsaW5rLgpTbyBJIGNhbiB0
ZXN0IHBvcnQgNS4gQnV0IHRoZSBkcml2ZXIgbWF5IHJlcG9ydCBhbGwgdGhlIHdyb25nIHZhbHVl
cyB0bwpQSFlMSUIvUEhZTElOSy4gQnV0IG5vdyB0aGF0IEkgbGVhcm5lZCBtb3JlIGFib3V0IGl0
IEkgY2FuIHJldmlzZSB0aGUgZHJpdmVyLgoKCkJ5IHJlYWRpbmcgeW91ciBwcmV2aW91cyBlbWFp
bHMsIG15IHNldHVwIGNvdWxkIG9mZmljaWFsIG5vdCBzdXBwb3J0IHRoZQpGaWJlclN0b3JlIFNG
UC1HQi1HRS1UIG1vZHVsZSwgYmVjYXVzZSBpdCByZXF1ZXN0cyBhIFNHTUlJIGludGVyZmFjZS4K
QnV0IG15IFBIWSBvbmx5IHN1cHBvcnRzIDEwMDBCYXNlWCBhbmQgbXkgY29kZSBjdXJyZW50bHkg
ZG9lc24ndCBlcnJvciBvdXQuCgpkbWVzZyBvdXRwdXQgb2YgdGhpcyBtb2R1bGU6ClsgICAgMy4z
ODI2MzddIHNmcCBzZnBfbGFuNTogbW9kdWxlIEZpYmVyU3RvcmUgICAgICAgU0ZQLUdCLUdFLVQg
ICAgICAgCnJldiBCICAgIHNuIDxzbmlwPiAgICAgIGRjIDE5LTEyLTE3ClsgICAgMy40MDIwNDhd
IHNmcCBzZnBfbGFuNTogICB1bmtub3duL3Vuc3BlY2lmaWVkIGNvbm5lY3RvciwgZW5jb2Rpbmcg
IAo4YjEwYiwgbm9taW5hbCBiaXRyYXRlIDEuM0dicHMgKzAlIC0wJQpbICAgIDMuNDIxMjY4XSBz
ZnAgc2ZwX2xhbjU6ICAgMTAwMEJhc2VTWC0gMTAwMEJhc2VMWC0gMTAwMEJhc2VDWC0gIAoxMDAw
QmFzZVQrIDEwMEJhc2VMWC0gMTAwQmFzZUZYLSBCYXNlQlgxMC0gQmFzZVBYLQpbICAgIDMuNDQx
ODY3XSBzZnAgc2ZwX2xhbjU6ICAgMTBHQmFzZVNSLSAxMEdCYXNlTFItIDEwR0Jhc2VMUk0tIDEw
R0Jhc2VFUi0KWyAgICAzLjQ1NTIwOF0gc2ZwIHNmcF9sYW41OiAgIENvcHBlciBsZW5ndGg6IDEw
MG0KWyAgICAzLjQ2NDIyNV0gc2ZwIHNmcF9sYW41OiAgIE9wdGlvbnM6IHR4ZGlzYWJsZQpbICAg
IDMuNDczMDY2XSBzZnAgc2ZwX2xhbjU6ICAgRGlhZ25vc3RpY3M6ClsgICAgMy40ODEwMzRdIHNm
cCBzZnBfbGFuNTogVW5rbm93bi91bnN1cHBvcnRlZCBleHRlbmRlZCBjb21wbGlhbmNlICAKY29k
ZTogMHgwMQpbICAgIDMuNDk1MDY5XSBBdGhlcm9zIDgwMzEgZXRoZXJuZXQgbWRpby1idXM6MDc6
IFNGUCBpbnRlcmZhY2Ugc2dtaWkKCldoYXQgaXMgdGhlIGJlc3Qgd2F5IHRvIGRvIGl0IGluIGNh
c2Ugb2YgU0dNSUkgaW50ZXJmYWNlIHJlcXVlc3Q/ClJldHVybiB0aGF0IHdlIGRvbid0IHN1cHBv
cnQgU0dNSUkgb3IgcmVwb3J0IHRoYXQgd2Ugb25seSBzdXBwb3J0IDEgIAptb2RlIGFuZCBubwph
dXRvLW5lZ290aWF0aW9uPwoKR3JlYXRzLAoKUmVuw6kKCj4KCj4gLS0KPiBSTUsncyBQYXRjaCBz
eXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KPiBG
VFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFN
YnBzIGRvd24gNjIya2JwcyB1cAo+IEFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0OiAxMS45TWJw
cyBkb3duIDUwMGticHMgdXAKCgpbMF06ICAKaHR0cHM6Ly9naXRodWIuY29tL3ZEb3JzdC9saW51
eC0xL2NvbW1pdC9kYWQ1ZDZlYzY1Y2ZhOTljMjA0ZTk3NTZiM2ZjMjM0MDcxNzA5MjkyClsxXTog
IApodHRwczovL2dpdGh1Yi5jb20vdkRvcnN0L2xpbnV4LTEvY29tbWl0L2EzYWE3NGU4NDc5NjYw
NGFiODYxOWNmYWYxYzI5OWMxMTVhODczNmYKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
