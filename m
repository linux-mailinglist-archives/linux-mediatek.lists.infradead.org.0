Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAA914879
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 12:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2w/H4JAqmWuyFgF6oaLjBuYh4nkhjawqy8QPyayCM9Q=; b=KKbk6HACm2kSm0
	PdHFxPdpJVuC4QzKviQtYAyERSKV56CnVknt2UnjuEFvoXalZRVNvEQ4ARuxeiExrURIX8NCwHAp4
	/IwVxf/XskH15cz4h950d0/OAp+IAoOvnHy+fVgJvfhFIZ7+a73h+jgW0GF3l5beu8sTVMp2pDaAT
	u/G44vR8Hi/R70MCMwdHLUegBfvE3tEDIuAaJI5LiEmUUnHQV/8xkaRB0a8SXQe4/kDgJC5O6Dft3
	MeiyrVz13ebsNmSLSeBGR2hjnPt2cEPRdse1074bsm+9rmbXbC+/YRQCMefl43ec6cV92FFHdcqZl
	xB/Yxilt25UV9ZkgQdNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNb62-0001vG-O3; Mon, 06 May 2019 10:43:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNb5z-0001uV-6r
 for linux-mediatek@lists.infradead.org; Mon, 06 May 2019 10:43:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id k16so16616568wrn.5
 for <linux-mediatek@lists.infradead.org>; Mon, 06 May 2019 03:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uCi++m+hmflAtTf0wEp9JT3iL7NhPW7odYvIK611ma4=;
 b=SZr/UgT/IQ9sh8lvU0B3M5ekEWd0V/Cm4RNDe4ul6z8F9ZavaeSx4eVJh/dWCzqJUo
 oTscLrrY/6XZpLJTGkh9fAhyvrWiEEUWqYTiUjvzy7RILfvJUyKjB1lUQdxuFEYiil7r
 nCRgmM4BL9sZ78L4/HF73e2hVRJEu3F3ab0ClPhoe37o6TOmB6DiBJXN8kcntvnM6pq4
 gjSzS2FNGW7nUp5PX+fYaI5JzK7lhr7T8H89irVfl5xKre2OHu9snUmHscPcB8oaRGST
 UiXkA8lKGhXNOuprkmPEtZIzhKhsohMtE5PnGSV2mAwj8RYU58yVfGXg269G2yVol4UM
 YzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uCi++m+hmflAtTf0wEp9JT3iL7NhPW7odYvIK611ma4=;
 b=YKg0ZB0ZkZt9cRRZhjq0LV6zNC/tN3wnJ9Uhy4yZsD/8RoReIoV0CZoq+Yzr2jrgUQ
 WuwsX1qU118fr2WNGaN3XqoQ0GIGv7qJs4XiG/hi/ilqgtKO9mdUanU7hKaZ/mRsx301
 htrMlmv1sMhu7Ein7vz9p0rpqns7xf4Eix+6Ta8WW3NRyss3Cqh0YM05ukfWPSe97UB9
 I8+fo4BnDYQQfOh4gfN+CTq13Sn9zb+qr8+pz5DYJO2WhoCyvexbuaQesnRVPo/5uaAU
 9OFTiizuPhKLBdntTYttSICisPzAgXVmFMAhjda7o+s3ahqht0/qek7YrKJAxGbpGr7T
 PUDw==
X-Gm-Message-State: APjAAAUza9TT7IDLRVkwW6b+2FjV5sGzj+emkJJSBOuIZmXKfP5QgJUO
 dCBmLz1+R7jAWC3QA3LyFgm0YYiqkBg=
X-Google-Smtp-Source: APXvYqxMdxGiwDUmRg23C6IamUTuPcgy9FIEmdOIgUAB7rWrlG9hpuSisSfXusd7mNEl3e66L2oRLQ==
X-Received: by 2002:adf:ec0d:: with SMTP id x13mr17035465wrn.268.1557139421124; 
 Mon, 06 May 2019 03:43:41 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id t18sm18987347wrg.19.2019.05.06.03.43.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 03:43:40 -0700 (PDT)
Subject: Re: [PATCH 1/8] arm64: dts: mt8183: add thermal zone node
To: Matthias Kaehlcke <mka@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-isJf6f+OubbCdoXs8L2cup=rm3Z8Mr7Q26QshMP-0wxA@mail.gmail.com>
 <20190503164651.GB40515@google.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c6cf6170-331d-8ffc-d272-e5d8ee648eda@linaro.org>
Date: Mon, 6 May 2019 12:43:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503164651.GB40515@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_034343_289346_E43975F9 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 "michael.kao" <michael.kao@mediatek.com>,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gMDMvMDUvMjAxOSAxODo0NiwgTWF0dGhpYXMgS2FlaGxja2Ugd3JvdGU6Cj4gSGksCj4gCj4g
T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDQ6MDM6NThQTSArMDgwMCwgSHNpbi1ZaSBXYW5nIHdy
b3RlOgo+PiBPbiBUaHUsIE1heSAyLCAyMDE5IGF0IDEwOjQzIEFNIG1pY2hhZWwua2FvIDxtaWNo
YWVsLmthb0BtZWRpYXRlay5jb20+IHdyb3RlOgo+Pj4KPj4+IEFkZCB0aGVybWFsIHpvbmUgbm9k
ZSB0byBNZWRpYXRlayBNVDgxODMgZHRzIGZpbGUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWlj
aGFlbCBLYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNvbT4KPj4+IC0tLQo+Pj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kgfCA2NCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCj4+PiBpbmRleCA5MjZk
Zjc1Li5iOTIxMTZmIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDgxODMuZHRzaQo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgx
ODMuZHRzaQo+Pj4gQEAgLTMzNCw2ICszMzQsNjcgQEAKPj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+PiAgICAgICAgICAgICAgICAgfTsKPj4+Cj4+PiAr
ICAgICAgICAgICAgICAgdGhlcm1hbDogdGhlcm1hbEAxMTAwYjAwMCB7Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAjdGhlcm1hbC1zZW5zb3ItY2VsbHMgPSA8MT47Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My10aGVybWFsIjsKPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4MTEwMGIwMDAgMCAweDEwMDA+Owo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwwIDc2IElSUV9UWVBFX0xF
VkVMX0xPVz47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmluZnJhY2Zn
IENMS19JTkZSQV9USEVSTT4sCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmluZnJhY2ZnIENMS19JTkZSQV9BVVhBREM+Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAidGhlcm0iLCAiYXV4YWRjIjsKPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHJlc2V0cyA9IDwmaW5mcmFjZmcgIE1UODE4M19JTkZSQUNGR19BT19USEVSTV9TV19SU1Q+
Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgbWVkaWF0ZWssYXV4YWRjID0gPCZhdXhhZGM+
Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgbWVkaWF0ZWssYXBtaXhlZHN5cyA9IDwmYXBt
aXhlZHN5cz47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICBtZWRpYXRlayxody1yZXNldC10
ZW1wID0gPDExNzAwMD47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICBudm1lbS1jZWxscyA9
IDwmdGhlcm1hbF9jYWxpYnJhdGlvbj47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICBudm1l
bS1jZWxsLW5hbWVzID0gImNhbGlicmF0aW9uLWRhdGEiOwo+Pj4gKyAgICAgICAgICAgICAgIH07
Cj4+PiArCj4+PiArICAgICAgICAgICAgICAgdGhlcm1hbC16b25lcyB7Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICBjcHVfdGhlcm1hbDogY3B1X3RoZXJtYWwgewo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwMD47Cj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MTAwMD47Cj4+
PiArCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29ycyA9
IDwmdGhlcm1hbCAwPjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3VzdGFp
bmFibGUtcG93ZXIgPSA8MTUwMD47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+Pj4g
Kwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgdHp0czE6IHR6dHMxIHsKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDEwMDA+Owo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5ID0gPDEwMDA+
Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLXNlbnNvcnMgPSA8
JnRoZXJtYWwgMT47Cj4+IElzIHN1c3RhaW5hYmxlLXBvd2VyIHJlcXVpcmVkIGZvciB0enRzPyBU
aG91Z2ggaXQncyBhbiBvcHRpb25hbAo+PiBwcm9wZXJ0eSwga2VybmVsIHdvdWxkIGhhdmUgd2Fy
bmluZzoKPj4gWyAgICAwLjYzMTU1Nl0gdGhlcm1hbCB0aGVybWFsX3pvbmUxOiBwb3dlcl9hbGxv
Y2F0b3I6Cj4+IHN1c3RhaW5hYmxlX3Bvd2VyIHdpbGwgYmUgZXN0aW1hdGVkCj4+IFsgICAgMC42
Mzk1ODZdIHRoZXJtYWwgdGhlcm1hbF96b25lMjogcG93ZXJfYWxsb2NhdG9yOgo+PiBzdXN0YWlu
YWJsZV9wb3dlciB3aWxsIGJlIGVzdGltYXRlZAo+PiBbICAgIDAuNjQ3NjExXSB0aGVybWFsIHRo
ZXJtYWxfem9uZTM6IHBvd2VyX2FsbG9jYXRvcjoKPj4gc3VzdGFpbmFibGVfcG93ZXIgd2lsbCBi
ZSBlc3RpbWF0ZWQKPj4gWyAgICAwLjY1NTYzNV0gdGhlcm1hbCB0aGVybWFsX3pvbmU0OiBwb3dl
cl9hbGxvY2F0b3I6Cj4+IHN1c3RhaW5hYmxlX3Bvd2VyIHdpbGwgYmUgZXN0aW1hdGVkCj4+IFsg
ICAgMC42NjM2NThdIHRoZXJtYWwgdGhlcm1hbF96b25lNTogcG93ZXJfYWxsb2NhdG9yOgo+PiBz
dXN0YWluYWJsZV9wb3dlciB3aWxsIGJlIGVzdGltYXRlZAo+PiBpZiBubyBzdXN0YWluYWJsZS1w
b3dlciBhc3NpZ25lZC4KPiAKPiBUaGUgcHJvcGVydHkgaXMgaW5kZWVkIG9wdGlvbmFsLCBpZiBp
dCBpc24ndCBzcGVjaWZpZWQgSVBBIHdpbGwgdXNlCj4gdGhlIHN1bSBvZiB0aGUgbWluaW11bSBw
b3dlciBvZiBhbGwgJ3Bvd2VyIGFjdG9ycycgb2YgdGhlIHpvbmUgYXMKPiBlc3RpbWF0ZSAoc2Vl
IGVzdGltYXRlX3N1c3RhaW5hYmxlX3Bvd2VyKCkpLiBUaGlzIG1heSBsZWFkIHRvIG92ZXJseQo+
IGFncmVzc2l2ZSB0aHJvdHRsaW5nLCBzaW5jZSB0aGUgbm9taW5hbCBzdXN0YWluYWJsZSBwb3dl
ciB3aWxsIGFsd2F5cwo+IGJlIDw9IHRoZSByZXF1ZXN0ZWQgcG93ZXIuCj4gCj4gSW4gbXkgdW5k
ZXJzdGFuZGluZyB0aGUgc3VzdGFpbmFibGUgcG93ZXIgbWF5IHZhcmllcyBiZXR3ZWVuIGRldmlj
ZXMsCj4gZXZlbiBmb3IgdGhlIHNhbWUgU29DLiBPbmUgY291bGQgaGF2ZSBhbGwgdGhlIGhhcmR3
YXJlIGNyYW1tZWQgaW50byBhCj4gdGlueSBwbGFzdGljIGVuY2xvc3VyZSAoZS5nLiBBU1VTIENo
cm9tZWJpdCksIGFub3RoZXIgbWlnaHQgaGF2ZSBhCj4gbGFwdG9wIGZvcm0gZmFjdG9yIGFuZCBh
IG1ldGFsIGVuY2xvc3VyZSAoZS5nLiBBU1VTIEMyMDEpLiBCb3RoCj4gZXhhbXBsZXMgYXJlIGJh
c2VkIG9uIGFuIFJvY2tjaGlwIHJrMzI4OCwgYnV0IHRoZXkgaGF2ZSBjb21wbGV0ZWx5Cj4gZGlm
ZmVyZW50IHRoZXJtYWwgYmVoYXZpb3IsIGFuZCB3b3VsZCBsaWtlbHkgaGF2ZSBkaWZmZXJlbnQg
dmFsdWVzIGZvcgo+ICdzdXN0YWluYWJsZS1wb3dlcicuCj4gCj4gSW4gdGhpcyBzZW5zZSBJIHRl
bmQgdG8gY29uc2lkZXIgJ3N1c3RhaW5hYmxlLXBvd2VyJyBtb3JlIGEgZGV2aWNlLAo+IHRoYW4g
YSBTb0MgcHJvcGVydHkuIFlvdSBjb3VsZCBzcGVjaWZ5IGEgJ3JlYXNvbmFibGUnIHZhbHVlIGFz
IGEKPiBzdGFydGluZyBwb2ludCwgYnV0IGl0IHdpbGwgbGlrZWx5IG5vdCBiZSBvcHRpbWFsIGZv
ciBhbGwgb3IgZXZlbiBtb3N0Cj4gZGV2aWNlcy4gVGhlIHdhcm5pbmcgbWlnaHQgZXZlbiBiZSB1
c2VmdWwgZm9yIGRldmljZSBtYWtlcnMgYnkKPiBpbmRpY2F0aW5nIHRoZW0gdGhhdCB0aGVyZSBp
cyByb29tIGZvciB0d2Vha2luZy4KCgpUaGUgc3VzdGFpbmFibGUgcG93ZXIgaXMgdGhlIHBvd2Vy
IGRpc3NpcGF0ZWQgYnkgdGhlIGRldmljZXMgYmVsb25naW5nCnRvIHRoZSB0aGVybWFsIHpvbmUg
YXQgdGhlIGdpdmVuIHRyaXAgdGVtcGVyYXR1cmUuCgpXaXRoIHRoZSBwb3dlciBudW1iZXJzIGFu
ZCB0aGUgY29vbGluZyBkZXZpY2VzLCB0aGUgSVBBIHdpbGwgY2hhbmdlIHRoZQpzdGF0ZXMgb2Yg
dGhlIGNvb2xpbmcgZGV2aWNlcyB0byBsZXZlcmFnZSB0aGUgZGlzc2lwYXRlZCBwb3dlciB0byB0
aGUKc3VzdGFpbmFibGUgcG93ZXIuCgpUaGUgY29udHJpYnV0aW9uIGlzIHRoZSBjb29saW5nIGVm
ZmVjdCBvZiB0aGUgY29vbGluZyBkZXZpY2UuCgpIb3dldmVyLCB0aGUgSVBBIGlzIGxpbWl0ZWQg
dG8gb25lIHRoZXJtYWwgem9uZSBhbmQgdGhlIGNvb2xpbmcgZGV2aWNlCmlzIHRoZSBjcHUgY29v
bGluZyBkZXZpY2UuIFRoZXJlIGlzIHRoZSBkZXZmcmVxIGNvb2xpbmcgZGV2aWNlIGJ1dCBhcwp0
aGUgZ3JhcGhpYyBkcml2ZXIgaXMgbm90IHVwc3RyZWFtLCBpdCBpcyBmb3VuZCBpbiB0aGUgYW5k
cm9pZCB0cmVlIG9ubHkKZm9yIHRoZSBtb21lbnQuCgpBcyB5b3UgbWVudGlvbmVkIHRoZSBzdXN0
YWluYWJsZSBwb3dlciBjYW4gdmFyeSBkZXBlbmRpbmcgb24gdGhlIGZvcm0KZmFjdG9yIGFuZCB0
aGUgcHJvZHVjdGlvbiBwcm9jZXNzIGZvciB0aGUgc2FtZSBTb0MgKHRoZXkgY2FuIGdvIHRvCmhp
Z2hlciBmcmVxdWVuY2llcyB0aHVzIGRpc3NpcGF0ZSBtb3JlIHBvd2VyKS4gVGhhdCBpcyB0aGUg
cmVhc29uIHdoeSB3ZQpzcGxpdCB0aGUgRFQgcGVyIFNvQyBhbmQgd2Ugb3ZlcnJpZGUgdGhlIHZh
bHVlcyBvbiBhIHBlciBTb0MgdmVyc2lvbiBiYXNpcy4KCllvdSBjYW4gaGF2ZSBhIGxvb2sgdGhl
IHJrMzM5OS5kdHNpIGFuZCB0aGVpciB2YXJpYW50IGZvciBleHBlcmltZW50YWwKYm9hcmQgKCot
cm9jazk2MC5kdHMpIGFuZCB0aGUgY2hyb21lYm9vayB2ZXJzaW9uICgqLWdydS1rZXZpbi5kdHMp
LgoKRG8geW91IHdhbnQgYSBlbXBpcmljIHByb2NlZHVyZSB0byBmaW5kIG91dCB0aGUgc3VzdGFp
bmFibGUgcG93ZXIgPwoKCgoKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJv
OiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0
cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFy
by5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlh
dGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
