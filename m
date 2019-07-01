Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBEB5BC34
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 14:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Subject:To:From:Message-ID:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=qlmwCcbq2WXlrt6PvTozqDOlj/XaD4BXJgl6H0aJJBE=; b=Dp54h+YT/I/wlyYgOlsYJHfTm
	5zPGvC+4VMSeZUxDMBMiS+L0P1djxMBbG0l6wxPROjOCQ6V9a+geo78tpQAL4KXofEKO4TTHrZhAl
	CHv0XA+uQVE9GQVMj7kUVyEKflayY+M8eLNcJZ3yzoNnNorDXquHmIRzFK5adeH9fru07VPC84Nyx
	rIMPBIyKLxjzuY21raqFj0lzkMSFlcAULA4WxcyPn6E6zjwz7tGbdLy/9NEmebALzQGGBvjtt77JR
	qwF5tDJ9xLJMSnOfGnvwX6gro3Cp5MfAS0ArMDtzJK4yhWNlJKhBBZgg/hlGr/A8DjzdbKMsGM9tR
	t+bPx5LIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvsb-0004Dc-3r; Mon, 01 Jul 2019 12:57:57 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvsX-0004D4-Ic
 for linux-mediatek@lists.infradead.org; Mon, 01 Jul 2019 12:57:55 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 89C175FBBA;
 Mon,  1 Jul 2019 14:57:52 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="S+L8MgYG"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 419711CEAF08;
 Mon,  1 Jul 2019 14:57:52 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 419711CEAF08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561985872;
 bh=SvuIg99z70EzCu3ysoMBUjr+NraXTm8gQI0tZ5NYnaY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=S+L8MgYGmrCUYG2LNVNFLQsVpm9L+PkhSAFTMJjjfaDvQnPECwjLBMUdxltspPM6N
 QQhy0dgDUPnG7iv7tivRqoEF0Giw/hgqluu0+srb0kbSYXkc5hjjSE1INZ80+HvX0M
 MFaeKZcUVr6xxH6Pz9n8a+YGbIFL4bjthxY5NZ4y/RFYouWrOYWzbW0DopoWiIvj5h
 Jmy0CM7ChKjgcOj0TFIq/9HO5AUHxDdgzT+fP6MaTMO9R65JsY+Oj7N2unjmow3qu9
 5cTLRFyMgpXNujY7QcsKMnCcTdg3XuuOKrB60SpgxRQAl22jmmxHSO65nJiYGBJKwa
 Piho7ehqeKEVA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 01 Jul 2019 12:57:52 +0000
Date: Mon, 01 Jul 2019 12:57:52 +0000
Message-ID: <20190701125752.Horde.M4sGI0OXZNgSa9VpOKj-m3s@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: Re: [PATCH] net: ethernet: mediatek: Allow non TRGMII mode with
 MT7621 DDR2 devices
In-Reply-To: <20190629122451.19578-1-opensource@vdorst.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_055753_760499_40302806 
X-CRM114-Status: GOOD (  15.91  )
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
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, frank-w@public-files.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT46CgpJIHNlZSB0
aGF0IEkgYWxzbyBmb3Jnb3QgdG8gdGFnIHRoaXMgcGF0Y2ggZm9yIG5ldC1uZXh0LgoKR3JlYXRz
LAoKUmVuw6kKCj4gTm8gcmVhc29uIHRvIGVycm9yIG91dCBvbiBhIE1UNzYyMSBkZXZpY2Ugd2l0
aCBERFIyIG1lbW9yeSB3aGVuIG5vbgo+IFRSR01JSSBtb2RlIGlzIHNlbGVjdGVkLgo+IE9ubHkg
TVQ3NjIxIEREUjIgY2xvY2sgc2V0dXAgaXMgbm90IHN1cHBvcnRlZCBmb3IgVFJHTUlJIG1vZGUu
Cj4gQnV0IG5vbiBUUkdNSUkgbW9kZSBkb2Vzbid0IG5lZWQgYW55IHNwZWNpYWwgY2xvY2sgc2V0
dXAuCj4KPiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2Mu
YyB8IDcgKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210
a19ldGhfc29jLmMgIAo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9z
b2MuYwo+IGluZGV4IDA2NjcxMmYyZTk4NS4uYjIwYjNhNWExZWJiIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCj4gQEAgLTEzOSw5ICsxMzksMTIg
QEAgc3RhdGljIGludCBtdDc2MjFfZ21hYzBfcmdtaWlfYWRqdXN0KHN0cnVjdCAgCj4gbXRrX2V0
aCAqZXRoLAo+ICB7Cj4gIAl1MzIgdmFsOwo+Cj4gLQkvKiBDaGVjayBERFIgbWVtb3J5IHR5cGUu
IEN1cnJlbnRseSBERFIyIGlzIG5vdCBzdXBwb3J0ZWQuICovCj4gKwkvKiBDaGVjayBERFIgbWVt
b3J5IHR5cGUuCj4gKwkgKiBDdXJyZW50bHkgVFJHTUlJIG1vZGUgd2l0aCBERFIyIG1lbW9yeSBp
cyBub3Qgc3VwcG9ydGVkLgo+ICsJICovCj4gIAlyZWdtYXBfcmVhZChldGgtPmV0aHN5cywgRVRI
U1lTX1NZU0NGRywgJnZhbCk7Cj4gLQlpZiAodmFsICYgU1lTQ0ZHX0RSQU1fVFlQRV9ERFIyKSB7
Cj4gKwlpZiAoaW50ZXJmYWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUkgJiYKPiArCSAg
ICB2YWwgJiBTWVNDRkdfRFJBTV9UWVBFX0REUjIpIHsKPiAgCQlkZXZfZXJyKGV0aC0+ZGV2LAo+
ICAJCQkiVFJHTUlJIG1vZGUgd2l0aCBERFIyIG1lbW9yeSBpcyBub3Qgc3VwcG9ydGVkIVxuIik7
Cj4gIAkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+IC0tCj4gMi4yMC4xCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5n
IGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
