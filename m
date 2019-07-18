Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791036D2DF
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrttA/AJmjpOKEODv8fKHhyFacNLQfuy9uK9hpDrWIM=; b=MbRgCcyGhba4nq
	OprznpIrH/WleYAyxIJTOS5xeV4jOWTGWvBq9MZ5p+SN5yGNbZmYVPqoxkgDTLIdW5AmReTLdhFHP
	zqUmXdevVa0gTNHmiGQQMV9L4umSy0nBQJwLL3zT0S8n9nI69RxQruNfgne3qOb9ypVs6J5TeXX+I
	Syodwivrpshp09tXaplULAdhoCYu057TXpFU/covhDiPYqooLszCu9bS/6bEMrHkj7zAXG3C8vN6G
	g2q4q+UVmeqEBkAURKE2zOIc4qdErp9CSO4Y/wbVPbSR4IZABjQOpJABuqO90ioEXZFHtQJnR9DPA
	pQfHWZBBwPEMtVa0j7kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAKq-0000RY-CT; Thu, 18 Jul 2019 17:36:52 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAKc-0000IZ-Hm
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:36:40 +0000
Received: by mail-yw1-xc41.google.com with SMTP id l124so12530621ywd.0
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GcxDt0FJq/Q5nQPNi8FyeQ+pWfJar+1/aIszgyAzxqc=;
 b=OdFu2z7pBe3my11Ww4bUV5tI7KuWrWNF2YKs9uuWrX5z3s6d6Ad9/bXXTrJicDQm8G
 5xbcwJ8FAkd+gRq9jNEj9wSWALLA6AiPeG81ujeFQXwz1ojoSFYKHUskb/Z4XENyTRZK
 P5bVB8YZwpY8Fgpq3x4kZIeJ2+Gsx+6aky7pXn/G4SJZF/bT6D+CsqBBfvS/Hw+/MwKM
 vvoqwEayWpw0pm2dgiwIOkU5wunXHzIzy8IiSlPVSdYIXjEHc9qHq930U5w/FBzytLbr
 uqwmmKiBGQa5cLIHW9xHuQRH9fWI2Ln0+9XCAmYVfJrNz7IZlgqyQ88LeStgwHfk7JuJ
 hapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GcxDt0FJq/Q5nQPNi8FyeQ+pWfJar+1/aIszgyAzxqc=;
 b=qNiCKIbcpZGlZzgoVFDOA6T6LjDZtwxvYXOSI94EZ6/oDjdqTS/a2ElDpaCX4BXkjY
 Gog0BY9FqMwxUzo46u7HfL9OCDI7AwVtPrnrI1Bi39QIdpFpG5Aqx+S2HNLwlK26jXqV
 kI2eeJyagPj4Tv1nG/rZiE61oRZ85TmYjwnCF+02iDgrF70P5bnTpgM2D/yEowBeNmmG
 RR4q78G/NvwDLaXwfO3Mu6p0btr7wtxT3NwtTmoqdv1jgxuXf79ac1ApsdCYSANgS5a3
 FhhkEtC6U1f/PzCa/yrHj1aMUD1xwMeSOnPmh2yT1ASyxQpJR7sb8HlCP5i1lq1X+jJ1
 SaiQ==
X-Gm-Message-State: APjAAAUtDxMaOeNf3IuzPTN3TdVAdQYDLE8l5OoSKbPlNtkcXP0Abm2B
 bngT8Tek16yqZ6VGDa85hEnNtg==
X-Google-Smtp-Source: APXvYqy83QIZS5TdGzUNaA3dWvj2m8DDjthwvTWjojfBcTlcP/oTRJZ6UAzdGN0lxGtCHnn5fvBIoQ==
X-Received: by 2002:a81:98f:: with SMTP id 137mr30487003ywj.293.1563471395250; 
 Thu, 18 Jul 2019 10:36:35 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j207sm6575870ywj.35.2019.07.18.10.36.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:36:34 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:36:34 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 01/11] drm/panel: make drm_panel.h self-contained
Message-ID: <20190718173634.GD31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-2-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-2-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_103638_592978_A5886CB1 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTQ6NTdQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IEZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gCj4gRml4
IGJ1aWxkIHdhcm5pbmcgaWYgZHJtX3BhbmVsLmggaXMgYnVpbHQgd2l0aCBDT05GSUdfT0Y9biBv
cgo+IENPTkZJR19EUk1fUEFORUw9biBhbmQgaW5jbHVkZWQgd2l0aG91dCB0aGUgcHJlcmVxdWlz
aXRlIGVyci5oOgo+IAo+IC4vaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmg6IEluIGZ1bmN0aW9uIOKA
mG9mX2RybV9maW5kX3BhbmVs4oCZOgo+IC4vaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmg6MjAzOjk6
IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhFUlJfUFRS4oCZIFst
V2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgcmV0dXJuIEVSUl9QVFIo
LUVOT0RFVik7Cj4gICAgICAgICAgXn5+fn5+fgo+IC4vaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmg6
MjAzOjk6IGVycm9yOiByZXR1cm5pbmcg4oCYaW504oCZIGZyb20gYSBmdW5jdGlvbiB3aXRoIHJl
dHVybiB0eXBlIOKAmHN0cnVjdCBkcm1fcGFuZWwgKuKAmSBtYWtlcyBwb2ludGVyIGZyb20gaW50
ZWdlciB3aXRob3V0IGEgY2FzdCBbLVdlcnJvcj1pbnQtY29udmVyc2lvbl0KPiAgIHJldHVybiBF
UlJfUFRSKC1FTk9ERVYpOwo+ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4KPiAKPiBGaXhlczog
NWZhOGU0YTIyMTgyICgiZHJtL3BhbmVsOiBNYWtlIG9mX2RybV9maW5kX3BhbmVsKCkgcmV0dXJu
IGFuIEVSUl9QVFIoKSBpbnN0ZWFkIG9mIE5VTEwiKQo+IENjOiBCb3JpcyBCcmV6aWxsb24gPGJv
cmlzLmJyZXppbGxvbkBib290bGluLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJlZGlu
Z0BudmlkaWEuY29tPgo+IFJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5v
cmc+CgpSZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cgo+IC0tLQo+ICBp
bmNsdWRlL2RybS9kcm1fcGFuZWwuaCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggYi9pbmNsdWRl
L2RybS9kcm1fcGFuZWwuaAo+IGluZGV4IDhjNzM4YzBlNmU5Zi4uMjYzNzc4MzYxNDFjIDEwMDY0
NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJt
X3BhbmVsLmgKPiBAQCAtMjQsNiArMjQsNyBAQAo+ICAjaWZuZGVmIF9fRFJNX1BBTkVMX0hfXwo+
ICAjZGVmaW5lIF9fRFJNX1BBTkVMX0hfXwo+ICAKPiArI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+
ICAjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KPiAg
Cj4gLS0gCj4gMi4yMC4xCj4gCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29v
Z2xlIC8gQ2hyb21pdW0gT1MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbWVkaWF0ZWsK
