Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C933BB03D4
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 20:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1HqIBTPKmTxxx1qOyrNvQ+FwEDADMVENG0dlTh2lHw=; b=YrGu/Jpx8Yxv8S
	tKKMCWt9/eU2kSPjFz5XnhnRe+NlF8LfoF0Oz02529GsDXVjVcKN8VGszIqiLxGplGSIJOpuURWU4
	N3YOpVERoopgYHO2Oqc4KCw+c3LNtBKwQItGVnTABOTVMy9fug6zZtlzuM1YtH98Bo8nAFO2FNJcO
	3hkoc78R3h8REhn+cfy2UVRUlijvUOovrHnTE/3PtuYO9GdiqABKQeN29gCtQgWQF4OFS3M6tXUtq
	6Lo/UVhU8jDvB6EOfCMwRToHtl1V92rup+OHWkB7c/xthmimC/0mvXKQj0F9nWFNAwmekF4BMP1rD
	8G4Ywos2C12CmLlRAe0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87c1-0003dS-Ui; Wed, 11 Sep 2019 18:45:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87bt-0003cL-Cu; Wed, 11 Sep 2019 18:45:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so11960793pgi.6;
 Wed, 11 Sep 2019 11:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=TqRe5lHOX4M4V547/WzO3Xh0zpwoYhwfsfhLh4/QmNw=;
 b=cnMbF78zIN2X9zEOosJXsLy6lBLW8nW1rFohkwPEIwEa6uF/WOsmr2xAEaCVe9SAaN
 i7+2cu7+E+HD86A9dgw7KnHv3DgSkf6MbdVO6kYHFHGtBoMfaXxiHoGeuuUYZoXnYMZY
 Ekg3XH3c4rxVxhQhmfQv/GmEOMWlbMfF3zq/YKsRPvNNmuh+7DmnXbZDJakCr3JItly7
 E/L6ZmHXOf49bDukg+osrL8HBIaUPKtSIS4xFCHloTkspkUpLF4eXYWTwugwaG0JCCW0
 hiovc2vqED7iGDoHu2Ad6HClqB4Wpnka75/Wpcf8D3WPpKG4j8ii4SVkKr6u3WFJeoyc
 0Vmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=TqRe5lHOX4M4V547/WzO3Xh0zpwoYhwfsfhLh4/QmNw=;
 b=e+7EQfVMv56JRZkEbv6WmgCyQZ7CypKqfs2n29PNnwoUxAzsFwOPGK7UF1hfSxNQVj
 gCd8aDnl4WFgy/CUcXp4ho2fPx1BGPlkQ7M8mYOS2tCaxgJ7NqbhEUUCnpfB5XJf4rO7
 +AchCBaV0BVjGuA3bD1yyewE+yLqZ+J67sAN7/GjUODzvpjdyh/etUO7kw3HKKlGDWhA
 gy+8XHsHxf72A+3bnUcmO8aOSJJg3NvqNXwUx/rXVFjoBMj8QkVSd0T9/AGGtu1IpPiB
 cs0bgeJ9qzoPIeUUNBIF1/lqD7A3UPABaQP2+PWKGCfJRbMyVwo7RU6ywmA4HAPGPV9g
 F60Q==
X-Gm-Message-State: APjAAAU/ACjjYj6xz7CEgxLj8R1GdfIyx28Zll/tSR0UGdYHOTsHjesA
 TRvyKZ84J7poB1YugQc6UZc=
X-Google-Smtp-Source: APXvYqywaaDO+l8UX/soexCNWT1d0rN20NelYgx+BVxfqR8t062U5VDK59Nz1VPcLeOY/YWISW81Sg==
X-Received: by 2002:a62:cb:: with SMTP id 194mr46108963pfa.130.1568227496001; 
 Wed, 11 Sep 2019 11:44:56 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id g26sm23692017pfi.103.2019.09.11.11.44.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 11:44:54 -0700 (PDT)
Date: Wed, 11 Sep 2019 11:44:53 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v3 3/7] usb: mtu3: support ip-sleep wakeup for MT8183
Message-ID: <20190911184453.GA2628@roeck-us.net>
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567150854-30033-4-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567150854-30033-4-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_114457_460972_5EED2373 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMDM6NDA6NTBQTSArMDgwMCwgQ2h1bmZlbmcgWXVuIHdy
b3RlOgo+IFN1cHBvcnQgVVNCIHdha2V1cCBieSBpcC1zbGVlcCBtb2RlIGZvciBNVDgxODMsIGl0
J3Mgc2ltaWxhciB0bwo+IE1UODE3Mwo+IAo+IFNpZ25lZC1vZmYtYnk6IENodW5mZW5nIFl1biA8
Y2h1bmZlbmcueXVuQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiB2MzogY2hhbmdlcyBtaWNyb3MgZGVm
aW5lCj4gCj4gdjI6IG5vIGNoYW5nZXMKPiAtLS0KPiAgZHJpdmVycy91c2IvbXR1My9tdHUzX2hv
c3QuYyB8IDE0ICsrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL210dTMvbXR1
M19ob3N0LmMgYi9kcml2ZXJzL3VzYi9tdHUzL210dTNfaG9zdC5jCj4gaW5kZXggYzg3MWI5NGYz
ZTZmLi40ZjgyMDg4ODVlYmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91c2IvbXR1My9tdHUzX2hv
c3QuYwo+ICsrKyBiL2RyaXZlcnMvdXNiL210dTMvbXR1M19ob3N0LmMKPiBAQCAtMTgsNiArMTgs
MTIgQEAKPiAgI2luY2x1ZGUgIm10dTMuaCIKPiAgI2luY2x1ZGUgIm10dTNfZHIuaCIKPiAgCj4g
Ky8qIG10ODE4MyBldGMgKi8KPiArI2RlZmluZSBQRVJJX1dLX0NUUkwwCTB4MjAKPiArI2RlZmlu
ZSBXQzBfSVNfQyh4KQkoKCh4KSAmIDB4ZikgPDwgMjgpICAvKiBjeWNsZSBkZWJvdW5jZSAqLwo+
ICsjZGVmaW5lIFdDMF9JU19QCUJJVCgxMikJLyogcG9sYXJpdHkgKi8KPiArI2RlZmluZSBXQzBf
SVNfRU4JQklUKDYpCj4gKwoKRm9yIDY0LWJpdCBidWlsZHMsIHRoaXMgcmVzdWx0cyBpbjoKCmRy
aXZlcnMvdXNiL210dTMvbXR1M19ob3N0LmM6IEluIGZ1bmN0aW9uIOKAmHNzdXNiX3dha2V1cF9p
cF9zbGVlcF9zZXTigJk6Ci4vaW5jbHVkZS9saW51eC9iaXRzLmg6NjoxOTogd2FybmluZzoKCWNv
bnZlcnNpb24gZnJvbSDigJhsb25nIHVuc2lnbmVkIGludOKAmSB0byDigJh1MzLigJkge2FrYSDi
gJh1bnNpZ25lZCBpbnTigJl9CgljaGFuZ2VzIHZhbHVlIGZyb20g4oCYMTg0NDY3NDQwNzM0NDEx
MjAzMjDigJkgdG8g4oCYNDAyNjUzNjAwMOKAmSBbLVdvdmVyZmxvd10KCnNpbmNlIFdDMF9JU19D
KCkgaXMgc2lnbiBleHRlbmRlZCB0byA2NCBiaXQgYW5kIHRoZW4gdHJ1bmNhdGVkLgoKT2JzZXJ2
ZWQgd2l0aCBnY2MgNy40LjAgYW5kIDguMy4wLgoKR3VlbnRlcgoKPiAgLyogbXQ4MTczIGV0YyAq
Lwo+ICAjZGVmaW5lIFBFUklfV0tfQ1RSTDEJMHg0Cj4gICNkZWZpbmUgV0MxX0lTX0MoeCkJKCgo
eCkgJiAweGYpIDw8IDI2KSAgLyogY3ljbGUgZGVib3VuY2UgKi8KPiBAQCAtMzAsNyArMzYsOCBA
QAo+ICAjZGVmaW5lIFNTQ19TUE1fSU5UX0VOCQlCSVQoMSkKPiAgCj4gIGVudW0gc3N1c2JfdXdr
X3ZlcnMgewo+IC0JU1NVU0JfVVdLX1YxID0gMSwKPiArCVNTVVNCX1VXS19WMCA9IDAsCj4gKwlT
U1VTQl9VV0tfVjEsCj4gIAlTU1VTQl9VV0tfVjIsCj4gIH07Cj4gIAo+IEBAIC00Myw2ICs1MCwx
MSBAQCBzdGF0aWMgdm9pZCBzc3VzYl93YWtldXBfaXBfc2xlZXBfc2V0KHN0cnVjdCBzc3VzYl9t
dGsgKnNzdXNiLCBib29sIGVuYWJsZSkKPiAgCXUzMiByZWcsIG1zaywgdmFsOwo+ICAKPiAgCXN3
aXRjaCAoc3N1c2ItPnV3a192ZXJzKSB7Cj4gKwljYXNlIFNTVVNCX1VXS19WMDoKPiArCQlyZWcg
PSBzc3VzYi0+dXdrX3JlZ19iYXNlICsgUEVSSV9XS19DVFJMMDsKPiArCQltc2sgPSBXQzBfSVNf
RU4gfCBXQzBfSVNfQygweGYpIHwgV0MwX0lTX1A7Cj4gKwkJdmFsID0gZW5hYmxlID8gKFdDMF9J
U19FTiB8IFdDMF9JU19DKDB4OCkpIDogMDsKPiArCQlicmVhazsKPiAgCWNhc2UgU1NVU0JfVVdL
X1YxOgo+ICAJCXJlZyA9IHNzdXNiLT51d2tfcmVnX2Jhc2UgKyBQRVJJX1dLX0NUUkwxOwo+ICAJ
CW1zayA9IFdDMV9JU19FTiB8IFdDMV9JU19DKDB4ZikgfCBXQzFfSVNfUDsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
