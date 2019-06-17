Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F90D4950B
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 00:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkaYpgsAmBfKT7tC3/j/7mMYlrK7EHsaVaPKswwXjOc=; b=F64Ja1x09uYmoS
	dJJCVzMGC813czkhbH0jsCXziuUOqdWqFjoz0UJSr3NDaNw9NFfWu176db0InT8lvVNs4zW3ndkcO
	jLFMHAFtCRuybLcKjtncg1TQhPOHqXZoOgGsXyFzKf5bm6CkQ2jrphODwFkBD3yAk8+5MzRtVKzrR
	sYM9ix7LrFfYzNdY+eKp/iuIPQ2cBrb2CWfIXx3m8DrtSkwfx8KrwFT95HBi9WwOhK0vk9ouHh7v6
	DJXAN43DTQWb9TaQuayXzjrDZe0fzwk34atO0tBxd2aBuI/UD0TRJcL9FDpB9gNmSfzovws6xLXNb
	CGlfuwp6D3OJ593J6GqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczyC-0006rq-Km; Mon, 17 Jun 2019 22:19:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczy8-0006ph-4P
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 22:19:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so3625264wrs.3
 for <linux-mediatek@lists.infradead.org>; Mon, 17 Jun 2019 15:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dg0quVLxabap42buoJF/GKpH+xHHpW70TEb5weAZWjY=;
 b=Z//uftwzMgdsZL7DPHh7JLxPXda6KnS7PQYhcEKjcbkvwLPM+n5YyXgDkWtJjBVHCU
 JEjdb2JTqA42esRjij5qQwgmUJ6BgGYkI/nvUl+OoQuKx5rbjF8MDoicu0BIIeyT0Ick
 DuRcy5eTVgBxevsnOEAX5mqhhpkhza/2irzJjI+wD/Y2WdUEBk7oJyUYl0xZ84Yluj0U
 AcIILi8e/GZkQG6gXxBw+6fJn0Pj7+K/X4TTmmZVdd90L8ewQquH6j2EU4Mf8TC0dNvH
 6+Usw0FWl02D2HIDLSkZqv6rHD6csxTafHVsp3uW1L8wqghIgCgTlNhyu7OorzTzJs6R
 J9lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Dg0quVLxabap42buoJF/GKpH+xHHpW70TEb5weAZWjY=;
 b=mjdO0zflJTselyTINslVRQNG2EuoE0DndwwT7Ixxf34j9k3akam7iZSUVZWiVC26va
 FWJt1A9+FkdoqxURTEqP3JknZFyghmmE8dzy0JREnDt4csR8RC3BAVJIfyPuEHFiV6io
 2aGw4TPh+GZ9QK7H51QVHncxrcuKMyzEylKpibTpmgOESvvO5oFJluXJFCtNUgUsFN+T
 2AUdvLQT3BNkrENhD2ioaw3jw4epsQwW/9ntjmRjdlUdxS9UYFmuacM0HiSJfOXxDGjE
 jvwdYowsAZWGqx7pzIHX45+CXcF98df91QgjUOcrK1InowV6JSSL5FK0G4wkDxpXwktm
 7Ktw==
X-Gm-Message-State: APjAAAXMlgZSK4q4R2pR04Bc8vE9HCEmbGATAEguWWd3fDnSwig10bbb
 Mr9CsVrmws3eqbJJQL/89vLGA6yv
X-Google-Smtp-Source: APXvYqwbL9AnWzGcWqPGDp0f5v9TIepdPMwOT2DSE4gan1wqbL4jhG2bAj5PIybtcfbCMYzjYI6NTA==
X-Received: by 2002:a5d:518c:: with SMTP id k12mr79312720wrv.322.1560809954560; 
 Mon, 17 Jun 2019 15:19:14 -0700 (PDT)
Received: from [10.67.49.123] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id a84sm971161wmf.29.2019.06.17.15.19.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 15:19:14 -0700 (PDT)
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 Andrew Lunn <andrew@lunn.ch>
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
 <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <8d115e83-f249-6f51-6bf3-a9af6a5535de@gmail.com>
Date: Mon, 17 Jun 2019 15:19:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_151916_178794_6E825529 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mips@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 linux-mediatek@lists.infradead.org, john@phrozen.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gNi8xNy8xOSAyOjMzIFBNLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4gUXVvdGluZyBBbmRy
ZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+Ogo+IAo+PiBPbiBTdW4sIEp1biAxNiwgMjAxOSBhdCAw
ODoyMDowOFBNICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+PiBMaWtlIG1hbnkgb3Ro
ZXIgbWVkaWF0ZWsgU09DcywgdGhlIE1UNzYyMSBTT0MgYW5kIHRoZSBpbnRlcm5hbCBNVDc1MzAK
Pj4+IHN3aXRjaCBib3RoCj4+PiBzdXBwb3J0cyBUUkdNSUkgbW9kZS4gTVQ3NjIxIFRSR01JSSBz
cGVlZCBpcyAxMjAwTUJpdC4KPj4KPj4gSGkgUmVuw6kKPj4KPiAKPiBIaSBBbmRyZXcsCj4gCj4+
IElzIFRSR01JSSB1c2VkIG9ubHkgYmV0d2VlbiB0aGUgU29DIGFuZCB0aGUgU3dpdGNoPyBPciBk
b2VzIGV4dGVybmFsCj4+IHBvcnRzIG9mIHRoZSBzd2l0Y2ggYWxzbyBzdXBwb3J0IDEyMDBNYml0
L3M/IElmIGV4dGVybmFsIHBvcnRzIHN1cHBvcnQKPj4gdGhpcywgd2hhdCBkb2VzIGV0aHRvb2wg
c2hvdyBmb3IgU3BlZWQ/Cj4gCj4gT25seSB0aGUgZmlyc3QgR01BQyBvZiB0aGUgU09DIGFuZCBw
b3J0IDYgb2YgdGhlIHN3aXRjaCBzdXBwb3J0cyB0aGlzIG1vZGUuCj4gVGhlIHN3aXRjaCBjYW4g
YmUgaW50ZXJuYWwgaW4gdGhlIFNPQyBidXQgYWxzbyBhIHNlcGFyYXRlIGNoaXAuCj4gCj4gUEhZ
TElOSyBhbmQgZXRoZXJ0b29sIHJlcG9ydHMgdGhlIGxpbmsgYXMgMUdiaXQuCj4gVGhlIGxpbmsg
aXMgZml4ZWQtbGluayB3aXRoIHNwZWVkID0gMTAwMC4KPiAKPiBkbWVzZyBvdXRwdXQgd2l0aCB1
bnBvc3RlZCBQSFlMSU5LIHBhdGNoZXM6Cj4gW8KgwqDCoCA1LjIzNjc2M10gbXQ3NTMwIG1kaW8t
YnVzOjFmOiBjb25maWd1cmluZyBmb3IgZml4ZWQvdHJnbWlpIGxpbmsgbW9kZQo+IFvCoMKgwqAg
NS4yNDk4MTNdIG10NzUzMCBtZGlvLWJ1czoxZjogcGh5bGlua19tYWNfY29uZmlnOgo+IG1vZGU9
Zml4ZWQvdHJnbWlpLzFHYnBzL0Z1bGwgYWR2PTAwLDAwMDAwMDAwLDAwMDAwMjIwIHBhdXNlPTEy
IGxpbms9MSBhbj0xCj4gW8KgwqDCoCA2LjM4OTQzNV0gbXRrX3NvY19ldGggMWUxMDAwMDAuZXRo
ZXJuZXQgZXRoMDogcGh5bGlua19tYWNfY29uZmlnOgo+IG1vZGU9Zml4ZWQvdHJnbWlpLzFHYnBz
L0Z1bGwgYWR2PTAwLDAwMDAwMDAwLDAwMDAwMjIwIHBhdXNlPTEyIGxpbms9MSBhbj0xCj4gCj4g
IyBldGh0b29sIGV0aDAKPiBTZXR0aW5ncyBmb3IgZXRoMDoKPiDCoMKgwqDCoMKgwqDCoMKgIFN1
cHBvcnRlZCBwb3J0czogWyBNSUkgXQo+IMKgwqDCoMKgwqDCoMKgwqAgU3VwcG9ydGVkIGxpbmsg
bW9kZXM6wqDCoCAxMDAwYmFzZVQvRnVsbAo+IMKgwqDCoMKgwqDCoMKgwqAgU3VwcG9ydGVkIHBh
dXNlIGZyYW1lIHVzZTogTm8KPiDCoMKgwqDCoMKgwqDCoMKgIFN1cHBvcnRzIGF1dG8tbmVnb3Rp
YXRpb246IE5vCj4gwqDCoMKgwqDCoMKgwqDCoCBTdXBwb3J0ZWQgRkVDIG1vZGVzOiBOb3QgcmVw
b3J0ZWQKPiDCoMKgwqDCoMKgwqDCoMKgIEFkdmVydGlzZWQgbGluayBtb2RlczrCoCAxMDAwYmFz
ZVQvRnVsbAo+IMKgwqDCoMKgwqDCoMKgwqAgQWR2ZXJ0aXNlZCBwYXVzZSBmcmFtZSB1c2U6IE5v
Cj4gwqDCoMKgwqDCoMKgwqDCoCBBZHZlcnRpc2VkIGF1dG8tbmVnb3RpYXRpb246IE5vCj4gwqDC
oMKgwqDCoMKgwqDCoCBBZHZlcnRpc2VkIEZFQyBtb2RlczogTm90IHJlcG9ydGVkCj4gwqDCoMKg
wqDCoMKgwqDCoCBTcGVlZDogMTAwME1iL3MKPiDCoMKgwqDCoMKgwqDCoMKgIER1cGxleDogRnVs
bAo+IMKgwqDCoMKgwqDCoMKgwqAgUG9ydDogTUlJCj4gwqDCoMKgwqDCoMKgwqDCoCBQSFlBRDog
MAo+IMKgwqDCoMKgwqDCoMKgwqAgVHJhbnNjZWl2ZXI6IGludGVybmFsCj4gwqDCoMKgwqDCoMKg
wqDCoCBBdXRvLW5lZ290aWF0aW9uOiBvbgo+IMKgwqDCoMKgwqDCoMKgwqAgQ3VycmVudCBtZXNz
YWdlIGxldmVsOiAweDAwMDAwMGZmICgyNTUpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJ2IHByb2JlIGxpbmsgdGltZXIg
aWZkb3duIGlmdXAgcnhfZXJyCj4gdHhfZXJyCj4gwqDCoMKgwqDCoMKgwqDCoCBMaW5rIGRldGVj
dGVkOiB5ZXMKPiAKPiAKPiAKPiBJIGFscmVhZHkgaGF2ZSByZXBvcnQgZnJvbSBhIE1UNzYyMyB1
c2VyIHRoYXQgdGhpcyBwYXRjaCBnaXZlcyBpc3N1ZXMuCj4gCj4gSSBzZW5kIHYyIG9mIHRoZSBw
YXRjaCBpZiBJIGZpeGVkIHRoYXQgaXNzdWUuCj4gCj4gQWxzbyBJIHRoaW5rIGl0IGlzIGJldHRl
ciB0byBhZGQgYSBYVEFMIGZyZXF1ZW5jeSBjaGVjay4KPiBUaGUgUExMIHZhbHVlcyBhcmUgb25s
eSB2YWxpZCB3aXRoIGEgNDBNSHogY3J5c3RhbC4KPiAKPiBBbnkgb3RoZXIgY29tbWVudHMgZm9y
IHYyPwoKTG9va3MgZ29vZCB0byBtZSBvdGhlcndpc2UuCi0tIApGbG9yaWFuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
