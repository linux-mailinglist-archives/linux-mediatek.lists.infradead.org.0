Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBE41C1544
	for <lists+linux-mediatek@lfdr.de>; Fri,  1 May 2020 15:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oM2c0VT6xCqxELy3faMsVlYrlcVyZt7/32JOfDSyrw=; b=JU0FII6kFbi4ID
	gX+4ru4Vb6V59ZvFVCN468uRIB4y9xV7Sd4FaLAQh6E3BFJvqLsCIDiW2zS9KIN6v87g0Gaf07nC6
	leC/3/mzh5+Y5PL+1GO21qHDrs3KdgKGOKebX2+ben3XuzzBmUeAGRRq8yAc6nYgxIlMzmQI8g0Fw
	TEytNs3z4/005FCtj8Q7Ww/aaFCt/UWOHaLYHnlliR+N7SN6gRQokgorwiXBCPIQpxvGXEURuD5iB
	6lE9LQbIbVdd4nBG4N96Fz4mQLWc32Pg2SiYw70vDfiViV3sJ+a3anI/7KBuNy/DbP1OQIEgmiXwQ
	XOZNFh7VVCgftbNWR6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUW2i-00041F-IR; Fri, 01 May 2020 13:49:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUW2W-0003st-2Z; Fri, 01 May 2020 13:49:20 +0000
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69B5C2495B;
 Fri,  1 May 2020 13:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588340955;
 bh=rrRaUUJVfjupaWV75pMiCCOI8CtzZo4YU5ZQlVdJXc8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q8wXQbYTuZiI5DAx3K8Sx/QAFIVEzvs52MzeAB4vaAGRdgyrEw9vvf0eG+hV3wZCn
 lICQCxGkVSz/gtmaTD5yMnxsfAQVoNZ9vEwzCXYZET2JQdl0W/3sPbvwgvqBV81tRb
 7lX75m6PpaI4GBIyV82FumT5sPLEjXUs9RJInbq4=
Received: by mail-ej1-f53.google.com with SMTP id gr25so7503724ejb.10;
 Fri, 01 May 2020 06:49:15 -0700 (PDT)
X-Gm-Message-State: AGi0PubDMStEEtT+uMwpcpXyoDdBh4XdWTKc0ynpxGVoB+CJ8lKLAI9i
 I+arkIaEgTogVtUYRu1lL2+x059o8jtIE30vtQ==
X-Google-Smtp-Source: APiQypLZiOhmJNwjqxeANsjvdXMDSliv9bRkJBX/FZHvsat/d+ZDHRR+BTgS77OHN6vidNUTVbn3ay6rtI4DRQUPmoQ=
X-Received: by 2002:a17:906:2503:: with SMTP id
 i3mr3055928ejb.293.1588340953730; 
 Fri, 01 May 2020 06:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
 <20200417150614.2631786-7-enric.balletbo@collabora.com>
In-Reply-To: <20200417150614.2631786-7-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 1 May 2020 21:48:59 +0800
X-Gmail-Original-Message-ID: <CAAOTY__n-Fh1QomCy4NQWmGRYa6peP0Vjyga8AX+ny161JV1EA@mail.gmail.com>
Message-ID: <CAAOTY__n-Fh1QomCy4NQWmGRYa6peP0Vjyga8AX+ny161JV1EA@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] drm/mediatek: mtk_dsi: Use the drm_panel_bridge API
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_064916_187320_F3DFB4E7 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ05pyIMTfml6Ug6YCx5LqUIOS4i+WNiDExOjA25a+r6YGT77ya
Cj4KPiBSZXBsYWNlIHRoZSBtYW51YWwgcGFuZWwgaGFuZGxpbmcgY29kZSBieSBhIGRybV9wYW5l
bF9icmlkZ2UuIFRoaXMKPiBzaW1wbGlmaWVzIHRoZSBkcml2ZXIgYW5kIGFsbG93cyBhbGwgY29t
cG9uZW50cyBpbiB0aGUgZGlzcGxheSBwaXBlbGluZQo+IHRvIGJlIHRyZWF0ZWQgYXMgYnJpZGdl
cywgcGF2aW5nIHRoZSB3YXkgdG8gZ2VuZXJpYyBjb25uZWN0b3IgaGFuZGxpbmcuCj4KClJldmll
d2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KCj4gU2lnbmVk
LW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3Jh
LmNvbT4KPiBSZXZpZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBp
ZGVhc29uYm9hcmQuY29tPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2MzoKPiAtIFVzZSBuZXh0X2Jy
aWRnZSBmaWVsZCB0byBzdG9yZSB0aGUgcGFuZWwgYnJpZGdlLiAoTGF1cmVudCBQaW5jaGFydCkK
PiAtIEFkZCB0aGUgYnJpZGdlLnR5cGUgZmllbGQuIChMYXVyZW50IFBpbmNoYXJ0KQo+IC0gVGhp
cyBwYXRjaCByZXF1aXJlcyBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC80LzE2LzIwODAgdG8g
d29yawo+ICAgcHJvcGVybHkuCj4KPiBDaGFuZ2VzIGluIHYyOgo+IC0gRG8gbm90IHNldCBjb25u
ZWN0b3JfdHlwZSBmb3IgcGFuZWwgaGVyZS4gKFNhbSBSYXZuYm9yZykKPgo+ICBkcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgMTg3ICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxNzMgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPiBpbmRleCBkNjg2OTRmZjAwZGMuLjE1
NzA5N2M2M2IyMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rz
aS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+IEBAIC0xODIs
OCArMTgyLDYgQEAgc3RydWN0IG10a19kc2kgewo+ICAgICAgICAgc3RydWN0IG1pcGlfZHNpX2hv
c3QgaG9zdDsKPiAgICAgICAgIHN0cnVjdCBkcm1fZW5jb2RlciBlbmNvZGVyOwo+ICAgICAgICAg
c3RydWN0IGRybV9icmlkZ2UgYnJpZGdlOwo+IC0gICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Ig
Y29ubjsKPiAtICAgICAgIHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsOwo+ICAgICAgICAgc3RydWN0
IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOwo+ICAgICAgICAgc3RydWN0IHBoeSAqcGh5Owo+Cj4g
QEAgLTIxMiwxMSArMjEwLDYgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbXRrX2RzaSAqYnJpZGdl
X3RvX2RzaShzdHJ1Y3QgZHJtX2JyaWRnZSAqYikKPiAgICAgICAgIHJldHVybiBjb250YWluZXJf
b2YoYiwgc3RydWN0IG10a19kc2ksIGJyaWRnZSk7Cj4gIH0KPgo+IC1zdGF0aWMgaW5saW5lIHN0
cnVjdCBtdGtfZHNpICpjb25uZWN0b3JfdG9fZHNpKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjKQo+
IC17Cj4gLSAgICAgICByZXR1cm4gY29udGFpbmVyX29mKGMsIHN0cnVjdCBtdGtfZHNpLCBjb25u
KTsKPiAtfQo+IC0KPiAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbXRrX2RzaSAqaG9zdF90b19kc2ko
c3RydWN0IG1pcGlfZHNpX2hvc3QgKmgpCj4gIHsKPiAgICAgICAgIHJldHVybiBjb250YWluZXJf
b2YoaCwgc3RydWN0IG10a19kc2ksIGhvc3QpOwo+IEBAIC02ODIsMTYgKzY3NSw3IEBAIHN0YXRp
YyBpbnQgbXRrX2RzaV9wb3dlcm9uKHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gICAgICAgICBtdGtf
ZHNpX2xhbmUwX3VscF9tb2RlX2xlYXZlKGRzaSk7Cj4gICAgICAgICBtdGtfZHNpX2Nsa19oc19t
b2RlKGRzaSwgMCk7Cj4KPiAtICAgICAgIGlmIChkc2ktPnBhbmVsKSB7Cj4gLSAgICAgICAgICAg
ICAgIGlmIChkcm1fcGFuZWxfcHJlcGFyZShkc2ktPnBhbmVsKSkgewo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIERSTV9FUlJPUigiZmFpbGVkIHRvIHByZXBhcmUgdGhlIHBhbmVsXG4iKTsKPiAt
ICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX2RpZ2l0YWxfY2xrOwo+IC0g
ICAgICAgICAgICAgICB9Cj4gLSAgICAgICB9Cj4gLQo+ICAgICAgICAgcmV0dXJuIDA7Cj4gLWVy
cl9kaXNhYmxlX2RpZ2l0YWxfY2xrOgo+IC0gICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRz
aS0+ZGlnaXRhbF9jbGspOwo+ICBlcnJfZGlzYWJsZV9lbmdpbmVfY2xrOgo+ICAgICAgICAgY2xr
X2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+ZW5naW5lX2Nsayk7Cj4gIGVycl9waHlfcG93ZXJfb2Zm
Ogo+IEBAIC03MTgsMTUgKzcwMiw3IEBAIHN0YXRpYyB2b2lkIG10a19kc2lfcG93ZXJvZmYoc3Ry
dWN0IG10a19kc2kgKmRzaSkKPiAgICAgICAgICAqLwo+ICAgICAgICAgbXRrX2RzaV9zdG9wKGRz
aSk7Cj4KPiAtICAgICAgIGlmICghbXRrX2RzaV9zd2l0Y2hfdG9fY21kX21vZGUoZHNpLCBWTV9E
T05FX0lOVF9GTEFHLCA1MDApKSB7Cj4gLSAgICAgICAgICAgICAgIGlmIChkc2ktPnBhbmVsKSB7
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgaWYgKGRybV9wYW5lbF91bnByZXBhcmUoZHNpLT5w
YW5lbCkpIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9FUlJPUigiZmFp
bGVkIHRvIHVucHJlcGFyZSB0aGUgcGFuZWxcbiIpOwo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIH0KPiAtICAgICAgICAg
ICAgICAgfQo+IC0gICAgICAgfQo+IC0KPiArICAgICAgIG10a19kc2lfc3dpdGNoX3RvX2NtZF9t
b2RlKGRzaSwgVk1fRE9ORV9JTlRfRkxBRywgNTAwKTsKPiAgICAgICAgIG10a19kc2lfcmVzZXRf
ZW5naW5lKGRzaSk7Cj4gICAgICAgICBtdGtfZHNpX2xhbmUwX3VscF9tb2RlX2VudGVyKGRzaSk7
Cj4gICAgICAgICBtdGtfZHNpX2Nsa191bHBfbW9kZV9lbnRlcihkc2kpOwo+IEBAIC03NTcsMTkg
KzczMyw3IEBAIHN0YXRpYyB2b2lkIG10a19vdXRwdXRfZHNpX2VuYWJsZShzdHJ1Y3QgbXRrX2Rz
aSAqZHNpKQo+Cj4gICAgICAgICBtdGtfZHNpX3N0YXJ0KGRzaSk7Cj4KPiAtICAgICAgIGlmIChk
c2ktPnBhbmVsKSB7Cj4gLSAgICAgICAgICAgICAgIGlmIChkcm1fcGFuZWxfZW5hYmxlKGRzaS0+
cGFuZWwpKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJmYWlsZWQgdG8g
ZW5hYmxlIHRoZSBwYW5lbFxuIik7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJf
ZHNpX3Bvd2VyX29mZjsKPiAtICAgICAgICAgICAgICAgfQo+IC0gICAgICAgfQo+IC0KPiAgICAg
ICAgIGRzaS0+ZW5hYmxlZCA9IHRydWU7Cj4gLQo+IC0gICAgICAgcmV0dXJuOwo+IC1lcnJfZHNp
X3Bvd2VyX29mZjoKPiAtICAgICAgIG10a19kc2lfc3RvcChkc2kpOwo+IC0gICAgICAgbXRrX2Rz
aV9wb3dlcm9mZihkc2kpOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgbXRrX291dHB1dF9kc2lfZGlz
YWJsZShzdHJ1Y3QgbXRrX2RzaSAqZHNpKQo+IEBAIC03NzcsMzQgKzc0MSwxOSBAQCBzdGF0aWMg
dm9pZCBtdGtfb3V0cHV0X2RzaV9kaXNhYmxlKHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gICAgICAg
ICBpZiAoIWRzaS0+ZW5hYmxlZCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+Cj4gLSAgICAg
ICBpZiAoZHNpLT5wYW5lbCkgewo+IC0gICAgICAgICAgICAgICBpZiAoZHJtX3BhbmVsX2Rpc2Fi
bGUoZHNpLT5wYW5lbCkpIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBEUk1fRVJST1IoImZh
aWxlZCB0byBkaXNhYmxlIHRoZSBwYW5lbFxuIik7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuOwo+IC0gICAgICAgICAgICAgICB9Cj4gLSAgICAgICB9Cj4gLQo+ICAgICAgICAgbXRr
X2RzaV9wb3dlcm9mZihkc2kpOwo+Cj4gICAgICAgICBkc2ktPmVuYWJsZWQgPSBmYWxzZTsKPiAg
fQo+Cj4gLXN0YXRpYyBpbnQgbXRrX2RzaV9jcmVhdGVfY29ubl9lbmMoc3RydWN0IGRybV9kZXZp
Y2UgKmRybSwgc3RydWN0IG10a19kc2kgKmRzaSk7Cj4gLXN0YXRpYyB2b2lkIG10a19kc2lfZGVz
dHJveV9jb25uX2VuYyhzdHJ1Y3QgbXRrX2RzaSAqZHNpKTsKPiAtCj4gIHN0YXRpYyBpbnQgbXRr
X2RzaV9icmlkZ2VfYXR0YWNoKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBmbGFn
cykKPiAgewo+ICAgICAgICAgc3RydWN0IG10a19kc2kgKmRzaSA9IGJyaWRnZV90b19kc2koYnJp
ZGdlKTsKPgo+IC0gICAgICAgcmV0dXJuIG10a19kc2lfY3JlYXRlX2Nvbm5fZW5jKGJyaWRnZS0+
ZGV2LCBkc2kpOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBtdGtfZHNpX2JyaWRnZV9kZXRhY2go
c3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKPiAtewo+IC0gICAgICAgc3RydWN0IG10a19kc2kg
KmRzaSA9IGJyaWRnZV90b19kc2koYnJpZGdlKTsKPiAtCj4gLSAgICAgICBtdGtfZHNpX2Rlc3Ry
b3lfY29ubl9lbmMoZHNpKTsKPiArICAgICAgIC8qIEF0dGFjaCB0aGUgcGFuZWwgb3IgYnJpZGdl
IHRvIHRoZSBkc2kgYnJpZGdlICovCj4gKyAgICAgICByZXR1cm4gZHJtX2JyaWRnZV9hdHRhY2go
YnJpZGdlLT5lbmNvZGVyLCBkc2ktPm5leHRfYnJpZGdlLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICZkc2ktPmJyaWRnZSwgZmxhZ3MpOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQg
bXRrX2RzaV9icmlkZ2VfbW9kZV9zZXQoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPiBAQCAt
ODMwLDExNSArNzc5LDEzIEBAIHN0YXRpYyB2b2lkIG10a19kc2lfYnJpZGdlX2VuYWJsZShzdHJ1
Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQo+ICAgICAgICAgbXRrX291dHB1dF9kc2lfZW5hYmxlKGRz
aSk7Cj4gIH0KPgo+IC1zdGF0aWMgaW50IG10a19kc2lfY29ubmVjdG9yX2dldF9tb2RlcyhzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+IC17Cj4gLSAgICAgICBzdHJ1Y3QgbXRrX2Rz
aSAqZHNpID0gY29ubmVjdG9yX3RvX2RzaShjb25uZWN0b3IpOwo+IC0KPiAtICAgICAgIHJldHVy
biBkcm1fcGFuZWxfZ2V0X21vZGVzKGRzaS0+cGFuZWwsIGNvbm5lY3Rvcik7Cj4gLX0KPiAtCj4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyBtdGtfZHNpX2JyaWRnZV9mdW5j
cyA9IHsKPiAgICAgICAgIC5hdHRhY2ggPSBtdGtfZHNpX2JyaWRnZV9hdHRhY2gsCj4gLSAgICAg
ICAuZGV0YWNoID0gbXRrX2RzaV9icmlkZ2VfZGV0YWNoLAo+ICAgICAgICAgLmRpc2FibGUgPSBt
dGtfZHNpX2JyaWRnZV9kaXNhYmxlLAo+ICAgICAgICAgLmVuYWJsZSA9IG10a19kc2lfYnJpZGdl
X2VuYWJsZSwKPiAgICAgICAgIC5tb2RlX3NldCA9IG10a19kc2lfYnJpZGdlX21vZGVfc2V0LAo+
ICB9Owo+Cj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9mdW5jcyBtdGtfZHNp
X2Nvbm5lY3Rvcl9mdW5jcyA9IHsKPiAtICAgICAgIC5maWxsX21vZGVzID0gZHJtX2hlbHBlcl9w
cm9iZV9zaW5nbGVfY29ubmVjdG9yX21vZGVzLAo+IC0gICAgICAgLmRlc3Ryb3kgPSBkcm1fY29u
bmVjdG9yX2NsZWFudXAsCj4gLSAgICAgICAucmVzZXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jb25u
ZWN0b3JfcmVzZXQsCj4gLSAgICAgICAuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9t
aWNfaGVscGVyX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUsCj4gLSAgICAgICAuYXRvbWljX2Rl
c3Ryb3lfc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9jb25uZWN0b3JfZGVzdHJveV9zdGF0ZSwK
PiAtfTsKPiAtCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVu
Y3MKPiAtICAgICAgIG10a19kc2lfY29ubmVjdG9yX2hlbHBlcl9mdW5jcyA9IHsKPiAtICAgICAg
IC5nZXRfbW9kZXMgPSBtdGtfZHNpX2Nvbm5lY3Rvcl9nZXRfbW9kZXMsCj4gLX07Cj4gLQo+IC1z
dGF0aWMgaW50IG10a19kc2lfY3JlYXRlX2Nvbm5lY3RvcihzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
LCBzdHJ1Y3QgbXRrX2RzaSAqZHNpKQo+IC17Cj4gLSAgICAgICBpbnQgcmV0Owo+IC0KPiAtICAg
ICAgIHJldCA9IGRybV9jb25uZWN0b3JfaW5pdChkcm0sICZkc2ktPmNvbm4sICZtdGtfZHNpX2Nv
bm5lY3Rvcl9mdW5jcywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fTU9E
RV9DT05ORUNUT1JfRFNJKTsKPiAtICAgICAgIGlmIChyZXQpIHsKPiAtICAgICAgICAgICAgICAg
RFJNX0VSUk9SKCJGYWlsZWQgdG8gY29ubmVjdG9yIGluaXQgdG8gZHJtXG4iKTsKPiAtICAgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPiAtICAgICAgIH0KPiAtCj4gLSAgICAgICBkcm1fY29ubmVj
dG9yX2hlbHBlcl9hZGQoJmRzaS0+Y29ubiwgJm10a19kc2lfY29ubmVjdG9yX2hlbHBlcl9mdW5j
cyk7Cj4gLQo+IC0gICAgICAgZHNpLT5jb25uLmRwbXMgPSBEUk1fTU9ERV9EUE1TX09GRjsKPiAt
ICAgICAgIGRybV9jb25uZWN0b3JfYXR0YWNoX2VuY29kZXIoJmRzaS0+Y29ubiwgJmRzaS0+ZW5j
b2Rlcik7Cj4gLQo+IC0gICAgICAgaWYgKGRzaS0+cGFuZWwpIHsKPiAtICAgICAgICAgICAgICAg
cmV0ID0gZHJtX3BhbmVsX2F0dGFjaChkc2ktPnBhbmVsLCAmZHNpLT5jb25uKTsKPiAtICAgICAg
ICAgICAgICAgaWYgKHJldCkgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIERSTV9FUlJPUigi
RmFpbGVkIHRvIGF0dGFjaCBwYW5lbCB0byBkcm1cbiIpOwo+IC0gICAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyX2Nvbm5lY3Rvcl9jbGVhbnVwOwo+IC0gICAgICAgICAgICAgICB9Cj4gLSAg
ICAgICB9Cj4gLQo+IC0gICAgICAgcmV0dXJuIDA7Cj4gLQo+IC1lcnJfY29ubmVjdG9yX2NsZWFu
dXA6Cj4gLSAgICAgICBkcm1fY29ubmVjdG9yX2NsZWFudXAoJmRzaS0+Y29ubik7Cj4gLSAgICAg
ICByZXR1cm4gcmV0Owo+IC19Cj4gLQo+IC1zdGF0aWMgaW50IG10a19kc2lfY3JlYXRlX2Nvbm5f
ZW5jKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gLXsKPiAt
ICAgICAgIGludCByZXQ7Cj4gLQo+IC0gICAgICAgcmV0ID0gZHJtX2VuY29kZXJfaW5pdChkcm0s
ICZkc2ktPmVuY29kZXIsICZtdGtfZHNpX2VuY29kZXJfZnVuY3MsCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIERSTV9NT0RFX0VOQ09ERVJfRFNJLCBOVUxMKTsKPiAtICAgICAgIGlm
IChyZXQpIHsKPiAtICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJGYWlsZWQgdG8gZW5jb2RlciBp
bml0IHRvIGRybVxuIik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gLSAgICAgICB9
Cj4gLSAgICAgICBkcm1fZW5jb2Rlcl9oZWxwZXJfYWRkKCZkc2ktPmVuY29kZXIsICZtdGtfZHNp
X2VuY29kZXJfaGVscGVyX2Z1bmNzKTsKPiAtCj4gLSAgICAgICAvKgo+IC0gICAgICAgICogQ3Vy
cmVudGx5IGRpc3BsYXkgZGF0YSBwYXRocyBhcmUgc3RhdGljYWxseSBhc3NpZ25lZCB0byBhIGNy
dGMgZWFjaC4KPiAtICAgICAgICAqIGNydGMgMCBpcyBPVkwwIC0+IENPTE9SMCAtPiBBQUwgLT4g
T0QgLT4gUkRNQTAgLT4gVUZPRSAtPiBEU0kwCj4gLSAgICAgICAgKi8KPiAtICAgICAgIGRzaS0+
ZW5jb2Rlci5wb3NzaWJsZV9jcnRjcyA9IDE7Cj4gLQo+IC0gICAgICAgLyogSWYgdGhlcmUncyBh
IG5leHQgYnJpZGdlLCBhdHRhY2ggdG8gaXQgYW5kIGxldCBpdCBjcmVhdGUgdGhlIGNvbm5lY3Rv
ciAqLwo+IC0gICAgICAgaWYgKGRzaS0+bmV4dF9icmlkZ2UpIHsKPiAtICAgICAgICAgICAgICAg
cmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgZHNpLT5uZXh0X2JyaWRnZSwg
TlVMTCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCk7Cj4gLSAg
ICAgICAgICAgICAgIGlmIChyZXQpIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBEUk1fRVJS
T1IoIkZhaWxlZCB0byBhdHRhY2ggYnJpZGdlIHRvIGRybVxuIik7Cj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgZ290byBlcnJfZW5jb2Rlcl9jbGVhbnVwOwo+IC0gICAgICAgICAgICAgICB9Cj4g
LSAgICAgICB9IGVsc2Ugewo+IC0gICAgICAgICAgICAgICAvKiBPdGhlcndpc2UgY3JlYXRlIG91
ciBvd24gY29ubmVjdG9yIGFuZCBhdHRhY2ggdG8gYSBwYW5lbCAqLwo+IC0gICAgICAgICAgICAg
ICByZXQgPSBtdGtfZHNpX2NyZWF0ZV9jb25uZWN0b3IoZHJtLCBkc2kpOwo+IC0gICAgICAgICAg
ICAgICBpZiAocmV0KQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2VuY29kZXJf
Y2xlYW51cDsKPiAtICAgICAgIH0KPiAtCj4gLSAgICAgICByZXR1cm4gMDsKPiAtCj4gLWVycl9l
bmNvZGVyX2NsZWFudXA6Cj4gLSAgICAgICBkcm1fZW5jb2Rlcl9jbGVhbnVwKCZkc2ktPmVuY29k
ZXIpOwo+IC0gICAgICAgcmV0dXJuIHJldDsKPiAtfQo+IC0KPiAtc3RhdGljIHZvaWQgbXRrX2Rz
aV9kZXN0cm95X2Nvbm5fZW5jKHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gLXsKPiAtICAgICAgIGRy
bV9lbmNvZGVyX2NsZWFudXAoJmRzaS0+ZW5jb2Rlcik7Cj4gLSAgICAgICAvKiBTa2lwIGNvbm5l
Y3RvciBjbGVhbnVwIGlmIGNyZWF0aW9uIHdhcyBkZWxlZ2F0ZWQgdG8gdGhlIGJyaWRnZSAqLwo+
IC0gICAgICAgaWYgKGRzaS0+Y29ubi5kZXYpCj4gLSAgICAgICAgICAgICAgIGRybV9jb25uZWN0
b3JfY2xlYW51cCgmZHNpLT5jb25uKTsKPiAtICAgICAgIGlmIChkc2ktPnBhbmVsKQo+IC0gICAg
ICAgICAgICAgICBkcm1fcGFuZWxfZGV0YWNoKGRzaS0+cGFuZWwpOwo+IC19Cj4gLQo+ICBzdGF0
aWMgdm9pZCBtdGtfZHNpX2RkcF9zdGFydChzdHJ1Y3QgbXRrX2RkcF9jb21wICpjb21wKQo+ICB7
Cj4gICAgICAgICBzdHJ1Y3QgbXRrX2RzaSAqZHNpID0gY29udGFpbmVyX29mKGNvbXAsIHN0cnVj
dCBtdGtfZHNpLCBkZHBfY29tcCk7Cj4gQEAgLTk2NywyMCArODE0LDYgQEAgc3RhdGljIGludCBt
dGtfZHNpX2hvc3RfYXR0YWNoKHN0cnVjdCBtaXBpX2RzaV9ob3N0ICpob3N0LAo+ICAgICAgICAg
ZHNpLT5mb3JtYXQgPSBkZXZpY2UtPmZvcm1hdDsKPiAgICAgICAgIGRzaS0+bW9kZV9mbGFncyA9
IGRldmljZS0+bW9kZV9mbGFnczsKPgo+IC0gICAgICAgaWYgKGRzaS0+Y29ubi5kZXYpCj4gLSAg
ICAgICAgICAgICAgIGRybV9oZWxwZXJfaHBkX2lycV9ldmVudChkc2ktPmNvbm4uZGV2KTsKPiAt
Cj4gLSAgICAgICByZXR1cm4gMDsKPiAtfQo+IC0KPiAtc3RhdGljIGludCBtdGtfZHNpX2hvc3Rf
ZGV0YWNoKHN0cnVjdCBtaXBpX2RzaV9ob3N0ICpob3N0LAo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkZXZpY2UpCj4gLXsKPiAtICAgICAg
IHN0cnVjdCBtdGtfZHNpICpkc2kgPSBob3N0X3RvX2RzaShob3N0KTsKPiAtCj4gLSAgICAgICBp
ZiAoZHNpLT5jb25uLmRldikKPiAtICAgICAgICAgICAgICAgZHJtX2hlbHBlcl9ocGRfaXJxX2V2
ZW50KGRzaS0+Y29ubi5kZXYpOwo+IC0KPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiBAQCAt
MTEyNCw3ICs5NTcsNiBAQCBzdGF0aWMgc3NpemVfdCBtdGtfZHNpX2hvc3RfdHJhbnNmZXIoc3Ry
dWN0IG1pcGlfZHNpX2hvc3QgKmhvc3QsCj4KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBtaXBpX2Rz
aV9ob3N0X29wcyBtdGtfZHNpX29wcyA9IHsKPiAgICAgICAgIC5hdHRhY2ggPSBtdGtfZHNpX2hv
c3RfYXR0YWNoLAo+IC0gICAgICAgLmRldGFjaCA9IG10a19kc2lfaG9zdF9kZXRhY2gsCj4gICAg
ICAgICAudHJhbnNmZXIgPSBtdGtfZHNpX2hvc3RfdHJhbnNmZXIsCj4gIH07Cj4KPiBAQCAtMTE5
OCw2ICsxMDMwLDcgQEAgc3RhdGljIGludCBtdGtfZHNpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBtdGtfZHNpICpkc2k7Cj4gICAgICAg
ICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICsgICAgICAgc3RydWN0IGRybV9w
YW5lbCAqcGFuZWw7Cj4gICAgICAgICBzdHJ1Y3QgcmVzb3VyY2UgKnJlZ3M7Cj4gICAgICAgICBp
bnQgaXJxX251bTsKPiAgICAgICAgIGludCBjb21wX2lkOwo+IEBAIC0xMjE2LDEwICsxMDQ5LDE4
IEBAIHN0YXRpYyBpbnQgbXRrX2RzaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAgICAgICAgfQo+Cj4gICAgICAgICByZXQgPSBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlk
Z2UoZGV2LT5vZl9ub2RlLCAwLCAwLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZkc2ktPnBhbmVsLCAmZHNpLT5uZXh0X2JyaWRnZSk7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnBhbmVsLCAmZHNpLT5uZXh0X2JyaWRnZSk7
Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl91bnJlZ2lzdGVy
X2hvc3Q7Cj4KPiArICAgICAgIGlmIChwYW5lbCkgewo+ICsgICAgICAgICAgICAgICBkc2ktPm5l
eHRfYnJpZGdlID0gZGV2bV9kcm1fcGFuZWxfYnJpZGdlX2FkZChkZXYsIHBhbmVsKTsKPiArICAg
ICAgICAgICAgICAgaWYgKElTX0VSUihkc2ktPm5leHRfYnJpZGdlKSkgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoZHNpLT5uZXh0X2JyaWRnZSk7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnJfdW5yZWdpc3Rlcl9ob3N0Owo+ICsgICAgICAgICAgICAg
ICB9Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgZHNpLT5kcml2ZXJfZGF0YSA9IG9mX2Rldmlj
ZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+Cj4gICAgICAgICBkc2ktPmVuZ2luZV9jbGsgPSBkZXZt
X2Nsa19nZXQoZGV2LCAiZW5naW5lIik7Cj4gLS0KPiAyLjI1LjEKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
