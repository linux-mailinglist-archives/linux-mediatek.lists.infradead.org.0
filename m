Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4191D7FC5
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 19:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6txuq6w+ZBMXEFv+1egmXOyzH2euJEx388ZXXkgzLxI=; b=jhoI7Rr8iwGQyF
	0GAwgso9RSBfQKN5jTjrNFbw2SI7sh20HWtjW6GQBUr8s6SF353SQo02wg5DvYTARp6ejPIrmBXqz
	VMXPJ31Q/beSd/LrSR7FcEQsD24D5NwZEQoSlvv1iwWVapBpU4LlsM2Tezsj+210+HgATI2iSXhqq
	PhYaUJUmal8iyL0Z6sHRGwvCAlu2GVkEDeWatKD5/9XUi3aTXJAdaMNFFVoGngfRf9c7D+Uvsb+BG
	GsccaRkOV8szIyLeNrL+zSwOUP8XSRWiCZWHEZpatyo4hjk40ijl7g7YAJKx+d8nmTLwkcLpdBjjV
	5dv9TYwn1mR5Ub2NqyrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajJ8-0008WC-HK; Mon, 18 May 2020 17:12:06 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajJ3-0008VL-EY; Mon, 18 May 2020 17:12:04 +0000
Received: by mail-qv1-xf43.google.com with SMTP id g20so5068033qvb.9;
 Mon, 18 May 2020 10:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yijTSszOmirrN4dcf+zjcxVlnR23zFrRY84RCRmsEHc=;
 b=X/0XbD1lQ13+eZr52dRelGxdLfX0hNxu9gqDRuBIKnHVBfXNSmt3sr1StzGjNq3ATp
 nNh6rUAGrIWX/x8hE4jWd2RRAgmPmlycThUeU8WIYZRIWTUwYWY3TxwHbq+YkmRJwRRk
 kgWuQwZQHzcHXftWPvc4bYAjMMueXFM7Jh79R7dekcaUAq+bGIvla3ClJIsDD4sSoiRi
 fTxxRnS9jpIqpBEAFH5DlPgeG1zILA1j4M6xBkYJXfmVBspw9MxlDEVkgHinl5JK3JsM
 JcUj6sPSahs04snUCY6B7x0tA5ueFI7SLNXkbQBMtbEIYhtnCmjztw4yuQtTitFPU7WJ
 9wqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yijTSszOmirrN4dcf+zjcxVlnR23zFrRY84RCRmsEHc=;
 b=deEMdD5Cq4xwItcFi0lIaFqsDGPZJL6n/GNZA5bGuPdPy9i2hAIUE2iq92ABe58dXq
 mFhFieNzuazJhxmvfqrRiMaK+Rrp6eefEz1qJFuhq7U82fKebiMm9PyQpWeneIox3KYs
 gHB794F1NW3Kcf4RHpIWGst8RvjSjoXLAUN2ghVif+knQrZb9MkoHByx3AOGE4Xnynms
 nocDJLLMESCrKXiFQmuTVbZDJWireDSx6ab6k2rZy6Avf/tZZWuOTvgmikQwdg7AAVnZ
 gnx0KyOCHFdVMZaVqofVzo8BIVs9xRsUY8PstZBsvDYxdCu+7OdLN4K9rbx6jyg7vCNr
 knxg==
X-Gm-Message-State: AOAM531cXGlwegBV5FArCRRL+aBEosbty4WieakvNeJqBhjk3gj0FtNI
 DFRC+VlKxvtZqHW/6pgaR6KbNzi5HRCRGoDMTuU=
X-Google-Smtp-Source: ABdhPJzw1WFo4BEBKw/NTJAYyzgk94FU/T8fZ9uRFndR1BREptGLqHhw7soukJPoF4CYNE7kzMYuDvlAwjuqNHm0Fc4=
X-Received: by 2002:a05:6214:370:: with SMTP id
 t16mr11194223qvu.197.1589821920011; 
 Mon, 18 May 2020 10:12:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
 <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
 <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
 <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
 <CAAOTY_-w0V0iQgjZ0n26KKs_MdB-im9+LC2EDTmGo0wMG9p_Vw@mail.gmail.com>
In-Reply-To: <CAAOTY_-w0V0iQgjZ0n26KKs_MdB-im9+LC2EDTmGo0wMG9p_Vw@mail.gmail.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Mon, 18 May 2020 19:11:48 +0200
Message-ID: <CAFqH_52YJEnuoXmJVq1TgH5Ay76p-feVQPZ6s4h-1TMBDQ8fDA@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_101201_524646_1E43A66F 
X-CRM114-Status: GOOD (  38.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgQ2h1bi1LdWFuZywKCk1pc3NhdGdlIGRlIENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBr
ZXJuZWwub3JnPiBkZWwgZGlhIGRzLiwgMTYgZGUKbWFpZyAyMDIwIGEgbGVzIDEyOjExOgo+Cj4g
SGksIEVucmljOgo+Cj4gRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29s
bGFib3JhLmNvbT4g5pa8IDIwMjDlubQ15pyIMTXml6Ug6YCx5LqUIOS4iuWNiDE6MzXlr6vpgZPv
vJoKPiA+Cj4gPiBIaSBhZ2FpbiwKPiA+Cj4gPiBPbiAxNC81LzIwIDE5OjEyLCBFbnJpYyBCYWxs
ZXRibyBpIFNlcnJhIHdyb3RlOgo+ID4gPiBIaSBDaHVuLUt1YW5nLAo+ID4gPgo+ID4gPiBPbiAx
NC81LzIwIDE4OjQ0LCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+ID4gPj4gSGksIEVucmljOgo+ID4g
Pj4KPiA+ID4+IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9y
YS5jb20+IOaWvCAyMDIw5bm0NeaciDE05pelIOmAseWbmyDkuIvljYgxMTo0MuWvq+mBk++8mgo+
ID4gPj4+Cj4gPiA+Pj4gSGkgQ2h1bi1LdWFuZywKPiA+ID4+Pgo+ID4gPj4+IE9uIDE0LzUvMjAg
MTY6MjgsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4gPiA+Pj4+IEhpLCBFbnJpYzoKPiA+ID4+Pj4K
PiA+ID4+Pj4gRW5yaWMgQmFsbGV0Ym8gU2VycmEgPGViYWxsZXRib0BnbWFpbC5jb20+IOaWvCAy
MDIw5bm0NeaciDE05pelIOmAseWbmyDkuIrljYgxMjo0MeWvq+mBk++8mgo+ID4gPj4+Pj4KPiA+
ID4+Pj4+IEhpIENodW4tS3VhbmcsCj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gTWlzc2F0Z2UgZGUgRW5y
aWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4gZGVsCj4g
PiA+Pj4+PiBkaWEgZHYuLCAxIGRlIG1haWcgMjAyMCBhIGxlcyAxNzoyNToKPiA+ID4+Pj4+Pgo+
ID4gPj4+Pj4+IFVzZSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVscGVyIHRvIGNyZWF0ZSBh
IGNvbm5lY3RvciBmb3IgcGlwZWxpbmVzCj4gPiA+Pj4+Pj4gdGhhdCB1c2UgZHJtX2JyaWRnZS4g
VGhpcyBhbGxvd3Mgc3BsaXR0aW5nIGNvbm5lY3RvciBvcGVyYXRpb25zIGFjcm9zcwo+ID4gPj4+
Pj4+IG11bHRpcGxlIGJyaWRnZXMgd2hlbiBuZWNlc3NhcnksIGluc3RlYWQgb2YgaGF2aW5nIHRo
ZSBsYXN0IGJyaWRnZSBpbgo+ID4gPj4+Pj4+IHRoZSBjaGFpbiBjcmVhdGluZyB0aGUgY29ubmVj
dG9yIGFuZCBoYW5kbGluZyBhbGwgY29ubmVjdG9yIG9wZXJhdGlvbnMKPiA+ID4+Pj4+PiBpbnRl
cm5hbGx5Lgo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0
Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiA+ID4+Pj4+PiBBY2tl
ZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+ID4gPj4+Pj4KPiA+ID4+Pj4+
IEEgZ2VudGxlIHBpbmcgb24gdGhpcywgSSB0aGluayB0aGF0IHRoaXMgb25lIGlzIHRoZSBvbmx5
IG9uZSB0aGF0Cj4gPiA+Pj4+PiBzdGlsbCBuZWVkcyBhIHJldmlldyBpbiB0aGUgc2VyaWVzLgo+
ID4gPj4+Pgo+ID4gPj4+PiBUaGlzIGlzIHdoYXQgSSByZXBseSBpbiBwYXRjaCB2MzoKPiA+ID4+
Pj4KPiA+ID4+Pgo+ID4gPj4+IFNvcnJ5IGZvciBtaXNzaW5nIHRoaXMuCj4gPiA+Pj4KPiA+ID4+
Pj4gSSB0aGluayB0aGUgcGFuZWwgaXMgd3JhcHBlZCBpbnRvIG5leHRfYnJpZGdlIGhlcmUsCj4g
PiA+Pj4+Cj4gPiA+Pj4KPiA+ID4+PiBZZXMsIHlvdSBjYW4gaGF2ZSBmb3IgZXhhbXBsZToKPiA+
ID4+Pgo+ID4gPj4+IDEuIGRybV9icmlkZ2UgKG10a19kc2kpIC0+IGRybV9icmlkZ2UgKHBzODY0
MCAtIGRzaS10by1lZHApIC0+IGRybV9wYW5lbF9icmlkZ2UKPiA+ID4+PiAoZWRwIHBhbmVsKQo+
ID4gPj4+Cj4gPiA+Pj4gb3IgYQo+ID4gPj4+Cj4gPiA+Pj4gMi4gZHJtX2JyaWRnZSAobXRrX2Rz
aSktPiBkcm1fcGFuZWxfYnJpZGdlIChkc2kgcGFuZWwpCj4gPiA+Pj4KPiA+ID4+PiBUaGUgX2Zp
cnN0XyBvbmUgaXMgbXkgdXNlIGNhc2UKPiA+ID4+Pgo+ID4gPj4+PiBpZiAocGFuZWwpIHsKPiA+
ID4+Pgo+ID4gPj4+IFRoaXMgaGFuZGxlcyB0aGUgc2Vjb25kIGNhc2UsIHdoZXJlIHlvdSBhdHRh
Y2ggYSBkc2kgcGFuZWwuCj4gPiA+Pj4KPiA+ID4+Pj4gICAgIGRzaS0+bmV4dF9icmlkZ2UgPSBk
ZXZtX2RybV9wYW5lbF9icmlkZ2VfYWRkKGRldiwgcGFuZWwpOwo+ID4gPj4+Pgo+ID4gPj4+PiBz
byB0aGUgbmV4dF9icmlkZ2UgaXMgYSBwYW5lbF9icmlkZ2UsIGluIGl0cyBhdHRhY2ggZnVuY3Rp
b24KPiA+ID4+Pj4gcGFuZWxfYnJpZGdlX2F0dGFjaCgpLAo+ID4gPj4+PiBhY2NvcmRpbmcgdG8g
dGhlIGZsYWcgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLCBpZiBub3QgZXhpc3QsCj4g
PiA+Pj4+IGl0IHdvdWxkIGNyZWF0ZSBjb25uZWN0b3IgYW5kIGF0dGFjaCBjb25uZWN0b3IgdG8g
cGFuZWwuCj4gPiA+Pj4+Cj4gPiA+Pj4+IEknbSBub3Qgc3VyZSB0aGlzIGZsYWcgd291bGQgZXhp
c3Qgb3Igbm90LCBidXQgZm9yIGJvdGggY2FzZSwgaXQncyBzdHJhbmdlLgo+ID4gPj4+PiBJZiBl
eGlzdCwgeW91IGNyZWF0ZSBjb25uZWN0b3IgaW4gdGhpcyBwYXRjaCBidXQgbm8gd2hlcmUgdG8g
YXR0YWNoCj4gPiA+Pj4+IGNvbm5lY3RvciB0byBwYW5lbC4KPiA+ID4+Pgo+ID4gPj4+IFllcywg
aW4gZmFjdCwgdGhpcyBpcyB0cmFuc2l0aW9uYWwgcGF0Y2ggbmVlZGVkLCBhcyBvbmNlIEkgY29u
dmVydGVkIG10a19kcGksCj4gPiA+Pj4gbXRrX2RzaSBhbmQgbXRrX2hkbWkgdG8gdGhlIG5ldyBk
cm1fYnJpZGdlIEFQSSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpCj4gPiA+Pj4gd2ls
bCBiZSBkb25lIGluIG10a19kcm1fZHJ2LiBXZSB3aWxsIG5lZWQgdG8gY2FsbCBkcm1fYnJpZGdl
X2Nvbm5lY3Rvcl9pbml0IGZvcgo+ID4gPj4+IGRwaSBhbmQgZHNpIHBpcGVzIGFuZCByZW1vdmUg
dGhhdCBjYWxsIGZyb20gbXRrX2RzaSBhbmQgbXRrX2RwaSBkcml2ZXJzLiBUaGUKPiA+ID4+PiBn
cmFwaGljIGNvbnRyb2xsZXIgZHJpdmVyIHNob3VsZCBjcmVhdGUgY29ubmVjdG9ycyBhbmQgQ1JU
Q3MsIGFzIGV4YW1wbGUgeW91IGNhbgo+ID4gPj4+IHRha2UgYSBsb29rIGF0IGRyaXZlcnMvZ3B1
L2RybS9vbWFwZHJtL29tYXBfZHJ2LmMKPiA+ID4+Pgo+ID4gPj4KPiA+ID4+IEkgaGF2ZSBzdWNo
IHF1ZXN0aW9uIGJlY2F1c2UgSSd2ZSByZXZpZXdlZCBvbWFwJ3MgZHJpdmVyLiBJbiBvbWFwJ3MK
PiA+ID4+IGRyaXZlciwgYWZ0ZXIgaXQgY2FsbCBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KCks
IGl0IGRvZXMgdGhpczoKPiA+ID4+Cj4gPiA+PiBpZiAocGlwZS0+b3V0cHV0LT5wYW5lbCkgewo+
ID4gPj4gcmV0ID0gZHJtX3BhbmVsX2F0dGFjaChwaXBlLT5vdXRwdXQtPnBhbmVsLAo+ID4gPj4g
ICAgICAgcGlwZS0+Y29ubmVjdG9yKTsKPiA+ID4+IGlmIChyZXQgPCAwKQo+ID4gPj4gcmV0dXJu
IHJldDsKPiA+ID4+IH0KPiA+ID4+Cj4gPiA+PiBJbiB0aGlzIHBhdGNoLCB5b3UgZG9lcyBub3Qg
ZG8gdGhpcy4KPiA+ID4+Cj4gPiA+Cj4gPiA+IEkgc2VlLCBzbyB5ZXMsIEkgYW0gcHJvYmFibHkg
bWlzc2luZyBjYWxsIGRybV9wYW5lbF9hdHRhY2ggaW4gY2FzZSB0aGVyZSBpcyBhCj4gPiA+IGRp
cmVjdCBwYW5lbCBhdHRhY2hlZC4gVGhhbmtzIGZvciBwb2ludGluZyBpdC4KPiA+ID4KPiA+ID4g
SSdsbCBzZW5kIGEgbmV3IHZlcnNpb24gYWRkaW5nIHRoZSBkcm1fcGFuZWxfYXR0YWNoIGNhbGwu
Cj4gPiA+Cj4gPgo+ID4gV2FpdCwgc2hvdWxkbid0IHBhbmVsIGJlIGF0dGFjaGVkIG9uIHRoZSBj
YWxsIG9mIG10a19kc2lfYnJpZGdlX2F0dGFjaCBhcwo+ID4gbmV4dF9icmlkZ2UgcG9pbnRzIHRv
IGEgYnJpZGdlIG9yIGEgcGFuZWw/Cj4gPgo+ID4gc3RhdGljIGludCBtdGtfZHNpX2JyaWRnZV9h
dHRhY2goc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGVudW0gZHJtX2JyaWRnZV9hdHRhY2hfZmxhZ3MgZmxhZ3MpCj4gPiB7Cj4g
PiAgICAgICAgIHN0cnVjdCBtdGtfZHNpICpkc2kgPSBicmlkZ2VfdG9fZHNpKGJyaWRnZSk7Cj4g
Pgo+ID4gICAgICAgICAvKiBBdHRhY2ggdGhlIHBhbmVsIG9yIGJyaWRnZSB0byB0aGUgZHNpIGJy
aWRnZSAqLwo+ID4gICAgICAgICByZXR1cm4gZHJtX2JyaWRnZV9hdHRhY2goYnJpZGdlLT5lbmNv
ZGVyLCBkc2ktPm5leHRfYnJpZGdlLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJmRzaS0+YnJpZGdlLCBmbGFncyk7Cj4gPiB9Cj4gPgo+ID4gT3IgSSBhbSBjb250aW51aW5n
IG1pc3VuZGVyc3RhbmRpbmcgYWxsIHRoaXM/Cj4gPgo+Cj4gTXkgcG9pbnQgaXM6IHdoZW4gZG8g
eW91IGF0dGFjaCBwYW5lbCB0byBhIGNvbm5lY3Rvcj8KPiBJbiB0aGlzIHBhdGNoLAo+Cj4gcmV0
ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgJmRzaS0+YnJpZGdlLCBOVUxMLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9CUklER0VfQVRU
QUNIX05PX0NPTk5FQ1RPUik7Cj4KPiBpdCB3b3VsZCBjYWxsIGludG8gbXRrX2RzaV9icmlkZ2Vf
YXR0YWNoKCkgd2l0aAo+IERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUiwgYW5kIGNhbGwg
aW50byBwYW5lbF9icmlkZ2VfYXR0YWNoKCkKPiB3aXRoIERSTV9CUklER0VfQVRUQUNIX05PX0NP
Tk5FQ1RPUi4KCk15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGUgRFJNX0JSSURHRV9BVFRBQ0hf
Tk9fQ09OTkVDVE9SIGZsYWcgaXMgdG8KZWFzZSB0cmFuc2l0aW9uIGJldHdlZW4gdGhlIG9sZCBh
bmQgdGhlIG5ldyBtb2RlbC4gVGhlIGRyaXZlcnMgdGhhdApzdXBwb3J0IHRoZSBuZXcgbW9kZWwg
c2hhbGwgc2V0IHRoYXQgZmxhZy4KCj4gSWYgeW91IGRvZXMgbm90IHBhc3MgRFJNX0JSSURHRV9B
VFRBQ0hfTk9fQ09OTkVDVE9SIGludG8KPiBwYW5lbF9icmlkZ2VfYXR0YWNoKCksIGl0IHdvdWxk
IGNyZWF0ZSBhIGNvbm5lY3RvciBhbmQgYXR0YWNoIHBhbmVsIHRvCj4gdGhhdCBjb25uZWN0b3Iu
CgpZZXMsIGFuZCBjcmVhdGUgYSBjb25uZWN0b3IgYW4gYXR0YWNoIHRoZSBwYW5lbCBpcyB0aGUg
b2xkIG1vZGVsLCBJCmd1ZXNzLiBIZW5jZSB3ZSBhcmUgcGFzc2luZyBEUk1fQlJJREdFX0FUVEFD
SF9OT19DT05ORUNUT1IuCgo+IEFuZCB5b3UgcGFzcyBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05O
RUNUT1IgaW50bwo+IHBhbmVsX2JyaWRnZV9hdHRhY2goKSwgc28gSSB0aGlpbmsgeW91IG5lZWQg
dG8gY3JlYXRlIGNvbm5lY3RvciBhbmQKPiBhdHRhY2ggcGFuZWwgdG8gdGhhdCBjb25uZWN0b3Ig
YnkgeW91cnNlbGYgKHRoaXMgaXMgd2hhdCBvbWFwIGRvZXMpLgo+CgpZZXMsIG9tYXAgZHJpdmVy
IHN1cHBvcnRzIGJvdGggbW9kZWxzIHRoZSBvbGQgYW5kIHRoZSBuZXcuICBGb3IKbXRrX2RzaSBJ
IGV4cGVjdCBhbGwgdGhlIGRyaXZlcnMgaW4gdGhlIGNoYWluIHVzZSB0aGUgbmV3IG1vZGVsLiBJ
SVVDCmNyZWF0ZSB0aGUgY29ubmVjdG9yIGhlcmUgYW5kIGF0dGFjaCB0byB0aGUgcGFuZWwgaXMg
b25seSBuZWVkZWQgdG8Kc3VwcG9ydCBhbHNvIHRoZSBvbGQgbW9kZWwuCgpkcm1fcGFuZWxfYXR0
YWNoKCkgaXMgY2FsbGVkIGluIHBhbmVsX2JyaWRnZV9hdHRhY2goKSB3aGljaCBpcyB0aGUKZHJt
X2JyaWdlX2Z1bmNzLmF0dGFjaCgpIGhhbmRsZXIgZm9yIHRoZSBwYW5lbCBicmlkZ2UuIEFzIHdl
J3JlIHVzaW5nCnRoZSBwYW5lbCBicmlkZ2UKCiAgICBkc2ktPm5leHRfYnJpZGdlID0gZGV2bV9k
cm1fcGFuZWxfYnJpZGdlX2FkZChkZXYsIHBhbmVsKTsKCnRoZXJlIHNob3VsZCBiZSBubyBuZWVk
IHRvIGNhbGwgZHJtX3BhbmVsX2F0dGFjaCgpLgoKTXkgcG9pbnQgaXMsIGRvIHdlIG5lZWQgdG8g
c3VwcG9ydCB0aGUgb2xkIG1vZGVsIGZvciBtdGtfZHNpIGRyaXZlcgpldmVuIHdlIGRvbid0IGhh
dmUgdXNlcnMgZm9yIHRoZSBvbGQgbW9kZWwsIG9yIGNhbiB3ZSBtaWdyYXRlCnVuY29uZGl0aW9u
YWxseT8KClBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbSBzdGlsbCBtaXN1bmRlcnN0YW5kaW5nIHRo
ZSBwcm9ibGVtLgoKUmVnYXJkcywKIEVucmljCgo+IFJlZ2FyZHMsCj4gQ2h1bi1LdWFuZy4KPgo+
ID4gPj4+PiBJZiBub3QgZXhpc3QsIHRoZSBuZXh0X2JyaWdlIHdvdWxkIGNyZWF0ZSBvbmUgY29u
bmVjdG9yIGFuZCB0aGlzIGJyaWdlCj4gPiA+Pj4+IHdvdWxkIGNyZWF0ZSBhbm90aGVyIGNvbm5l
Y3Rvci4KPiA+ID4+Pj4KPiA+ID4+Pj4gSSB0aGluayBpbiB5b3VyIGNhc2UsIG10a19kc2kgZG9l
cyBub3QgZGlyZWN0bHkgY29ubmVjdCB0byBhIHBhbmVsLCBzbwo+ID4gPj4+Cj4gPiA+Pj4gRXhh
Y3RseQo+ID4gPj4+Cj4gPiA+Pj4+IEkgbmVlZCBhIGV4YWN0IGV4cGxhaW4uIE9yIHNvbWVvbmUg
Y291bGQgdGVzdCB0aGlzIG9uIGEKPiA+ID4+Pj4gZGlyZWN0bHktY29ubmVjdC1wYW5lbCBwbGF0
Zm9ybS4KPiA+ID4+Pgo+ID4gPj4+IEkgZG9uJ3QgdGhpbmsgSSBhbSBicmVha2luZyB0aGlzIHVz
ZSBjYXNlIGJ1dCBBRkFJQ1MgdGhlcmUgaXMgbm8gdXNlcnMgaW4KPiA+ID4+PiBtYWlubGluZSB0
aGF0IGRpcmVjdGx5IGNvbm5lY3QgYSBwYW5lbCB1c2luZyB0aGUgbWVkaWF0ZWsgZHJpdmVyLiBB
cyBJIHNhaWQgbXkKPiA+ID4+PiB1c2UgY2FzZSBpcyB0aGUgb3RoZXIgc28gSSBjYW4ndCByZWFs
bHkgdGVzdC4gRG8geW91IGtub3cgYW55b25lIHRoYXQgY2FuIHRlc3QgdGhpcz8KPiA+ID4+Cj4g
PiA+PiBJJ20gbm90IHN1cmUgd2hvIGNhbiB0ZXN0IHRoaXMsIGJ1dCBbMV0sIHdoaWNoIGlzIHNl
bnQgYnkgWVQgU2hlbiBpbiBhCj4gPiA+PiBzZXJpZXMsIGlzIGEgcGF0Y2ggdG8gc3VwcG9ydCBk
c2kgY29tbWFuZCBtb2RlIHNvIGRzaSBjb3VsZCBkaXJlY3RseQo+ID4gPj4gY29ubmVjdCB0byBw
YW5lbC4KPiA+ID4+Cj4gPiA+PiBbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWs/aD12NS43LXJjNSZpZD0yMTg5ODgxNjgzMWZjNjBjOTJkZDYzNGFiNDMxNmEyNGRh
N2ViNGFmCj4gPiA+Pgo+ID4gPj4gSXQncyBiZXR0ZXIgdGhhdCBzb21lb25lIGNvdWxkIHRlc3Qg
dGhpcyBjYXNlLCBidXQgaWYgbm8gb25lIHdvdWxkCj4gPiA+PiB0ZXN0IHRoaXMsIEkgY291bGQg
YWxzbyBhY2NlcHQgYSBnb29kLWxvb2sgcGF0Y2guCj4gPiA+Pgo+ID4gPj4gUmVnYXJkcywKPiA+
ID4+IENodW4tS3VhbmcuCj4gPiA+Pgo+ID4gPj4+Cj4gPiA+Pj4gVGhhbmtzLAo+ID4gPj4+ICBF
bnJpYwo+ID4gPj4+Cj4gPiA+Pj4+Cj4gPiA+Pj4+IFJlZ2FyZHMsCj4gPiA+Pj4+IENodW4tS3Vh
bmcuCj4gPiA+Pj4+Cj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gVGhhbmtzLAo+ID4gPj4+Pj4gIEVucmlj
Cj4gPiA+Pj4+Pgo+ID4gPj4+Pj4+IC0tLQo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gQ2hhbmdlcyBp
biB2NDogTm9uZQo+ID4gPj4+Pj4+IENoYW5nZXMgaW4gdjM6Cj4gPiA+Pj4+Pj4gLSBNb3ZlIHRo
ZSBicmlkZ2UudHlwZSBsaW5lIHRvIHRoZSBwYXRjaCB0aGF0IGFkZHMgZHJtX2JyaWRnZSBzdXBw
b3J0LiAoTGF1cmVudCBQaW5jaGFydCkKPiA+ID4+Pj4+Pgo+ID4gPj4+Pj4+IENoYW5nZXMgaW4g
djI6IE5vbmUKPiA+ID4+Pj4+Pgo+ID4gPj4+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RzaS5jIHwgMTMgKysrKysrKysrKysrLQo+ID4gPj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gPiA+Pj4+Pj4gaW5kZXggNGYzYmQwOTVjMWVlLi40
NzFmY2FmZGYzNDggMTAwNjQ0Cj4gPiA+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kc2kuYwo+ID4gPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHNpLmMKPiA+ID4+Pj4+PiBAQCAtMTcsNiArMTcsNyBAQAo+ID4gPj4+Pj4+Cj4gPiA+Pj4+
Pj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4KPiA+ID4+Pj4+PiAgI2luY2x1
ZGUgPGRybS9kcm1fYnJpZGdlLmg+Cj4gPiA+Pj4+Pj4gKyNpbmNsdWRlIDxkcm0vZHJtX2JyaWRn
ZV9jb25uZWN0b3IuaD4KPiA+ID4+Pj4+PiAgI2luY2x1ZGUgPGRybS9kcm1fbWlwaV9kc2kuaD4K
PiA+ID4+Pj4+PiAgI2luY2x1ZGUgPGRybS9kcm1fb2YuaD4KPiA+ID4+Pj4+PiAgI2luY2x1ZGUg
PGRybS9kcm1fcGFuZWwuaD4KPiA+ID4+Pj4+PiBAQCAtMTgzLDYgKzE4NCw3IEBAIHN0cnVjdCBt
dGtfZHNpIHsKPiA+ID4+Pj4+PiAgICAgICAgIHN0cnVjdCBkcm1fZW5jb2RlciBlbmNvZGVyOwo+
ID4gPj4+Pj4+ICAgICAgICAgc3RydWN0IGRybV9icmlkZ2UgYnJpZGdlOwo+ID4gPj4+Pj4+ICAg
ICAgICAgc3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOwo+ID4gPj4+Pj4+ICsgICAgICAg
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiA+ID4+Pj4+PiAgICAgICAgIHN0cnVj
dCBwaHkgKnBoeTsKPiA+ID4+Pj4+Pgo+ID4gPj4+Pj4+ICAgICAgICAgdm9pZCBfX2lvbWVtICpy
ZWdzOwo+ID4gPj4+Pj4+IEBAIC05NzcsMTAgKzk3OSwxOSBAQCBzdGF0aWMgaW50IG10a19kc2lf
ZW5jb2Rlcl9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBtdGtfZHNpICpkc2kp
Cj4gPiA+Pj4+Pj4gICAgICAgICAgKi8KPiA+ID4+Pj4+PiAgICAgICAgIGRzaS0+ZW5jb2Rlci5w
b3NzaWJsZV9jcnRjcyA9IDE7Cj4gPiA+Pj4+Pj4KPiA+ID4+Pj4+PiAtICAgICAgIHJldCA9IGRy
bV9icmlkZ2VfYXR0YWNoKCZkc2ktPmVuY29kZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwgMCk7Cj4g
PiA+Pj4+Pj4gKyAgICAgICByZXQgPSBkcm1fYnJpZGdlX2F0dGFjaCgmZHNpLT5lbmNvZGVyLCAm
ZHNpLT5icmlkZ2UsIE5VTEwsCj4gPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IpOwo+ID4gPj4+Pj4+ICAgICAgICAg
aWYgKHJldCkKPiA+ID4+Pj4+PiAgICAgICAgICAgICAgICAgZ290byBlcnJfY2xlYW51cF9lbmNv
ZGVyOwo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gKyAgICAgICBkc2ktPmNvbm5lY3RvciA9IGRybV9i
cmlkZ2VfY29ubmVjdG9yX2luaXQoZHJtLCAmZHNpLT5lbmNvZGVyKTsKPiA+ID4+Pj4+PiArICAg
ICAgIGlmIChJU19FUlIoZHNpLT5jb25uZWN0b3IpKSB7Cj4gPiA+Pj4+Pj4gKyAgICAgICAgICAg
ICAgIERSTV9FUlJPUigiVW5hYmxlIHRvIGNyZWF0ZSBicmlkZ2UgY29ubmVjdG9yXG4iKTsKPiA+
ID4+Pj4+PiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihkc2ktPmNvbm5lY3Rvcik7Cj4g
PiA+Pj4+Pj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2NsZWFudXBfZW5jb2RlcjsKPiA+ID4+
Pj4+PiArICAgICAgIH0KPiA+ID4+Pj4+PiArICAgICAgIGRybV9jb25uZWN0b3JfYXR0YWNoX2Vu
Y29kZXIoZHNpLT5jb25uZWN0b3IsICZkc2ktPmVuY29kZXIpOwo+ID4gPj4+Pj4+ICsKPiA+ID4+
Pj4+PiAgICAgICAgIHJldHVybiAwOwo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gIGVycl9jbGVhbnVw
X2VuY29kZXI6Cj4gPiA+Pj4+Pj4gLS0KPiA+ID4+Pj4+PiAyLjI2LjIKPiA+ID4+Pj4+Pgo+ID4g
Pj4+Pj4+Cj4gPiA+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+ID4+Pj4+PiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiA+ID4+Pj4+
PiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+Pj4+Pj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo+ID4gPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVk
aWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
