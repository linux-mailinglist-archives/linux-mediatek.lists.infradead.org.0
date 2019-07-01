Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221185BCDD
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 15:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Wcsur/zpQmia/eDZyKIkoHF5+Y8zzpyJEg6NP5rI38=; b=X3xWxs9jeI5AUq4Az+bfcQX26
	vp2ps8pvLZmhEeWsrfZ8QXYMbfqibrAtqWr+M7QhxuDXFXrEnuJTsCzwtdxIzvEsozvQ0qMAYm3zA
	bu6Iu/jU7O8Bw8qlSBEb9O7vYmef9IWxcf6ea6aHQNg8DJqm6sXL7HKVqf39tTdMNym1CK3VQDRoG
	oZzn+68mcpbp6+3jDk/IN+0l8DJ/IuW8+VhcYwh3NmqU6IJmc6S/VIF4LMVY0eY5lMf78DurLObrg
	OnRMBtyEvs+3lAzSrzZKhJdZIGhSoT4MQhn5jXFKUhwGEdyJQfJxQpQzo6htSDPeOR4UuEnmC10ND
	Pu7/Q99rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhwLZ-00008I-Ml; Mon, 01 Jul 2019 13:27:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhwLV-00007W-FO; Mon, 01 Jul 2019 13:27:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A8ED5260DF9
Subject: Re: [PATCH v3 01/22] drm: Include ddc adapter pointer in struct
 drm_connector
To: Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <d6381c020ea1c848a7044d830bdb0ec9663d1619.1561735433.git.andrzej.p@collabora.com>
 <9b03d145-ec50-927c-55a8-dff1cd51d655@suse.de>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <cf1984e4-50af-302d-ef67-9ad530118c29@collabora.com>
Date: Mon, 1 Jul 2019 15:27:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <9b03d145-ec50-927c-55a8-dff1cd51d655@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_062749_776151_A089FD7D 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, linux-tegra@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, freedreno@lists.freedesktop.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnRzLiBQbGVhc2Ugc2VlIGlubGlu
ZS4KClcgZG5pdSAzMC4wNi4yMDE5IG/CoDEwOjEyLCBUaG9tYXMgWmltbWVybWFubiBwaXN6ZToK
PiBIaQo+IAo+IEkgbGlrZSB0aGUgaWRlYSwgYnV0IHdvdWxkIHByZWZlciBhIG1vcmUgc3RydWN0
dXJlZCBhcHByb2FjaC4KPiAKPiBTZXR0aW5nIGNvbm5lY3Rvci0+ZGRjIGJlZm9yZSBjYWxsaW5n
IGRybV9zeXNmc19jb25uZWN0b3JfYWRkKCkgc2VlbXMKPiBlcnJvciBwcm9uZS4gVGhlIGRlcGVu
ZGVuY3kgaXMgbm90IHJlYWxseSBjbGVhciBmcm9tIHRoZSBjb2RlIG9yIGludGVyZmFjZXMuCj4g
Cj4gVGhlIG90aGVyIHRoaW5nIGlzIHRoYXQgZHJpdmVycyBJIG1vc3RseSB3b3JrIG9uLCBhc3Qg
YW5kIG1nYWcyMDAsIGhhdmUKPiBjb2RlIGxpa2UgdGhpczoKPiAKPiAgICBzdHJ1Y3QgYXN0X2ky
Y19jaGFuIHsKPiAJc3RydWN0IGkyY19hZGFwdGVyIGFkYXB0ZXI7Cj4gCXN0cnVjdCBkcm1fZGV2
aWNlICpkZXY7Cj4gCXN0cnVjdCBpMmNfYWxnb19iaXRfZGF0YSBiaXQ7Cj4gICAgfTsKPiAKPiAg
ICBzdHJ1Y3QgYXN0X2Nvbm5lY3RvciB7Cj4gCXN0cnVjdCBkcm1fY29ubmVjdG9yIGJhc2U7Cj4g
CXN0cnVjdCBhc3RfaTJjX2NoYW4gKmkyYzsKPiAgICB9Owo+IAo+IEl0IGFscmVhZHkgZW5jb2Rl
cyB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGNvbm5lY3RvciBhbmQgZGRjIGFkYXB0ZXIuCj4gCj4g
SSBzdWdnZXN0IHRvIGludHJvZHVjZSBzdHJ1Y3QgZHJtX2kyY19hZGFwdGVyCj4gCj4gICAgc3Ry
dWN0IGRybV9pMmNfYWRhcHRlciB7Cj4gCXN0cnVjdCBpMmNfYWRhcHRlciBiYXNlOwo+IAlzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+ICAgIH07Cj4gCj4gYW5kIGNvbnZlcnQgZHJp
dmVycyBvdmVyIHRvIGl0LiBBc3Qgd291bGQgbG9vayBsaWtlIHRoaXM6Cj4gCj4gICAgc3RydWN0
IGFzdF9pMmNfY2hhbiB7Cj4gCXN0cnVjdCBkcm1faTJjX2FkYXB0ZXIgYWRhcHRlcjsKPiAJc3Ry
dWN0IGkyY19hbGdvX2JpdF9kYXRhIGJpdDsKPiAgICB9Owo+IAoKVGhlcmUgYXJlIGZldyBmbGF2
b3JzIG9mIHRoZXNlIGRyaXZlcnMuIEluIHNvbWUgb2YgdGhlbQp0aGUgaTJjX2FkYXB0ZXIgZm9y
IGRkYyBpcyBhbGxvY2F0ZWQgYW5kIGluaXRpYWxpemVkIGJ5CnRoZSBkcml2ZXIsIHdoaWNoIG11
c3QgcHJvdmlkZSBhIHBsYWNlIGluIG1lbW9yeSB0byBob2xkCnRoZSBhZGFwdGVyLiBhc3QgaXMg
YW4gZXhhbXBsZSBvZiB0aGlzIGFwcHJvYWNoLgoKQnV0IHRoZXJlIGFyZSBvdGhlcnMsIHN1Y2gg
YXMgZm9yIGV4YW1wbGUgZXh5bm9zX2hkbWkuYy4KSXQgZ2V0cyBpdHMgZGRjIGFkYXB0ZXIgd2l0
aCBvZl9maW5kX2kyY19hZGFwdGVyX2J5X25vZGUoKQphbmQgbWVyZWx5IHN0b3JlcyBhIHBvaW50
ZXIgdG8gaXQsIHdoaWxlIG5vdCBtYW5hZ2luZyB0aGUKbWVtb3J5IG5lZWRlZCB0byBob2xkIHRo
ZSBpMmNfYWRhcHRlci4KCkRvIHlvdSBoYXZlIGFueSBpZGVhIGhvdyB0byBhY2NvbW1vZGF0ZSB0
aGVzZSB2YXJpb3VzCmZsYXZvcnMgb2YgZHJpdmVycyBpbiB0aGUgc2NoZW1lIHlvdSBwcm9wb3Nl
PwoKQW5kcnplagoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW1lZGlhdGVrCg==
