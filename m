Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA8E1A6D8A
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Apr 2020 22:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PRqCKoO0KHmVB8noJa808nExPz660cLePxDwAO+E2Q=; b=kDvSw6NZugsuq+
	3eAHiH7E68J3JivRiAabeXVvfvvDtzPIeWZ2D1umcZYY+ch2ErBDsEM630+6r2d4aUu8kzop9uhh8
	OukDjf6g0U4W0l7jBHIeaZETmtjCVyLRdakfw5/zuy2HUW6629DrL9Zin0MVwLvaY1eZLodTpmcME
	0BYuLzMCK9mm8GNv8SBQBVJmRAKD4oTBonhTmRLk/ht+VykUHkW7rTFFXX6HrhVserByWTjf12o0X
	D+nWyMPzN99/5stsEYi2BUB8rNv+9+8V+w6HtlVi81PylLDM72d/VDPxJWqURMut/k+/0oy4f5HGy
	bYyPs9sN+pz7/XlYK5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO5yC-0001ED-Ab; Mon, 13 Apr 2020 20:46:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO5xi-0000mD-Rl; Mon, 13 Apr 2020 20:45:49 +0000
Received: from [IPv6:2804:431:e7cc:79a2:b6f7:4033:5775:cc3a] (unknown
 [IPv6:2804:431:e7cc:79a2:b6f7:4033:5775:cc3a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 122482A0FF8;
 Mon, 13 Apr 2020 21:45:38 +0100 (BST)
Subject: Re: [RFC PATCH V6 1/3] media: platform: mtk-isp: Add Mediatek sensor
 interface driver
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 =?UTF-8?B?TG91aXMgS3VvICjpg63lvrflr6cp?= <louis.kuo@mediatek.com>
References: <20200410071723.19720-1-louis.kuo@mediatek.com>
 <20200410071723.19720-2-louis.kuo@mediatek.com>
 <CAAOTY_-=v4ZoPu63kPCUzGKyNFeV6S_=zM4P5_MAkrXB0b5Yew@mail.gmail.com>
 <d6776ac432794cb593c4db54b8a7a089@mtkmbs02n2.mediatek.inc>
 <CAAOTY__N-OYkONB8He_H8WVVJ_3MrquaR_khvwdPd2v_c2Di3w@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <9d88023a-a503-be4f-7ad5-99888495d906@collabora.com>
Date: Mon, 13 Apr 2020 17:45:34 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY__N-OYkONB8He_H8WVVJ_3MrquaR_khvwdPd2v_c2Di3w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_134547_165210_B1D5366D 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SmVycnktY2ggQ2hlbiAo6Zmz5pWs5oayKQ==?= <Jerry-ch.Chen@mediatek.com>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 "keiichiw@chromium.org" <keiichiw@chromium.org>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <Frederic.Chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

CgpPbiA0LzEzLzIwIDY6MjcgQU0sIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4gSGksIExvdWlzOgo+
IAo+IExvdWlzIEt1byAo6YOt5b635a+nKSA8bG91aXMua3VvQG1lZGlhdGVrLmNvbT4g5pa8IDIw
MjDlubQ05pyIMTPml6Ug6YCx5LiAIOS4iuWNiDEwOjA05a+r6YGT77yaCj4+Cj4+IEhpIENodW4t
S3VhbmcsCj4+Cj4+IFRoZSBjb21tZW50IHlvdSBtZW50aW9uZWQsCj4+IEkgdGhpbmsgdGhlIHBo
eSBjb250cm9sIHBhcnQgc2hvdWxkIGJlIHBsYWNlZCBpbiBkcml2ZXJzL3BoeS9tZWRpYXRlay8u
IEluIFsxXSwgZGV2aWNlIGNzaXMgcG9pbnQgdG8gYSBkZXZpY2UgbWlwaV9waHkuCj4+IGNzaXMn
IGRyaXZlciBpcyBpbiBbMl0sIGFuZCBtaXBpX3BoeSdzIGRyaXZlciBpcyBpbiBbM10KPj4KPj4g
SSByZXBseSBhcyBiZWxvdywKPj4gPT4KPj4gU2luY2UgU2VuaW5mIG1vZHVsZSBpbmNsdWRlcyBt
aXBpLWNzaSBwaHksIHRvcCBtdXgsIG11eCBjdHJsIHBhcnRzLCBjb21iaW5lIGFsbCB0b2dldGhl
ciBpbnRvIGEgdjRsMi1zdWJkZXYKPj4gbGlua2luZyB3aXRoIHY0bDIgc2Vuc29yIGRyaXZlcnMg
YW5kIHY0bDIgSVNQIGRyaXZlciBiYWNrd2FyZCBhbmQgZm9yd2FyZCB0byB0cmFuc21pdCBhbmQg
cHJvY2VzcyBpbWFnZS4KPj4KPiAKPiBJdCAgc2VlbXMgdGhhdCBzZW5pbmYgaXMgYSBtZmQgb3Ig
c3lzY29uIGRldmljZS4gTU1TWVMgIFsxXSBpcyBhCj4gc3lzdGVtIGNvbnRyb2xsZXIgd2hpY2gg
Y29udHJvbCBtdWx0aXBsZSBmdW5jdGlvbnMuIEl0cyBtYWpvciBkcml2ZXIKPiBpcyBwbGFjZWQg
aW4gWzJdLCBhbmQgaXRzIGNsb2NrIGNvbnRyb2wgZnVuY3Rpb24gaXMgcGxhY2VkIGluIFszXS4K
PiAKPiBbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
bmV4dC9saW51eC1uZXh0LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssbW1zeXMudHh0P2g9bmV4dC0yMDIwMDQxMwo+IFsyXSBo
dHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4
LW5leHQuZ2l0L3RyZWUvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmM/aD1uZXh0LTIw
MjAwNDEzCj4gWzNdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L25leHQvbGludXgtbmV4dC5naXQvdHJlZS9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ4
MTczLW1tLmM/aD1uZXh0LTIwMjAwNDEzCj4gCj4+IFRoZSBkYXRhIGxhbmVzIGFuZCBwb3J0IHNl
dHRpbmdzIGlzIGNvbmZpZ3VyZWQgYnkgdjRsMiBzZW5zb3IgZHJpdmVycywKPj4gRm9yIGNvbnRy
b2wgcmVhc29uLCBpdCdzIGEgYmV0dGVyIHdheSB0byBsZXQgc2VuaW5mIG1pcGktY3NpIHBhcnQg
aW5zaWRlIHNlbmluZiB2NGwyLXN1YmRldiByYXRoZXIgdGhhbiBhbiBpbmRlcGVuZGVudCBwaHkg
ZGV2aWNlIGluIGRyaXZlcnMvcGh5L21lZGlhdGVrCj4+Cj4+IFRoZXJlIGhhdmUgc2ltaWxhciBk
ZXNpZ24gaW4gb21hcDRpc3MgYW5kIFJraXNwMS1pc3AgZHJpdmVyLCB0aGV5IGFsbCBpbiBzdGFn
aW5nIHN0ZXAuCj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjYvc291cmNl
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEKCmZ5aSwgdGhlIHJraXNwMSBkcml2ZXIgZG9l
c24ndCBoYXZlIHRoZSBtaXBpIGRwaHkgcGFydCBpbnNpZGUgaXQsIHdlIGhhdmUKcGh5LXJvY2tj
aGlwLWRwaHktcngwLCB0aGF0IHNob3VsZCBiZSBtb3ZlZCB0byBkcml2ZXJzL3BoeS8gc29vbi4K
Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjYvc291cmNlL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBoeS1yeDAKClJlZ2FyZHMsCkhlbGVuCgo+PiBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS42L3NvdXJjZS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvb21hcDRpc3MKPiAKPiBTdGFnaW5nIGRyaXZlciBtZWFucyB0aGVyZSBhcmUgc29tZSB0
aGluZ3MgbmVlZCB0byBtb2RpZnkgdG8gbW92ZSBvdXQKPiBvZiBzdGFnaW5nIGZvbGRlciwgc28g
SSB0aGluayB0aGlzIGlzIG5vdCBhIHN0cm9uZyByZWFzb24gdG8ga2VlcCBwaHkKPiBjb250cm9s
IGluIGRyaXZlcnMvbWVkaWEvIGZvbGRlci4gWW91IGNvdWxkIG1vdmUgdGhpcyBkcml2ZXIgdG8K
PiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvIGZvbGRlciBhbmQgSSB3b3VsZCBoYXZlIG5vIGNvbW1l
bnQgYWJvdXQgdGhpcy4KPiAKPiBSZWdhcmRzLAo+IENodW4tS3VhbmcuCj4gCj4+Cj4+IEJScwo+
PiBMb3Vpcwo+Pgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBDaHVuLUt1
YW5nIEh1IFttYWlsdG86Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmddCj4+IFNlbnQ6IFNhdHVyZGF5
LCBBcHJpbCAxMSwgMjAyMCA4OjE3IEFNCj4+IFRvOiBMb3VpcyBLdW8gKOmDreW+t+WvpykgPGxv
dWlzLmt1b0BtZWRpYXRlay5jb20+Cj4+IENjOiBoYW5zLnZlcmt1aWxAY2lzY28uY29tOyBsYXVy
ZW50LnBpbmNoYXJ0K3JlbmVzYXNAaWRlYXNvbmJvYXJkLmNvbTsgdGZpZ2FAY2hyb21pdW0ub3Jn
OyBrZWlpY2hpd0BjaHJvbWl1bS5vcmc7IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0Bn
bWFpbC5jb20+OyBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9yZz47IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBTZWFuIENoZW5nICjphK3mmIflvJgpIDxTZWFuLkNo
ZW5nQG1lZGlhdGVrLmNvbT47IHNydl9oZXVwc3RyZWFtIDxzcnZfaGV1cHN0cmVhbUBtZWRpYXRl
ay5jb20+OyBKZXJyeS1jaCBDaGVuICjpmbPmlazmhrIpIDxKZXJyeS1jaC5DaGVuQG1lZGlhdGVr
LmNvbT47IEp1bmdvIExpbiAo5p6X5piO5L+KKSA8anVuZ28ubGluQG1lZGlhdGVrLmNvbT47IFNq
IEh1YW5nICjpu4Pkv6HnkospIDxzai5odWFuZ0BtZWRpYXRlay5jb20+OyB5dXpoYW9AY2hyb21p
dW0ub3JnOyBtb2RlcmF0ZWQgbGlzdDpBUk0vTWVkaWF0ZWsgU29DIHN1cHBvcnQgPGxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmc+OyB6d2lzbGVyQGNocm9taXVtLm9yZzsgQ2hyaXN0
aWUgWXUgKOa4uOmbheaDoCkgPGNocmlzdGllLnl1QG1lZGlhdGVrLmNvbT47IEZyZWRlcmljIENo
ZW4gKOmZs+S/iuWFgykgPEZyZWRlcmljLkNoZW5AbWVkaWF0ZWsuY29tPjsgTGludXggQVJNIDxs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcKPj4gU3ViamVjdDogUmU6IFtSRkMgUEFUQ0ggVjYgMS8zXSBtZWRpYTogcGxhdGZv
cm06IG10ay1pc3A6IEFkZCBNZWRpYXRlayBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlcgo+Pgo+PiBI
aSwgTG91aXM6Cj4+Cj4+IExvdWlzIEt1byA8bG91aXMua3VvQG1lZGlhdGVrLmNvbT4g5pa8IDIw
MjDlubQ05pyIMTDml6Ug6YCx5LqUIOS4i+WNiDM6MTjlr6vpgZPvvJoKPj4+Cj4+PiBUaGlzIHBh
dGNoIGFkZHMgTWVkaWF0ZWsncyBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlci4gU2Vuc29yIGludGVy
ZmFjZQo+Pj4gZHJpdmVyIGlzIGEgTUlQSS1DU0kyIGhvc3QgZHJpdmVyLCBuYW1lbHksIGEgSFcg
Y2FtZXJhIGludGVyZmFjZQo+Pj4gY29udHJvbGxlci4gSXQgc3VwcG9ydCBhIHdpZGVseSBhZG9w
dGVkLCBzaW1wbGUsIGhpZ2gtc3BlZWQgcHJvdG9jb2wKPj4+IHByaW1hcmlseSBpbnRlbmRlZCBm
b3IgcG9pbnQtdG8tcG9pbnQgaW1hZ2UgYW5kIHZpZGVvIHRyYW5zbWlzc2lvbgo+Pj4gYmV0d2Vl
biBjYW1lcmFzIGFuZCBob3N0IGRldmljZXMuIFRoZSBtdGstaXNwIGRpcmVjdG9yeSB3aWxsIGNv
bnRhaW4KPj4+IGRyaXZlcnMgZm9yIG11bHRpcGxlIElQIGJsb2NrcyBmb3VuZCBpbiBNZWRpYXRl
ayBJU1Agc3lzdGVtLiBJdCB3aWxsCj4+PiBpbmNsdWRlIElTUCBQYXNzIDEgZHJpdmVyLCBzZW5z
b3IgaW50ZXJmYWNlIGRyaXZlciwgRElQIGRyaXZlciBhbmQgZmFjZSBkZXRlY3Rpb24gZHJpdmVy
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IExvdWlzIEt1byA8bG91aXMua3VvQG1lZGlhdGVrLmNv
bT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vTWFrZWZpbGUgICAgICAgICAg
ICAgICB8ICAgIDEgKwo+Pj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRrLWlzcC9LY29uZmln
ICAgICAgICB8ICAgMTggKwo+Pj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRrLWlzcC9NYWtl
ZmlsZSAgICAgICB8ICAgIDMgKwo+Pj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9tdGstaXNwL3Nlbmlu
Zi9NYWtlZmlsZSAgICB8ICAgIDUgKwo+Pj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRrLWlz
cC9zZW5pbmYvVE9ETyAgICB8ICAgMTggKwo+Pj4gIC4uLi9wbGF0Zm9ybS9tdGstaXNwL3Nlbmlu
Zi9tdGtfc2VuaW5mLmMgICAgICB8IDExNzMgKysrKysrKysrKysrKwo+Pj4gIC4uLi9wbGF0Zm9y
bS9tdGstaXNwL3NlbmluZi9tdGtfc2VuaW5mX3JlZy5oICB8IDE0OTEgKysrKysrKysrKysrKysr
KysKPj4+ICAuLi4vbXRrLWlzcC9zZW5pbmYvbXRrX3NlbmluZl9yeF9yZWcuaCAgICAgICAgfCAx
Mzk4ICsrKysrKysrKysrKysrKysKPj4+ICA4IGZpbGVzIGNoYW5nZWQsIDQxMDcgaW5zZXJ0aW9u
cygrKQo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1p
c3AvS2NvbmZpZwo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L210ay1pc3AvTWFrZWZpbGUKPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9tdGstaXNwL3NlbmluZi9NYWtlZmlsZQo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1pc3Avc2VuaW5mL1RPRE8KPj4+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tdGstaXNwL3NlbmluZi9tdGtfc2VuaW5m
LmMKPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQKPj4+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRr
LWlzcC9zZW5pbmYvbXRrX3NlbmluZl9yZWcuaAo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NAo+Pj4g
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tdGstaXNwL3NlbmluZi9tdGtfc2VuaW5mX3J4X3JlZy5o
Cj4+Pgo+Pgo+PiBbc25pcF0KPj4KPj4+ICsKPj4+ICtzdGF0aWMgdm9pZCBtdGtfc2VuaW5mX3Nl
dF9kcGh5KHN0cnVjdCBtdGtfc2VuaW5mICpwcml2LCB1bnNpZ25lZCBpbnQKPj4+ICtzZW5pbmYp
IHsKPj4+ICsgICAgICAgdm9pZCBfX2lvbWVtICpwbWlwaV9yeF9iYXNlID0gcHJpdi0+Y3NpMl9y
eFtDRkdfQ1NJX1BPUlRfMF07Cj4+PiArICAgICAgIHVuc2lnbmVkIGludCBwb3J0ID0gcHJpdi0+
cG9ydDsKPj4+ICsgICAgICAgdm9pZCBfX2lvbWVtICpwbWlwaV9yeCA9IHByaXYtPmNzaTJfcnhb
cG9ydF07Cj4+PiArICAgICAgIHZvaWQgX19pb21lbSAqcG1pcGlfcnhfY29uZiA9IHByaXYtPmJh
c2UgKyAweDEwMDAgKiBzZW5pbmY7Cj4+PiArCj4+PiArICAgICAgIC8qIFNldCBhbmFsb2cgcGh5
IG1vZGUgdG8gRFBIWSAqLwo+Pj4gKyAgICAgICBpZiAoaXNfY2RwaHlfY29tYm8ocG9ydCkpCj4+
PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMDBfQ1NJ
MEEsIFJHX0NTSTBBX0NQSFlfRU4sIDApOwo+Pj4gKyAgICAgICAvKiA0RDFDOiBNSVBJUlhfQU5B
TE9HX0FfQkFTRSA9IDB4MDAwMDFBNDIgKi8KPj4+ICsgICAgICAgaWYgKGlzXzRkMWMocG9ydCkp
IHsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEw
MF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9EUEhZX0ww
X0NLTU9ERV9FTiwgMCk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngs
IE1JUElfUlhfQU5BMDBfQ1NJMEEsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdf
Q1NJMEFfRFBIWV9MMF9DS1NFTCwgMSk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMo
cG1pcGlfcngsIE1JUElfUlhfQU5BMDBfQ1NJMEEsCj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUkdfQ1NJMEFfRFBIWV9MMV9DS01PREVfRU4sIDApOwo+Pj4gKyAgICAgICAgICAgICAg
IFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTAwX0NTSTBBLAo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFJHX0NTSTBBX0RQSFlfTDFfQ0tTRUwsIDEpOwo+Pj4gKyAgICAg
ICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTAwX0NTSTBBLAo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBBX0RQSFlfTDJfQ0tNT0RFX0VOLCAx
KTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEw
MF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9EUEhZX0wy
X0NLU0VMLCAxKTsKPj4+ICsgICAgICAgfSBlbHNlIHsvKiBNSVBJUlhfQU5BTE9HX0JBU0UgPSAw
eDEwMiAqLwo+Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JY
X0FOQTAwX0NTSTBBLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBBX0RQ
SFlfTDBfQ0tNT0RFX0VOLCAwKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlw
aV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICBSR19DU0kwQV9EUEhZX0wwX0NLU0VMLCAwKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZf
QklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSR19DU0kwQV9EUEhZX0wxX0NLTU9ERV9FTiwgMSk7Cj4+PiArICAgICAgICAg
ICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMDBfQ1NJMEEsCj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMEFfRFBIWV9MMV9DS1NFTCwgMCk7Cj4+PiAr
ICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMDBfQ1NJMEEs
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMEFfRFBIWV9MMl9DS01PREVf
RU4sIDApOwo+Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JY
X0FOQTAwX0NTSTBBLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBBX0RQ
SFlfTDJfQ0tTRUwsIDApOwo+Pj4gKyAgICAgICB9Cj4+PiArICAgICAgIGlmIChpc19jZHBoeV9j
b21ibyhwb3J0KSkKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQ
SV9SWF9BTkEwMF9DU0kwQiwKPj4+ICsgUkdfQ1NJMEJfQ1BIWV9FTiwgMCk7Cj4+PiArCj4+PiAr
ICAgICAgIC8qIE9ubHkgNGQxYyBuZWVkIHNldCBDU0lCOiBNSVBJUlhfQU5BTE9HX0JfQkFTRSA9
IDB4MDAwMDEyNDIgKi8KPj4+ICsgICAgICAgaWYgKGlzXzRkMWMocG9ydCkpIHsKPj4+ICsgICAg
ICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQiwKPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQl9EUEhZX0wwX0NLTU9ERV9FTiwg
MCk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5B
MDBfQ1NJMEIsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMEJfRFBIWV9M
MF9DS1NFTCwgMSk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1J
UElfUlhfQU5BMDBfQ1NJMEIsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJ
MEJfRFBIWV9MMV9DS01PREVfRU4sIDApOwo+Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRT
KHBtaXBpX3J4LCBNSVBJX1JYX0FOQTAwX0NTSTBCLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgIFJHX0NTSTBCX0RQSFlfTDFfQ0tTRUwsIDEpOwo+Pj4gKyAgICAgICAgICAgICAgIFNF
TklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTAwX0NTSTBCLAo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFJHX0NTSTBCX0RQSFlfTDJfQ0tNT0RFX0VOLCAwKTsKPj4+ICsgICAg
ICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQiwKPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQl9EUEhZX0wyX0NLU0VMLCAxKTsK
Pj4+ICsgICAgICAgfSBlbHNlIHsvKiBNSVBJUlhfQU5BTE9HX0JBU0UgPSAweDEwMiAqLwo+Pj4g
KyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTAwX0NTSTBC
LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBCX0RQSFlfTDBfQ0tTRUws
IDApOwo+Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FO
QTAwX0NTSTBCLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBCX0RQSFlf
TDFfQ0tNT0RFX0VOLCAxKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9y
eCwgTUlQSV9SWF9BTkEwMF9DU0kwQiwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBS
R19DU0kwQl9EUEhZX0wxX0NLU0VMLCAwKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklU
UyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQiwKPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICBSR19DU0kwQl9EUEhZX0wyX0NLTU9ERV9FTiwgMCk7Cj4+PiArICAgICAgICAgICAg
ICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMDBfQ1NJMEIsCj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMEJfRFBIWV9MMl9DS1NFTCwgMCk7Cj4+PiArICAg
ICAgIH0KPj4+ICsgICAgICAgLyogQnl0ZSBjbG9jayBpbnZlcnQgKi8KPj4+ICsgICAgICAgU0VO
SU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BQThfQ1NJMEEsCj4+PiArICAgICAgICAgICAg
ICAgICAgIFJHX0NTSTBBX0NEUEhZX0wwX1QwX0JZVEVDS19JTlZFUlQsIDEpOwo+Pj4gKyAgICAg
ICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkFBOF9DU0kwQSwKPj4+ICsgICAgICAg
ICAgICAgICAgICAgUkdfQ1NJMEFfRFBIWV9MMV9CWVRFQ0tfSU5WRVJULCAxKTsKPj4+ICsgICAg
ICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BQThfQ1NJMEEsCj4+PiArICAgICAg
ICAgICAgICAgICAgIFJHX0NTSTBBX0NEUEhZX0wyX1QxX0JZVEVDS19JTlZFUlQsIDEpOwo+Pj4g
Kwo+Pj4gKyAgICAgICBpZiAoaXNfNGQxYyhwb3J0KSkgewo+Pj4gKyAgICAgICAgICAgICAgIFNF
TklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQUE4X0NTSTBCLAo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFJHX0NTSTBCX0NEUEhZX0wwX1QwX0JZVEVDS19JTlZFUlQsIDEpOwo+
Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQUE4X0NT
STBCLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBCX0RQSFlfTDFfQllU
RUNLX0lOVkVSVCwgMSk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngs
IE1JUElfUlhfQU5BQThfQ1NJMEIsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdf
Q1NJMEJfQ0RQSFlfTDJfVDFfQllURUNLX0lOVkVSVCwgMSk7Cj4+PiArICAgICAgIH0KPj4+ICsK
Pj4+ICsgICAgICAgLyogU3RhcnQgQU5BIEVRIHR1bmluZyAqLwo+Pj4gKyAgICAgICBpZiAoaXNf
Y2RwaHlfY29tYm8ocG9ydCkpIHsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlw
aV9yeCwgTUlQSV9SWF9BTkExOF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICBSR19DU0kwQV9MMF9UMEFCX0VRX0lTLCAxKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZf
QklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExOF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSR19DU0kwQV9MMF9UMEFCX0VRX0JXLCAxKTsKPj4+ICsgICAgICAgICAgICAg
ICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExQ19DU0kwQSwKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9MMV9UMUFCX0VRX0lTLCAxKTsKPj4+ICsgICAg
ICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExQ19DU0kwQSwKPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9MMV9UMUFCX0VRX0JXLCAxKTsK
Pj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEyMF9D
U0kwQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9MMl9UMUJDX0VR
X0lTLCAxKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9S
WF9BTkEyMF9DU0kwQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9M
Ml9UMUJDX0VRX0JXLCAxKTsKPj4+ICsKPj4+ICsgICAgICAgICAgICAgICBpZiAoaXNfNGQxYyhw
b3J0KSkgeyAvKiA0ZDFjICovCj4+PiArICAgICAgICAgICAgICAgICAgICAgICBTRU5JTkZfQklU
UyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExOF9DU0kwQiwKPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFJHX0NTSTBCX0wwX1QwQUJfRVFfSVMsIDEpOwo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMThfQ1NJMEIs
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQl9MMF9UMEFC
X0VRX0JXLCAxKTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBp
X3J4LCBNSVBJX1JYX0FOQTFDX0NTSTBCLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgUkdfQ1NJMEJfTDFfVDFBQl9FUV9JUywgMSk7Cj4+PiArICAgICAgICAgICAgICAg
ICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExQ19DU0kwQiwKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTBCX0wxX1QxQUJfRVFfQlcs
IDEpOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1J
UElfUlhfQU5BMjBfQ1NJMEIsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBSR19DU0kwQl9MMl9UMUJDX0VRX0lTLCAxKTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAg
IFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTIwX0NTSTBCLAo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMEJfTDJfVDFCQ19FUV9CVywgMSk7Cj4+
PiArICAgICAgICAgICAgICAgfQo+Pj4gKyAgICAgICB9IGVsc2Ugewo+Pj4gKyAgICAgICAgICAg
ICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTE4X0NTSTFBLAo+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTFBX0wwX0VRX0lTLCAxKTsKPj4+ICsgICAgICAg
ICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExOF9DU0kxQSwKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kxQV9MMF9FUV9CVywgMSk7Cj4+PiArICAg
ICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMThfQ1NJMUEsCj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMUFfTDFfRVFfSVMsIDEpOwo+Pj4g
KyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJX1JYX0FOQTE4X0NTSTFB
LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTFBX0wxX0VRX0JXLCAxKTsK
Pj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExQ19D
U0kxQSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kxQV9MMl9FUV9JUywg
MSk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5B
MUNfQ1NJMUEsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgUkdfQ1NJMUFfTDJfRVFf
QlcsIDEpOwo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICAgIGlmIChpc180ZDFjKHBvcnQpKSB7IC8q
IDRkMWMgKi8KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4
LCBNSVBJX1JYX0FOQTE4X0NTSTFCLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUkdfQ1NJMUJfTDBfRVFfSVMsIDEpOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
U0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMThfQ1NJMUIsCj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kxQl9MMF9FUV9CVywgMSk7Cj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkExOF9D
U0kxQiwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTFCX0wx
X0VRX0lTLCAxKTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBp
X3J4LCBNSVBJX1JYX0FOQTE4X0NTSTFCLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgUkdfQ1NJMUJfTDFfRVFfQlcsIDEpOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMUNfQ1NJMUIsCj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kxQl9MMl9FUV9JUywgMSk7Cj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEx
Q19DU0kxQiwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0NTSTFC
X0wyX0VRX0JXLCAxKTsKPj4+ICsgICAgICAgICAgICAgICB9Cj4+PiArICAgICAgIH0KPj4+ICsK
Pj4+ICsgICAgICAgLyogRW5kIEFOQSBFUSB0dW5pbmcgKi8KPj4+ICsgICAgICAgd3JpdGVsKDB4
OTAsIHBtaXBpX3J4X2Jhc2UgKyBNSVBJX1JYX0FOQTQwX0NTSTBBKTsKPj4+ICsgICAgICAgU0VO
SU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfQU5BMjRfQ1NJMEEsCj4+PiArICAgICAgICAgICAg
ICAgICAgIFJHX0NTSTBBX1JFU0VSVkUsIDB4NDApOwo+Pj4gKyAgICAgICBpZiAoaXNfNGQxYyhw
b3J0KSkKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9B
TkEyNF9DU0kwQiwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19DU0kwQl9SRVNF
UlZFLCAweDQwKTsKPj4+ICsgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfV1JB
UFBFUjgwX0NTSTBBLAo+Pj4gKyAgICAgICAgICAgICAgICAgICBDU1JfQ1NJX1JTVF9NT0RFLCAw
KTsKPj4+ICsgICAgICAgaWYgKGlzXzRkMWMocG9ydCkpCj4+PiArICAgICAgICAgICAgICAgU0VO
SU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhfV1JBUFBFUjgwX0NTSTBCLAo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIENTUl9DU0lfUlNUX01PREUsIDApOwo+Pj4gKyAgICAgICAvKiBB
TkEgcG93ZXIgb24gKi8KPj4+ICsgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcngsIE1JUElfUlhf
QU5BMDBfQ1NJMEEsCj4+PiArICAgICAgICAgICAgICAgICAgIFJHX0NTSTBBX0JHX0NPUkVfRU4s
IDEpOwo+Pj4gKyAgICAgICBpZiAoaXNfNGQxYyhwb3J0KSkKPj4+ICsgICAgICAgICAgICAgICBT
RU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQiwKPj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICBSR19DU0kwQl9CR19DT1JFX0VOLCAxKTsKPj4+ICsgICAgICAgdXNs
ZWVwX3JhbmdlKDIwLCA0MCk7Cj4+PiArICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4LCBNSVBJ
X1JYX0FOQTAwX0NTSTBBLAo+Pj4gKyAgICAgICAgICAgICAgICAgICBSR19DU0kwQV9CR19MUEZf
RU4sIDEpOwo+Pj4gKyAgICAgICBpZiAoaXNfNGQxYyhwb3J0KSkKPj4+ICsgICAgICAgICAgICAg
ICBTRU5JTkZfQklUUyhwbWlwaV9yeCwgTUlQSV9SWF9BTkEwMF9DU0kwQiwKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICBSR19DU0kwQl9CR19MUEZfRU4sIDEpOwo+Pj4gKwo+Pj4gKyAg
ICAgICB1ZGVsYXkoMSk7Cj4+PiArICAgICAgIC8qIDRkMWM6IE1JUElSWF9DT05GSUdfQ1NJX0JB
U0UgPSAweEM5MDAwMDAwOyAqLwo+Pj4gKyAgICAgICBpZiAoaXNfNGQxYyhwb3J0KSkgewo+Pj4g
KyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4X2NvbmYsIE1JUElfUlhfQ09OMjRf
Q1NJMCwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBDU0kwX0JJU1RfTE4wX01VWCwg
MSk7Cj4+PiArICAgICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcnhfY29uZiwgTUlQSV9S
WF9DT04yNF9DU0kwLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIENTSTBfQklTVF9M
TjFfTVVYLCAyKTsKPj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeF9jb25m
LCBNSVBJX1JYX0NPTjI0X0NTSTAsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgQ1NJ
MF9CSVNUX0xOMl9NVVgsIDApOwo+Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBp
X3J4X2NvbmYsIE1JUElfUlhfQ09OMjRfQ1NJMCwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICBDU0kwX0JJU1RfTE4zX01VWCwgMyk7Cj4+PiArICAgICAgIH0gZWxzZSB7IC8qIDJkMWM6
IE1JUElSWF9DT05GSUdfQ1NJX0JBU0UgPSAweEU0MDAwMDAwOyAqLwo+Pj4gKyAgICAgICAgICAg
ICAgIFNFTklORl9CSVRTKHBtaXBpX3J4X2NvbmYsIE1JUElfUlhfQ09OMjRfQ1NJMCwKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICBDU0kwX0JJU1RfTE4wX01VWCwgMCk7Cj4+PiArICAg
ICAgICAgICAgICAgU0VOSU5GX0JJVFMocG1pcGlfcnhfY29uZiwgTUlQSV9SWF9DT04yNF9DU0kw
LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIENTSTBfQklTVF9MTjFfTVVYLCAxKTsK
Pj4+ICsgICAgICAgICAgICAgICBTRU5JTkZfQklUUyhwbWlwaV9yeF9jb25mLCBNSVBJX1JYX0NP
TjI0X0NTSTAsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgQ1NJMF9CSVNUX0xOMl9N
VVgsIDIpOwo+Pj4gKyAgICAgICAgICAgICAgIFNFTklORl9CSVRTKHBtaXBpX3J4X2NvbmYsIE1J
UElfUlhfQ09OMjRfQ1NJMCwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBDU0kwX0JJ
U1RfTE4zX01VWCwgMyk7Cj4+PiArICAgICAgIH0KPj4+ICt9Cj4+Cj4+IEkgdGhpbmsgdGhlIHBo
eSBjb250cm9sIHBhcnQgc2hvdWxkIGJlIHBsYWNlZCBpbiBkcml2ZXJzL3BoeS9tZWRpYXRlay8u
IEluIFsxXSwgZGV2aWNlIGNzaXMgcG9pbnQgdG8gYSBkZXZpY2UgbWlwaV9waHkuCj4+IGNzaXMn
IGRyaXZlciBpcyBpbiBbMl0sIGFuZCBtaXBpX3BoeSdzIGRyaXZlciBpcyBpbiBbM10KPj4KPj4g
WzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQuZHRzaT9oPXY1LjYK
Pj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vZXh5bm9zNC1pcy9t
aXBpLWNzaXMuYz9oPXY1LjYKPj4gWzNdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGh5L3NhbXN1
bmcvcGh5LWV4eW5vcy1taXBpLXZpZGVvLmM/aD12NS42Cj4+Cj4+IFJlZ2FyZHMsCj4+IENodW4t
S3VhbmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1l
ZGlhdGVrCg==
