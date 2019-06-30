Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337865ADF3
	for <lists+linux-mediatek@lfdr.de>; Sun, 30 Jun 2019 04:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A9G/52LfX7fz8Xf4jri3A/IvgzTPNliV1gT9m3jK5SY=; b=NnhSGEM2U8YVlLKgLoGEkvTUbJ
	V2ZuDxcx7RSskgh8wsk7UNK0II50nCnZ3tj6kEM9afihX+ZlLzBMRQ4DfVU8O3/T3JQ4WAHE7Lmie
	8jephM1ZO6ndf7zpYtMRjxVfV4Cth+1IXP4I5XpzAsjZuCHn0Efz2kRM0PxA7QDRSzuySzoh4Oh33
	Su/vGeNl5IRyH9USjftjNtzbng2VYP+OHsGp3ZSn/WIVSKIc2ecnyPUWgCNZmoWmVjcTxH++l7+Y5
	5sX10fqIlZnGWwn+zB2+d6xVKdTvI5XotVvzyNyA7lmlCDCU518whPxlxZIAiLqufNvNjy2Dd3fRU
	HMn1q80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhPcc-0000e6-FA; Sun, 30 Jun 2019 02:31:18 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhPcY-0000dS-T4
 for linux-mediatek@lists.infradead.org; Sun, 30 Jun 2019 02:31:16 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 22D0415DE41;
 Sat, 29 Jun 2019 22:31:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=qskunbHbQNfq
 snhG4NYPB33qlOc=; b=CFFXt6MpS7/4K7xzsPUkn+W8/BxGPTfdq45PT8X7p3m0
 1FO/uRGYGNXp7s9xOBlq0Xdgal/9hbA7zi0HwoXgQveyp1Tonf16mf1TTDH20lOI
 Qufx0xZl6mzshwgBC9k+znnZNzv2TfKKuzzR4jW9dbYZOQoYVf6iffGkf7TRMrI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=D0y84F
 R/uIjgPkAE4APvT1eQH3c7mx9+NMMJRwYrWgOu/pE4LIm811nqi69x1b7e6cN+DN
 FLR/FSoy2bPgz8zAMevAlVB2iU1N3k2JeZ25Yxz051ydc1yoGPD8SHau4FoQC90b
 6AkbZ//qCb6cWkiyL589Zso3TjmCBJ5rNGHtM=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 1A7B815DE3F;
 Sat, 29 Jun 2019 22:31:09 -0400 (EDT)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 30D4715DE3E;
 Sat, 29 Jun 2019 22:31:08 -0400 (EDT)
Subject: Re: mt7620/1, mt7530: Where are these MAC and MII registers
 documented?
To: Daniel Santos <daniel@gsat.us>, John Crispin <blogic@openwrt.org>,
 Sean Wang <sean.wang@mediatek.com>, Felix Fietkau <nbd@nbd.name>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Michael Lee <igvtee@gmail.com>, linux-mediatek@lists.infradead.org
References: <d40eafc3-b2c6-d4b6-cfe0-9e94092bfc03@gsat.us>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <47cb4e77-7865-bd0e-02ab-e283f0340d10@pobox.com>
Date: Sat, 29 Jun 2019 21:29:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d40eafc3-b2c6-d4b6-cfe0-9e94092bfc03@gsat.us>
Content-Language: en-US
X-Pobox-Relay-ID: 1E2680C6-9ADF-11E9-BD8D-72EEE64BB12D-06139138!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_193115_113550_FC3B7403 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SSd2ZSBiZWVuIHRvbGQgaW4gI29wZW53cnQtZGV2ZWwgb24gZnJlZW5vZGUgdGhhdCB0aGlzIGlz
IGZyb20gYW4KT3BlbldSVCBTREsgdGhhdCBNZWRpYVRlayBoYXMgcmVsZWFzZWQuwqAgRG9lcyBh
bnlib2R5IGtub3cgdGhlIGxpbmsgb24KdGhlaXIgd2ViIHNpdGUgZm9yIHRoaXM/CgpPbiA2LzI4
LzE5IDQ6NTUgUE0sIERhbmllbCBTYW50b3Mgd3JvdGU6Cj4gSGVsbG8sCj4KPiBJJ20gbG9va2lu
ZyBhdCB0aGUgbXQ3NjIwIEV0aGVybmV0IGRyaXZlciBhbmQgSSBzZWUgYSBsb3Qgb2YgbWFnaWMK
PiBoYXBwZW5pbmcgZm9yIHdoaWNoIEkgY2Fubm90IGZpbmQgZG9jdW1lbnRhdGlvbiBhbnl3aGVy
ZS7CoCBDYW4gYW55Ym9keQo+IHRlbGwgbWUgd2hlcmUgSSBjYW4gZ2V0IHRoZSBkYXRhc2hlZXRz
IC8gcHJvZ3JhbW1lcidzIGd1aWRlIHRoYXQKPiBkb2N1bWVudCB0aGVzZSByZWdpc3RlcnMgcGxl
YXNlPwo+Cj4gRXhhbXBsZXM6Cj4gSS9PIHRvIDB4NzgzMCwgMHg3YTQwIC0tIEVudHJpZXMgaW4g
dGhlIFdBUEkgdGFibGU/wqAgVGhhdCBzZWVtcyBzdHJhbmdlLgo+Cj4gX210NzYyMF9taWlfd3Jp
dGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDIyLCAweDEwY2YpO8KgIFRoZSBtdDc2MjAKPiBw
cm9ncmFtbWluZyBndWlkZSBvbmx5IGRvY3VtZW50cyAwLTYsIHdoaWxlIHRoZSA4MDIuMy0yMDA1
IGhhcwo+IGV2ZXJ5dGhpbmcgZnJvbSAxNi0zMSBtYXJrZWQgYXMgInZlbmRvciBzcGVjaWZpYyIu
wqAgQWxzbywgd2hhdCBkb2VzIHBvcnQKPiAzMSBkbz8KPgo+IEZyb20gdGhlIGN1cnJlbnQgT3Bl
bldSVCBoZWFkOgo+Cj4gc3RhdGljIHZvaWQgbXQ3NjIwX2h3X2luaXQoc3RydWN0IG10NzYyMF9n
c3cgKmdzdywgaW50IG1kaW9fbW9kZSkKPiB7Cj4gCXUzMiBpOwo+IAl1MzIgdmFsOwo+IAl1MzIg
aXNfQkdBID0gKHJ0X3N5c2NfcjMyKDB4MGMpID4+IDE2KSAmIDE7Cj4KPiAJcnRfc3lzY193MzIo
cnRfc3lzY19yMzIoU1lTQ19SRUdfQ0ZHMSkgfCBCSVQoOCksIFNZU0NfUkVHX0NGRzEpOwo+IAlt
dGtfc3dpdGNoX3czMihnc3csIG10a19zd2l0Y2hfcjMyKGdzdywgR1NXX1JFR19DS0dDUikgJiB+
KDB4MyA8PCA0KSwgR1NXX1JFR19DS0dDUik7Cj4KPiAJLyogRW5hYmxlIE1JQiBzdGF0cyAqLwo+
IAltdGtfc3dpdGNoX3czMihnc3csIG10a19zd2l0Y2hfcjMyKGdzdywgR1NXX1JFR19NSUJfQ05U
X0VOKSB8ICgxIDw8IDEpLCBHU1dfUkVHX01JQl9DTlRfRU4pOwo+Cj4gCWlmIChtZGlvX21vZGUp
IHsKPiAJCXUzMiB2YWw7Cj4KPiAJCS8qIHR1cm4gb2ZmIGVwaHkgYW5kIHNldCBwaHkgYmFzZSBh
ZGRyIHRvIDEyICovCj4gCQltdGtfc3dpdGNoX3czMihnc3csIG10a19zd2l0Y2hfcjMyKGdzdywg
R1NXX1JFR19HUEMxKSB8Cj4gCQkJKDB4MWYgPDwgMjQpIHwgKDB4YyA8PCAxNiksCj4gCQkJR1NX
X1JFR19HUEMxKTsKPgo+IAkJLyogc2V0IE1UNzUzMCBjZW50cmFsIGFsaWduICovCj4gCQl2YWwg
PSBtdDc1MzBfbWRpb19yMzIoZ3N3LCAweDc4MzApOwo+IAkJdmFsICY9IH5CSVQoMCk7Cj4gCQl2
YWwgfD0gQklUKDEpOwo+IAkJbXQ3NTMwX21kaW9fdzMyKGdzdywgMHg3ODMwLCB2YWwpOwo+Cj4g
CQl2YWwgPSBtdDc1MzBfbWRpb19yMzIoZ3N3LCAweDdhNDApOwo+IAkJdmFsICY9IH5CSVQoMzAp
Owo+IAkJbXQ3NTMwX21kaW9fdzMyKGdzdywgMHg3YTQwLCB2YWwpOwo+Cj4gCQltdDc1MzBfbWRp
b193MzIoZ3N3LCAweDdhNzgsIDB4ODU1KTsKPiAJfSBlbHNlIHsKPgo+IAkJaWYgKGdzdy0+ZXBo
eV9iYXNlKSB7Cj4gCQkJLyogc2V0IHBoeSBiYXNlIGFkZHIgdG8gZXBoeV9iYXNlICovCj4gCQkJ
bXRrX3N3aXRjaF93MzIoZ3N3LCBtdGtfc3dpdGNoX3IzMihnc3csIEdTV19SRUdfR1BDMSkgfAo+
IAkJCQkoZ3N3LT5lcGh5X2Jhc2UgPDwgMTYpLAo+IAkJCQlHU1dfUkVHX0dQQzEpOwo+IAkJCWZl
X3Jlc2V0KEJJVCgyNCkpOyAvKiBSZXNldHMgdGhlIEV0aGVybmV0IFBIWSBibG9jay4gKi8KPiAJ
CX0KPgo+IAkJLyogZ2xvYmFsIHBhZ2UgNCAqLwo+IAkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBn
c3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweDQwMDApOwo+Cj4gCQlfbXQ3NjIwX21paV93cml0ZShn
c3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMTcsIDB4NzQ0NCk7Cj4gCQlpZiAoaXNfQkdBKQo+IAkJ
CV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAxOSwgMHgwMTE0KTsK
PiAJCWVsc2UKPiAJCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwg
MTksIDB4MDExNyk7Cj4KPiAJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2Ug
KyAxLCAyMiwgMHgxMGNmKTsKPiAJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jh
c2UgKyAxLCAyNSwgMHg2MjEyKTsKPiAJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5
X2Jhc2UgKyAxLCAyNiwgMHgwNzc3KTsKPiAJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5l
cGh5X2Jhc2UgKyAxLCAyOSwgMHg0MDAwKTsKPiAJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3
LT5lcGh5X2Jhc2UgKyAxLCAyOCwgMHhjMDc3KTsKPiAJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywg
Z3N3LT5lcGh5X2Jhc2UgKyAxLCAyNCwgMHgwMDAwKTsKPgo+IAkJLyogZ2xvYmFsIHBhZ2UgMyAq
Lwo+IAkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweDMw
MDApOwo+IAkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDE3LCAw
eDQ4MzgpOwo+Cj4gCQkvKiBnbG9iYWwgcGFnZSAyICovCj4gCQlfbXQ3NjIwX21paV93cml0ZShn
c3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMzEsIDB4MjAwMCk7Cj4gCQlpZiAoaXNfQkdBKSB7Cj4g
CQkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDIxLCAweDA1MTUp
Owo+IAkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyMiwgMHgw
MDUzKTsKPiAJCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjMs
IDB4MDBiZik7Cj4gCQkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEs
IDI0LCAweDBhYWYpOwo+IAkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2Ug
KyAxLCAyNSwgMHgwZmFkKTsKPiAJCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9i
YXNlICsgMSwgMjYsIDB4MGZjMSk7Cj4gCQl9IGVsc2Ugewo+IAkJCV9tdDc2MjBfbWlpX3dyaXRl
KGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyMSwgMHgwNTE3KTsKPiAJCQlfbXQ3NjIwX21paV93
cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjIsIDB4MGZkMik7Cj4gCQkJX210NzYyMF9t
aWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDIzLCAweDAwYmYpOwo+IAkJCV9tdDc2
MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyNCwgMHgwYWFiKTsKPiAJCQlf
bXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjUsIDB4MDBhZSk7Cj4g
CQkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDI2LCAweDBmZmYp
Owo+IAkJfQo+IAkJLyogZ2xvYmFsIHBhZ2UgMSAqLwo+IAkJX210NzYyMF9taWlfd3JpdGUoZ3N3
LCBnc3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweDEwMDApOwo+IAkJX210NzYyMF9taWlfd3JpdGUo
Z3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDE3LCAweGU3ZjgpOwo+Cj4gCQkvKiB0dXJuIG9uIGFs
bCBQSFlzICovCj4gCQlmb3IgKGkgPSAwOyBpIDw9IDQ7IGkrKykgewo+IAkJCXZhbCA9IF9tdDc2
MjBfbWlpX3JlYWQoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIGksIDApOwo+IAkJCXZhbCAmPSB+QklU
KDExKTsKPiAJCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgaSwgMCwg
dmFsKTsKPiAJCX0KPiAJfQo+Cj4gCS8qIGdsb2JhbCBwYWdlIDAgKi8KPiAJX210NzYyMF9taWlf
d3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweDgwMDApOwo+IAlfbXQ3NjIwX21p
aV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMCwgMzAsIDB4YTAwMCk7Cj4gCV9tdDc2MjBf
bWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAzMCwgMHhhMDAwKTsKPiAJX210NzYy
MF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDIsIDMwLCAweGEwMDApOwo+IAlfbXQ3
NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMywgMzAsIDB4YTAwMCk7Cj4KPiAJ
X210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDAsIDQsIDB4MDVlMSk7Cj4g
CV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCA0LCAweDA1ZTEpOwo+
IAlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMiwgNCwgMHgwNWUxKTsK
PiAJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDMsIDQsIDB4MDVlMSk7
Cj4KPiAJLyogZ2xvYmFsIHBhZ2UgMiAqLwo+IAlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+
ZXBoeV9iYXNlICsgMSwgMzEsIDB4YTAwMCk7Cj4gCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3
LT5lcGh5X2Jhc2UgKyAwLCAxNiwgMHgxMTExKTsKPiAJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBn
c3ctPmVwaHlfYmFzZSArIDEsIDE2LCAweDEwMTApOwo+IAlfbXQ3NjIwX21paV93cml0ZShnc3cs
IGdzdy0+ZXBoeV9iYXNlICsgMiwgMTYsIDB4MTUxNSk7Cj4gCV9tdDc2MjBfbWlpX3dyaXRlKGdz
dywgZ3N3LT5lcGh5X2Jhc2UgKyAzLCAxNiwgMHgwZjBmKTsKPgo+IAkvKiBDUFUgUG9ydDYgRm9y
Y2UgTGluayAxRywgRkMgT04gKi8KPiAJbXRrX3N3aXRjaF93MzIoZ3N3LCAweDVlMzNiLCBHU1df
UkVHX1BPUlRfUE1DUig2KSk7Cj4KPiAJLyogU2V0IFBvcnQgNiBhcyBDUFUgUG9ydCAqLwo+IAlt
dGtfc3dpdGNoX3czMihnc3csIDB4N2Y3ZjdmZTAsIDB4MDAxMCk7Cj4KPiAJLyogc2V0dXAgcG9y
dCA0ICovCj4gCWlmIChnc3ctPnBvcnQ0ID09IFBPUlQ0X0VQSFkpIHsKPiAJCXUzMiB2YWwgPSBy
dF9zeXNjX3IzMihTWVNDX1JFR19DRkcxKTsKPgo+IAkJdmFsIHw9IDMgPDwgMTQ7Cj4gCQlydF9z
eXNjX3czMih2YWwsIFNZU0NfUkVHX0NGRzEpOwo+IAkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBn
c3ctPmVwaHlfYmFzZSArIDQsIDMwLCAweGEwMDApOwo+IAkJX210NzYyMF9taWlfd3JpdGUoZ3N3
LCBnc3ctPmVwaHlfYmFzZSArIDQsIDQsIDB4MDVlMSk7Cj4gCQlfbXQ3NjIwX21paV93cml0ZShn
c3csIGdzdy0+ZXBoeV9iYXNlICsgNCwgMTYsIDB4MTMxMyk7Cj4gCQlwcl9pbmZvKCJnc3c6IHNl
dHRpbmcgcG9ydDQgdG8gZXBoeSBtb2RlXG4iKTsKPiAJfSBlbHNlIGlmICghbWRpb19tb2RlKSB7
Cj4gCQl1MzIgdmFsID0gcnRfc3lzY19yMzIoU1lTQ19SRUdfQ0ZHMSk7Cj4KPiAJCXZhbCAmPSB+
KDMgPDwgMTQpOwo+IAkJcnRfc3lzY193MzIodmFsLCBTWVNDX1JFR19DRkcxKTsKPiAJCXByX2lu
Zm8oImdzdzogc2V0dGluZyBwb3J0NCB0byBnbWFjIG1vZGVcbiIpOwo+IAl9Cj4gfQo+Cj4KPiBU
aGFua3MsCj4gRGFuaWVsCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+IExpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpUaGFua3MsCkRhbmllbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
