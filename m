Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14C55BC37
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 14:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7rm5pUZR1HrcZuZqx1mAEZPh79aHSDvCDlBcz2W8K8=; b=BFVqVBat8tEivH
	aXexDYr6JlBtIoqbX7J53+cJsnFMrXT6kIxhOfWAivR9pejbDGUitmontfdfXge1YSNHqhLhXT2KL
	yM1FvNSZ3yGmyW322lAkCrPiAvc7YDVGEczbsySJHwjJsJcVCTvmzz6O+iW1HyHM0EdtfA5rHkwvH
	I8/34CCl90o88a+aQ1e4QVXIcIOhIAxEeullf730EO53t1r4ZI9uT0Fft0PeM7MmJGvRbBHTvOs4f
	qSJEJJAfBs7ROMiB8hAhgyKcnElxoPblexHTg08zXg8UBf/+zatHpL6e80mlY4XkaPX0I7Lp16Dae
	yHhoy8/HCu7kkYQvRUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvsp-0004Hc-QG; Mon, 01 Jul 2019 12:58:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvsm-0004GR-1A
 for linux-mediatek@lists.infradead.org; Mon, 01 Jul 2019 12:58:09 +0000
Received: by mail-ed1-x541.google.com with SMTP id w13so23422546eds.4
 for <linux-mediatek@lists.infradead.org>; Mon, 01 Jul 2019 05:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v0fCKQ2i33aj1RCSVIG+EEExzNxptE/jC85JPv26GyI=;
 b=hb2i0hfLnid1g2N5nBjMlDsQYJkKngCirK8lL72HwZK/OEesQFVO0uFbi1Rfj4hlvx
 2go31kB6h5L9z07i/Yuh0j7s79Ll47dPhRzB6iGOaR97C8hsHo8GzAZDKPBXIlcNe5cm
 M1LnQRpNyvUCFVDqgMHWGXgXhg6f9ALnBy1SxXiQwylw2aEjTk1USL3CVHejzA/sKdyE
 xvvaJmBLcDchXq/D5Q5CH5v/dTPE7UpX8Gy3ojXWg/neHCkm1QV+v36SlmTbalu5z547
 bQ2Qqmz/fQLydjVF0l7p2lu0FqsoCnb2DtYgE3U8gu+mV//N4jhw+Jqul/BxP62Rxvoo
 W5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v0fCKQ2i33aj1RCSVIG+EEExzNxptE/jC85JPv26GyI=;
 b=VaoZDh//sSnm030z2JWrcJcRGTfIB75Zy9BQt/isA4cpfKMaA/Zv4ANxdUlaEx0a0C
 SGTK3JQHjGdW9ue7TIUW3RReAqrHgYsgT0f91Z+94sGZ/HEM9nnEfondkBkoQCSCGbIR
 Rf5WCKzc2ZCN3Jt3zS+M0DXNHcEO/LWiDk0NJhpZljiDtjehqbabHJ0/84f3jLZVvtSy
 enKGCJTFo09h2SFgNwXogNeF1YTxEQS7z+MxyM7ezGoULN16Pw5T8QeaMjqYZY4VX32p
 NreELqqCepDQX1hG2ox3cS94F+2WwoD4HFRrMSVT2u7AvPFf6LTuBd1YrExfaTOtAJww
 DBzw==
X-Gm-Message-State: APjAAAVJpYAGdvqaO8W4NBmqvBw1N54FpTK9trQx3v3YdRZC1YwCuoS1
 9FmLKLqUNIu7JHX00TlyzujBOJabcos23P8siGQ=
X-Google-Smtp-Source: APXvYqzFW9cWNNNvSjbaP18Gs9ax+rHWm6yiVTe96G+UNUhNWl77EHZ91bFnIdtKEaqmhOcxrFDZA3hEs8z08eho578=
X-Received: by 2002:a17:906:2acf:: with SMTP id
 m15mr22871580eje.31.1561985885975; 
 Mon, 01 Jul 2019 05:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190629122419.19026-1-opensource@vdorst.com>
 <CA+FuTSdr8HCRJTE8pEVxsga3N-xx-fEAxzKAAyPFWH6doVRHbQ@mail.gmail.com>
 <20190701124447.Horde.RNUh-fSQf6XMauvPaGIYpKj@www.vdorst.com>
In-Reply-To: <20190701124447.Horde.RNUh-fSQf6XMauvPaGIYpKj@www.vdorst.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Mon, 1 Jul 2019 08:57:29 -0400
Message-ID: <CAF=yD-+6FqkWOhGk0vXKA5q5EEx8WEhXCfqq7SnJ3MqA=JB2qA@mail.gmail.com>
Subject: Re: [PATCH] net: ethernet: mediatek: Fix overlapping capability bits.
To: =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_055808_103448_632A92C4 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (willemdebruijn.kernel[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Florian Fainelli <f.fainelli@gmail.com>,
 frank-w@public-files.de, Network Development <netdev@vger.kernel.org>,
 sean.wang@mediatek.com, linux@armlinux.org.uk, vivien.didelot@gmail.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMSwgMjAxOSBhdCA4OjQ0IEFNIFJlbsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJj
ZUB2ZG9yc3QuY29tPiB3cm90ZToKPgo+IFF1b3RpbmcgV2lsbGVtIGRlIEJydWlqbiA8d2lsbGVt
ZGVicnVpam4ua2VybmVsQGdtYWlsLmNvbT46Cj4KPiA+IE9uIFNhdCwgSnVuIDI5LCAyMDE5IGF0
IDg6MjQgQU0gUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+IHdyb3RlOgo+
ID4+Cj4gPj4gQm90aCBNVEtfVFJHTUlJX01UNzYyMV9DTEsgYW5kIE1US19QQVRIX0JJVCBhcmUg
ZGVmaW5lZCBhcyBiaXQgMTAuCj4gPj4KPiA+PiBUaGlzIGNhdXNlcyBpc3N1ZXMgb24gbm9uLU1U
NzYyMSBkZXZpY2VzIHdoaWNoIGhhcyB0aGUKPiA+PiBNVEtfUEFUSF9CSVQoTVRLX0VUSF9QQVRI
X0dNQUMxX1JHTUlJKSBjYXBhYmlsaXR5IHNldC4KPiA+PiBUaGUgd3JvbmcgVFJHTUlJIHNldHVw
IGNvZGUgaXMgZXhlY3V0ZWQuCj4gPj4KPiA+PiBNb3ZpbmcgdGhlIE1US19QQVRIX0JJVCB0byBi
aXQgMTEgZml4ZXMgdGhlIGlzc3VlLgo+ID4+Cj4gPj4gRml4ZXM6IDhlZmFhNjUzYThhNSAoIm5l
dDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBBZGQgTVQ3NjIxIFRSR01JSSBtb2RlCj4gPj4gc3VwcG9y
dCIpCj4gPj4gU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3Jz
dC5jb20+Cj4gPgo+ID4gVGhpcyB0YXJnZXRzIG5ldD8gUGxlYXNlIG1hcmsgbmV0d29ya2luZyBw
YXRjaGVzIFtQQVRDSCBuZXRdIG9yIFtQQVRDSAo+ID4gbmV0LW5leHRdLgo+Cj4gSGkgV2lsbGVt
LAo+Cj4gVGhhbmtzIGZvciB5b3UgaW5wdXQuCj4KPiBUaGlzIHBhdGNoIHdhcyBmb3IgbmV0LW5l
eHQuCj4KPiA+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210
a19ldGhfc29jLmggfCAyICstCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L21lZGlhdGVrL210a19ldGhfc29jLmgKPiA+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlh
dGVrL210a19ldGhfc29jLmgKPiA+PiBpbmRleCA4NzZjZTY3OTg3MDkuLjJjYjhhOTE1NzMxYyAx
MDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3Nv
Yy5oCj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2Mu
aAo+ID4+IEBAIC02MjYsNyArNjI2LDcgQEAgZW51bSBtdGtfZXRoX3BhdGggewo+ID4+ICAjZGVm
aW5lIE1US19UUkdNSUlfTVQ3NjIxX0NMSyAgICAgICAgICBCSVQoMTApCj4gPj4KPiA+PiAgLyog
U3VwcG9ydGVkIHBhdGggcHJlc2VudCBvbiBTb0NzICovCj4gPj4gLSNkZWZpbmUgTVRLX1BBVEhf
QklUKHgpICAgICAgICAgQklUKCh4KSArIDEwKQo+ID4+Cj4gPj4gKyNkZWZpbmUgTVRLX1BBVEhf
QklUKHgpICAgICAgICAgQklUKCh4KSArIDExKQo+ID4+Cj4gPgo+ID4gVG8gYXZvaWQgdGhpcyBo
YXBwZW5pbmcgYWdhaW4sIHBlcmhhcHMgbWFrZSB0aGUgcmVzZXJ2ZWQgcmFuZ2UgbW9yZSBleHBs
aWNpdD8KPiA+Cj4gPiBGb3IgaW5zdGFuY2UKPiA+Cj4gPiAjZGVmaW5lIE1US19GSVhFRF9CSVRf
TEFTVCAxMAo+ID4gI2RlZmluZSBNVEtfVFJHTUlJX01UNzYyMV9DTEsgIEJJVChNVEtfRklYRURf
QklUX0xBU1QpCj4gPgo+ID4gI2RlZmluZSBNVEtfUEFUSF9CSVRfRklSU1QgIChNVEtfRklYRURf
QklUX0xBU1QgKyAxKQo+ID4gI2RlZmluZSBNVEtfUEFUSF9CSVRfTEFTVCAoTVRLX0ZJWEVEX0JJ
VF9MQVNUICsgNykKPiA+ICNkZWZpbmUgTVRLX01VWF9CSVRfRklSU1QgKE1US19QQVRIX0JJVF9M
QVNUICsgMSkKPiA+Cj4gPiBUaG91Z2ggSSBpbWFnaW5lIHRoZXJlIGFyZSBjbGVhbmVyIGFwcHJv
YWNoZXMuIFBlcmhhcHMgZGVmaW5lIGFsbAo+ID4gZmllbGRzIGFzIGVudW0gaW5zdGVhZCBvZiBq
dXN0IG10a19ldGhfbXV4IGFuZCBtdGtfZXRoX3BhdGguIFRoZW4KPiA+IHRoZXJlIGNhbiBiZSBu
byBhY2NpZGVudGFsIGNvbGxpc2lvbi4KPgo+IFlvdSBtZWFuIGluIGEgc2ltaWxhciB3YXkgYXMg
ZG9uZSBpbiB0aGUgZXRodG9vbC5oIFswXT8KPgo+IFVzZSBhIGVudW0gdG8gZGVmaW5lIHRoZSB1
bmlxdWUgYml0cy4KPgo+IGVudW0gbXRrX2JpdHMgewo+ICAgICAgICAgTVRLX1JHTUlJX0JJVCA9
IDAsCj4gICAgICAgICBNVEtfU0dNSUlfQklULAo+ICAgICAgICAgTVRLX1RSR01JSV9CSVQsCj4g
ICAgICAgICBBTkQgU08gT04gLi4uLgo+IH07Cj4KPiBBbHNvIG1vdmUgdGhlIG10a19ldGhfbXV4
IGFuZCBtdGtfZXRoX3BhdGggaW4gdG8gdGhpcyBlbnVtLgoKVGhhdCdzIHRoZSBrZXkgcGFydDog
dGhleSBhcmUgYWxsIHBhcnQgb2YgdGhlIHNhbWUgbmFtZXNwYWNlIGFuZCB0aGVzZQplbnVtcyBh
cmUgbm90IHVzZWQgYW55d2hlcmUgZWxzZSwgc28gYSBzaW5nbGUgZW51bSB3aWxsIGF2b2lkCmFj
Y2lkZW50YWxseSBuYW1lc3BhY2UgY29sbGlzaW9ucy4KCj4gVGhlbiB1c2UgZGVmaW5lcyB0byBj
b252ZXJ0IGJpdHMgdG8gdmFsdWVzLgo+Cj4gI2RlZmluZSBNVEtfUkdNSUkgIEJJVChNVEtfUkdN
SUlfQklUKQo+ICNkZWZpbmUgTVRLX1RSR01JSSBCSVQoTVRLX1RSR01JSV9CSVQpCj4KPiBSZXBs
YWNlIHRoZSBNVEtfUEFUSF9CSVQgYW5kIE1US19QQVRIX0JJVCBtYWNybyB3aXRoIEJJVCgpCj4K
PiBJcyB0aGlzIHdoYXQgeW91IGhhZCBpbiBtaW5kPwoKR3JlYXQgZmluZC4gRXhhY3RseSwgYnV0
IEkgZGlkIG5vdCBmaW5kIHN1Y2ggYSBjbGVhciBleGFtcGxlLgoKPgo+IEdyZWF0cywKPgo+IFJl
bsOpCj4KPiBbMF06Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3Nv
dXJjZS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oI0wxNDAyCj4KPgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
