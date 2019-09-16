Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CDDB3626
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Sep 2019 10:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6r/ITeTK0EFvcJdSwEFz8wCvpH3sQRO2YYD5SSJfCwQ=; b=dKUKJ/tutCtQmN
	XszQhUX5zrAM2InsDC0vxGlsrHtO7bWeUSyYnjVjxoSWndx4RLsepwFMsM0fib7b/Sx1ECISv89km
	hzRNpJlIADNqk4jIzTbXi5hKr0Cilmmd5Gk6kqotf1oGK6hhKyofdZuHAnW4y50XQw055dJxlqDFv
	C4bQsVPVpbncjwREZwQOOwS1qcuZE0EnlyVhVuf23BUm9XFBd+GfoexaB4YwszdQtv5Cj2Ik3F/eT
	jjsjRTp/tdgJL6N9YMuwfPTg6V+popN2CKpr9ymeO2/wt3GvTlV9cLxfYViJkLOD0X7m4CpGE2bdx
	SODTg3jsbFKt4F4lbdKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9m1Y-00073X-Fg; Mon, 16 Sep 2019 08:06:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9m1U-00072l-NU
 for linux-mediatek@lists.infradead.org; Mon, 16 Sep 2019 08:06:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id a11so28025849wrx.1
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Sep 2019 01:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=W+6eVtm06G2DnerzsFFEVB5vtcZxnWEKRgFaaXCgWGo=;
 b=GQOCBpsSirGcGzdEHlMBfNDzJxPmMj0OYLiV9Nis/yw5ZZOxEauCXKX8VBw8RsVWuL
 5LIF2kZ60pyykpYmXokmE8Ilnhfw2o5V13r9g2PgBApARfipqyJK51ipdgKvzhNGCXzW
 kPWg4wZkXjT/Eq4D8amfyAwabb+GpLpEPNL8/oZbsTnUpAUD+hPiS4yYPCDg8Er7QzBc
 ZPkTbUBSxFg2r1nsJ06/U6hnXMZNJtL8hnn6EIWZdCIv44z2Uk24gaZtGD+UVV4Oblr6
 bq49385yj89jPCjNCz+E1LgaanKJPjcYwqIuhZgRDvsLC1NtRol/Nd99FUPtdwCJR6Ea
 FITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=W+6eVtm06G2DnerzsFFEVB5vtcZxnWEKRgFaaXCgWGo=;
 b=e1o4gAkUYZY/BAtqkd44iDc+BXuI9iKlPlRcVpjL0AkVwUVATglZcqJ8wFV+HKew7l
 lam8fwhkOOwwjvXncsN5P03GM8NL7sBO3ZYSyTbasc1l8Ai1UKkReRo/8aSbJocY/+Hw
 W3+3QXlaVGzpGZU1V65+eR5HS90RB9CEpnBUWnac6gkg9zpjFQFjcJyI1PmZ9NdwVI+H
 +kq1jIPMceB+6AJN7kbDzJkMOusiuJzfJKK1jGlVeHW/zUZ7C1Bc5E8xkNP1RerB1LXv
 wOVNs48ryp0Epy6xb0E3S+aH3JFEOlkyDsWbHJsKigiyBGTfD9Q0W4EeMVIIutun11vI
 cRMg==
X-Gm-Message-State: APjAAAVXRLv7sprPwDYm/mJxHLsFYHkPSIUPAY/DjtUswq/JYyhFvhTV
 BdChsds4iqW5G4s2y0IDxrR4LQ==
X-Google-Smtp-Source: APXvYqwwzj+YBGHiDs5snINLMmedhcTe4YAqB3nspNDmWc0373N7F0SNqZ0iNwFda6g+BLVUWjyeoQ==
X-Received: by 2002:adf:d848:: with SMTP id k8mr5370448wrl.254.1568621170584; 
 Mon, 16 Sep 2019 01:06:10 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id a13sm72513725wrf.73.2019.09.16.01.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Sep 2019 01:06:09 -0700 (PDT)
Date: Mon, 16 Sep 2019 09:06:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20190916080608.GV26880@dell>
References: <1568275837-3560-1-git-send-email-gene.chen.richtek@gmail.com>
 <be0bbf3b-76f8-9e2a-7c51-d5987263a859@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be0bbf3b-76f8-9e2a-7c51-d5987263a859@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_010612_797370_27B7ADF9 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com,
 Gene Chen <gene_chen@mediatek.corp-partner.google.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Gene Chen <gene.chen.richtek@gmail.com>, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCAxMiBTZXAgMjAxOSwgTWF0dGhpYXMgQnJ1Z2dlciB3cm90ZToKCj4gSGkgR2VuZSBD
aGVuLAo+IAo+IFBsZWFzZSB1c2UgLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHRvIGZpbmQg
b3V0IHdoaWNoIGFyZSB0aGUgbWFpbnRhaW5lcihzKQo+IGZvciBhIHNwZWNpZmljIHNlcmllcy9w
YXRjaC4KPiAKPiBJIGFkZGVkIExlZSBKb25lcywgd2hvIGlzIHRoZSBtYWludGFpbmVyIG9mIHRo
ZSBNVEQgc3Vic3lzdGVtLgo+IAo+IFJpZ2h0IG5vdyBJIGhhdmUgbm8gdGltZSB0byByZXZpZXcg
dGhlIHBhdGNoZXMsIHNvcnJ5Lgo+IAo+IFJlZ2FyZHMsCj4gTWF0dGhpYXMKPiAKPiBPbiAxMi8w
OS8yMDE5IDEwOjEwLCBHZW5lIENoZW4gd3JvdGU6Cj4gPiBGcm9tOiBHZW5lIENoZW4gPGdlbmVf
Y2hlbkBtZWRpYXRlay5jb3JwLXBhcnRuZXIuZ29vZ2xlLmNvbT4KClBsZWFzZSByZXN1Ym1pdCB0
aGlzIGNvbnRhaW5pbmcgYSBzdWl0YWJsZSBjb21taXQgbWVzc2FnZSB3aXRoIG1lIG9uCkNjLgoK
PiA+IC0tLQo+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgfCAgMTIgKysKPiA+ICBkcml2
ZXJzL21mZC9NYWtlZmlsZSAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL21mZC9tdDYzNjAtY29y
ZS5jIHwgNDYzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiA+ICAzIGZpbGVzIGNoYW5nZWQsIDQ3NiBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMKCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW1lZGlhdGVrCg==
