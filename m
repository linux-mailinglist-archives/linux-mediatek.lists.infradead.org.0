Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA3B13A268
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 08:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8+/GkDaS6ql4gIWQTrnpSbWUWppIgBdDNux8SBEs14=; b=uVZv5kjSYRMRkK
	dHSX7yOtSP0TBHi6/0WbW1ov6fyRgl5NFsAJcSR/TlR4C7FlipfHhuELgXKdbwWthJqIzyrDA1uTy
	8p53KVkqCRdUva0XEoagZ55mFBMi0IWAGtkf7l17opPXtseIqg9+bZoXEw2UwsTm0CGHTp3KoD+0E
	Nz1bkMu11UswDHM+Ws1n3Wrlo/Vq9rgTlVkOGfh381uoJeMXIyVzXKgp643ba9Grqxl2xr3SFR9yf
	qTerMa7scJTaYqUQNfpGdVCq332v+ydx9kvx8lXOMA1N8E69LBf1fP1aI6y2rgt1Z5nKBpsQgFk/K
	lAgy7UIKG/ZEQNVMHTFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irH66-0007Yb-2t; Tue, 14 Jan 2020 07:58:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irH5x-0007R7-3p
 for linux-mediatek@lists.infradead.org; Tue, 14 Jan 2020 07:58:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so12617261wmc.2
 for <linux-mediatek@lists.infradead.org>; Mon, 13 Jan 2020 23:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=2tqeA9SVRpbYOWNEv52NfjSgUYnaSyLjZ8VbKBWvkB8=;
 b=nj+SbZ34MQo3ObpLHJ81f1fsqNyqoIbFh9D59Ut6hwJJqqviusHEBofnbn9WEMHTkH
 BowT+qANUEoaF7Ya4KZP1bSuMDzr3BrfBc4qXVeGmkv+W2YkD64gZdlGT1o3hIs69C+R
 Frm7G0TnEgQN+CcgJpGTHzupvS2axENPUO9tDbkad1jsACJb/T7vVOMZjXrau9B0y1xP
 Nivrll2vslPIaal6ObHQgNrwwh1/ns4IANfiXYseBn8G6sPo2cLt3Q1oVOcocUcMuoWB
 jAj8yw5pFR5ln7Zr+jVforKxx/vd60vD57WvedRNYlKMdSDCMYBSbGYeBhIY1f5KuAo0
 4RCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2tqeA9SVRpbYOWNEv52NfjSgUYnaSyLjZ8VbKBWvkB8=;
 b=jCxOljyR3jL45dqkj/hufdbMH81dQmy2iSXS4EVmxiXxSSDsFLt33J7aPtBTARZd5n
 06b4WOa7RvxlAnSjYRi2OSyoHUIoaq1+sGOPXs6WNkVs0lPUp/EILHcjQOYTdP1qeFlj
 6MTZ0ZptwrMi4xvmeTzYKWH0GMbLLDVEy4ASqsDsOb5Mxb+DGqTcL368yC3vTIW8LHr3
 9srCxGteP1Ssu1OzP/5g5P6umcZ+oBdbSPqKy8WKnj5Xvk+yQCmOBEAWflM5y0CGp0x2
 udcUvJQPWmLBpuFb/gjgSE3KryrUUuN7v5NTqPnLXPhWIUqeUGcrh9opEVZtLENPrWqR
 JZmg==
X-Gm-Message-State: APjAAAV5htflc7vp3EmLy3QzJ1nflYN2o4UHAjsRu65sGK5oLPnD39wG
 6UHuQr9hjTvT86FWjsehoQQlGQ==
X-Google-Smtp-Source: APXvYqxpPA4KEPMdkCalFXAmGAvGmPtnz+o0nFOyZiKWNQHG3sc/7GlSmvHxayF93Mper9G7Nk467g==
X-Received: by 2002:a7b:c85a:: with SMTP id c26mr25125804wml.107.1578988714621; 
 Mon, 13 Jan 2020 23:58:34 -0800 (PST)
Received: from dell ([95.147.198.95])
 by smtp.gmail.com with ESMTPSA id k16sm18893042wru.0.2020.01.13.23.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 23:58:34 -0800 (PST)
Date: Tue, 14 Jan 2020 07:58:55 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [PATCH 3/4] regulator: mt6359: Add support for MT6359 regulator
Message-ID: <20200114075855.GA325@dell>
References: <1571218786-15073-1-git-send-email-Wen.Su@mediatek.com>
 <1571218786-15073-4-git-send-email-Wen.Su@mediatek.com>
 <1578969594.4495.3.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578969594.4495.3.camel@mtkswgap22>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_235837_157018_0D94FAF4 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVHVlLCAxNCBKYW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBEZWFyIHJldmlld2VycywgCj4g
Cj4gCUdlbnRsZSBwaW5nIGZvciB0aGlzIHBhdGNoIHNldC4KCk5vdCBhIGdvb2QgaWRlYS4KCklm
IHlvdSB0aGluayBhIHBhdGNoIGhhcyBzbGlwcGVkIHRocm91Z2ggdGhlIG5ldCwgcGxlYXNlIGFw
cGx5IGFsbAp5b3VyIHJlY2VpdmVkICotYnkgdGFncyBhbmQgcmVzdWJtaXQgdGhlIHNldCwgY2hh
bmdpbmcgIlBBVENIIiB0bwoiUkVTRU5EIiBpbiB0aGUgc3ViamVjdCBsaW5lLgoKPiBPbiBXZWQs
IDIwMTktMTAtMTYgYXQgMTc6MzkgKzA4MDAsIFdlbiBTdSB3cm90ZToKPiA+IEZyb206ICJ3ZW4u
c3UiIDx3ZW4uc3VAbWVkaWF0ZWsuY29tPgo+ID4gCj4gPiBUaGUgTVQ2MzU5IGlzIGEgcmVndWxh
dG9yIGZvdW5kIG9uIGJvYXJkcyBiYXNlZCBvbiBNZWRpYVRlayBNVDY3NzkgYW5kCj4gPiBwcm9i
YWJseSBvdGhlciBTb0NzLiBJdCBpcyBhIHNvIGNhbGxlZCBwbWljIGFuZCBjb25uZWN0cyBhcyBh
IHNsYXZlIHRvCj4gPiBTb0MgdXNpbmcgU1BJLCB3cmFwcGVkIGluc2lkZSB0aGUgcG1pYy13cmFw
cGVyLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiB3ZW4uc3UgPHdlbi5zdUBtZWRpYXRlay5jb20+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3JlZ3VsYXRvci9LY29uZmlnICAgICAgICAgICAgICAgICAg
fCAgIDkgKwo+ID4gIGRyaXZlcnMvcmVndWxhdG9yL01ha2VmaWxlICAgICAgICAgICAgICAgICB8
ICAgMSArCj4gPiAgZHJpdmVycy9yZWd1bGF0b3IvbXQ2MzU5LXJlZ3VsYXRvci5jICAgICAgIHwg
ODU5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgaW5jbHVkZS9saW51eC9yZWd1
bGF0b3IvbXQ2MzU5LXJlZ3VsYXRvci5oIHwgIDU4ICsrCj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA5
MjcgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3JlZ3VsYXRv
ci9tdDYzNTktcmVndWxhdG9yLmMKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51
eC9yZWd1bGF0b3IvbXQ2MzU5LXJlZ3VsYXRvci5oCgpbLi4uXQoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbWVkaWF0ZWsK
