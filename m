Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3401DEFBD
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 21:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZBU04CzfwLgE9rYE1swuHWwuTeDNyrBThoI1j8q9/Y=; b=Pwt4QuuUmlGzbh
	L0E6lN3HmHQnrP7hLBMFcKA54mz/bwU7fDJaPdH4a7rXKp7lUUdqOlAbQjsfmWvCiaOq5sJBi1RqT
	oXUZ5oyvbHylTiHmU/FUpAZKAryxe8iQtCD6iUcLyMK7jNfSx1DA/R47NvGgQp1vBFKdGVSra+nZg
	3WpjnZR8aXzQwauRXpk+pzYE6UfyF4d9MXTrxK+eTr6OmicLGZTexB94Hl8+rTXzST7IwSXxqfpfL
	gBmFY2ndbKGmBDETSduwaXv0RPkL/i7eDoTmaZRg1Roy3MGVwX9wONq2NM0HoI3DcdefNW2x2yw7A
	KHov1N6TmpVNkz4OGmSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcD1x-0008J9-Gi; Fri, 22 May 2020 19:08:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcD1u-0008IM-FD
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 19:08:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id g12so9972839wrw.1
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 12:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=x/MRQ96H6Az+pqXHXN01ej45PZoEed6u3UDYNQ8cdX4=;
 b=PzVhr2wPkOGE+YF9Q0Ja37GGyUsYVsZsJL57zig1z8BCa8Qep5Xti7/yjRJQ9/qJHf
 QDhZud1Tjjnao51/AdKATcPcGpgymDVv+DP9ZUqSC50m9yp8JxQN8GorUusIC61ibMSv
 1k8FLY7CEVJdEodNUo1gSa/Ok2XPUCBAfNjDQgh3VtgYCy+7aRuvD1jA2sTMTxseHFNX
 5b4RAQucgHzFF3CuwZClKX26YpFeJM4Lws5JWo+YousVNxXMo8Jn30LpR5IpK4yllbTW
 NaRfvW8DhcXmzGQolc7AgeOmKDxCXUMZiHJwyTrrD5tbM1QKlneKviK+VPWJImn3UQCW
 oIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x/MRQ96H6Az+pqXHXN01ej45PZoEed6u3UDYNQ8cdX4=;
 b=osco81sWxBhwSfLIDWqHrxC3qB82yDazqziukeyw6HGuhtC4m6faNsJ1DuTFoT6BWg
 hruEl8ZzyHZZ5KAkdVk86iYa0WY6W7hXGcV8LFfJ51+6z4b+MszYAT8Ha65iaBP68L5Q
 VOZ3jCRJV3P2b2zxm3JRIIiXJd809JmMfDrmXnPkj7wlKv3sWh2Mdkf98FlYSFPIBTM3
 TLMckvcbZuvvV2gy/AXW/92wIEkLmUobil3LCDfnT8S3oaF841Pi76GUUoNGRfT2i9YL
 FHOtjd9BH2oXnULSpLHN/izdxrzfKRKuy7vq5V1ZrqN7UCQkDkn43v4u33/pT62J7ohn
 KE0g==
X-Gm-Message-State: AOAM532AtsXUkIDYtUkLigEf+FXM1j+ziepITdVY1NoEWpBtJPBNfC9E
 GMf8JjR+YBJ4Criv3eDCPUQ98A==
X-Google-Smtp-Source: ABdhPJyyCvXxzy7xLZ+QVT611FhNvs3cXyfNnYMd18QneEGfeQ/uinWi8SdNplS5akPuJufHz1nPQQ==
X-Received: by 2002:adf:e588:: with SMTP id l8mr1815032wrm.255.1590174504530; 
 Fri, 22 May 2020 12:08:24 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id z10sm10252695wmi.2.2020.05.22.12.08.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 12:08:23 -0700 (PDT)
Subject: Re: [RESEND PATCH] thermal: mediatek: add suspend/resume callback
To: Michael Kao <michael.kao@mediatek.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org, srv_heupstream@mediatek.com
References: <20200408090558.12410-1-michael.kao@mediatek.com>
 <20200408090558.12410-2-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c95b1b31-b6c6-9b45-33f4-b3673ae27680@linaro.org>
Date: Fri, 22 May 2020 21:08:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200408090558.12410-2-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_120826_542280_03D38FA8 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Louis Yu <louis.yu@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gMDgvMDQvMjAyMCAxMTowNSwgTWljaGFlbCBLYW8gd3JvdGU6Cj4gRnJvbTogTG91aXMgWXUg
PGxvdWlzLnl1QG1lZGlhdGVrLmNvbT4KPiAKPiBBZGQgc3VzcGVuZC9yZXN1bWUgY2FsbGJhY2sg
dG8gZGlzYWJsZS9lbmFibGUgTWVkaWF0ZWsgdGhlcm1hbCBzZW5zb3IKPiByZXNwZWN0aXZlbHku
IFNpbmNlIHRoZXJtYWwgcG93ZXIgZG9tYWluIGlzIG9mZiBpbiBzdXNwZW5kLCB0aGVybWFsIGRy
aXZlcgo+IG5lZWRzIHJlLWluaXRpYWxpemF0aW9uIGR1cmluZyByZXN1bWUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogTG91aXMgWXUgPGxvdWlzLnl1QG1lZGlhdGVrLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWVsIEthbyA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgoKWyAuLi4gXQoKPiArc3Rh
dGljIGludCBfX21heWJlX3VudXNlZCBtdGtfdGhlcm1hbF9zdXNwZW5kKHN0cnVjdCBkZXZpY2Ug
KmRldikKPiArewo+ICsJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3Jt
X2RldmljZShkZXYpOwo+ICsJc3RydWN0IG10a190aGVybWFsICptdCA9IHBsYXRmb3JtX2dldF9k
cnZkYXRhKHBkZXYpOwo+ICsJaW50IGksIHJldDsKPiArCgpXaHkgaXMgdGhlcmUgYSBtdWx0aS1j
b250cm9sbGVyIGxvb3AgaW4gdGhlIHByb2JlIGFuZCByZXN1bWUgZnVuY3Rpb25zCmFuZCBub3Qg
aGVyZT8KCj4gKwlmb3IgKGkgPSAwOyBpIDwgbXQtPmNvbmYtPm51bV9iYW5rczsgaSsrKSB7Cj4g
KwkJcmV0ID0gbXRrX3RoZXJtYWxfZGlzYWJsZV9zZW5zaW5nKG10LCBpKTsKPiArCQlpZiAocmV0
KQo+ICsJCQlnb3RvIG91dDsKPiArCX0KPiArCj4gKwkvKiBkaXNhYmxlIGJ1ZmZlciAqLwo+ICsJ
d3JpdGVsKHJlYWRsKG10LT5hcG1peGVkX2Jhc2UgKyBBUE1JWEVEX1NZU19UU19DT04xKSB8Cj4g
KwkgICAgICAgQVBNSVhFRF9TWVNfVFNfQ09OMV9CVUZGRVJfT0ZGLAo+ICsJICAgICAgIG10LT5h
cG1peGVkX2Jhc2UgKyBBUE1JWEVEX1NZU19UU19DT04xKTsKPiArCj4gKwljbGtfZGlzYWJsZV91
bnByZXBhcmUobXQtPmNsa19wZXJpX3RoZXJtKTsKPiArCWNsa19kaXNhYmxlX3VucHJlcGFyZSht
dC0+Y2xrX2F1eGFkYyk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtvdXQ6Cj4gKwlkZXZfZXJy
KCZwZGV2LT5kZXYsICJGYWlsZWQgdG8gd2FpdCB1bnRpbCBidXMgaWRsZVxuIik7Cj4gKwo+ICsJ
cmV0dXJuIHJldDsKPiArfQo+ICsKPiArc3RhdGljIGludCBfX21heWJlX3VudXNlZCBtdGtfdGhl
cm1hbF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2ID0gdG9fcGxhdGZvcm1fZGV2aWNlKGRldik7Cj4gKwlzdHJ1Y3QgbXRrX3Ro
ZXJtYWwgKm10ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gKwlpbnQgaSwgcmV0LCBj
dHJsX2lkOwo+ICsKPiArCXJldCA9IGRldmljZV9yZXNldCgmcGRldi0+ZGV2KTsKPiArCWlmIChy
ZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUobXQt
PmNsa19hdXhhZGMpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNh
bid0IGVuYWJsZSBhdXhhZGMgY2xrOiAlZFxuIiwgcmV0KTsKPiArCQlnb3RvIGVycl9kaXNhYmxl
X2Nsa19hdXhhZGM7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKG10LT5j
bGtfcGVyaV90aGVybSk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAi
Q2FuJ3QgZW5hYmxlIHBlcmkgY2xrOiAlZFxuIiwgcmV0KTsKPiArCQlnb3RvIGVycl9kaXNhYmxl
X2Nsa19wZXJpX3RoZXJtOwo+ICsJfQo+ICsKPiArCWZvciAoY3RybF9pZCA9IDA7IGN0cmxfaWQg
PCBtdC0+Y29uZi0+bnVtX2NvbnRyb2xsZXIgOyBjdHJsX2lkKyspCj4gKwkJZm9yIChpID0gMDsg
aSA8IG10LT5jb25mLT5udW1fYmFua3M7IGkrKykKPiArCQkJbXRrX3RoZXJtYWxfaW5pdF9iYW5r
KG10LCBpLCBtdC0+YXBtaXhlZF9waHlzX2Jhc2UsCj4gKwkJCQkJICAgICAgbXQtPmF1eGFkY19w
aHlzX2Jhc2UsIGN0cmxfaWQpOwo+ICsKPiArCXJldHVybiAwOwo+ICsKPiArZXJyX2Rpc2FibGVf
Y2xrX3BlcmlfdGhlcm06Cj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUobXQtPmNsa19wZXJpX3Ro
ZXJtKTsKPiArZXJyX2Rpc2FibGVfY2xrX2F1eGFkYzoKPiArCWNsa19kaXNhYmxlX3VucHJlcGFy
ZShtdC0+Y2xrX2F1eGFkYyk7Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiArc3RhdGlj
IFNJTVBMRV9ERVZfUE1fT1BTKG10a190aGVybWFsX3BtX29wcywKPiArCQkJIG10a190aGVybWFs
X3N1c3BlbmQsIG10a190aGVybWFsX3Jlc3VtZSk7Cj4gKwo+ICBzdGF0aWMgc3RydWN0IHBsYXRm
b3JtX2RyaXZlciBtdGtfdGhlcm1hbF9kcml2ZXIgPSB7Cj4gIAkucHJvYmUgPSBtdGtfdGhlcm1h
bF9wcm9iZSwKPiAgCS5yZW1vdmUgPSBtdGtfdGhlcm1hbF9yZW1vdmUsCj4gIAkuZHJpdmVyID0g
ewo+ICAJCS5uYW1lID0gIm10ay10aGVybWFsIiwKPiArCQkucG0gPSAmbXRrX3RoZXJtYWxfcG1f
b3BzLAo+ICAJCS5vZl9tYXRjaF90YWJsZSA9IG10a190aGVybWFsX29mX21hdGNoLAo+ICAJfSwK
PiAgfTsKPiAKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8v
d3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVy
LmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFy
by1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawo=
