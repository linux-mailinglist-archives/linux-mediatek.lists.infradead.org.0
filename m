Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCC718364B
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 17:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLt4UjYQmoy3W1rb9K6Pf3032xws3yDlQQo8Pbl3RN4=; b=aPIBgKBZDUweHG
	uUo14HRXQp1qye2uFC0M4aCr/UAuEABwaB62qcoqWB6D4wKHBqOrqYw6wZI/P8GpXGU3vQHlljZ/j
	Bf51RjA/v7BrBQDlA8EVHR8KX4MFjxU5kwzEbMTKAxXfu5Tlbnz+wHqEdGSxTSiYBtLWkqDDWT5dO
	0myK3bHjR+j5KWsLpmoTY3OHlf7dI4VBDpEmw1edtEgHN1NPxq8eJsCctXgehF/LVFD7KieSdXpET
	GeaZgLiLBvhYGKreux+t8+uOZT7NppKP2W3m75FOtB9r6AgZcYloddYa7ARNoHPy8XFbjk8hYx3RL
	jwnxFMFmw5O3wSGbVzbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQqK-0005dz-FM; Thu, 12 Mar 2020 16:37:56 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQq9-0005QZ-Ek
 for linux-mediatek@lists.infradead.org; Thu, 12 Mar 2020 16:37:47 +0000
Received: by mail-ot1-x331.google.com with SMTP id g15so6948905otr.0
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Mar 2020 09:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MYtEPdrTksnGvDZU5deL4CbY9Pr9ioIV5tkxQ/zHu9E=;
 b=K9wdZeHL5rkylrZz3QIeSH+2rSRaU/h8JfwlYHPQVkc1YTeX3aYZHzKozu1Uh9dGmW
 al/g5ZOeGmatS1po/OOiwYPpVnuwgNjRDMnm37LUrARxdr2D7c+UQ8BfOm773vJ38KB4
 WyJL6FoyqANhVa43OkIu37Qm+iMm4zKxaNoyM1dwCOxiTEHUeCvSpIqJa5SWrNPYI0mG
 7FEO4d6rMrB+CWnvO+a1xme3jdmlAWODxkI6xVbkFJ7KojYC/IAy1zx8BHJZZW4NU2XD
 duN5csFpY+MN/H6Y4wwobhExb+fpRbdG/uyLFsrcm7iHlXNPYNlOPB4/MKHiQ8sgTL20
 wivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MYtEPdrTksnGvDZU5deL4CbY9Pr9ioIV5tkxQ/zHu9E=;
 b=gFbbZKfP5wxUYhTy5Sjv3yjYPPWZJIflincpKVpjQryPnDEPUTlYo+d34vSBuxPmxp
 HlqvzUoKKM7jKQ8kVHO3Ly6BanZOkvbJ4/WE3tAFd/5Oo7q1b/TSSCHTYur/qsS9BXPj
 n6paVh/3OcChG3itk8YITl0cq0CDBwEl1O6t23X1GUvf/tTRHTeIUUkQXpU5sm9B9Wqg
 JGrqHiD1OiIxBtYfMnSaLLyRmpkVYN+8giSs6MSTiR5vlkDpR5927I/NFqNf/DpRFFcs
 djEVXz6eqEC9eHUWImQHOHcXPcBMHoqX1iIcw68mp8M5w2uTVRqfYqqz1GhmjebeXPSG
 DVtg==
X-Gm-Message-State: ANhLgQ0+hs4ibn9cJTEpgd7CPkbPVBERPWtYkcVUqWWbgesVPkfHxqDq
 n5h0OgZLywjpeuJdoFpNbdCbcQEC9DIr3tA1SqYzcw==
X-Google-Smtp-Source: ADFU+vtZrRh7IowOp5OH0oSfDw8psJiJhEtJqqx6lihfLrI2TL2niHppJIGBv22OqVb3O+3TasH0O7liOBZUKkgfp2I=
X-Received: by 2002:a9d:7756:: with SMTP id t22mr6718289otl.272.1584031064139; 
 Thu, 12 Mar 2020 09:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-4-robert.foss@linaro.org>
 <20200310143014.GL1922688@smile.fi.intel.com>
In-Reply-To: <20200310143014.GL1922688@smile.fi.intel.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 12 Mar 2020 17:37:33 +0100
Message-ID: <CAG3jFyuSj4NRAPHk0qch4SXg3iS7zss6tbRuC3mBnVL=MsLwVw@mail.gmail.com>
Subject: Re: [v1 3/3] media: ov8856: Implement sensor module revision
 identification
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_093745_546469_416E7206 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGV5IEFuZHksCgpPbiBUdWUsIDEwIE1hciAyMDIwIGF0IDE1OjMwLCBBbmR5IFNoZXZjaGVua28K
PGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1h
ciAxMCwgMjAyMCBhdCAwMjo0NjowM1BNICswMTAwLCBSb2JlcnQgRm9zcyB3cm90ZToKPiA+IFF1
ZXJ5IHRoZSBzZW5zb3IgZm9yIGl0cyBtb2R1bGUgcmV2aXNpb24sIGFuZCBjb21wYXJlIGl0Cj4g
PiB0byBrbm93biByZXZpc2lvbnMuCj4gPiBDdXJyZW50bHkgb25seSB0aGUgJzFCJyByZXZpc2lv
biBoYXMgYmVlbiBhZGRlZC4KPgo+IEFyZSB5b3Ugc3VyZSB5b3Ugc2VuZCBsYXRlc3QgdmVyc2lv
bj8KPgo+IEkgaGF2ZSBhIGTDqWrEhSB2dSB0aGF0IEkgaGF2ZSBzZWVuIHRoaXMgYWxyZWFkeSBh
bmQgdGhpcyBvbmUgZG9lc24ndCBhZGRyZXNzIGFueQo+IGNvbW1lbnQgZ2l2ZW4uCgpJIHRoaW5r
IHB1bGxlZCBhIHNlcmllcyBEb25nY2h1biBaaHVzIGVhcmxpZXIgc2VyaWVzIGFwYXJ0IGFuZCB1
c2VkIHNvbWUgb2YgaXQsCkkgbWF5IGhhdmUgbWlzc2VkIHNvbWUgb2YgdGhlIGZlZWRiYWNrIGdp
dmVuIHRvIGhpcyB2My4gU29ycnkgYWJvdXQgdGhhdC4KCj4KPiAuLi4KPgo+ID4gKyAgICAgZGV2
X2luZm8oJmNsaWVudC0+ZGV2LCAiT1Y4ODU2IHJldmlzaW9uICV4ICglcykgYXQgYWRkcmVzcyAw
eCUwMnhcbiIsCj4gPiArICAgICAgICAgICAgIHZhbCwKPgo+ID4gKyAgICAgICAgICAgICB2YWwg
PT0gT1Y4ODU2XzFCX01PRFVMRSA/ICIxQiIgOiAidW5rbm93biByZXZpc2lvbiIsCj4KPiBUaGlz
IGlzIHdlaXJkLiBDYW4geW91IGFkZCBhIGJpdCBtb3JlIGdlbmVyYWwgd2F5IG9mIHNob3dpbmcg
cmV2aXNpb24/CgpUaGlzIGlzIG1vZGVsZWQgYWZ0ZXIgdGhlIG92NzI1MSBkcml2ZXIsIHNpbmNl
IHRoYXQgb3V0cHV0IGNhbWUgaW4KaGFuZHkgZHVyaW5nIGJyaW5ndXAuCgogICAgZGV2X2luZm8o
ZGV2LCAiT1Y3MjUxIHJldmlzaW9uICV4ICglcykgZGV0ZWN0ZWQgYXQgYWRkcmVzcyAweCUwMnhc
biIsCiAgICAgICAgIGNoaXBfcmV2LAogICAgICAgICBjaGlwX3JldiA9PSAweDQgPyAiMUEgLyAx
QiIgOgogICAgICAgICBjaGlwX3JldiA9PSAweDUgPyAiMUMgLyAxRCIgOgogICAgICAgICBjaGlw
X3JldiA9PSAweDYgPyAiMUUiIDoKICAgICAgICAgY2hpcF9yZXYgPT0gMHg3ID8gIjFGIiA6ICJ1
bmtub3duIiwKICAgICAgICAgY2xpZW50LT5hZGRyKTsKClRvIG1lIHRoaXMgaXMgcHJldHR5IGdl
bmVyYWwgYXBwcm9hY2gsIGF0IGxlYXN0IHVudGlsIHRoaXMgcmV2aXNpb24KaW5mb3JtYXRpb24g
aXMgdXNlZCBpbiBvdGhlciBwbGFjZXMuCkknbSBub3QgcXVpdGUgc3VyZSB3aGF0IHlvdSBoYWQg
aW4gbWluZC4gTWF5YmUgdGhlIGN1cnJlbnQKaW1wbGVtZW50YXRpb24gaXMgYSBsaXR0bGUgYml0
IGNsdW5reSBpbiB0aGUgY2FzZSBvZiBvdjg4NTYgc2luY2UKdGhlcmUncyBvbmx5IG9uZSByZXZp
c2lvbiBudW1iZXIga25vd24gY3VycmVudGx5LgoKRWl0aGVyIHdheSwgSSdsbCBoYXBwaWx5IGNo
YW5nZSBpdC4gQnV0IEkgZG9uJ3QgcXVpdGUga25vdyB3aGF0IHlvdQpoYXZlIGluIG1pbmQuCgo+
Cj4gPiArICAgICAgICAgICAgIGNsaWVudC0+YWRkcik7Cj4KPiAtLQo+IFdpdGggQmVzdCBSZWdh
cmRzLAo+IEFuZHkgU2hldmNoZW5rbwo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRp
YXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
