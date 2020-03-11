Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E261819DC
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Mar 2020 14:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiM/v1V2MSLHVSUMtwmqUiYvLj/nBhGYLpRSYCG1NOM=; b=Pu9yuKaIu/mJxK
	zOa8vHHM0vvDuyod5zarXSQnbB2rPOr46nYmACJsUmyNm7X3Comq6j3wV0zE/YcBr75cqdoYHAlQc
	PvdrtYbhdOw7BwU+Gc/SlBqVcpbeNcz8MUPlAtBBzSDLFh4Ky6pmzAri31eCTl+eQpNEmS7h9XR7e
	rIjA0aR/OuBuavAn25dYgtrg4B+QR7YjmK/SAhKd3CKM9j11mpdFxb9MgZWfCOyduE6uv1BDd822q
	InKnDCXNrrXj4WxToOugTDJsjOI3gBAfUd0/VqEXyVDFyaRkXsSMFps5Rwc0qV2qXl6jJ8tLz4cba
	NnnOvLZvU13lotOIikcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1Tb-0006N5-Sb; Wed, 11 Mar 2020 13:32:47 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1TX-0006MF-VZ
 for linux-mediatek@lists.infradead.org; Wed, 11 Mar 2020 13:32:45 +0000
Received: by mail-ot1-x343.google.com with SMTP id a6so1900257otb.10
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Mar 2020 06:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WXC1eWa5pSBG2kIwwU8A6k/UEnvKcy01RlKUph7V4qM=;
 b=td+5kHMW+m3MVBsqw6o60BiEUQM11VPK4Kmh6+o9kx56easM8WTmyDdwACmJXVwUZd
 Y3mNeZAelp/0KETvaK/iXwk30HHYKuPHn56/5S0C1t+KAWiG5LzJ830W9dNGjaj7mGUf
 HkipB2yqLYOpQeTzXhe5YhQGnAbqxhfj0yZt7cNhEOn2seEwaOeXCsv4XbCoDco+ar6q
 /butQOQmyQRPfew3tJNTsKkKyHRkcX/RnO6Ls5CbaG5eg8waBDvfY7h0Cg7K9LerZZaL
 14LK6pY9ol2BbcmwqqW7Y7WaqNbtYiOu9niM5b2ZqqKcL7w+8DZ9jxo4dIHvZ2lbExwB
 kp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WXC1eWa5pSBG2kIwwU8A6k/UEnvKcy01RlKUph7V4qM=;
 b=T+q3IpPfvcnCChyMDKYfC5nM/8eANXXpuWqUz7oIJgHh76HdJCumlr41opR9/+k1mF
 JJrC4OLGLkcRTMUP6MCXuQSQDZBGrHgMcxbNDfqFnDe1KOD1xG8lLd3OLYfdYu+HSGt6
 eLS42/L+bHCPlN52yHy3uhrYVsZiGULdHl5EiWVu+8ehXXk+Tq27itL4JgO7OYtOab21
 fADuTHna54kDOcQXIMxUbQ+qngEnhhZcYQ3D3JNj9MMOLORKJcbQaCM8/ZN3gIzc2P0E
 rQJKsVY6EdYrGoPd8MDxjtZHpsH2ryX4Lhboq5+MPy7ur/InoxxHdHzpjZnrweRHQVZU
 YScg==
X-Gm-Message-State: ANhLgQ1tSEgp2TzmKWWnUPXmOLnMPPvrrnF86gB+Ym7z/+rMxQ9Oy7Sz
 kcEJfCCxpl54mFj/QDnWSNgy9Gjo7N+NVDDHspi7Jg==
X-Google-Smtp-Source: ADFU+vuCkXbpyI/txzrlxd2TEETHHaxmMQrvc+sXtCR9ejrce9Y8dHGpDSGyvjIcCus/wkaa6oNRCw01tVw1hY82qlo=
X-Received: by 2002:a9d:19e9:: with SMTP id k96mr2402209otk.68.1583933561847; 
 Wed, 11 Mar 2020 06:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <20200310142652.GK1922688@smile.fi.intel.com>
 <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
 <20200311114848.GJ2619@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200311114848.GJ2619@valkosipuli.retiisi.org.uk>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 11 Mar 2020 14:32:30 +0100
Message-ID: <CAG3jFyv8X=k=1EGMCHnSNqDaRBZ68pht42yDzc5hJPui0wdAjQ@mail.gmail.com>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_063244_051723_48550D17 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGV5IFNha2FyaSwKCk9uIFdlZCwgMTEgTWFyIDIwMjAgYXQgMTI6NDksIFNha2FyaSBBaWx1cyA8
c2FrYXJpLmFpbHVzQGlraS5maT4gd3JvdGU6Cj4KPiBIaSBSb2JlcnQsCj4KPiBPbiBUdWUsIE1h
ciAxMCwgMjAyMCBhdCAwNDo1NToyMFBNICswMTAwLCBSb2JlcnQgRm9zcyB3cm90ZToKPiA+IEhp
IEFuZHksCj4gPgo+ID4gT24gVHVlLCAxMCBNYXIgMjAyMCBhdCAxNToyNiwgQW5keSBTaGV2Y2hl
bmtvCj4gPiA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiB3cm90ZToKPiA+ID4K
PiA+ID4gT24gVHVlLCBNYXIgMTAsIDIwMjAgYXQgMDI6NDY6MDJQTSArMDEwMCwgUm9iZXJ0IEZv
c3Mgd3JvdGU6Cj4gPiA+ID4gQWRkIGRldmljZXRyZWUgbWF0Y2ggdGFibGUsIGFuZCBlbmFibGUg
b3Y4ODU2X3Byb2JlKCkKPiA+ID4gPiB0byBpbml0aWFsaXplIHBvd2VyLCBjbG9ja3MgYW5kIHJl
c2V0IHBpbnMuCj4gPiA+Cj4gPiA+IC4uLgo+ID4gPgo+ID4gPiA+ICsjZGVmaW5lIE9WODg1Nl9O
VU1fU1VQUExJRVMgQVJSQVlfU0laRShvdjg4NTZfc3VwcGx5X25hbWVzKQo+ID4gPgo+ID4gPiBV
c2UgQVJSQVlfU0laRSgpIGRpcmVjdGx5Lgo+ID4KPiA+IEFjay4KPiA+Cj4gPiA+Cj4gPiA+IEhh
dmUgeW91IHNlZW4gU2FrYXJpJ3MgY29tbWVudHM/Cj4gPiA+IFNha2FyaSwgZG8gSSBoYXZlIGTD
qWrEhSB2dSBvciB5b3UgaW5kZWVkIGNvbW1lbnRlZCB0aGlzIGRyaXZlcj8KPiA+Cj4gPiBZZXMs
IEkgbWF5IGhhdmUgbWlzc2VkIHNvbWUgcGFydCBvZiBpdCwgc28gcGxlYXNlIHRlbGwgbWUgaWYg
SSBoYXZlLgo+ID4KPiA+IFRoZXJlIGlzIGEgcGF0Y2hzZXQgZmxvYXRpbmcgYXJvdW5kIHRoYXQg
aW1wbGVtZW50cyBhIGxhcmdlciBjaHVuayBvZgo+ID4gZnVuY3Rpb25hbGl0eSwKPiA+IGluY2x1
ZGluZyBhIGNvdXBsZSBvZiBuZXcgbW9kZXMuIFRoaXMgaXMgYmFzZWQgb24gdGhhdCBzZXJpZXMu
Cj4KPiBQbGVhc2Ugc2VlIGVhcmxpZXIgY29tbWVudHMgZ2l2ZW4gYWdhaW5zdCBhbiBlYXJsaWVy
IHZhcmlhbnQgb2YgdGhpcyBzZXQuCj4gVGhleSdyZSBvbiBMTU1MLgo+Cj4gPgo+ID4gPgo+ID4g
PiAuLi4KPiA+ID4KPiA+ID4gPiArICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAob3Y4ODU2
LT5uX3NodXRkbl9ncGlvLCBHUElPRF9PVVRfTE9XKTsKPiA+ID4KPiA+ID4gPiArICAgICBncGlv
ZF9zZXRfdmFsdWVfY2Fuc2xlZXAob3Y4ODU2LT5uX3NodXRkbl9ncGlvLCBHUElPRF9PVVRfSElH
SCk7Cj4gPiA+Cj4gPiA+IFllcywgc2VlbXMgdGhpcyBvbmUgaXMgaW52ZXJ0ZWQuCj4gPiA+Cj4g
PiA+IC4uLgo+ID4gPgo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2Nh
bnNsZWVwKG92ODg1Ni0+bl9zaHV0ZG5fZ3BpbywgR1BJT0RfT1VUX0xPVyk7Cj4gPiA+ID4gKyAg
ICAgcmVndWxhdG9yX2J1bGtfZGlzYWJsZShPVjg4NTZfTlVNX1NVUFBMSUVTLCBvdjg4NTYtPnN1
cHBsaWVzKTsKPiA+ID4gPiArICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUob3Y4ODU2LT54dmNs
ayk7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+ID4gKwo+ID4gPgo+ID4gPiBPbmUgYmxhbmsg
bGluZSBpcyBlbm91Z2guCj4gPiA+Cj4gPiA+IC4uLgo+ID4gPgo+ID4gPiA+ICsgICAgIG92ODg1
Ni0+eHZjbGsgPSBkZXZtX2Nsa19nZXQoJmNsaWVudC0+ZGV2LCAieHZjbGsiKTsKPiA+ID4gPiAr
ICAgICBpZiAoSVNfRVJSKG92ODg1Ni0+eHZjbGspKSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICBk
ZXZfZXJyKCZjbGllbnQtPmRldiwgImZhaWxlZCB0byBnZXQgeHZjbGtcbiIpOwo+ID4gPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gKyAgICAgfQo+ID4gPgo+ID4gPiBQ
cmV2aW91c2x5IGl0IHdvcmtlZCB3aXRob3V0IGNsb2NrIHByb3ZpZGVyLCBub3cgeW91IG1ha2Ug
YSBkZXBlbmRlbmN5Lgo+ID4gPgo+ID4gPiBUaGlzIHdvbid0IHdvcmsuCj4gPgo+ID4gU28gdGhl
IGlkZWFsIGJlaGF2aW9yIHdvdWxkIGJlIHRvIG9ubHkgdXNlIHRoZSB4Y2xrIGlmIGl0IGlzIHBy
b3ZpZGVkPwo+Cj4gU2VlIGUuZy4gdGhlIHNtaWFwcCBkcml2ZXIgb24gaG93IHRvIGRvIHRoaXMg
c28gaXQgY29udGludWVzIHRvIHdvcmsgb24KPiBBQ1BJLgoKVGhhbmtzIGZvciB0aGUgcG9pbnRl
ciEKCj4KPiBJIHRoaW5rIGl0J2QgYmUgYWxzbyBhcHByb3ByaWF0ZSB0byBhZGQgdGhlIHVzbGVl
cCgpIGFmdGVyIGxpZnRpbmcgcmVzZXQKPiBvbmx5IGlmIHRoZSByZXNldCBHUElPIGlzIGRlZmlu
ZWQgZm9yIHRoZSBkZXZpY2UuCgpBY2sKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRl
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
