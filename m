Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73BE170165
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 15:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vwOUtL8RweaUbko0W4PqX2tf2AcMzqbQOgwcqdkdJDA=; b=MWveW76UgW/99NiE3x8OBpNsV
	wZgvmrOWOwVwPvnMHBHv1pkcwveNN0yb1ZDx/9jIwa08ZvoPVKsxu53bb65NvLiJA27hkkQ9zxULn
	t4O0LQp4mPtLa6ytbM8C3/Rm+EiCamIASIWM4geFSdNKx33cxB0/aR2xFAkVjhwmF8xrYHQU72ERg
	7zbZHs1lU7mFNLH+fanp4LA+vBWVFCMe64a70h1Qk/HvI0TCy0LDCnntD6zqcvwapxuOcJ3EHaERj
	0V0UQmN3KdW0ZckYtMjuuThDDSLcroNhHPJ8TKCMI4YED62pwIFMtodbN20aOmoYcJMqR15g0Nt+H
	IdcTavKxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xqd-0008Ok-AY; Wed, 26 Feb 2020 14:39:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xqJ-00086N-NU; Wed, 26 Feb 2020 14:39:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1BF630E;
 Wed, 26 Feb 2020 06:39:15 -0800 (PST)
Received: from [10.37.12.169] (unknown [10.37.12.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB4613F9E6;
 Wed, 26 Feb 2020 06:39:05 -0800 (PST)
Subject: Re: [PATCH v3 4/4] drm/panfrost: Register to the Energy Model with
 devfreq device
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>
References: <20200221194731.13814-1-lukasz.luba@arm.com>
 <20200221194731.13814-5-lukasz.luba@arm.com>
 <CAL_JsqJ1D6Cf2cxdskDS2JCEe8ja6uUeoSpA3i-wxNgi=S1SYA@mail.gmail.com>
 <96d3287c-4559-7c4a-2f99-0a3aad9e42f6@arm.com>
 <67aef493-82ab-e3e0-7564-610ef8756b48@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <e76e0006-db90-145d-a3d7-b13dd7ff58f7@arm.com>
Date: Wed, 26 Feb 2020 14:39:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <67aef493-82ab-e3e0-7564-610ef8756b48@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_063919_875981_3B44AD0B 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, juri.lelli@redhat.com,
 Peter Zijlstra <peterz@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, bsegall@google.com,
 Fabio Estevam <festevam@gmail.com>,
 Morten Rasmussen <Morten.Rasmussen@arm.com>, patrick.bellasi@matbug.net,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Steven Price <steven.price@arm.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Ingo Molnar <mingo@redhat.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>, NXP Linux Team <linux-imx@nxp.com>,
 orjan.eide@arm.com, Sascha Hauer <kernel@pengutronix.de>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Steven Rostedt <rostedt@goodmis.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-omap <linux-omap@vger.kernel.org>, mgorman@suse.de,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, David Airlie <airlied@linux.ie>,
 javi.merino@arm.com, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 qperret@google.com, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Dietmar.Eggemann@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

CgpPbiAyLzI2LzIwIDE6NTUgUE0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyNi8wMi8yMDIw
IDEwOjA2IGFtLCBMdWthc3ogTHViYSB3cm90ZToKPiBbLi4uXQo+Pj4+IEBAIC0xMTgsNiArMTIw
LDcgQEAgdm9pZCBwYW5mcm9zdF9kZXZmcmVxX2Zpbmkoc3RydWN0IAo+Pj4+IHBhbmZyb3N0X2Rl
dmljZSAqcGZkZXYpCj4+Pj4gwqAgewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgaWYgKHBmZGV2LT5k
ZXZmcmVxLmNvb2xpbmcpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2
ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIocGZkZXYtPmRldmZyZXEuY29vbGluZyk7Cj4+Pj4gK8Kg
wqDCoMKgwqDCoCBkZXZfcG1fb3BwX29mX3VucmVnaXN0ZXJfZW0oJnBmZGV2LT5wZGV2LT5kZXYp
Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoJnBmZGV2
LT5wZGV2LT5kZXYpOwo+Pj4KPj4+IERvZXMgaXQgbWFrZSBzZW5zZSB0byBrZWVwIHRoaXMgKGFu
ZCB0aGUgcmVnaXN0cmF0aW9uIHNpZGUpIGFzCj4+PiBzZXBhcmF0ZSBjYWxscz8gUGVyaGFwcyB0
aGVyZSdzIHNvbWUgb3JkZXJpbmcgcmVxdWlyZW1lbnQgd2l0aAo+Pj4gZXZlcnl0aGluZyBiZXR3
ZWVuIGRldl9wbV9vcHBfb2ZfYWRkX3RhYmxlKCkgYW5kCj4+PiBkZXZfcG1fb3BwX29mX3JlZ2lz
dGVyX2VtKCk/Cj4+Cj4+IFllcywgZGV2X3BtX29wcF9vZl9yZWdpc3Rlcl9lbSgpIHVzZXMgZW1f
ZGF0YV9jYWxsYmFjayB3aGljaCBvcGVyYXRlcwo+PiBvbiBPUFBzIHRvIGNhbGN1bGF0ZSBwb3dl
ciB2YWx1ZXMgYW5kIGNvc3RzLCBzbyB0aGUgdGhlIE9QUCB0YWJsZSBzaG91bGQKPj4gYmUgYWxy
ZWFkeSB0aGVyZS4KPj4KPj4+Cj4+PiBXaGlsZSB5b3UncmUganVzdCBhZGRpbmcgMiBsaW5lcywg
aXQgc2VlbXMgdGhlcmUncyBhIGxvdCBvZiBjb21wbGV4aXR5Cj4+PiBleHBvc2VkIHRvIHRoZSBk
cml2ZXIganVzdCB0byBpbml0aWFsaXplIGRldmZyZXEvb3BwLgo+Pgo+PiBJdCBkZXBlbmRzLCBm
b3IgZXhhbXBsZSBkZXZmcmVxIGRldmljZXMgbGlrZSBidXNlcyB3b3VsZCBsaWtlbHkgbmV2ZXIK
Pj4gdXNlIHRoZSBlbmVyZ3kgbW9kZWwuIFBvdGVudGlhbCBjbGllbnRzIHdvdWxkIGJlIEdQVXMs
IERTUHMsIElTUHMuCj4gCj4gU3RpbGwsIGl0IHNlZW1zIGxlc3MgdGhhbiBpZGVhbCBmb3IgZXZl
cnkgY2xpZW50IHRvIGhhdmUgdG8gcmVtZW1iZXIgdG8gCj4gbWFrZSBhbGwgdGhlc2UgaW5kaXZp
ZHVhbCBjYWxscywgYWxsIGluIHRoZSByaWdodCBvcmRlciAoZXNwZWNpYWxseSB3aGVuIAo+IGl0
IGNvbWVzIHRvIHVuZG9pbmcgdGhlbSBpbiBmYWlsdXJlIHBhdGhzKS4KClRoZXJlIGFyZSAzIHRo
aW5ncyB0aGF0IHJlZ2lzdGVyIGFuZCB1bnJlZ2lzdGVyIHByb2Nlc3MgbXVzdCB0YWtlCmludG8g
YWNjb3VudDoKYSkgRU0gc3RydWN0IGlzIHBvcHVsYXRlZCBiYXNlZCBvbiBPUFBzIG9mIHRoZSBk
ZXZpY2UKICAgIChPUFBzIG11c3QgYmUgdGhlcmUgYmVmb3JlIEVNIHRyaWVzIHRvIGNhbGN1bGF0
ZSBwZXItT1BQLWNvc3QpCmIpIEVNIGlzIHJldHVybmVkIHRvIHN1YnN5c3RlbXMgbGlrZTogc2No
ZWR1bGVyIG9yIHRoZXJtYWwKICAgICh1bnJlZ2lzdGVyIG11c3QgYmUgZG9uZSBhZnRlciByZW1v
dmluZyBjb29saW5nIGRldmljZSkKYykgRU0gbWlnaHQgYmUgY3JlYXRlZCB3aXRoIGRyaXZlciBz
cGVjaWZpYyBjYWxsYmFjayBmdW5jdGlvbiwKY2FsbGVkIGZvciBlYWNoIE9QUCBieSB0aGUgRU0g
ZHVyaW5nIHNldHVwCiAgICAoZG8gbm90IHB1dCBkZWZhdWx0IHNpbXBsZSBFTSBtb2RlbCBpbnRv
IGZyYW1ld29yayBmdW5jdGlvbikKClNvIGEpIGFuZCBiKSBzaG91bGRuJ3QgYmUgaGFyZCB0byBj
b2RlLCBidXQgSSBhZ3JlZSwgaXQgd291bGQgYmUgZWFzaWVyCmZvciBkcml2ZXIgZGV2ZWxvcGVy
IHRvIG5vdCB0aGluayBhYm91dCB0aGVtLgpMZXQgbWUgdHJ5IHRvIGV4cGVyaW1lbnQgYW5kIGFk
ZHJlc3MgdGhpcy4KCj4gCj4gSSBoYXZlbid0IHF1aXRlIGdyYXNwZWQgd2hldGhlciB0aGUgZW5l
cmd5IG1vZGVsIGlzIGNvbmNlcHR1YWxseSAib3duZWQiIAo+IGJ5IHRoZSBPUFAgdGFibGUgb3Ig
YnkgdGhlIGNvb2xpbmcgZGV2aWNlLCBidXQgZWl0aGVyIHdheSBpdCB3b3VsZCBzZWVtIAo+IHRv
IGJlIGEgbXVjaCBuaWNlciBBUEkgaWYgdGhlcmUgd2VyZSBzaW1wbHkgYW4gYWRkaXRpb25hbCAi
d2l0aCBlbmVyZ3kgCj4gbW9kZWwiIHZhcmlhbnQgb2YgdGhlIHJlZ2lzdHJhdGlvbiBjYWxsLCBh
bmQgdGhlIHN0YW5kYXJkIHJlbW92YWwgY2FsbCAKPiBqdXN0IGF1dG9tYXRpY2FsbHkgY2xlYW5l
ZCB1cCBhbiBlbmVyZ3kgbW9kZWwgYXMgd2VsbCBpZiBvbmUgd2FzIHByZXNlbnQuCgpUaGlzIGRl
dl9wbV9vcHBfb2ZfKiBjb3VsZCBwb3RlbnRpYWxseSBiZSB1c2VkIGRpcmVjdGx5IGluc2lkZQpk
ZXZmcmVxX2Nvb2xpbmdfcmVnaXN0ZXIoKSBhbmQgdGhlbiAndW5yZWdpc3RlcicgY2FsbCBkb25l
IGludGVybmFsbHkuCkp1c3QgbGltaXRpbmcgZGV2ZnJlcV9jb29saW5nIHRvIGEgY2FsbCB0bzoK
ZGV2X3BtX29wcF9vZl9yZWdpc3Rlcl9lbSgpCndvdWxkIGxpbWl0IHRoZSBFTSBmb3IgZGV2ZnJl
cSBkZXZpY2VzIHRvIHVzZSBvbmx5IHRoaXMKc2ltcGxlIERUIG1vZGVsICh3aGljaCBpcyBiYXNl
ZCBvbiAiZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCIpIHdoaWNoCmZhaWxzIGluIGkuZS4gR1BV
IFNDTUkgd2hlcmUgT1BQIHBvd2VyIGNvbWVzIGZyb20gZmlybXdhcmUuCgpUaGF0IHdvdWxkIHJl
cXVpcmUgc29tZXRoaW5nIGxpa2UKZGV2ZnJlcV9jb29saW5nX3dpdGhfZW1fcmVnaXN0ZXIoPG9s
ZF9hcmdzX2hlcmU+LCBzdHJ1Y3QgCmVtX2RhdGFfY2FsbGJhY2sgKmVtX2NiKQoKYW5kIHRoZW4g
aWYgdGhlICplbV9jYiBpcyBzZXQgdG8gbnVsbCwgaXQgY291bGQgY2FsbApkZXZfcG1fb3BwX29m
X3JlZ2lzdGVyX2VtKCkgdHJ5aW5nIHRvIHVzZSBpdCdzIGRlZmF1bHQgZW1fY2IKZnVuY3Rpb24s
IHdoaWNoIHNlZWtzIGZvciAiZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCIuCgpUaGlzIGlzIGRv
YWJsZSBpbnNpZGUgZGV2ZnJlcV9jb29saW5nLCByZWdpc3RlciBhbmQgdW5yZWdpc3RlcgpvZiBF
TSB3b3VsZCBiZSBhdm9pZGVkIGluIGRyaXZlcnMgY29kZS4KClRoYW5rIHlvdSBSb2JpbiBmb3Ig
eW91ciBjb21tZW50cyBjbGFyaWZ5aW5nIHRoZXNlIHRoaW5ncy4KClJlZ2FyZHMsCkx1a2FzegoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVk
aWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
