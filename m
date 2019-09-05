Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B185FAA0A6
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 12:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIIrBTsBDclP+kD+Cqdb3Byjj1eUAcJpgJpBFeDr64g=; b=AUBpI1WnKYfdy2
	XHE6pro2gdDNgZYvAD8d+sNatuGe/HEHfA9BXHjJe11sZIOKzgiHVXiJnSfeFAtpay3As/4Gn8X8O
	t3ccN40+ePHHsT12+e5SyLXuuK4ZfGd/myipGJjAh7WStCobuVMCPcBaymfZzQdIICXpVib01VQwe
	CKEYY2gj9+PIetRJHG6b3GLDyc23Z/IyqXe5eIqsFC0veUNBEVjbd/pVMG20XDec5zeu10mkLNzyT
	ex6kkcog8QII/4ccnuZma/tAEWqV/o40pryxXLOleRHEldrA8qr2b5L5l5gVIq4RgqSMxp7YoKBYb
	qZDmTXute6vi2S67DtBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pSW-0001Ii-4w; Thu, 05 Sep 2019 10:57:48 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pSN-0001BV-Lu
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 10:57:41 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 99F9160ACD
 for <linux-mediatek@lists.infradead.org>; Thu,  5 Sep 2019 10:57:38 +0000 (UTC)
Received: by mail-wm1-f69.google.com with SMTP id f63so791768wma.7
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Sep 2019 03:57:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u65TSO+Rvf1axEqmi3wSZZGF+sDF08PzfGTCX34no0w=;
 b=uGKpDiKewOblI6OnxqzruKteEoQCnMsmd2gveZwwsbPPS2YucLenluk4+wlJidRKSZ
 kHzfuDuSxICbjaDuG5JxGOtb6sZ5DvpL+lpzMFdmENN9HykqGM6mDrgwMMuG6pfAPAep
 7qlPi5BzuCx3wKtywOKbGQgE9D9jk5QS7uDfgmk2xIwna4tdWh+3CEh+frPSudVbLXpa
 cPFcDrKW09CsvAs6qGoqt+Z9crFyPShXYH6KcJjol8POoyrExe7cHZP7xXAyYiClFF2X
 mwSMPjE+UdWTw2czoDLvrmgWP9mHFwVoU3LB7UTJCYSw9tN9Q4/pHrXP3gvmFefAM1Ff
 xCfg==
X-Gm-Message-State: APjAAAWV9ILWxRDaHO6B8vXF0M/B+efNMHLm191Az3V9JEJZG6K2Jkn0
 WlWS8N/p3u5s14sQa6n8tx9boSouAfwyqsGFX36dozDzVdjT+O2OZzQSAn+nQY6Ljnn+72Ngwr2
 JyGU38vtk5Hzrn7eBm3UkSNe6638W0S2F
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr2295970wmh.23.1567681057403;
 Thu, 05 Sep 2019 03:57:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqytSMTFwKy6lxd+Xl2q9JD1L6j9P/OzvtGIshQY0oEp+mKnHzNdpLaXEnuh8y3DBKzT/FTaXA==
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr2295960wmh.23.1567681057221;
 Thu, 05 Sep 2019 03:57:37 -0700 (PDT)
Received: from [192.168.1.13] ([90.168.169.92])
 by smtp.gmail.com with ESMTPSA id p19sm1745164wmg.31.2019.09.05.03.57.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2019 03:57:36 -0700 (PDT)
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
 <20190905082134.GY5475@paasikivi.fi.intel.com>
 <20190905101908.GB2680@smile.fi.intel.com>
 <20190905104001.GZ5475@paasikivi.fi.intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ad357e27-3e51-6922-1924-5d2c2daf1934@redhat.com>
Date: Thu, 5 Sep 2019 12:57:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905104001.GZ5475@paasikivi.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_035739_753748_1AC0E5E1 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 tfiga@chromium.org, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gOS81LzE5IDEyOjQwIFBNLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4gT24gVGh1LCBTZXAgMDUs
IDIwMTkgYXQgMDE6MTk6MDhQTSArMDMwMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+PiBPbiBU
aHUsIFNlcCAwNSwgMjAxOSBhdCAxMToyMTozNEFNICswMzAwLCBTYWthcmkgQWlsdXMgd3JvdGU6
Cj4+PiBPbiBUaHUsIFNlcCAwNSwgMjAxOSBhdCAwMzoyMTo0MlBNICswODAwLCBkb25nY2h1bi56
aHVAbWVkaWF0ZWsuY29tIHdyb3RlOgo+Pj4+IEZyb206IERvbmdjaHVuIFpodSA8ZG9uZ2NodW4u
emh1QG1lZGlhdGVrLmNvbT4KPj4KPj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNl
X2lkIGR3OTc2OF9pZF90YWJsZVtdID0gewo+Pj4+ICsJeyBEVzk3NjhfTkFNRSwgMCB9LAo+Pj4+
ICsJeyB9LAo+Pj4KPj4+IENvdWxkIHlvdSBkcm9wIHRoZSBJwrJDIElEIHRhYmxlPwo+Pgo+PiBC
dXQgd2h5Pwo+PiBJdCB3aWxsIGFsbG93IHlvdSB0byBpbnN0YW5jaWF0ZSB0aGUgZGV2aWNlIGZy
b20gdXNlciBzcGFjZS4KClllcywgdGhlIEkyQyBkZXZpY2UgdGFibGUgaXMgc3RpbGwgbmVlZGVk
IGlmIHRoZSBkZXZpY2UgY2FuIGJlIGluc3RhbnRpYXRlZApmcm9tIHVzZXItc3BhY2UgdXNpbmcg
dGhlIHN5c2ZzIGludGVyZmFjZSwgb3Igb3RoZXJ3aXNlIHRoZSBtb2R1bGUgd29uJ3QgYmUKYXV0
b21hdGljYWxseSBsb2FkZWQuCgpLaWVyYW4gcG9zdGVkIGEgIltQQVRDSCBSRkNdIG1vZHBvc3Q6
IFN1cHBvcnQgSTJDIEFsaWFzZXMgZnJvbSBPRiB0YWJsZXMiCnBhdGNoIHRoYXQgYWRkcyBhIE1P
RFVMRV9ERVZJQ0VfVEFCTEUoaTJjX29mLCAuLikgbWFjcm8gc28gbW9kcG9zdCBjb3VsZAphZGQg
bGVnYWN5IEkyQyBtb2RhbGlhcyB1c2luZyB0aGUgaW5mb3JtYXRpb24gaW4gdGhlIE9GIGRldmlj
ZSBJRCB0YWJsZXM6CgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDM4ODYx
LwoKSWYgdGhhdCBsYW5kcywgdGhlbiB3ZSBjb3VsZCBnZXQgcmlkIG9mIHRoZSBJMkMgZGV2aWNl
IHRhYmxlcyBhbHRvZ2V0aGVyCmZvciBub24tbGVnYWN5IEkyQyBkcml2ZXJzLgoKPiAKPiBUaGUg
ZGV2aWNlIGlzIHN1cHBvc2VkIHRvIGJlIHByZXNlbnQgaW4gRFQgKG9yIEFDUEkgdGFibGVzKSBh
bHJlYWR5Lgo+CgpBZ3JlZWQuIEFsc28gYnkgbG9va2luZyBhdCB0aGUgZHJpdmVyJ3MgcHJvYmUg
ZnVuY3Rpb24gSSBzZWUgdGhhdCB0aGUKZGV2aWNlIGxvb2t1cHMgYSAndmluJyBhbmQgJ3ZkZCcg
cmVndWxhdG9ycyBzdXBwbGllcyBhbmQgaXQgZmFpbHMgaWYKYXJlbid0IGRlZmluZWQsIHNvIGl0
IGNhbid0IGJlIGluc3RhbnRpYXRlZCBmcm9tIHVzZXItc3BhY2UgYW55d2F5cy4KCkJUVywgdGhl
c2UgdHdvIHJlZ3VsYXRvcnMgc3VwcGxpZXMgc2hvdWxkIGJlIGxpc3RlZCBhcyAndmluLXN1cHBs
eScKYW5kICd2ZGQtc3VwcGx5JyBhcyByZXF1aXJlZCBwcm9wZXJ0aWVzIGluIHRoZSBEVCBiaW5k
aW5nIGRvY3VtZW50LgoKQmVzdCByZWdhcmRzLAotLSAKSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFz
ClNvZnR3YXJlIEVuZ2luZWVyIC0gRGVza3RvcCBIYXJkd2FyZSBFbmFibGVtZW50ClJlZCBIYXQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1l
ZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
