Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77C8B73EE
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 09:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QJAeJ13EWP8A+w8zCAjgAJEdhnn7iNOC6RD+S7i3kw=; b=W2sK/qm4f1V4wY
	j0USC40f/cJ1YJCrUu1ox3fcQYqMc/nD+4kYVmcaSOm39WsQXm8pvmlHEQ8WTETMGL/l/DgPeptOl
	ho0l2oSyBzu8dQRdHJaxnSJz1r2IhBje53bjidNdkWj3rRmZ+SgMHOVixgwb21QrIiOef2VweDdcY
	DKwIQ2kEKipvvmSWKwLCY87wRoj6t0GADD9op+8z1suXlC4nRbeJcuFPkIFgF9Un2c/jSbdTANuWx
	wrgGA2S7IepOlLO/spTj0JQDlEmfcU0vBiF2opWxp825+qkguTf7S5nW48EEujABd/xJh0sqDoNC0
	hYQpu4FZoFe3I+gFyBWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqix-0004sq-Vu; Thu, 19 Sep 2019 07:19:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqiD-0004Q1-30
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 07:18:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id i16so3009822wmd.3
 for <linux-mediatek@lists.infradead.org>; Thu, 19 Sep 2019 00:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=QxxMjRHDm4APH+b9Qt4ViRoWngYsX/vt7D8wYhdjHVk=;
 b=zqvWBYuBH8eox6D7Km0km27clVLH3Llm4JnMONtyosn7vywtzkHr53r9E1LxbiZ0o/
 UIQQWmQALHPUfReMCSbkzW6HCUitoUzYG/iGa2jKjPuxUuiX7mXJeQsLvT8LJdOFecsb
 zlm9Ys4MJDbLejfsBoN1KZuke10QbOf+a+4eSpD4iY7ddAKrlWMR+47t/RFlmmCt+Lax
 Z184WRfa2xdLHbsq6JWlhUPVz5CXHq48D5osmpxF9BeEvNHoHfcyNyR7Hss2uuxIql9H
 RnuDrjTJvby3fPqca1n5d4xsBlGyVVIlPEIbIicvbZ/HbFccdJLN1ZlWvJdi7roxUf7H
 CPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QxxMjRHDm4APH+b9Qt4ViRoWngYsX/vt7D8wYhdjHVk=;
 b=e32ErvxMccD1RgL2aYg8UQR9rjjN5lL3pEeYYgOw35Pe0CxYovNQxJutjQNdYosOW8
 0vsCfITzVHqn30GdLwsQ4C6v2cU0r3Tj/O+rIymcLRupnVdXPbWkEQCV/CG1E2ywBTXa
 EqwwAn4YYn9mWzmmAm10lMUr0LZ0q36KZlRGxgz+NJRV9nGEHll9i252sUbssNpc/Vj8
 EU1QeA569gy9xpwNURVoj0Kos1gC6/XyP7nTj63wc/skOb3If97Wog9sIA4rEL/DzHuV
 dXsW3xSHjmkW4ptCTK2mvv4HYA3vVjQ9lVb1rbc0XbM5idnrDdVKbqG4YpnABLuYEeU+
 jcGA==
X-Gm-Message-State: APjAAAVx2kBXTk/E9kYhhgFgfixWV3ZjXTcZwfyZtmWhcSmiH3FbNyN9
 NtUt9RMNstGBbsjhr3XBlg7EoQ==
X-Google-Smtp-Source: APXvYqzxUtDkzlPONyaEJEn/HK8YbIui9AV6lxGKSRcCGcU6JS44vJWS1cokRMHnD98RW1d/P9gblQ==
X-Received: by 2002:a1c:1981:: with SMTP id 123mr1438947wmz.88.1568877522052; 
 Thu, 19 Sep 2019 00:18:42 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id t1sm988908wrn.57.2019.09.19.00.18.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Sep 2019 00:18:41 -0700 (PDT)
Date: Thu, 19 Sep 2019 08:18:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20190919071828.GC5016@dell>
References: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
 <20190918105121.GB5016@dell>
 <CAE+NS37XG+kfbj6yJrL5A-d2O_aiRU90yV5TUk3Kfa0Rv7dWmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE+NS37XG+kfbj6yJrL5A-d2O_aiRU90yV5TUk3Kfa0Rv7dWmw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_001845_794107_2025A602 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCAxOSBTZXAgMjAxOSwgR2VuZSBDaGVuIHdyb3RlOgoKPiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPiDmlrwgMjAxOeW5tDnmnIgxOOaXpSDpgLHkuIkg5LiL5Y2INjo1MeWv
q+mBk++8mgo+ID4KPiA+IE9uIFdlZCwgMTggU2VwIDIwMTksIEdlbmUgQ2hlbiB3cm90ZToKPiA+
Cj4gPiA+IEZyb206IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJpY2h0ZWsuY29tPgo+ID4gPgo+ID4g
PiBBZGQgbWZkIGRyaXZlciBmb3IgbXQ2MzYwIHBtaWMgY2hpcCBpbmNsdWRlCj4gPiA+IEJhdHRl
cnkgQ2hhcmdlci9VU0JfUEQvRmxhc2ggTEVEL1JHQiBMRUQvTERPL0J1Y2sKPiA+ID4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogR2VuZSBDaGVuIDxnZW5lX2NoZW5AcmljaHRlay5jb20KPiA+ID4gLS0t
Cj4gPgo+ID4gVGhpcyBsb29rcyBkaWZmZXJlbnQgZnJvbSB0aGUgb25lIHlvdSBzZW50IGJlZm9y
ZSwgYnV0IEkgZG9uJ3Qgc2VlIGEKPiA+IHZlcnNpb24gYnVtcCBvciBhbnkgY2hhbmdlbG9nIGlu
IHRoaXMgc3BhY2UuICBQbGVhc2UgcmUtc3VibWl0IHdpdGgKPiA+IHRoZSBkaWZmZXJlbmNlcyBu
b3RlZC4KPiA+Cj4gCj4gdGhlIGNoYW5nZSBpcwo+IDEuIGFkZCBtaXNzaW5nIGluY2x1ZGUgZmls
ZQo+IDIuIG1vZGlmeSBjb21taXQgbWVzc2FnZQo+IAo+IHRoaXMgcGF0Y2ggaXMgcmVnYXJkZWQg
YXMgdmVyc2lvbiAxCgpJdCdzIGRpZmZlcmVudCB0byB0aGUgZmlyc3Qgb25lIHlvdSBzZW50IHRv
IHRoZSBsaXN0LCBzbyBpdCBuZWVkcyBhCnZlcnNpb24gYnVtcCBhbmQgYSBjaGFuZ2UgbG9nLiAg
VGhlcmUgYWxzbyBhcHBlYXJzIHRvIHN0aWxsIGJlIGlzc3Vlcwp3aXRoIGl0LCBpZiB0aGUgYXV0
by1idWlsZGVycyBhcmUgdG8gYmUgYmVsaWV2ZWQuCgpEbyBlbnN1cmUgeW91IHRob3JvdWdobHkg
dGVzdCB5b3VyIHBhdGNoZXMgYmVmb3JlIHNlbmRpbmcgdXBzdHJlYW0uCgpQbGVhc2UgZml4IHRo
ZSBpc3N1ZXMgYW5kIHJlc3VibWl0IHlvdXIgdjMgd2l0aCBhIG5pY2UgY2hhbmdlbG9nLgoKPiA+
ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTIgKwo+ID4gPiAgZHJp
dmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArCj4gPiA+ICBkcml2ZXJzL21m
ZC9tdDYzNjAtY29yZS5jICAgICAgICAgIHwgNDYzICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ID4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC1wcml2YXRlLmggfCAy
NzkgKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYw
LmggICAgICAgICB8ICAzMyArKysKPiA+ID4gIDUgZmlsZXMgY2hhbmdlZCwgNzg4IGluc2VydGlv
bnMoKykKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9tdDYzNjAtY29yZS5j
Cj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLXByaXZh
dGUuaAo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5o
Cj4gPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2Fs
IExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
