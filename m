Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55B51594A0
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Feb 2020 17:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IitpZ5W9LSn//mD35fzFFpKjaxaJhvITn6bS+k9kR5g=; b=czL6XxKIOdSj39qAk9BN4TuKFv
	hEtppycbCLEGpqQrk7mlD3nz0EszVudcKgOr4LWdymjYye9ItvgbrIYNJOyE0t7pHX+DE4I6oXob+
	m56iiDbIWoFI5JU1EbWCxeAnWDFr1Eq5gJFV3EdSFLa1550AW8T3fm7QHIAdd6sl4YHn3mkCMX1S/
	J7huJ0EmukoDdWw628X6uhPC1N/Lx+vhxBvMjMpD+F6De9jnWAhSmw1koHHA3JvhiFDl0sdEbj7KN
	c02vafoY2hzAnqqSqsYrIugCgHiiCnthDL2zI+rk3xZapvN2RsWy/VF7VMgyhXo1TDC7WWME1GN8K
	W/xjhWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1YCb-0008EK-7o; Tue, 11 Feb 2020 16:15:57 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1YCY-0008E0-3W
 for linux-mediatek@lists.infradead.org; Tue, 11 Feb 2020 16:15:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q39so1442345pjc.0
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Feb 2020 08:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eWLMBgpnK7PE1vm+QMrBQXRtcHMP7nLx7lndIaKLkg0=;
 b=bk/+e2t3desQpp9plD5VOIdRv15kRdFIp3x+BmFNSUtaUOSdLhA+QNfwPwc7LyFg5R
 MIOUE0EE/bY1jiv8YdI/osEY6xMFegPoNiwKdx9gnONPBo/2Wf+i+tFCLR7iZDYr8xY9
 ldw6zIlM1GmF94itP9HzdGSOG0f1TutHaKePMmAz9pYGO6kaQqasYibOqVrFyIF28vT2
 xcz2NAxX8iTnrUfAaOeyIR360tobvsOCN0TzppR93Nyw3+TlGkATdruw1fpIxhpIlmNw
 ff5xf368eE6WZ+Yg4wl4k8vMUpV6mrq18mIqIdmwVs5WiSYIINySIgZOwaqCdZgytHX6
 w/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eWLMBgpnK7PE1vm+QMrBQXRtcHMP7nLx7lndIaKLkg0=;
 b=Na61hJYmfd+nIzVSRGoC3FH3lr1bGKS6ZJnzY8qR9UaAcCv39SapH14GjX9nXhZN5e
 3htCtEP6jVU9eS/j6cVdwAkOvsNsdaKO69KYsyE8S7BC4g6iXwvsVnLqzUnhacWw9XXr
 9pCTOLHgpbx/jsy+LeHwexTMrtdJochQgJu5yUv0WLsk7QYM9QUEBTZrdnuL+W0dABZM
 36RcFJsczNjOTTlw0LP1fSI27ha/Cko+C372SOaktsJnTsA2L8sZm0LRKAsFMvJHGrVx
 R484qOeicg5S/kspqNozfs7h9htjkf5r8W2Kehffu5TcT5RZkqZtlb82p/ZRKQruPMDp
 CYhg==
X-Gm-Message-State: APjAAAUXYNpI2IA0o3Y0fOllScOmm8UVZkJv+fZq/yFPbZlpfUvzq4jB
 /Ry1R2SydVsyMEykUUM1DQI=
X-Google-Smtp-Source: APXvYqzhFYN7c8m33rsVnKjqNZSNrYIZp7HArCSIjlnEJ3wOvA8aZ5+epfAixtQYAt12VkX/vWyoVg==
X-Received: by 2002:a17:902:d885:: with SMTP id
 b5mr4011461plz.215.1581437753303; 
 Tue, 11 Feb 2020 08:15:53 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id f43sm3905424pje.23.2020.02.11.08.15.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 08:15:52 -0800 (PST)
Subject: Re: Enabling MMC on MT7628 SoC
To: Mauro Condarelli <mc5686@mclink.it>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org
References: <e6c30f55-5f65-b165-4c5d-1d25a425e744@mclink.it>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <ae707c5d-3c3c-724d-1eba-adcb1db52eb9@gmail.com>
Date: Tue, 11 Feb 2020 17:15:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <e6c30f55-5f65-b165-4c5d-1d25a425e744@mclink.it>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_081554_173331_D6FE0474 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

W0FkZGluZyBNSVBTIHBlb3BsZSB0byB0aGUgbG9vcF0KCk9uIDAxLzAyLzIwMjAgMTc6MDYsIE1h
dXJvIENvbmRhcmVsbGkgd3JvdGU6Cj4gSGksCj4gSSdtIHRyeWluZyB0byBlbmFibGUgTU1DL1NE
IGFjY2VzcyBvbiBhIFZvQ29yZTIgU09NIChiYXNlZCBvbiBNVDc2MjgpCj4gdXNpbmcgbXRrX3Nk
IGRyaXZlci4KPiAKPiBKdXN0IGVuYWJsaW5nIG10a19zZCB3aWxsIGJvbWIgd2l0IHVuZGVmaW5l
ZCBmdW5jdGlvbiBgY2xrX2dldF9wYXJlbnRgOwo+IHRoaXMgY2FuIGJlIHRyaXZpYWxseSBjdXJl
ZCB3aXRoOgo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL21pcHMvcmFsaW5rL2Nsay5jIGIvYXJjaC9t
aXBzL3JhbGluay9jbGsuYwo+IGluZGV4IDJmOWQ1YWNiMzhlYS4uOTMwYzI3NzZmNmZkIDEwMDY0
NAo+IC0tLSBhL2FyY2gvbWlwcy9yYWxpbmsvY2xrLmMKPiArKysgYi9hcmNoL21pcHMvcmFsaW5r
L2Nsay5jCj4gQEAgLTg1LDMgKzg1LDkgQEAgdm9pZCBfX2luaXQgcGxhdF90aW1lX2luaXQodm9p
ZCkKPiDCoMKgwqDCoMKgwqDCoCBjbGtfcHV0KGNsayk7Cj4gwqDCoMKgwqDCoMKgwqAgdGltZXJf
cHJvYmUoKTsKPiDCoH0KPiArCj4gK3N0cnVjdCBjbGsgKmNsa19nZXRfcGFyZW50KHN0cnVjdCBj
bGsgKmNsaykKPiArewo+ICvCoMKgwqDCoMKgwqAgcmV0dXJuIE5VTEw7Cj4gK30KPiArRVhQT1JU
X1NZTUJPTF9HUEwoY2xrX2dldF9wYXJlbnQpOwo+IAo+IAo+IE5haXZlIGltcGxlbWVudGF0aW9u
IGZhaWxzIHJ1bnRpbWUgd2l0aCBFTk9FTlQgaW4KPiBkZXZtX2Nsa19nZXQoIjEwMTMwMDAwLm1t
YyIsICJzb3VyY2UiKSBpbiBzcGl0ZSBvZiBjbG9jayBkZWZpbml0aW9uIGluIC5kdHMuCj4gCj4g
SSB0cmFjZWQgdGhlIHByb2JsZW0gdG8gQ09ORklHX0NPTU1PTl9DTEsgbm90IGJlaW5nIGRlZmlu
ZWQgZm9yIFJBTElOSy4KPiBJdCBjYW5ub3QgYmUgZW5hYmxlZCBiZWNhdXNlIGl0IHdpbGwgbGVh
ZCB0byBtdWx0aXBsZSBkZWZpbml0aW9uIG9mCj4gc2V2ZXJhbCBjbG9jay1yZWxhdGVkIGZ1bmN0
aW9ucyAoZS5nLjogYGNsa19nZXRfcmF0ZWApLgo+IEkgZm91bmQgY29tcGxldGVseSBkaXNhYmxp
bmcgY2xvY2sgaGFuZGxpbmcgaW4gbXRrX3NkLmMgbGVhZHMgdG8gYSAoZm9yCj4gbWUpIGZ1bGx5
IHdvcmtpbmcgU0QgY2FyZC4KClRoYXQncyBwcm9iYWJseSBiZWNhdXNlIHRoZSBib290IEZXIGFs
cmVhZHkgZW5hYmxlcyB0aGUgY2xvY2tzIGFzIG5lZWRlZC4uLgoKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tbWMvaG9zdC9tdGstc2QuYyBiL2RyaXZlcnMvbW1jL2hvc3QvbXRrLXNkLmMKPiBp
bmRleCA3NzI2ZGNmNDhmMmMuLjQ2NGY2NGJlYTdjNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21t
Yy9ob3N0L210ay1zZC5jCj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9tdGstc2QuYwo+IEBAIC03
MzAsMTggKzczMCwyMiBAQCBzdGF0aWMgdm9pZCBtc2RjX3NldF90aW1lb3V0KHN0cnVjdCBtc2Rj
X2hvc3QKPiAqaG9zdCwgdTMyIG5zLCB1MzIgY2xrcykKPiDCoAo+IMKgc3RhdGljIHZvaWQgbXNk
Y19nYXRlX2Nsb2NrKHN0cnVjdCBtc2RjX2hvc3QgKmhvc3QpCj4gwqB7Cj4gKyNpZmRlZiBDT05G
SUdfQ09NTU9OX0NMSwo+IMKgwqDCoMKgIGNsa19kaXNhYmxlX3VucHJlcGFyZShob3N0LT5zcmNf
Y2xrX2NnKTsKPiDCoMKgwqDCoCBjbGtfZGlzYWJsZV91bnByZXBhcmUoaG9zdC0+c3JjX2Nsayk7
Cj4gwqDCoMKgwqAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGhvc3QtPmJ1c19jbGspOwo+IMKgwqDC
oMKgIGNsa19kaXNhYmxlX3VucHJlcGFyZShob3N0LT5oX2Nsayk7Cj4gKyNlbmRpZgo+IMKgfQo+
IMKgCj4gwqBzdGF0aWMgdm9pZCBtc2RjX3VuZ2F0ZV9jbG9jayhzdHJ1Y3QgbXNkY19ob3N0ICpo
b3N0KQo+IMKgewo+ICsjaWZkZWYgQ09ORklHX0NPTU1PTl9DTEsKPiDCoMKgwqDCoCBjbGtfcHJl
cGFyZV9lbmFibGUoaG9zdC0+aF9jbGspOwo+IMKgwqDCoMKgIGNsa19wcmVwYXJlX2VuYWJsZSho
b3N0LT5idXNfY2xrKTsKPiDCoMKgwqDCoCBjbGtfcHJlcGFyZV9lbmFibGUoaG9zdC0+c3JjX2Ns
ayk7Cj4gwqDCoMKgwqAgY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPnNyY19jbGtfY2cpOwo+ICsj
ZW5kaWYKPiDCoMKgwqDCoCB3aGlsZSAoIShyZWFkbChob3N0LT5iYXNlICsgTVNEQ19DRkcpICYg
TVNEQ19DRkdfQ0tTVEIpKQo+IMKgwqDCoMKgIMKgwqDCoCBjcHVfcmVsYXgoKTsKPiDCoH0KPiBA
QCAtMjIxMSw2ICsyMjE1LDcgQEAgc3RhdGljIGludCBtc2RjX2Rydl9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlCj4gKnBkZXYpCj4gwqDCoMKgwqAgaWYgKHJldCkKPiDCoMKgwqDCoCDCoMKg
wqAgZ290byBob3N0X2ZyZWU7Cj4gwqAKPiArI2lmZGVmIENPTkZJR19DT01NT05fQ0xLCj4gwqDC
oMKgwqAgaG9zdC0+c3JjX2NsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCAic291cmNlIik7
Cj4gwqDCoMKgwqAgaWYgKElTX0VSUihob3N0LT5zcmNfY2xrKSkgewo+IMKgwqDCoMKgIMKgwqDC
oCByZXQgPSBQVFJfRVJSKGhvc3QtPnNyY19jbGspOwo+IEBAIC0yMjMwLDYgKzIyMzUsMTIgQEAg
c3RhdGljIGludCBtc2RjX2Rydl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlCj4gKnBkZXYp
Cj4gwqDCoMKgwqAgaG9zdC0+c3JjX2Nsa19jZyA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCAi
c291cmNlX2NnIik7Cj4gwqDCoMKgwqAgaWYgKElTX0VSUihob3N0LT5zcmNfY2xrX2NnKSkKPiDC
oMKgwqDCoCDCoMKgwqAgaG9zdC0+c3JjX2Nsa19jZyA9IE5VTEw7Cj4gKyNlbHNlCj4gK8KgwqDC
oCBob3N0LT5zcmNfY2xrID0gTlVMTDsKPiArwqDCoMKgIGhvc3QtPmhfY2xrID0gTlVMTDsKPiAr
wqDCoMKgIGhvc3QtPmJ1c19jbGsgPSBOVUxMOwo+ICvCoMKgwqAgaG9zdC0+c3JjX2Nsa19jZyA9
IE5VTEw7Cj4gKyNlbmRpZgo+IMKgCj4gwqDCoMKgwqAgaG9zdC0+aXJxID0gcGxhdGZvcm1fZ2V0
X2lycShwZGV2LCAwKTsKPiDCoMKgwqDCoCBpZiAoaG9zdC0+aXJxIDwgMCkgewo+IAo+IAo+IC4u
LiBidXQgSSdtIHVuc3VyZSB0aGlzIGhhY2stYW5kLXNsYXNoIGFwcHJvYWNoIGlzIHRoZSBSaWdo
dCBUaGluZyB0byBkbyA7KQo+IAoKSSB0aGluayB0aGUgY29ycmVjdCBhcHByb2FjaCB3b3VsZCBi
ZSB0byB3cml0ZSBhIGNsb2NrIGRyaXZlciB3aGljaCBzdXBwb3J0cyB0aGUKY29tbW9uIGNsb2Nr
IGZyYW1ld29yay4KClRoZSBhcmNoL21pcHMvcmFsaW5rL2Nsay5jIGJhc2ljYWxseSBvdmVyd3Jp
dGVzIGFueSBjYWxscyB0byB0aGlzIHNvIHRoYXQgdGhpbmdzCnNvbWVob3cgd29yay4KClJlZ2Fy
ZHMsCk1hdHRoaWFzCgo+IEFzIHNhaWQ6IHRoaXMgd29ya3MgZm9yIG1lLCBidXQgSSB3b3VsZCBs
aWtlIHRvIGZpeCBpdCBwcm9wZXJseSBhbmQgaGF2ZQo+IHRoZSBmaXggc2VudCB1cHN0cmVhbSB0
b2dldGhlciB3aXRoIG15IFNvTSBkZWZjb25maWcuCj4gCj4gQW55IGhpbnQgd2VsY29tZQo+IFJl
Z2FyZHMKPiBNYXVybyBDb25kYXJlbGxpCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBMaW51
eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
