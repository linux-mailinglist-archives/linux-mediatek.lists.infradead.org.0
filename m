Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870C91A000F
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Apr 2020 23:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnoiRZUaVBN0QxU+sDLPbvrzhyRnXyou61nWQgGCDcM=; b=JnZ/adZhsGH5Zz
	slqAZtRze2oilJSponZ0cbf7U8ZNiIxJcCHylVuqy16pGDO1eDzXD88x0E3lB5SyutLGrNynBT4Lw
	k+3hw9C32aVe7x/XPC86qz4Yq5DyNGViKX2oBCj7Suvft0lA9qZ+vkTsry2zUspsMsvFbXXhh1Mib
	nKgM2fxrtPMRBugbWkh1zTD3CMo46KwBj72ZTlCIiPs2THlanmPRJeh7cIEnCg+DrJvJq+NrdvCjJ
	WV+I3xm1Laz2YADCrJfjYBy66h2UFt0Lj9eG7+9aBSYFQ4nReR3D9v50hlMgHbYACD8cKGJPf+uEC
	9q0iIrRve7ZtxnknRERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLZ7j-0001Mu-UX; Mon, 06 Apr 2020 21:17:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLZ7Z-0001GU-QC
 for linux-mediatek@lists.infradead.org; Mon, 06 Apr 2020 21:17:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id c15so1225241wro.11
 for <linux-mediatek@lists.infradead.org>; Mon, 06 Apr 2020 14:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dd6BqHd1u7xbQgsrts2ztR8U4QU0nrn833OxpCYuajE=;
 b=gdF534ddiA7swSSZ0lK+MkQ8WFIBr/tTboA6TxrJ1xqcPgc18lNxDyq+CH7jO6Cdvy
 DlTf0wpWphvPAvwTEklSa5E+yNZrjiDVMm/crLJpWCyP8QPzCOIQimJtYMXHv76Feb5v
 tvvMaqRpNX6DfSO+Iy9K2z8YC3JMP48i4ZzzhI/a9BHbwCU7DkKqsU37Hp4vw3ENd7F2
 hpRkwZz+ulO9Zghh4AtHzQDTCK/Ks0SmIy5Cc+Du5YPwO5WOzuKH7qz7FcHkNdDJ/Sf+
 xgIjhwpXbKBztpqTmioR8ll9JUVnZ7z4E/gdyNK0qV03ge2vpxm+DX1u7kfzZ9n0NpwV
 bdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=dd6BqHd1u7xbQgsrts2ztR8U4QU0nrn833OxpCYuajE=;
 b=qojRBvyb+B4sBX0bL+R5Fc+i4gEHC2z7bkgp4NgOzcyh31MsrwdkeG8maR4kLMmez2
 SXQzG6sCc117hA+LaIPprRlfLhDZhv1yHDILjS/hOdJYcdUc0UWD9e16n6loe8gkMZfz
 D+aaFeli6DCL7Vwa4kUd1O4ygsxlDTR+9Ao1I62ZNlY/B1lw5uWdRDKHvF+OqYjn8KJh
 MBXNqQZMgbCzHHbU8tj4FUXeQwBqjJGFDUzOlUlX8EX/7IRpRbq/YJXUvOkazQwbHx+F
 8b9GaTH23YUn0T9C+INXxZb0isHn6GG27uDpSS3YUBsKP/Tg7PV7TQg0UfbpyGpCk2vS
 o2vA==
X-Gm-Message-State: AGi0PuZsW/BIULsdWw1VDF54bS3hCcqitEqRYxEPm1dBiGDWTjQM0IvG
 UjdIhCFeY/9tM9Kr76ftM03R8A==
X-Google-Smtp-Source: APiQypI8eUAb2yFVFjfZBDxJtENyxrtQ3mA79hFrt6jqDkB7Rx6yGyMvlLNKGRgdGVUbMKGFF+XPWQ==
X-Received: by 2002:a5d:604a:: with SMTP id j10mr1242279wrt.126.1586207845347; 
 Mon, 06 Apr 2020 14:17:25 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:b51c:42dc:1499:2880?
 ([2a01:e34:ed2f:f020:b51c:42dc:1499:2880])
 by smtp.googlemail.com with ESMTPSA id d6sm28140465wrw.10.2020.04.06.14.17.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 14:17:24 -0700 (PDT)
Subject: Re: [PATCH v5 1/5] PM / EM: add devices to Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-2-lukasz.luba@arm.com>
 <09b680a5-a118-8c6e-0ae1-03ab5f10c573@linaro.org>
 <cb7f670a-a04f-ba6f-1486-0421f3cce2e9@arm.com>
 <6b980e2a-c15c-0718-14b8-e8aa7510c832@linaro.org>
 <2a70b4ed-f18f-c1e6-1e8c-e4747807f276@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4cee98ce-62a6-7448-a99c-3a1af6c87cf4@linaro.org>
Date: Mon, 6 Apr 2020 23:17:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2a70b4ed-f18f-c1e6-1e8c-e4747807f276@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_141730_024564_3C58D2DD 
X-CRM114-Status: GOOD (  23.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, mka@chromium.org, rdunlap@infradead.org, rjw@rjwysocki.net,
 agross@kernel.org, kernel@pengutronix.de, sudeep.holla@arm.com,
 patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gMDYvMDQvMjAyMCAxODowNywgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gCj4gCj4gT24gNC82LzIw
IDM6NTggUE0sIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pgo+PiBIaSBMdWthc3osCj4+Cj4+Cj4+
IE9uIDA2LzA0LzIwMjAgMTU6MjksIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pj4gSGkgRGFuaWVsLAo+
Pj4KPj4+IFRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4KPj4+Cj4+PiBPbiA0LzMvMjAgNTowNSBQ
TSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4KPj4+PiBIaSBMdWthc3osCj4+Pj4KPj4+Pgo+
Pj4+IE9uIDE4LzAzLzIwMjAgMTI6NDUsIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pj4+PiBBZGQgc3Vw
cG9ydCBvZiBvdGhlciBkZXZpY2VzIGludG8gdGhlIEVuZXJneSBNb2RlbCBmcmFtZXdvcmsgbm90
IG9ubHkKPj4+Pj4gdGhlCj4+Pj4+IENQVXMuIENoYW5nZSB0aGUgaW50ZXJmYWNlIHRvIGJlIG1v
cmUgdW5pZmllZCB3aGljaCBjYW4gaGFuZGxlIG90aGVyCj4+Pj4+IGRldmljZXMgYXMgd2VsbC4K
Pj4+Pgo+Pj4+IHRoYW5rcyBmb3IgdGFraW5nIGNhcmUgb2YgdGhhdC4gT3ZlcmFsbCBJIGxpa2Ug
dGhlIGNoYW5nZXMgaW4gdGhpcwo+Pj4+IHBhdGNoCj4+Pj4gYnV0IGl0IGhhcmQgdG8gcmV2aWV3
IGluIGRldGFpbHMgYmVjYXVzZSB0aGUgcGF0Y2ggaXMgdG9vIGJpZyA6Lwo+Pj4+Cj4+Pj4gQ291
bGQgeW91IHNwbGl0IHRoaXMgcGF0Y2ggaW50byBzbWFsbGVyIG9uZXM/Cj4+Pj4KPj4+PiBlZy4g
KGF0IHlvdXIgY29udmVuaWVuY2UpCj4+Pj4KPj4+PiDCoMKgIC0gT25lIHBhdGNoIHJlbmFtaW5n
IHMvY2FwL3BlcmYvCj4+Pj4KPj4+PiDCoMKgIC0gT25lIHBhdGNoIGFkZGluZyBhIG5ldyBmdW5j
dGlvbjoKPj4+Pgo+Pj4+IMKgwqDCoMKgwqAgZW1fZGV2X3JlZ2lzdGVyX3BlcmZfZG9tYWluKHN0
cnVjdCBkZXZpY2UgKmRldiwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1
bnNpZ25lZCBpbnQgbnJfc3RhdGVzLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBlbV9kYXRhX2NhbGxiYWNrICpjYik7Cj4+Pj4KPj4+PiDCoMKgwqDCoCAoKyBF
WFBPUlRfU1lNQk9MX0dQTCkKPj4+Pgo+Pj4+IMKgwqDCoMKgwqAgQW5kIGVtX3JlZ2lzdGVyX3Bl
cmZfZG9tYWluKCkgdXNpbmcgaXQuCj4+Pj4KPj4+PiDCoMKgIC0gT25lIGNvbnZlcnRpbmcgdGhl
IGVtX3JlZ2lzdGVyX3BlcmZfZG9tYWluKCkgdXNlciB0bwo+Pj4+IMKgwqDCoMKgwqBlbV9kZXZf
cmVnaXN0ZXJfcGVyZl9kb21haW4KPj4+Pgo+Pj4+IMKgwqAgLSBPbmUgYWRkaW5nIHRoZSBkaWZm
ZXJlbnQgbmV3ICdlbScgZnVuY3Rpb25zCj4+Pj4KPj4+PiDCoMKgIC0gQW5kIGZpbmFsbHkgb25l
IHJlbW92aW5nIGVtX3JlZ2lzdGVyX3BlcmZfZG9tYWluKCkuCj4+Pgo+Pj4gSSBhZ3JlZSBhbmQg
d2lsbCBkbyB0aGUgc3BsaXQuIEkgY291bGQgYWxzbyBicmVhayB0aGUgZGVwZW5kZW5jaWVzCj4+
PiBmb3IgZnV0dXJlIGVhc2llciBtZXJnZS4KPj4+Cj4+Pj4KPj4+Pgo+Pj4+PiBBY2tlZC1ieTog
UXVlbnRpbiBQZXJyZXQgPHFwZXJyZXRAZ29vZ2xlLmNvbT4KPj4+Pj4gU2lnbmVkLW9mZi1ieTog
THVrYXN6IEx1YmEgPGx1a2Fzei5sdWJhQGFybS5jb20+Cj4+Pj4+IC0tLQo+Pj4+Cj4+Pj4gWyAu
Li4gXQo+Pj4+Cj4+Pj4+IMKgwqAgMi4gQ29yZSBBUElzCj4+Pj4+IEBAIC03MCwxNCArNzIsMTYg
QEAgQ09ORklHX0VORVJHWV9NT0RFTCBtdXN0IGJlIGVuYWJsZWQgdG8gdXNlIHRoZSBFTQo+Pj4+
PiBmcmFtZXdvcmsuCj4+Pj4+IMKgwqAgRHJpdmVycyBhcmUgZXhwZWN0ZWQgdG8gcmVnaXN0ZXIg
cGVyZm9ybWFuY2UgZG9tYWlucyBpbnRvIHRoZSBFTQo+Pj4+PiBmcmFtZXdvcmsgYnkKPj4+Pj4g
wqDCoCBjYWxsaW5nIHRoZSBmb2xsb3dpbmcgQVBJOjoKPj4+Pj4gwqDCoCAtwqAgaW50IGVtX3Jl
Z2lzdGVyX3BlcmZfZG9tYWluKGNwdW1hc2tfdCAqc3BhbiwgdW5zaWduZWQgaW50Cj4+Pj4+IG5y
X3N0YXRlcywKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGVtX2RhdGFfY2FsbGJhY2sgKmNiKTsKPj4+Pj4gK8KgIGludCBlbV9yZWdpc3Rlcl9wZXJmX2Rv
bWFpbihzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludAo+Pj4+PiBucl9zdGF0ZXMsCj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZW1fZGF0YV9jYWxsYmFjayAqY2IsIGNwdW1hc2tf
dCAqY3B1cyk7Cj4+Pj4KPj4+PiBJc24ndCBwb3NzaWJsZSB0byBnZXQgcmlkIG9mIHRoaXMgY3B1
bWFzayBieSB1c2luZwo+Pj4+IGNwdWZyZXFfY3B1X2dldCgpIHdoaWNoIHJldHVybnMgdGhlIGNw
dWZyZXEncyBwb2xpY3kgYW5kIGZyb20gdGhlaXIgZ2V0Cj4+Pj4gdGhlIHJlbGF0ZWQgY3B1cyA/
Cj4+Pgo+Pj4gV2UgaGFkIHNpbWlsYXIgdGhvdWdodHMgd2l0aCBRdWVudGluIGFuZCBJJ3ZlIGNo
ZWNrZWQgdGhpcy4KPj4KPj4gWWVhaCwgSSBzdXNwZWN0ZWQgeW91IGFscmVhZHkgdGhpbmsgYWJv
dXQgdGhhdCA6KQo+Pgo+Pj4gVW5mb3J0dW5hdGVseSwgaWYgdGhlIHBvbGljeSBpcyBhICduZXcg
cG9saWN5JyBbMV0gaXQgZ2V0cwo+Pj4gYWxsb2NhdGVkIGFuZCBwYXNzZWQgaW50byBjcHVmcmVx
IGRyaXZlciAtPmluaXQocG9saWN5KSBbMl0uCj4+PiBUaGVuIHRoYXQgcG9saWN5IGlzIHNldCBp
bnRvIHBlcl9jcHUgcG9pbnRlciBmb3IgZWFjaCByZWxhdGVkX2NwdSBbM106Cj4+Pgo+Pj4gZm9y
X2VhY2hfY3B1KGosIHBvbGljeS0+cmVsYXRlZF9jcHVzKQo+Pj4gwqDCoMKgwqDCoHBlcl9jcHUo
Y3B1ZnJlcV9jcHVfZGF0YSwgaikgPSBwb2xpY3k7Cj4+Pgo+Pj4gwqAgVGh1cywgYW55IGNhbGxz
IG9mIGZ1bmN0aW9ucyAoaS5lLiBjcHVmcmVxX2NwdV9nZXQoKSkgd2hpY2ggdHJ5IHRvCj4+PiB0
YWtlIHRoaXMgcHRyIGJlZm9yZSBbM10gd29uJ3Qgd29yay4KPj4+Cj4+PiBXZSBhcmUgdHJ5aW5n
IHRvIHJlZ2lzdGVyIEVNIGZyb20gY3B1ZnJlcV9kcml2ZXItPmluaXQocG9saWN5KSBhbmQgdGhl
Cj4+PiBwZXJfY3B1IHBvbGljeSBpcyBsaWtlbHkgdG8gYmUgbm90IHBvcHVsYXRlZCBhdCB0aGF0
IHBoYXNlLgo+Pgo+PiBXaGF0IGlzIHRoZSBwcm9ibGVtIG9mIHJlZ2lzdGVyaW5nIGF0IHRoZSBl
bmQgb2YgdGhlIGNwdWZyZXFfb25saW5lID8KPiAKPiBXZSB3YW50IHRvIGVuYWJsZSBkcml2ZXIg
ZGV2ZWxvcGVycyB0byBjaG9vc2Ugb25lIG9mIHR3byBvcHRpb25zIGZvciB0aGUKPiByZWdpc3Ry
YXRpb24gb2YgRW5lcmd5IE1vZGVsOgo+IDEuIGEgc2ltcGxlIG9uZSB2aWEgZGV2X3BtX29wcF9v
Zl9yZWdpc3Rlcl9lbSgpLCB3aGljaCB1c2VzIGRlZmF1bHQKPiDCoMKgIGNhbGxiYWNrIGZ1bmN0
aW9uIGNhbGN1bGF0aW5nIHBvd2VyIGJhc2VkIG9uOiB2b2x0YWdlLCBmcmVxCj4gwqDCoCBhbmQg
RFQgZW50cnkgJ2R5bmFtaWMtcG93ZXItY29lZmZpY2llbnQnIGZvciBlYWNoIE9QUAo+IDIuIGEg
bW9yZSBzb3BoaXN0aWNhdGVkLCB3aGVuIGRyaXZlciBwcm92aWRlcyBjYWxsYmFjayBmdW5jdGlv
biwgd2hpY2gKPiDCoCB3aWxsIGJlIGNhbGxlZCBmcm9tIEVNIGZvciBlYWNoIE9QUCB0byBhc2sg
Zm9yIHJlbGF0ZWQgcG93ZXI7Cj4gwqAgVGhpcyBpbnRlcmZhY2UgY291bGQgYWxzbyBiZSB1c2Vk
IGJ5IGRldmljZXMgd2hpY2ggcmVsYXkgbm90IG9ubHkKPiDCoCBvbiBvbmUgc291cmNlIG9mICd2
b2x0YWdlJywgaS5lLiBtYW5pcHVsYXRlIGJvZHkgYmlhcyBvciBoYXZlCj4gwqAgb3RoZXIgY29u
dHJvbGxpbmcgdm9sdGFnZSBmb3IgZ2F0ZXMgaW4gdGhlIG5ldyAzRCB0cmFuc2lzdG9ycy4gVGhl
eQo+IMKgIG1pZ2h0IHByb3ZpZGUgY3VzdG9tIGNhbGxiYWNrIGZ1bmN0aW9uIGluIHRoZWlyIGNw
dWZyZXEgZHJpdmVyLgo+IMKgIFRoaXMgaXMgdXNlZCBpLmUuIGluIGNwdWZyZXEgZHJpdmVycyB3
aGljaCB1c2UgZmlybXdhcmUgdG8gZ2V0IHBvd2VyLAo+IMKgIGxpa2Ugc2NtaS1jcHVmcmVxLmM7
Cj4gCj4gVG8gbWVldCB0aGlzIHJlcXVpcmVtZW50IHRoZSByZWdpc3RyYXRpb24gb2YgRU0gaXMg
bW92ZWQgaW50byBjcHVmcmVxCj4gZHJpdmVycywgbm90IGluIHRoZSBmcmFtZXdvcmsgaS5lIGNw
dWZyZXFfb25saW5lKCkuIElmIHdlIGNvdWxkIGxpbWl0Cj4gdGhlIHN1cHBvcnQgZm9yIG9ubHkg
b3B0aW9uIDEuIHRoZW4gd2UgY291bGQgbW92ZSB0aGUgcmVnaXN0cmF0aW9uCj4gY2FsbCBpbnRv
IGNwdWZyZXEgZnJhbWV3b3JrIGFuZCBjbGVhbiB0aGUgY3B1ZnJlcSBkcml2ZXJzLgoKSSdtIG5v
dCBzdXJlIHRvIGdldCB5b3VyIHBvaW50IGJ1dCBJIHRoaW5rIGEgc2VyaWVzIHNldHRpbmcgdGhl
IHNjZW5lIGJ5Cm1vdmluZyB0aGUgZGV2X3BtX29wcF9vZl9yZWdpc3Rlcl9lbSgpIHRvIGNwdWZy
ZXFfb25saW5lKCkgYW5kIHJlbW92ZQp0aGUgY3B1bWFzayBtYXkgbWFrZSBzZW5zZS4KCkNhbiB5
b3Ugc2VuZCB0aGUgc3BsaXQgdmVyc2lvbiBvZiBwYXRjaCAxLzUgYXMgYSBzZXJpZXMgd2l0aG91
dCB0aGUKb3RoZXIgY2hhbmdlcyA/IFNvIHdlIGNhbiBmb2N1cyBvbiBmaXJzdCA/CgoKLS0gCjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlh
dGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
