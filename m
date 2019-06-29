Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869705AD27
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 21:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5Iv9b0IHY+orUNndTy70gJtf6hCRbpmSvGsLxti1kY=; b=oxWrzarF0lle+g
	FkYwP+6WbIKA3lhSxzQX+GnE48WW5+rTZDr4ocnuFi9IWQqg7Np08UT0dRkp6fV45I5oXZSnfYcOx
	TXg693UAyq27VdFymySHhMdHuQBECOaEjoShdIpM/9tgKzsiPkad9Gg8zDWn10w7AeRlH8uyLrxrq
	P4HuSxHs5jSFMnlnintmzIbgMNl8eYC2hi10LvmAbGONVfu+9sqmKwPRj+8Jo26nwtN5Zp+YT3Mka
	KKAwmgPebcsAG/PEU7m/D4yjRwMjyruscZc/4lTvWyCjgs7X2ODXF9l+9iT6uU8aTrlMSDfENSRFB
	H3RQih9ufJ6cXtF7pJgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhJ7U-0008FG-75; Sat, 29 Jun 2019 19:34:44 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhJ7Q-0008EP-LV
 for linux-mediatek@lists.infradead.org; Sat, 29 Jun 2019 19:34:41 +0000
Received: by mail-yb1-xb44.google.com with SMTP id p85so1800265yba.2
 for <linux-mediatek@lists.infradead.org>; Sat, 29 Jun 2019 12:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TrEAkRNd58OxQm438HJ/LWyeqxT458dpIIN9rnAAj1U=;
 b=HFHXV38GwofcAY4vLufShERlXUE5rVUMWzsssyqAnf0TGWxiz1zoetJzFqA0bstvbL
 AU0mOgyXmRgYKWklGPZcp6I3oEkTvzO4rBRpwHqzyG8WuXzhuKX4mizCX9zqbnPS5MOZ
 T2tb0XGFjnhBKrDXR+37mvesIMo8lpJUcL9dUz8C9J9DyYqu+EguGocJFOnGzRIGrJOf
 c0jV99HS4ygDUN07KVog9GTaPnlucLiqO7JkYzfGFh/SCaftOgacj8FofJ/2c1gAn/fI
 wh9SNlrIJtYIpuC9U+pSi8j5OqpG5TaDp3eOICbaZr8rLis5//S33c7cSkvzYykqeZmR
 5PNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TrEAkRNd58OxQm438HJ/LWyeqxT458dpIIN9rnAAj1U=;
 b=e+OTQDjbOKri4tl2reb8DdD6JocsGrYfHyptG4h8NL+ZfaTRzFz0s29FWJC8jOzIdS
 bCtxO8B95VgegJ92w0a54jdfrRrWxAJZbeUTMtMhFMU5UVC0rRenMTo/0hRNcYIG2Luj
 f37kBuGgL3mdrX4adsC60R4KB0MuPq5NN/NyLyj3FsudG3c1pYVP6SayA5H/ivTn1elX
 qYW1g1sOVjty3gct8Q6S50xGnGC74b07/e6xasHIBbXH7DhlYYw6Xzt2Nedy/xoYTAd7
 2QYVE6+bs0dc6sWC7o4CyONbpaxrxhPYR5Ka5OGDTwJWiZoBx71q9bQBM2osDdxq4+Xg
 fFxQ==
X-Gm-Message-State: APjAAAXULfpfD+ER4F/ljJ3+7OdHXcR4Q7WibN3MSSM9YmCB1uGs1fqo
 pcYFM1iAIjYXYLRHR45FkULhGlDT
X-Google-Smtp-Source: APXvYqzqHMC/c/V3eev5tXyJC7BYZ2U71q9q7TMZhPHVjoB1Jk/jiXL7gVlr+zbL6GejF2VG9Wjy9Q==
X-Received: by 2002:a25:7b07:: with SMTP id w7mr9970008ybc.3.1561836875566;
 Sat, 29 Jun 2019 12:34:35 -0700 (PDT)
Received: from mail-yw1-f54.google.com (mail-yw1-f54.google.com.
 [209.85.161.54])
 by smtp.gmail.com with ESMTPSA id j4sm1436934ywe.30.2019.06.29.12.34.34
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 12:34:34 -0700 (PDT)
Received: by mail-yw1-f54.google.com with SMTP id u141so3839386ywe.4
 for <linux-mediatek@lists.infradead.org>; Sat, 29 Jun 2019 12:34:34 -0700 (PDT)
X-Received: by 2002:a81:4807:: with SMTP id v7mr8813316ywa.494.1561836873634; 
 Sat, 29 Jun 2019 12:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190629122419.19026-1-opensource@vdorst.com>
In-Reply-To: <20190629122419.19026-1-opensource@vdorst.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Sat, 29 Jun 2019 15:33:57 -0400
X-Gmail-Original-Message-ID: <CA+FuTSdr8HCRJTE8pEVxsga3N-xx-fEAxzKAAyPFWH6doVRHbQ@mail.gmail.com>
Message-ID: <CA+FuTSdr8HCRJTE8pEVxsga3N-xx-fEAxzKAAyPFWH6doVRHbQ@mail.gmail.com>
Subject: Re: [PATCH] net: ethernet: mediatek: Fix overlapping capability bits.
To: =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_123440_709746_0AEAF57C 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (willemdebruijn.kernel[at]gmail.com)
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 Network Development <netdev@vger.kernel.org>, sean.wang@mediatek.com,
 linux@armlinux.org.uk, vivien.didelot@gmail.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMjksIDIwMTkgYXQgODoyNCBBTSBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3Vy
Y2VAdmRvcnN0LmNvbT4gd3JvdGU6Cj4KPiBCb3RoIE1US19UUkdNSUlfTVQ3NjIxX0NMSyBhbmQg
TVRLX1BBVEhfQklUIGFyZSBkZWZpbmVkIGFzIGJpdCAxMC4KPgo+IFRoaXMgY2F1c2VzIGlzc3Vl
cyBvbiBub24tTVQ3NjIxIGRldmljZXMgd2hpY2ggaGFzIHRoZQo+IE1US19QQVRIX0JJVChNVEtf
RVRIX1BBVEhfR01BQzFfUkdNSUkpIGNhcGFiaWxpdHkgc2V0Lgo+IFRoZSB3cm9uZyBUUkdNSUkg
c2V0dXAgY29kZSBpcyBleGVjdXRlZC4KPgo+IE1vdmluZyB0aGUgTVRLX1BBVEhfQklUIHRvIGJp
dCAxMSBmaXhlcyB0aGUgaXNzdWUuCj4KPiBGaXhlczogOGVmYWE2NTNhOGE1ICgibmV0OiBldGhl
cm5ldDogbWVkaWF0ZWs6IEFkZCBNVDc2MjEgVFJHTUlJIG1vZGUKPiBzdXBwb3J0IikKPiBTaWdu
ZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4KClRoaXMg
dGFyZ2V0cyBuZXQ/IFBsZWFzZSBtYXJrIG5ldHdvcmtpbmcgcGF0Y2hlcyBbUEFUQ0ggbmV0XSBv
ciBbUEFUQ0gKbmV0LW5leHRdLgoKPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0
ZWsvbXRrX2V0aF9zb2MuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVk
aWF0ZWsvbXRrX2V0aF9zb2MuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19l
dGhfc29jLmgKPiBpbmRleCA4NzZjZTY3OTg3MDkuLjJjYjhhOTE1NzMxYyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuaAo+IEBAIC02MjYsNyArNjI2
LDcgQEAgZW51bSBtdGtfZXRoX3BhdGggewo+ICAjZGVmaW5lIE1US19UUkdNSUlfTVQ3NjIxX0NM
SyAgICAgICAgICBCSVQoMTApCj4KPiAgLyogU3VwcG9ydGVkIHBhdGggcHJlc2VudCBvbiBTb0Nz
ICovCj4gLSNkZWZpbmUgTVRLX1BBVEhfQklUKHgpICAgICAgICAgQklUKCh4KSArIDEwKQo+Cj4g
KyNkZWZpbmUgTVRLX1BBVEhfQklUKHgpICAgICAgICAgQklUKCh4KSArIDExKQo+CgpUbyBhdm9p
ZCB0aGlzIGhhcHBlbmluZyBhZ2FpbiwgcGVyaGFwcyBtYWtlIHRoZSByZXNlcnZlZCByYW5nZSBt
b3JlIGV4cGxpY2l0PwoKRm9yIGluc3RhbmNlCgojZGVmaW5lIE1US19GSVhFRF9CSVRfTEFTVCAx
MAojZGVmaW5lIE1US19UUkdNSUlfTVQ3NjIxX0NMSyAgQklUKE1US19GSVhFRF9CSVRfTEFTVCkK
CiNkZWZpbmUgTVRLX1BBVEhfQklUX0ZJUlNUICAoTVRLX0ZJWEVEX0JJVF9MQVNUICsgMSkKI2Rl
ZmluZSBNVEtfUEFUSF9CSVRfTEFTVCAoTVRLX0ZJWEVEX0JJVF9MQVNUICsgNykKI2RlZmluZSBN
VEtfTVVYX0JJVF9GSVJTVCAoTVRLX1BBVEhfQklUX0xBU1QgKyAxKQoKVGhvdWdoIEkgaW1hZ2lu
ZSB0aGVyZSBhcmUgY2xlYW5lciBhcHByb2FjaGVzLiBQZXJoYXBzIGRlZmluZSBhbGwKZmllbGRz
IGFzIGVudW0gaW5zdGVhZCBvZiBqdXN0IG10a19ldGhfbXV4IGFuZCBtdGtfZXRoX3BhdGguIFRo
ZW4KdGhlcmUgY2FuIGJlIG5vIGFjY2lkZW50YWwgY29sbGlzaW9uLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
