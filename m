Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE782849C
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 May 2019 19:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5f9JTXbDVm/0RK2/lgTmvCZCm4g/LqK2f66k8bFSYw8=; b=jCUD772XJYfUWc
	dziRZpW3p51QUsXKnFROfchHKTPALRJWmYueUIr39qAVDpIUdLAcg4rCAkr+aVhe/QTXpZekdXp9F
	ovGoC5aCegUvVWvl2ebm1vkmyTHzOABHqfJBhOF5125onTlbg8P8RHK0NeFaM0m57KDCvQmOH0Lw9
	bmWwqHR0HMw0xkqXjvyBWB1XLXdG4htQnyhT+B8x/3higTGRdtuz4aUcUpyuKAyI7x6IM2nH8u5aj
	XLThL6dCHyHdpK6M2E2kcrOOQABOAiMLJKjXNmKxlVmU770VDLZqwnqjcVM6fbSDbZ6y0/nsse6AO
	gsfEWHsnaVD/t+SdmPmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTrHs-0000bf-Qy; Thu, 23 May 2019 17:13:52 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTrHj-0000VH-VR
 for linux-mediatek@lists.infradead.org; Thu, 23 May 2019 17:13:45 +0000
Received: by mail-qk1-x744.google.com with SMTP id p26so1716669qkj.5
 for <linux-mediatek@lists.infradead.org>; Thu, 23 May 2019 10:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=RG+ZTctD0E4v327H7cj6U2Hv8U+evNfg4/vbfaRFcSQ=;
 b=ENE+0RYKSEH2yccpeqmJwI4WpkWm0RIq+YORI72XIt4Agw/uC+Q69wkfG/Ur5L4jn5
 GYTSbO/vIvsySxUq6zTxv1kjEk2VH8OMzREx+EZ/TB2/FgeNt0iiXptICVmULubVorn6
 LHRSZR7TE04fPy9qqUsfb83t4QdBmGq8WI34nK4JE5y/oMdDU0g8Qxza5vuZezATeddZ
 QSkF179XpwfLIhgw4HnGTCEpy5U7yftX18UbxUVLEZlKH+RSaDvg805Za0yxYF1wAxYk
 Spgwrq00qsW2TBQOuT1cAaXIy5khgucTd3yKSvbyMTQ7dqYxeK+Qsl9+1RrA3cR0JDEB
 D+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=RG+ZTctD0E4v327H7cj6U2Hv8U+evNfg4/vbfaRFcSQ=;
 b=qe4IK1i5HqizfE7H0t0oLdReV0kqHbMMd+z4pt56EuMXRNB/BVBDUD40M2g0x2y24Q
 NwCTUk5NUXUACzwd/kW6X5+9FPG2caZtnxatmsmn0419eJTM2Semmik56z362V7RGgiQ
 ABjM+dxMNkLhPB17skvAQRGrcVVKFLUSwjkEIUatl5kh1xemjBT3+MsWbSCEqw1hARxD
 01/rA3K36PT8jkxzj1iuFC9Zvv+/Q/xbBgzm6DtHlcpQZ3HyU4V7BDCXxcjeNpfoTGWt
 gSgFMd8FxoidrwKYpvJ2/zxTff9wIEzNEV+xtOw4UVZDCiJyviPB+NBytTrwGOvPLC0y
 g/FA==
X-Gm-Message-State: APjAAAVQ99rYO7/O2082ORDzZtJA6Tkt2K4TqMJuHxORd3WYDGFzJziS
 fHutqpMIEDYp6cFfFviLEG69fQ==
X-Google-Smtp-Source: APXvYqwR8DdTVAFjAIqdgYPHYDveml4zJbuXzWAAGKqsZUpKcEbD0sJt5SWRXnFR6IP80s+Fsbq8Ew==
X-Received: by 2002:a37:b484:: with SMTP id
 d126mr75623860qkf.342.1558631622684; 
 Thu, 23 May 2019 10:13:42 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y129sm10428193qkc.63.2019.05.23.10.13.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 10:13:42 -0700 (PDT)
Date: Thu, 23 May 2019 13:13:41 -0400
From: Sean Paul <sean@poorly.run>
To: CK Hu <ck.hu@mediatek.com>
Subject: Re: [PATCH] drm/mediatek: Fix warning about unhandled enum value
Message-ID: <20190523171341.GE17077@art_vandelay>
References: <20190522202207.223110-1-sean@poorly.run>
 <1558592000.552.3.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558592000.552.3.camel@mtksdaap41>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_101344_050298_E709128B 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Hans Verkuil <hansverk@cisco.com>,
 David Airlie <airlied@linux.ie>, Uma Shankar <uma.shankar@intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDI6MTM6MjBQTSArMDgwMCwgQ0sgSHUgd3JvdGU6Cj4g
SGksIFNlYW46Cj4gCj4gT24gV2VkLCAyMDE5LTA1LTIyIGF0IDE2OjIxIC0wNDAwLCBTZWFuIFBh
dWwgd3JvdGU6Cj4gPiBGcm9tOiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KPiA+
IAo+ID4gRml4ZXMgdGhlIGZvbGxvd2luZyBidWlsZCB3YXJuaW5nOgo+ID4gZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19oZG1pLmM6MzI3OjI6IHdhcm5pbmc6IGVudW1lcmF0aW9uIHZhbHVl
IOKAmEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJN4oCZIG5vdCBoYW5kbGVkIGluIHN3aXRjaCBbLVdz
d2l0Y2hdCj4gPiAKPiA+IEludHJvZHVjZWQgd2l0aCB0aGUgYWRkaXRpb24gb2YgSERNSV9JTkZP
RlJBTUVfVFlQRV9EUk0gaW4gdGhlIGNvbW1pdAo+ID4gYmVsb3csIGJ1dCB0aGUgY29kZSByZWFs
bHkgc2hvdWxkIGhhdmUgYmVlbiBmdXR1cmUtcHJvb2ZlZCBmcm9tIHRoZQo+ID4gc3RhcnQuCj4g
Cj4gQWNrZWQtYnk6IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+Cj4gCj4gPiAKPiA+IEZpeGVz
OiAyY2RiZmQ2NmE4MjkgKCJkcm06IEVuYWJsZSBIRFIgaW5mb2ZyYW1lIHN1cHBvcnQiKQo+IAo+
IEkgdGhpbmsgImRybTogRW5hYmxlIEhEUiBpbmZvZnJhbWUgc3VwcG9ydCIgZXhpc3Qgb25seSBp
biBkcm0tbWlzYyB0cmVlLAo+IGNvdWxkIHlvdSBqdXN0IG1lcmdlIHRoaXMgcGF0Y2ggdG8gImRy
bTogRW5hYmxlIEhEUiBpbmZvZnJhbWUgc3VwcG9ydCI/CgpZZXMsIEkndmUgYXBwbGllZCBpdCB0
byBkcm0tbWlzYy1uZXh0LiBUaGFua3MgZm9yIHlvdXIgQWNrIQoKU2VhbgoKPiAKPiBSZWdhcmRz
LAo+IENLCj4gCj4gPiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiA+
IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4gPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4g
Q2M6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gPiBDYzogU2Vh
biBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxp
bnV4LmllPgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBC
YXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+Cj4gPiBD
YzogIlZpbGxlIFN5cmrDpGzDpCIgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4g
Q2M6IEhhbnMgVmVya3VpbCA8aGFuc3ZlcmtAY2lzY28uY29tPgo+ID4gQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBsaW51eC1mYmRldkB2Z2VyLmtlcm5lbC5vcmcK
PiA+IFNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMgfCAzICsrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19oZG1pLmMKPiA+IGluZGV4IGUwNGU2YzI5M2QzOS4uMTBjYzk5MTBmMTY0IDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMKPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4gPiBAQCAtMzQxLDYgKzM0MSw5
IEBAIHN0YXRpYyB2b2lkIG10a19oZG1pX2h3X3NlbmRfaW5mb19mcmFtZShzdHJ1Y3QgbXRrX2hk
bWkgKmhkbWksIHU4ICpidWZmZXIsCj4gPiAgCQljdHJsX2ZyYW1lX2VuID0gVlNfRU47Cj4gPiAg
CQljdHJsX3JlZyA9IEdSTF9BQ1BfSVNSQ19DVFJMOwo+ID4gIAkJYnJlYWs7Cj4gPiArCWRlZmF1
bHQ6Cj4gPiArCQlkZXZfZXJyKGhkbWktPmRldiwgIlVua25vd24gaW5mb2ZyYW1lIHR5cGUgJWRc
biIsIGZyYW1lX3R5cGUpOwo+ID4gKwkJcmV0dXJuOwo+ID4gIAl9Cj4gPiAgCW10a19oZG1pX2Ns
ZWFyX2JpdHMoaGRtaSwgY3RybF9yZWcsIGN0cmxfZnJhbWVfZW4pOwo+ID4gIAltdGtfaGRtaV93
cml0ZShoZG1pLCBHUkxfSU5GT0ZSTV9UWVBFLCBmcmFtZV90eXBlKTsKPiAKPiAKCi0tIApTZWFu
IFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFp
bGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
