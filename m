Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC150E2C15
	for <lists+linux-mediatek@lfdr.de>; Thu, 24 Oct 2019 10:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXtat50eaiGZ/VvYRTJWVjoXhHXblWJeopIndtBd8A4=; b=AIEvnAW3xqIMdf
	+WbiBO5Ho2GZ2sdhmRoSVVdqT6VyFFHvXYFLdle+LdYFj32h6aS73cHDdlUVYuCsG6oUGNpUGWVvf
	tljnEloo7LuTw8OqBdRI0DqVkIce6lmA+O5GbkzhQnltqmMdyJubkHtnmH5GLG+Mf+yROApfsLJbb
	niZieYfHoLTvzXEvh+BMWg3si8wejPGmAJ3y6w1zIhlVf1aALXkqEtOWTbF6fVG2irldbrdp1CY4A
	gcGhVw4gd/DEn8LhVkRJsX8VgjWEInEUupgn6Iz07uu7tvDZ2GHbTqEaUntH+LuZC31bwdgHAwX07
	AK61pKUoSBwO/2ar3X8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYRy-0005Mk-I8; Thu, 24 Oct 2019 08:26:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYRv-0005LW-8H
 for linux-mediatek@lists.infradead.org; Thu, 24 Oct 2019 08:26:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id l10so24580100wrb.2
 for <linux-mediatek@lists.infradead.org>; Thu, 24 Oct 2019 01:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=iA8rnha9mtyoi6ioF93JoEJEpTtmN445x+IcHqPDVEc=;
 b=WsVMmVTs5afSXPK5AtLu8vC5zxAK90MRe1AVDo+TWW2PefFV/5LIfXpd01x08eKGUP
 qf3WrHd6I1rEXsvhkZXZmulyDKlwehsL4Mk6XntcOhOeqcdW8RSpB9F1UmwbHJRlKzry
 7TO2RjGsvBM+TFWQnO8MLmTjp85la1Zjt/tI5MBMxFn1AZvKs92V4ER+h6cKaAeJPbd8
 cXDJ1m56FPbloDPc5g7K6ttEZjrdPC8Os09S/SS5zwasdw3WUzzeB0QFOcSWFnGFCrrA
 O7ZA5g7ZWafR5OXdpP0x5La7eooMlen51xPnGfcAAd45wyz7NbFOmVw3uXCFSlFGRPXy
 hKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=iA8rnha9mtyoi6ioF93JoEJEpTtmN445x+IcHqPDVEc=;
 b=Z+ae8lYV4vzWGNQ5oQWALE9F3Aiq1haJvTs/xt00jK8seyuAtGJZXhP3wI6SQ2Lc74
 HpXqnZ55ovNnA7Dmn7sTaz152PP0zbL1IiLB5vnDUg3Lw8eyj8z7jy2X1aCqsC9t4ALl
 qydgJ3SrRmeAxnlhyo1MoDTEi5NKWgyWmF7RCB+0QKyGqiWK3q/AodHC818JNNNVUCa1
 LWWFxF9WsyjSDxJJi8oEf5zFTASR5YZGeNev/BiJds98MGpLj0S2ZUdZ8+dM6pO++FT3
 wbGnGtQ2C/5fQPuJwHNOacaEmUT+qKgcFiDNf128Fgni7TAQAPqasL4cXZ6gMP/6BeH+
 GcwQ==
X-Gm-Message-State: APjAAAXtdn+LIKLaC+Jgd1v2cQ9fUbaR70G/6WRyrAf2uq18qKRoqTSU
 XZiQhXeUhUVP9BTgWej3tkMtUg==
X-Google-Smtp-Source: APXvYqyWnXOBj5OdVaRqahDjN6ixk3Hyp4yaNekREtOtQfuDW1V7NGEodxiGvks+oDuvlwwRd4Xqgw==
X-Received: by 2002:adf:e542:: with SMTP id z2mr2459639wrm.338.1571905585910; 
 Thu, 24 Oct 2019 01:26:25 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id v6sm28034467wru.72.2019.10.24.01.26.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 01:26:25 -0700 (PDT)
Date: Thu, 24 Oct 2019 09:26:23 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>, Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v4] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20191024082623.GK15843@dell>
References: <1571749359-15752-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571749359-15752-1-git-send-email-gene.chen.richtek@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_012627_295021_50F1B5DB 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

V29sZnJhbSwKCldvdWxkIHlvdSBiZSBraW5kIGVub3VnaCB0byBzZWUgYmVsb3cgcGxlYXNlPwoK
SSdkIGxpa2UgdG8ga25vdyBpZiBpdCBsb29rcyBzYW5lIHRvIHlvdS4KCk9uIFR1ZSwgMjIgT2N0
IDIwMTksIEdlbmUgQ2hlbiB3cm90ZToKCj4gRnJvbTogR2VuZSBDaGVuIDxnZW5lX2NoZW5Acmlj
aHRlay5jb20+Cj4gCj4gQWRkIG1mZCBkcml2ZXIgZm9yIG10NjM2MCBwbWljIGNoaXAgaW5jbHVk
ZQo+IEJhdHRlcnkgQ2hhcmdlci9VU0JfUEQvRmxhc2ggTEVEL1JHQiBMRUQvTERPL0J1Y2sKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBHZW5lIENoZW4gPGdlbmVfY2hlbkByaWNodGVrLmNvbQo+IC0tLQo+
ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDEyICsKPiAgZHJpdmVycy9t
ZmQvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMvbWZkL210NjM2MC1j
b3JlLmMgICAgICAgICAgfCA0NTcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oIHwgMjc5ICsrKysrKysrKysr
KysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmggICAgICAgICB8ICAzMiAr
KysKPiAgNSBmaWxlcyBjaGFuZ2VkLCA3ODEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9saW51eC9tZmQvbXQ2MzYwLXByaXZhdGUuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9saW51eC9tZmQvbXQ2MzYwLmgKPiAKPiBjaGFuZ2Vsb2dzIGJldHdlZW4gdjEgJiB2Mgo+
IC0gaW5jbHVkZSBtaXNzaW5nIGhlYWRlciBmaWxlCj4gCj4gY2hhbmdlbG9ncyBiZXR3ZWVuIHYy
ICYgdjMKPiAtIGFkZCBjaGFuZ2Vsb2dzCj4gCj4gY2hhbmdlbG9ncyBiZXR3ZWVuIHYzICYgdjQK
PiAtIGZpeCBLY29uZmlnIGRlc2NyaXB0aW9uCj4gLSByZXBsYWNlIG10NjM2MF9wbXVfaW5mbyB3
aXRoIG10NjM2MF9wbXVfZGF0YQo+IC0gcmVwbGFjZSBwcm9iZSB3aXRoIHByb2JlX25ldwo+IC0g
cmVtb3ZlIHVubmVjZXNzYXJ5IGlycV9jaGlwIHZhcmlhYmxlCj4gLSByZW1vdmUgYW5ub3RhdGlv
bgo+IC0gcmVwbGFjZSBNVDYzNjBfTUZEX0NFTEwgd2l0aCBPRl9NRkRfQ0VMTAoKWy4uLl0KCj4g
Kwlmb3IgKGkgPSAwOyBpIDwgTVQ2MzYwX1NMQVZFX01BWDsgaSsrKSB7Cj4gKwkJaWYgKG10NjM2
MF9zbGF2ZV9hZGRyW2ldID09IGNsaWVudC0+YWRkcikgewo+ICsJCQltcGQtPmkyY1tpXSA9IGNs
aWVudDsKPiArCQkJY29udGludWU7Cj4gKwkJfQo+ICsJCW1wZC0+aTJjW2ldID0gaTJjX25ld19k
dW1teShjbGllbnQtPmFkYXB0ZXIsCj4gKwkJCQkJICAgIG10NjM2MF9zbGF2ZV9hZGRyW2ldKTsK
PiArCQlpZiAoIW1wZC0+aTJjW2ldKSB7Cj4gKwkJCWRldl9lcnIoJmNsaWVudC0+ZGV2LCAibmV3
IGkyYyBkZXYgWyVkXSBmYWlsXG4iLCBpKTsKPiArCQkJcmV0ID0gLUVOT0RFVjsKPiArCQkJZ290
byBvdXQ7Cj4gKwkJfQo+ICsJCWkyY19zZXRfY2xpZW50ZGF0YShtcGQtPmkyY1tpXSwgbXBkKTsK
PiArCX0KPiArCj4gKwlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNlcygmY2xpZW50LT5kZXYsIFBM
QVRGT1JNX0RFVklEX0FVVE8sCj4gKwkJCQkgICBtdDYzNjBfZGV2cywgQVJSQVlfU0laRShtdDYz
NjBfZGV2cyksIE5VTEwsCj4gKwkJCQkgICAwLCByZWdtYXBfaXJxX2dldF9kb21haW4obXBkLT5p
cnFfZGF0YSkpOwo+ICsJaWYgKHJldCA8IDApIHsKPiArCQlkZXZfZXJyKCZjbGllbnQtPmRldiwg
Im1mZCBhZGQgY2VsbHMgZmFpbFxuIik7Cj4gKwkJZ290byBvdXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0
dXJuIDA7Cj4gK291dDoKPiArCXdoaWxlICgtLWkgPj0gMCkgewo+ICsJCWlmIChtcGQtPmkyY1tp
XS0+YWRkciA9PSBjbGllbnQtPmFkZHIpCj4gKwkJCWNvbnRpbnVlOwo+ICsJCWkyY191bnJlZ2lz
dGVyX2RldmljZShtcGQtPmkyY1tpXSk7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQo+
ICsKPiArc3RhdGljIGludCBtdDYzNjBfcG11X3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xp
ZW50KQo+ICt7Cj4gKwlzdHJ1Y3QgbXQ2MzYwX3BtdV9kYXRhICptcGQgPSBpMmNfZ2V0X2NsaWVu
dGRhdGEoY2xpZW50KTsKPiArCWludCBpOwo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBNVDYzNjBf
U0xBVkVfTUFYOyBpKyspIHsKPiArCQlpZiAobXBkLT5pMmNbaV0tPmFkZHIgPT0gY2xpZW50LT5h
ZGRyKQo+ICsJCQljb250aW51ZTsKPiArCQlpMmNfdW5yZWdpc3Rlcl9kZXZpY2UobXBkLT5pMmNb
aV0pOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0
dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tZWRpYXRlawo=
