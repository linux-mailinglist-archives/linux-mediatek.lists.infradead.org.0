Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE11D3F67
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 22:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPSmRSappMVSV4CBmpWBxHT4Qp8/opTrDL01Jz51Lu4=; b=atOSNAK5CRcdJt
	UnKvjSZzIMAW/xwilji7AgyJ39L4thEA4gHi6asEQhu90kLotnCMKcXbmMUodXjUplCli4SzXpFvh
	GyDnTTnshRCzugXFl7N2lFSt93iTekXLk+dEzuX1Qh53/PhVZwcEnUbsNnn83JuB7LsmqkcdTsWSm
	Gwmyo/VdSfU8v3nW3ucVrVgSLKqawm0J3eg5isRM5CuNYCdwTFVkV8dPcouX8U+LFRbV2Lk7rkeGz
	7/XmvEX4//7iAf+w7N2+231l50/JNZQ0AZSXLtW9uO7Mnn7Q7FiK0RoYDqdIbo8cvjgsjsbSiXU3b
	ucqbDVXEqfnvRKwRn7zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZKtv-00075L-Re; Thu, 14 May 2020 20:56:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZKtZ-0006rY-3K; Thu, 14 May 2020 20:56:01 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4ADC626A;
 Thu, 14 May 2020 22:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589489745;
 bh=f29cqelK5HHkGqAU0L84jjLxU3fDawEizqrCRSurEdI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P1QCTNzQ/5H4u975GU1Ru/r7SadP8ZL0Iq1SFP9RpeARgWRAF8Z9vfAFjneDmM+88
 aWK2GQgKb7lheaTULZrinb/L+Z+5BpM/KVdcFoqz9PRJxIv5XVn4jgifBABKRT8j39
 YUOzvsR02Ih71Rt6++i4PDoRTscbaStUfcmylNBs=
Date: Thu, 14 May 2020 23:55:36 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
Message-ID: <20200514205536.GN5955@pendragon.ideasonboard.com>
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
 <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
 <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
 <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_135557_420341_A90489CB 
X-CRM114-Status: GOOD (  29.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgRW5yaWMsCgpPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCAwNzozNTozM1BNICswMjAwLCBFbnJp
YyBCYWxsZXRibyBpIFNlcnJhIHdyb3RlOgo+IE9uIDE0LzUvMjAgMTk6MTIsIEVucmljIEJhbGxl
dGJvIGkgU2VycmEgd3JvdGU6Cj4gPiBPbiAxNC81LzIwIDE4OjQ0LCBDaHVuLUt1YW5nIEh1IHdy
b3RlOgo+ID4+IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9y
YS5jb20+IOaWvCAyMDIw5bm0NeaciDE05pelIOmAseWbmyDkuIvljYgxMTo0MuWvq+mBk++8mgo+
ID4+PiBPbiAxNC81LzIwIDE2OjI4LCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+ID4+Pj4gRW5yaWMg
QmFsbGV0Ym8gU2VycmEgPGViYWxsZXRib0BnbWFpbC5jb20+IOaWvCAyMDIw5bm0NeaciDE05pel
IOmAseWbmyDkuIrljYgxMjo0MeWvq+mBk++8mgo+ID4+Pj4+IE1pc3NhdGdlIGRlIEVucmljIEJh
bGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+IGRlbAo+ID4+Pj4+
IGRpYSBkdi4sIDEgZGUgbWFpZyAyMDIwIGEgbGVzIDE3OjI1Ogo+ID4+Pj4+Pgo+ID4+Pj4+PiBV
c2UgdGhlIGRybV9icmlkZ2VfY29ubmVjdG9yIGhlbHBlciB0byBjcmVhdGUgYSBjb25uZWN0b3Ig
Zm9yIHBpcGVsaW5lcwo+ID4+Pj4+PiB0aGF0IHVzZSBkcm1fYnJpZGdlLiBUaGlzIGFsbG93cyBz
cGxpdHRpbmcgY29ubmVjdG9yIG9wZXJhdGlvbnMgYWNyb3NzCj4gPj4+Pj4+IG11bHRpcGxlIGJy
aWRnZXMgd2hlbiBuZWNlc3NhcnksIGluc3RlYWQgb2YgaGF2aW5nIHRoZSBsYXN0IGJyaWRnZSBp
bgo+ID4+Pj4+PiB0aGUgY2hhaW4gY3JlYXRpbmcgdGhlIGNvbm5lY3RvciBhbmQgaGFuZGxpbmcg
YWxsIGNvbm5lY3RvciBvcGVyYXRpb25zCj4gPj4+Pj4+IGludGVybmFsbHkuCj4gPj4+Pj4+Cj4g
Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxl
dGJvQGNvbGxhYm9yYS5jb20+Cj4gPj4+Pj4+IEFja2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+Cj4gPj4+Pj4KPiA+Pj4+PiBBIGdlbnRsZSBwaW5nIG9uIHRoaXMsIEkgdGhp
bmsgdGhhdCB0aGlzIG9uZSBpcyB0aGUgb25seSBvbmUgdGhhdAo+ID4+Pj4+IHN0aWxsIG5lZWRz
IGEgcmV2aWV3IGluIHRoZSBzZXJpZXMuCj4gPj4+Pgo+ID4+Pj4gVGhpcyBpcyB3aGF0IEkgcmVw
bHkgaW4gcGF0Y2ggdjM6Cj4gPj4+Cj4gPj4+IFNvcnJ5IGZvciBtaXNzaW5nIHRoaXMuCj4gPj4+
Cj4gPj4+PiBJIHRoaW5rIHRoZSBwYW5lbCBpcyB3cmFwcGVkIGludG8gbmV4dF9icmlkZ2UgaGVy
ZSwKPiA+Pj4KPiA+Pj4gWWVzLCB5b3UgY2FuIGhhdmUgZm9yIGV4YW1wbGU6Cj4gPj4+Cj4gPj4+
IDEuIGRybV9icmlkZ2UgKG10a19kc2kpIC0+IGRybV9icmlkZ2UgKHBzODY0MCAtIGRzaS10by1l
ZHApIC0+IGRybV9wYW5lbF9icmlkZ2UKPiA+Pj4gKGVkcCBwYW5lbCkKPiA+Pj4KPiA+Pj4gb3Ig
YQo+ID4+Pgo+ID4+PiAyLiBkcm1fYnJpZGdlIChtdGtfZHNpKS0+IGRybV9wYW5lbF9icmlkZ2Ug
KGRzaSBwYW5lbCkKPiA+Pj4KPiA+Pj4gVGhlIF9maXJzdF8gb25lIGlzIG15IHVzZSBjYXNlCj4g
Pj4+Cj4gPj4+PiBpZiAocGFuZWwpIHsKPiA+Pj4KPiA+Pj4gVGhpcyBoYW5kbGVzIHRoZSBzZWNv
bmQgY2FzZSwgd2hlcmUgeW91IGF0dGFjaCBhIGRzaSBwYW5lbC4KPiA+Pj4KPiA+Pj4+ICAgICBk
c2ktPm5leHRfYnJpZGdlID0gZGV2bV9kcm1fcGFuZWxfYnJpZGdlX2FkZChkZXYsIHBhbmVsKTsK
PiA+Pj4+Cj4gPj4+PiBzbyB0aGUgbmV4dF9icmlkZ2UgaXMgYSBwYW5lbF9icmlkZ2UsIGluIGl0
cyBhdHRhY2ggZnVuY3Rpb24KPiA+Pj4+IHBhbmVsX2JyaWRnZV9hdHRhY2goKSwKPiA+Pj4+IGFj
Y29yZGluZyB0byB0aGUgZmxhZyBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IsIGlmIG5v
dCBleGlzdCwKPiA+Pj4+IGl0IHdvdWxkIGNyZWF0ZSBjb25uZWN0b3IgYW5kIGF0dGFjaCBjb25u
ZWN0b3IgdG8gcGFuZWwuCj4gPj4+Pgo+ID4+Pj4gSSdtIG5vdCBzdXJlIHRoaXMgZmxhZyB3b3Vs
ZCBleGlzdCBvciBub3QsIGJ1dCBmb3IgYm90aCBjYXNlLCBpdCdzIHN0cmFuZ2UuCj4gPj4+PiBJ
ZiBleGlzdCwgeW91IGNyZWF0ZSBjb25uZWN0b3IgaW4gdGhpcyBwYXRjaCBidXQgbm8gd2hlcmUg
dG8gYXR0YWNoCj4gPj4+PiBjb25uZWN0b3IgdG8gcGFuZWwuCj4gPj4+Cj4gPj4+IFllcywgaW4g
ZmFjdCwgdGhpcyBpcyB0cmFuc2l0aW9uYWwgcGF0Y2ggbmVlZGVkLCBhcyBvbmNlIEkgY29udmVy
dGVkIG10a19kcGksCj4gPj4+IG10a19kc2kgYW5kIG10a19oZG1pIHRvIHRoZSBuZXcgZHJtX2Jy
aWRnZSBBUEkgdGhlIGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQoKQo+ID4+PiB3aWxsIGJlIGRv
bmUgaW4gbXRrX2RybV9kcnYuIFdlIHdpbGwgbmVlZCB0byBjYWxsIGRybV9icmlkZ2VfY29ubmVj
dG9yX2luaXQgZm9yCj4gPj4+IGRwaSBhbmQgZHNpIHBpcGVzIGFuZCByZW1vdmUgdGhhdCBjYWxs
IGZyb20gbXRrX2RzaSBhbmQgbXRrX2RwaSBkcml2ZXJzLiBUaGUKPiA+Pj4gZ3JhcGhpYyBjb250
cm9sbGVyIGRyaXZlciBzaG91bGQgY3JlYXRlIGNvbm5lY3RvcnMgYW5kIENSVENzLCBhcyBleGFt
cGxlIHlvdSBjYW4KPiA+Pj4gdGFrZSBhIGxvb2sgYXQgZHJpdmVycy9ncHUvZHJtL29tYXBkcm0v
b21hcF9kcnYuYwo+ID4+Cj4gPj4gSSBoYXZlIHN1Y2ggcXVlc3Rpb24gYmVjYXVzZSBJJ3ZlIHJl
dmlld2VkIG9tYXAncyBkcml2ZXIuIEluIG9tYXAncwo+ID4+IGRyaXZlciwgYWZ0ZXIgaXQgY2Fs
bCBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KCksIGl0IGRvZXMgdGhpczoKPiA+Pgo+ID4+IGlm
IChwaXBlLT5vdXRwdXQtPnBhbmVsKSB7Cj4gPj4gcmV0ID0gZHJtX3BhbmVsX2F0dGFjaChwaXBl
LT5vdXRwdXQtPnBhbmVsLAo+ID4+ICAgICAgIHBpcGUtPmNvbm5lY3Rvcik7Cj4gPj4gaWYgKHJl
dCA8IDApCj4gPj4gcmV0dXJuIHJldDsKPiA+PiB9Cj4gPj4KPiA+PiBJbiB0aGlzIHBhdGNoLCB5
b3UgZG9lcyBub3QgZG8gdGhpcy4KPiA+Pgo+ID4gCj4gPiBJIHNlZSwgc28geWVzLCBJIGFtIHBy
b2JhYmx5IG1pc3NpbmcgY2FsbCBkcm1fcGFuZWxfYXR0YWNoIGluIGNhc2UgdGhlcmUgaXMgYQo+
ID4gZGlyZWN0IHBhbmVsIGF0dGFjaGVkLiBUaGFua3MgZm9yIHBvaW50aW5nIGl0Lgo+ID4gCj4g
PiBJJ2xsIHNlbmQgYSBuZXcgdmVyc2lvbiBhZGRpbmcgdGhlIGRybV9wYW5lbF9hdHRhY2ggY2Fs
bC4KPiA+IAo+IAo+IFdhaXQsIHNob3VsZG4ndCBwYW5lbCBiZSBhdHRhY2hlZCBvbiB0aGUgY2Fs
bCBvZiBtdGtfZHNpX2JyaWRnZV9hdHRhY2ggYXMKPiBuZXh0X2JyaWRnZSBwb2ludHMgdG8gYSBi
cmlkZ2Ugb3IgYSBwYW5lbD8KPiAKPiBzdGF0aWMgaW50IG10a19kc2lfYnJpZGdlX2F0dGFjaChz
dHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAo+IAkJCQkgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9m
bGFncyBmbGFncykKPiB7Cj4gCXN0cnVjdCBtdGtfZHNpICpkc2kgPSBicmlkZ2VfdG9fZHNpKGJy
aWRnZSk7Cj4gCj4gCS8qIEF0dGFjaCB0aGUgcGFuZWwgb3IgYnJpZGdlIHRvIHRoZSBkc2kgYnJp
ZGdlICovCj4gCXJldHVybiBkcm1fYnJpZGdlX2F0dGFjaChicmlkZ2UtPmVuY29kZXIsIGRzaS0+
bmV4dF9icmlkZ2UsCj4gCQkJCSAmZHNpLT5icmlkZ2UsIGZsYWdzKTsKPiB9Cj4gCj4gT3IgSSBh
bSBjb250aW51aW5nIG1pc3VuZGVyc3RhbmRpbmcgYWxsIHRoaXM/CgpQYW5lbHMgc2hvdWxkIGFs
d2F5cyBiZSB3cmFwcGVkIGluIGEgZHJtX2JyaWRnZSwgc28gSSB0aGluayB5b3UncmUgZG9pbmcK
cmlnaHQuIEkgYmVsaWV2ZSB0aGUgY2FsbCB0byBkcm1fcGFuZWxfYXR0YWNoKCkgaW4gb21hcGRy
bSBpcyBhIGxlZnRvdmVyCnRoYXQgY2FuIGJlIHJlbW92ZWQuIEknbGwgaGF2ZSBhIGxvb2sgYXQg
aXQuCgo+ID4+Pj4gSWYgbm90IGV4aXN0LCB0aGUgbmV4dF9icmlnZSB3b3VsZCBjcmVhdGUgb25l
IGNvbm5lY3RvciBhbmQgdGhpcyBicmlnZQo+ID4+Pj4gd291bGQgY3JlYXRlIGFub3RoZXIgY29u
bmVjdG9yLgo+ID4+Pj4KPiA+Pj4+IEkgdGhpbmsgaW4geW91ciBjYXNlLCBtdGtfZHNpIGRvZXMg
bm90IGRpcmVjdGx5IGNvbm5lY3QgdG8gYSBwYW5lbCwgc28KPiA+Pj4KPiA+Pj4gRXhhY3RseQo+
ID4+Pgo+ID4+Pj4gSSBuZWVkIGEgZXhhY3QgZXhwbGFpbi4gT3Igc29tZW9uZSBjb3VsZCB0ZXN0
IHRoaXMgb24gYQo+ID4+Pj4gZGlyZWN0bHktY29ubmVjdC1wYW5lbCBwbGF0Zm9ybS4KPiA+Pj4K
PiA+Pj4gSSBkb24ndCB0aGluayBJIGFtIGJyZWFraW5nIHRoaXMgdXNlIGNhc2UgYnV0IEFGQUlD
UyB0aGVyZSBpcyBubyB1c2VycyBpbgo+ID4+PiBtYWlubGluZSB0aGF0IGRpcmVjdGx5IGNvbm5l
Y3QgYSBwYW5lbCB1c2luZyB0aGUgbWVkaWF0ZWsgZHJpdmVyLiBBcyBJIHNhaWQgbXkKPiA+Pj4g
dXNlIGNhc2UgaXMgdGhlIG90aGVyIHNvIEkgY2FuJ3QgcmVhbGx5IHRlc3QuIERvIHlvdSBrbm93
IGFueW9uZSB0aGF0IGNhbiB0ZXN0IHRoaXM/Cj4gPj4KPiA+PiBJJ20gbm90IHN1cmUgd2hvIGNh
biB0ZXN0IHRoaXMsIGJ1dCBbMV0sIHdoaWNoIGlzIHNlbnQgYnkgWVQgU2hlbiBpbiBhCj4gPj4g
c2VyaWVzLCBpcyBhIHBhdGNoIHRvIHN1cHBvcnQgZHNpIGNvbW1hbmQgbW9kZSBzbyBkc2kgY291
bGQgZGlyZWN0bHkKPiA+PiBjb25uZWN0IHRvIHBhbmVsLgo+ID4+Cj4gPj4gWzFdIGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC9jb21taXQvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrP2g9djUuNy1yYzUmaWQ9MjE4OTg4MTY4
MzFmYzYwYzkyZGQ2MzRhYjQzMTZhMjRkYTdlYjRhZgo+ID4+Cj4gPj4gSXQncyBiZXR0ZXIgdGhh
dCBzb21lb25lIGNvdWxkIHRlc3QgdGhpcyBjYXNlLCBidXQgaWYgbm8gb25lIHdvdWxkCj4gPj4g
dGVzdCB0aGlzLCBJIGNvdWxkIGFsc28gYWNjZXB0IGEgZ29vZC1sb29rIHBhdGNoLgo+ID4+Cj4g
Pj4+Pj4+IENoYW5nZXMgaW4gdjQ6IE5vbmUKPiA+Pj4+Pj4gQ2hhbmdlcyBpbiB2MzoKPiA+Pj4+
Pj4gLSBNb3ZlIHRoZSBicmlkZ2UudHlwZSBsaW5lIHRvIHRoZSBwYXRjaCB0aGF0IGFkZHMgZHJt
X2JyaWRnZSBzdXBwb3J0LiAoTGF1cmVudCBQaW5jaGFydCkKPiA+Pj4+Pj4KPiA+Pj4+Pj4gQ2hh
bmdlcyBpbiB2MjogTm9uZQo+ID4+Pj4+Pgo+ID4+Pj4+PiAgZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kc2kuYyB8IDEzICsrKysrKysrKysrKy0KPiA+Pj4+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Pj4+Cj4gPj4+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19kc2kuYwo+ID4+Pj4+PiBpbmRleCA0ZjNiZDA5NWMxZWUuLjQ3MWZj
YWZkZjM0OCAxMDA2NDQKPiA+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kc2kuYwo+ID4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5j
Cj4gPj4+Pj4+IEBAIC0xNyw2ICsxNyw3IEBACj4gPj4+Pj4+Cj4gPj4+Pj4+ICAjaW5jbHVkZSA8
ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+Cj4gPj4+Pj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9icmlk
Z2UuaD4KPiA+Pj4+Pj4gKyNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZV9jb25uZWN0b3IuaD4KPiA+
Pj4+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX21pcGlfZHNpLmg+Cj4gPj4+Pj4+ICAjaW5jbHVkZSA8
ZHJtL2RybV9vZi5oPgo+ID4+Pj4+PiAgI2luY2x1ZGUgPGRybS9kcm1fcGFuZWwuaD4KPiA+Pj4+
Pj4gQEAgLTE4Myw2ICsxODQsNyBAQCBzdHJ1Y3QgbXRrX2RzaSB7Cj4gPj4+Pj4+ICAgICAgICAg
c3RydWN0IGRybV9lbmNvZGVyIGVuY29kZXI7Cj4gPj4+Pj4+ICAgICAgICAgc3RydWN0IGRybV9i
cmlkZ2UgYnJpZGdlOwo+ID4+Pj4+PiAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlICpuZXh0X2Jy
aWRnZTsKPiA+Pj4+Pj4gKyAgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+
ID4+Pj4+PiAgICAgICAgIHN0cnVjdCBwaHkgKnBoeTsKPiA+Pj4+Pj4KPiA+Pj4+Pj4gICAgICAg
ICB2b2lkIF9faW9tZW0gKnJlZ3M7Cj4gPj4+Pj4+IEBAIC05NzcsMTAgKzk3OSwxOSBAQCBzdGF0
aWMgaW50IG10a19kc2lfZW5jb2Rlcl9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVj
dCBtdGtfZHNpICpkc2kpCj4gPj4+Pj4+ICAgICAgICAgICovCj4gPj4+Pj4+ICAgICAgICAgZHNp
LT5lbmNvZGVyLnBvc3NpYmxlX2NydGNzID0gMTsKPiA+Pj4+Pj4KPiA+Pj4+Pj4gLSAgICAgICBy
ZXQgPSBkcm1fYnJpZGdlX2F0dGFjaCgmZHNpLT5lbmNvZGVyLCAmZHNpLT5icmlkZ2UsIE5VTEws
IDApOwo+ID4+Pj4+PiArICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0YWNoKCZkc2ktPmVuY29k
ZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwKPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IpOwo+ID4+Pj4+PiAgICAgICAg
IGlmIChyZXQpCj4gPj4+Pj4+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVhbnVwX2VuY29k
ZXI7Cj4gPj4+Pj4+Cj4gPj4+Pj4+ICsgICAgICAgZHNpLT5jb25uZWN0b3IgPSBkcm1fYnJpZGdl
X2Nvbm5lY3Rvcl9pbml0KGRybSwgJmRzaS0+ZW5jb2Rlcik7Cj4gPj4+Pj4+ICsgICAgICAgaWYg
KElTX0VSUihkc2ktPmNvbm5lY3RvcikpIHsKPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgIERSTV9F
UlJPUigiVW5hYmxlIHRvIGNyZWF0ZSBicmlkZ2UgY29ubmVjdG9yXG4iKTsKPiA+Pj4+Pj4gKyAg
ICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoZHNpLT5jb25uZWN0b3IpOwo+ID4+Pj4+PiArICAg
ICAgICAgICAgICAgZ290byBlcnJfY2xlYW51cF9lbmNvZGVyOwo+ID4+Pj4+PiArICAgICAgIH0K
PiA+Pj4+Pj4gKyAgICAgICBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKGRzaS0+Y29ubmVj
dG9yLCAmZHNpLT5lbmNvZGVyKTsKPiA+Pj4+Pj4gKwo+ID4+Pj4+PiAgICAgICAgIHJldHVybiAw
Owo+ID4+Pj4+Pgo+ID4+Pj4+PiAgZXJyX2NsZWFudXBfZW5jb2RlcjoKCi0tIApSZWdhcmRzLAoK
TGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tZWRpYXRlawo=
