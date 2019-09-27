Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9A6C0C2B
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 21:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMj9WPz8lleWLNhXwkt6F5Ucvgf62AYrGYeqhULDvu8=; b=SnZ8NAewFEGheC
	vzQom9pyLFHfkhRE4/Z2bn9FxMz9O6luPGRLaOdq+U41n0FxReMyFZApw9i09KPbXy5J/V5KWhaqX
	RgMFBHo/bCDsi1zw7mdcE99Mbtl24mYSSt4rGW7Apgd0Irmz8urxhE0YTXIS8UnlqsSXrsBiMDND7
	XqpbpjrNRvRDz4QzoBRucMZI0RiZcipcZ/rAR1MmC3Gxb3HBM3s6QisJ2878+SEm1LGpKE1/+TxCJ
	wZ6/Af7Gv9ToeIPtFTZpPljIk9L7vSLvlKvZN7TJwjOzFOc/JBFdt+vszM4GIiwfbIW0B4TEaw1Gx
	zcv4DHeO+iwvaNchBceQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDw8A-0002DC-KZ; Fri, 27 Sep 2019 19:42:18 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDw7w-00023A-BZ
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 19:42:07 +0000
Received: by mail-qt1-x843.google.com with SMTP id c21so8679247qtj.12
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 12:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GdzRgDBYfpDpx6nQGoKtzOVBfnyfeeybzCuIbLx6fB0=;
 b=vd7UFaaCwZgwqj99f2MT2fg1i7UohnHUXSkw5kpwYYUuVyfF4NY7tXNUGXOUsiEO3P
 shdnQNc5wxu1/O33dxfYRABCvuhgeW4T6LLI7tdyA07lQ47bZXE0aiwnmHVBazIp+3a7
 iwOr3AAltu1Cestvony074R+ccYJqgPHN1Akym1g1Tf7rGXjIIh1JOa+SSnK7nW02eLY
 h4qjRMGCsXcpObwDuRS5McCmDPPJD8LHAC/vLTRxYxqLydRfv0Yz8D7kq2v2blrRjCp9
 J72ozpCexcuAdzPZbjlNJuPxLZc2LG5oyM/lDXxwWoJiX7bKdEC22v4kTrOHkXUDtTjp
 Hhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GdzRgDBYfpDpx6nQGoKtzOVBfnyfeeybzCuIbLx6fB0=;
 b=GGaWgmqDCQ7zwuz7AvIcuDI0+VpR/QQ4dN8EzzpBxHmNHUYNs2t/ZWkFghdUNeJynG
 6J2fa+WGCrGD3UXP7Xs57Puw2WDnkr5owHaCmZQv1mCfIgsAcDCabyddQJQsFOUqBFCV
 Jl3BtttnWFM6JTFWmPlmWZq+pD8VN7ZtYhgijR2mNV+SObN4FSQRYLVUMznsw+Mo64XP
 dAv15UA8VDR6v1JEtt6dzpqo1+nSqU3+1MqcWRHfm/RTySIw1K0KjGiQRe2+gQZNSoF7
 2D/Kw5yyCv6UxjMLX3GnolcwfMPgGZx8WYlrfKeUIqY0T3dLJS+/qVnqzwGvcl90L95A
 CyQw==
X-Gm-Message-State: APjAAAX/frR+tpc79Fyk/undvzpzVOXS7bSwhvWsC00GahZ3LY6zTkcN
 NasDVGPdzAAaJliJMVIhy1YPgd6Ap0QVVOvLOHx/8Q==
X-Google-Smtp-Source: APXvYqzqpcwN1/R5qfSA7dnHPXsglqSOVgIT6kFMUwfYvP8xw2g7HmTutaLnVS58EaBwe1aQG/qkZ5GWj85+rzJ42MA=
X-Received: by 2002:ac8:7646:: with SMTP id i6mr12175862qtr.50.1569613322867; 
 Fri, 27 Sep 2019 12:42:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
In-Reply-To: <1569594142.9045.24.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 27 Sep 2019 21:41:51 +0200
Message-ID: <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_124206_176300_4B6B3A15 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgNDoyMiBQTSBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBt
ZWRpYXRlay5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCAyMDE5LTA5LTI3IGF0IDE1OjA3ICswMjAw
LCBEbWl0cnkgVnl1a292IHdyb3RlOgo+ID4gT24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgNTo0MyBB
TSBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBtZWRpYXRlay5jb20+IHdyb3RlOgo+ID4gPgo+ID4g
PiBtZW1tb3ZlKCkgYW5kIG1lbWNweSgpIGhhdmUgbWlzc2luZyB1bmRlcmZsb3cgaXNzdWVzLgo+
ID4gPiBXaGVuIC03IDw9IHNpemUgPCAwLCB0aGVuIEtBU0FOIHdpbGwgbWlzcyB0byBjYXRjaCB0
aGUgdW5kZXJmbG93IGlzc3VlLgo+ID4gPiBJdCBsb29rcyBsaWtlIHNoYWRvdyBzdGFydCBhZGRy
ZXNzIGFuZCBzaGFkb3cgZW5kIGFkZHJlc3MgaXMgdGhlIHNhbWUsCj4gPiA+IHNvIGl0IGRvZXMg
bm90IGFjdHVhbGx5IGNoZWNrIGFueXRoaW5nLgo+ID4gPgo+ID4gPiBUaGUgZm9sbG93aW5nIHRl
c3QgaXMgaW5kZWVkIG5vdCBjYXVnaHQgYnkgS0FTQU46Cj4gPiA+Cj4gPiA+ICAgICAgICAgY2hh
ciAqcCA9IGttYWxsb2MoNjQsIEdGUF9LRVJORUwpOwo+ID4gPiAgICAgICAgIG1lbXNldCgoY2hh
ciAqKXAsIDAsIDY0KTsKPiA+ID4gICAgICAgICBtZW1tb3ZlKChjaGFyICopcCwgKGNoYXIgKilw
ICsgNCwgLTIpOwo+ID4gPiAgICAgICAgIGtmcmVlKChjaGFyKilwKTsKPiA+ID4KPiA+ID4gSXQg
c2hvdWxkIGJlIGNoZWNrZWQgaGVyZToKPiA+ID4KPiA+ID4gdm9pZCAqbWVtbW92ZSh2b2lkICpk
ZXN0LCBjb25zdCB2b2lkICpzcmMsIHNpemVfdCBsZW4pCj4gPiA+IHsKPiA+ID4gICAgICAgICBj
aGVja19tZW1vcnlfcmVnaW9uKCh1bnNpZ25lZCBsb25nKXNyYywgbGVuLCBmYWxzZSwgX1JFVF9J
UF8pOwo+ID4gPiAgICAgICAgIGNoZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpZGVz
dCwgbGVuLCB0cnVlLCBfUkVUX0lQXyk7Cj4gPiA+Cj4gPiA+ICAgICAgICAgcmV0dXJuIF9fbWVt
bW92ZShkZXN0LCBzcmMsIGxlbik7Cj4gPiA+IH0KPiA+ID4KPiA+ID4gV2UgZml4IHRoZSBzaGFk
b3cgZW5kIGFkZHJlc3Mgd2hpY2ggaXMgY2FsY3VsYXRlZCwgdGhlbiBnZW5lcmljIEtBU0FOCj4g
PiA+IGdldCB0aGUgcmlnaHQgc2hhZG93IGVuZCBhZGRyZXNzIGFuZCBkZXRlY3QgdGhpcyB1bmRl
cmZsb3cgaXNzdWUuCj4gPiA+Cj4gPiA+IFsxXSBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcv
c2hvd19idWcuY2dpP2lkPTE5OTM0MQo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBXYWx0ZXIg
V3UgPHdhbHRlci16aC53dUBtZWRpYXRlay5jb20+Cj4gPiA+IFJlcG9ydGVkLWJ5OiBEbWl0cnkg
Vnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgbGliL3Rlc3Rfa2Fz
YW4uYyAgIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICBt
bS9rYXNhbi9nZW5lcmljLmMgfCAgOCArKysrKystLQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEv
bGliL3Rlc3Rfa2FzYW4uYyBiL2xpYi90ZXN0X2thc2FuLmMKPiA+ID4gaW5kZXggYjYzYjM2N2E5
NGU4Li44YmQwMTQ4NTI1NTYgMTAwNjQ0Cj4gPiA+IC0tLSBhL2xpYi90ZXN0X2thc2FuLmMKPiA+
ID4gKysrIGIvbGliL3Rlc3Rfa2FzYW4uYwo+ID4gPiBAQCAtMjgwLDYgKzI4MCw0MCBAQCBzdGF0
aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga21hbGxvY19vb2JfaW5fbWVtc2V0KHZvaWQpCj4gPiA+
ICAgICAgICAga2ZyZWUocHRyKTsKPiA+ID4gIH0KPiA+ID4KPiA+ID4gK3N0YXRpYyBub2lubGlu
ZSB2b2lkIF9faW5pdCBrbWFsbG9jX29vYl9pbl9tZW1tb3ZlX3VuZGVyZmxvdyh2b2lkKQo+ID4g
PiArewo+ID4gPiArICAgICAgIGNoYXIgKnB0cjsKPiA+ID4gKyAgICAgICBzaXplX3Qgc2l6ZSA9
IDY0Owo+ID4gPiArCj4gPiA+ICsgICAgICAgcHJfaW5mbygidW5kZXJmbG93IG91dC1vZi1ib3Vu
ZHMgaW4gbWVtbW92ZVxuIik7Cj4gPiA+ICsgICAgICAgcHRyID0ga21hbGxvYyhzaXplLCBHRlBf
S0VSTkVMKTsKPiA+ID4gKyAgICAgICBpZiAoIXB0cikgewo+ID4gPiArICAgICAgICAgICAgICAg
cHJfZXJyKCJBbGxvY2F0aW9uIGZhaWxlZFxuIik7Cj4gPiA+ICsgICAgICAgICAgICAgICByZXR1
cm47Cj4gPiA+ICsgICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgbWVtc2V0KChjaGFyICop
cHRyLCAwLCA2NCk7Cj4gPiA+ICsgICAgICAgbWVtbW92ZSgoY2hhciAqKXB0ciwgKGNoYXIgKilw
dHIgKyA0LCAtMik7Cj4gPiA+ICsgICAgICAga2ZyZWUocHRyKTsKPiA+ID4gK30KPiA+ID4gKwo+
ID4gPiArc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0IGttYWxsb2Nfb29iX2luX21lbW1vdmVf
b3ZlcmZsb3codm9pZCkKPiA+ID4gK3sKPiA+ID4gKyAgICAgICBjaGFyICpwdHI7Cj4gPiA+ICsg
ICAgICAgc2l6ZV90IHNpemUgPSA2NDsKPiA+ID4gKwo+ID4gPiArICAgICAgIHByX2luZm8oIm92
ZXJmbG93IG91dC1vZi1ib3VuZHMgaW4gbWVtbW92ZVxuIik7Cj4gPiA+ICsgICAgICAgcHRyID0g
a21hbGxvYyhzaXplLCBHRlBfS0VSTkVMKTsKPiA+ID4gKyAgICAgICBpZiAoIXB0cikgewo+ID4g
PiArICAgICAgICAgICAgICAgcHJfZXJyKCJBbGxvY2F0aW9uIGZhaWxlZFxuIik7Cj4gPiA+ICsg
ICAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ICsgICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAg
ICAgbWVtc2V0KChjaGFyICopcHRyLCAwLCA2NCk7Cj4gPiA+ICsgICAgICAgbWVtbW92ZSgoY2hh
ciAqKXB0ciArIHNpemUsIChjaGFyICopcHRyLCAyKTsKPiA+ID4gKyAgICAgICBrZnJlZShwdHIp
Owo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga21h
bGxvY191YWYodm9pZCkKPiA+ID4gIHsKPiA+ID4gICAgICAgICBjaGFyICpwdHI7Cj4gPiA+IEBA
IC03MzQsNiArNzY4LDggQEAgc3RhdGljIGludCBfX2luaXQga21hbGxvY190ZXN0c19pbml0KHZv
aWQpCj4gPiA+ICAgICAgICAga21hbGxvY19vb2JfbWVtc2V0XzQoKTsKPiA+ID4gICAgICAgICBr
bWFsbG9jX29vYl9tZW1zZXRfOCgpOwo+ID4gPiAgICAgICAgIGttYWxsb2Nfb29iX21lbXNldF8x
NigpOwo+ID4gPiArICAgICAgIGttYWxsb2Nfb29iX2luX21lbW1vdmVfdW5kZXJmbG93KCk7Cj4g
PiA+ICsgICAgICAga21hbGxvY19vb2JfaW5fbWVtbW92ZV9vdmVyZmxvdygpOwo+ID4gPiAgICAg
ICAgIGttYWxsb2NfdWFmKCk7Cj4gPiA+ICAgICAgICAga21hbGxvY191YWZfbWVtc2V0KCk7Cj4g
PiA+ICAgICAgICAga21hbGxvY191YWYyKCk7Cj4gPiA+IGRpZmYgLS1naXQgYS9tbS9rYXNhbi9n
ZW5lcmljLmMgYi9tbS9rYXNhbi9nZW5lcmljLmMKPiA+ID4gaW5kZXggNjE2ZjlkZDgyZDEyLi4z
NGNhMjNkNTllNjcgMTAwNjQ0Cj4gPiA+IC0tLSBhL21tL2thc2FuL2dlbmVyaWMuYwo+ID4gPiAr
KysgYi9tbS9rYXNhbi9nZW5lcmljLmMKPiA+ID4gQEAgLTEzMSw5ICsxMzEsMTMgQEAgc3RhdGlj
IF9fYWx3YXlzX2lubGluZSBib29sIG1lbW9yeV9pc19wb2lzb25lZF9uKHVuc2lnbmVkIGxvbmcg
YWRkciwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc2l6ZV90IHNpemUpCj4gPiA+ICB7Cj4gPiA+ICAgICAgICAgdW5zaWduZWQgbG9uZyByZXQ7
Cj4gPiA+ICsgICAgICAgdm9pZCAqc2hhZG93X3N0YXJ0ID0ga2FzYW5fbWVtX3RvX3NoYWRvdygo
dm9pZCAqKWFkZHIpOwo+ID4gPiArICAgICAgIHZvaWQgKnNoYWRvd19lbmQgPSBrYXNhbl9tZW1f
dG9fc2hhZG93KCh2b2lkICopYWRkciArIHNpemUgLSAxKSArIDE7Cj4gPiA+Cj4gPiA+IC0gICAg
ICAgcmV0ID0gbWVtb3J5X2lzX25vbnplcm8oa2FzYW5fbWVtX3RvX3NoYWRvdygodm9pZCAqKWFk
ZHIpLAo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBrYXNhbl9tZW1fdG9fc2hhZG93KCh2
b2lkICopYWRkciArIHNpemUgLSAxKSArIDEpOwo+ID4gPiArICAgICAgIGlmICgobG9uZylzaXpl
IDwgMCkKPiA+ID4gKyAgICAgICAgICAgICAgIHNoYWRvd19lbmQgPSBrYXNhbl9tZW1fdG9fc2hh
ZG93KCh2b2lkICopYWRkciArIHNpemUpOwo+ID4KPiA+IEhpIFdhbHRlciwKPiA+Cj4gPiBUaGFu
a3MgZm9yIHdvcmtpbmcgb24gdGhpcy4KPiA+Cj4gPiBJZiBzaXplPDAsIGRvZXMgaXQgbWFrZSBz
ZW5zZSB0byBjb250aW51ZSBhdCBhbGw/IFdlIHdpbGwgc3RpbGwgY2hlY2sKPiA+IDFQQiBvZiBz
aGFkb3cgbWVtb3J5PyBXaGF0IGhhcHBlbnMgd2hlbiB3ZSBwYXNzIHN1Y2ggaHVnZSByYW5nZSB0
bwo+ID4gbWVtb3J5X2lzX25vbnplcm8/Cj4gPiBQZXJoYXBzIGl0J3MgYmV0dGVyIHRvIHByb2R1
Y2UgYW4gZXJyb3IgYW5kIGJhaWwgb3V0IGltbWVkaWF0ZWx5IGlmIHNpemU8MD8KPgo+IEkgYWdy
ZWUgd2l0aCB3aGF0IHlvdSBzYWlkLiB3aGVuIHNpemU8MCwgaXQgaXMgaW5kZWVkIGFuIHVucmVh
c29uYWJsZQo+IGJlaGF2aW9yLCBpdCBzaG91bGQgYmUgYmxvY2tlZCBmcm9tIGNvbnRpbnVpbmcg
dG8gZG8uCj4KPgo+ID4gQWxzbywgd2hhdCdzIHRoZSBmYWlsdXJlIG1vZGUgb2YgdGhlIHRlc3Rz
PyBEaWRuJ3QgdGhleSBiYWRseSBjb3JydXB0Cj4gPiBtZW1vcnk/IFdlIHRyaWVkIHRvIGtlZXAg
dGVzdHMgc3VjaCB0aGF0IHRoZXkgcHJvZHVjZSB0aGUgS0FTQU4KPiA+IHJlcG9ydHMsIGJ1dCBk
b24ndCBiYWRseSBjb3JydXB0IG1lbW9yeSBiL2MvIHdlIG5lZWQgdG8gcnVuIGFsbCBvZgo+ID4g
dGhlbS4KPgo+IE1heWJlIHdlIHNob3VsZCBmaXJzdCBwcm9kdWNlIEtBU0FOIHJlcG9ydHMgYW5k
IHRoZW4gZ28gdG8gZXhlY3V0ZQo+IG1lbW1vdmUoKSBvciBkbyBub3RoaW5nPyBJdCBsb29rcyBs
aWtlIGl04oCZcyBkb2luZyB0aGUgZm9sbG93aW5nLm9yPwo+Cj4gdm9pZCAqbWVtbW92ZSh2b2lk
ICpkZXN0LCBjb25zdCB2b2lkICpzcmMsIHNpemVfdCBsZW4pCj4gIHsKPiArICAgICAgIGlmIChs
b25nKGxlbikgPD0gMCkKCi9cL1wvXC9cL1wvXAoKVGhpcyBjaGVjayBuZWVkcyB0byBiZSBpbnNp
ZGUgb2YgY2hlY2tfbWVtb3J5X3JlZ2lvbiwgb3RoZXJ3aXNlIHdlCndpbGwgaGF2ZSBzaW1pbGFy
IHByb2JsZW1zIGluIGFsbCBvdGhlciBwbGFjZXMgdGhhdCB1c2UKY2hlY2tfbWVtb3J5X3JlZ2lv
bi4KQnV0IGNoZWNrX21lbW9yeV9yZWdpb24gYWxyZWFkeSByZXR1cm5zIGEgYm9vbCwgc28gd2Ug
Y291bGQgY2hlY2sgdGhhdApib29sIGFuZCByZXR1cm4gZWFybHkuCgoKPiArICAgICAgICAgICAg
ICAga2FzYW5fcmVwb3J0X2ludmFsaWRfc2l6ZShzcmMsIGRlc3QsIGxlbiwgX1JFVF9JUF8pOwo+
ICsKPiAgICAgICAgIGNoZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpc3JjLCBsZW4s
IGZhbHNlLCBfUkVUX0lQXyk7Cj4gICAgICAgICBjaGVja19tZW1vcnlfcmVnaW9uKCh1bnNpZ25l
ZCBsb25nKWRlc3QsIGxlbiwgdHJ1ZSwgX1JFVF9JUF8pOwo+Cj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
