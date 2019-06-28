Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF645A6A4
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 23:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MaChtMuX2x/YFhi2UQxZEuZtVD5dkEbWSKr3N4vFl+s=; b=VHLexFs73ZLyE2
	3lUHg6zYNZn+zrdw5tQAhaJ2khlwIpQUDnuG2Fy9ZsKjsVgz1zNWmbZaeecygjnVNOnVAGbMBaik1
	VdclWg0N4OgUMCBHxLBcmtkzzgpT2DkXPtsrygBDYtGLi86sM7+2ogyw89VmLL1qDDHXxbeoYhnsV
	1Zl6QxNkPuIMI/VDA9vbZ27tD/zPdH5uOdx/B/MfXXVjCwWI4jo/YGmyINGzvwlXQW8JV3JZYLHS9
	6ufykCFvx65B9jyVDthJY7bxZhWsf/2MQD2Xloa/rT3y9dJy93xzsMT/AcZSQ/GLnmUvCGCnFTAz3
	AwN/hxpDGGLaPwi806Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgysI-0003iC-Tw; Fri, 28 Jun 2019 21:57:42 +0000
Received: from mail.gsat.us ([66.165.183.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgyrx-0003WK-Fq
 for linux-mediatek@lists.infradead.org; Fri, 28 Jun 2019 21:57:23 +0000
Received: from [192.168.1.134] (70-142-57-80.lightspeed.rcsntx.sbcglobal.net
 [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgse.com (Postfix) with ESMTPSA id 8A2A5FA41D9;
 Fri, 28 Jun 2019 21:57:16 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gsat.us; s=default;
 t=1561759036; bh=O/6igsGHu3CNdxxLoDWCgpHt5xXBeQPxeyTohasL2MY=;
 h=To:From:Subject:Date;
 b=QT8N1GhBoJsKZlrgP4Hu6RSx/dTu6bYF0FGWT89ttxD65SL6jABGwRWiqCfQ2cVEE
 356F30CgyCxj9PCnOR3aKndIQvBo01XjBL1xmNNVf1zEGc3nWDioT7u5YZhcbUmeOS
 /wKInxOvtDktREwEViT9eca2ooEwtG8KuWxh4vhg=
To: John Crispin <blogic@openwrt.org>, Sean Wang <sean.wang@mediatek.com>,
 Felix Fietkau <nbd@nbd.name>, openwrt-devel
 <openwrt-devel@lists.openwrt.org>, Michael Lee <igvtee@gmail.com>,
 linux-mediatek@lists.infradead.org
From: Daniel Santos <daniel@gsat.us>
Subject: mt7620/1, mt7530: Where are these MAC and MII registers documented?
Message-ID: <d40eafc3-b2c6-d4b6-cfe0-9e94092bfc03@gsat.us>
Date: Fri, 28 Jun 2019 16:55:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_145721_752277_97978576 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGVsbG8sCgpJJ20gbG9va2luZyBhdCB0aGUgbXQ3NjIwIEV0aGVybmV0IGRyaXZlciBhbmQgSSBz
ZWUgYSBsb3Qgb2YgbWFnaWMKaGFwcGVuaW5nIGZvciB3aGljaCBJIGNhbm5vdCBmaW5kIGRvY3Vt
ZW50YXRpb24gYW55d2hlcmUuwqAgQ2FuIGFueWJvZHkKdGVsbCBtZSB3aGVyZSBJIGNhbiBnZXQg
dGhlIGRhdGFzaGVldHMgLyBwcm9ncmFtbWVyJ3MgZ3VpZGUgdGhhdApkb2N1bWVudCB0aGVzZSBy
ZWdpc3RlcnMgcGxlYXNlPwoKRXhhbXBsZXM6CkkvTyB0byAweDc4MzAsIDB4N2E0MCAtLSBFbnRy
aWVzIGluIHRoZSBXQVBJIHRhYmxlP8KgIFRoYXQgc2VlbXMgc3RyYW5nZS4KCl9tdDc2MjBfbWlp
X3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyMiwgMHgxMGNmKTvCoCBUaGUgbXQ3NjIw
CnByb2dyYW1taW5nIGd1aWRlIG9ubHkgZG9jdW1lbnRzIDAtNiwgd2hpbGUgdGhlIDgwMi4zLTIw
MDUgaGFzCmV2ZXJ5dGhpbmcgZnJvbSAxNi0zMSBtYXJrZWQgYXMgInZlbmRvciBzcGVjaWZpYyIu
wqAgQWxzbywgd2hhdCBkb2VzIHBvcnQKMzEgZG8/CgpGcm9tIHRoZSBjdXJyZW50IE9wZW5XUlQg
aGVhZDoKCnN0YXRpYyB2b2lkIG10NzYyMF9od19pbml0KHN0cnVjdCBtdDc2MjBfZ3N3ICpnc3cs
IGludCBtZGlvX21vZGUpCnsKCXUzMiBpOwoJdTMyIHZhbDsKCXUzMiBpc19CR0EgPSAocnRfc3lz
Y19yMzIoMHgwYykgPj4gMTYpICYgMTsKCglydF9zeXNjX3czMihydF9zeXNjX3IzMihTWVNDX1JF
R19DRkcxKSB8IEJJVCg4KSwgU1lTQ19SRUdfQ0ZHMSk7CgltdGtfc3dpdGNoX3czMihnc3csIG10
a19zd2l0Y2hfcjMyKGdzdywgR1NXX1JFR19DS0dDUikgJiB+KDB4MyA8PCA0KSwgR1NXX1JFR19D
S0dDUik7CgoJLyogRW5hYmxlIE1JQiBzdGF0cyAqLwoJbXRrX3N3aXRjaF93MzIoZ3N3LCBtdGtf
c3dpdGNoX3IzMihnc3csIEdTV19SRUdfTUlCX0NOVF9FTikgfCAoMSA8PCAxKSwgR1NXX1JFR19N
SUJfQ05UX0VOKTsKCglpZiAobWRpb19tb2RlKSB7CgkJdTMyIHZhbDsKCgkJLyogdHVybiBvZmYg
ZXBoeSBhbmQgc2V0IHBoeSBiYXNlIGFkZHIgdG8gMTIgKi8KCQltdGtfc3dpdGNoX3czMihnc3cs
IG10a19zd2l0Y2hfcjMyKGdzdywgR1NXX1JFR19HUEMxKSB8CgkJCSgweDFmIDw8IDI0KSB8ICgw
eGMgPDwgMTYpLAoJCQlHU1dfUkVHX0dQQzEpOwoKCQkvKiBzZXQgTVQ3NTMwIGNlbnRyYWwgYWxp
Z24gKi8KCQl2YWwgPSBtdDc1MzBfbWRpb19yMzIoZ3N3LCAweDc4MzApOwoJCXZhbCAmPSB+QklU
KDApOwoJCXZhbCB8PSBCSVQoMSk7CgkJbXQ3NTMwX21kaW9fdzMyKGdzdywgMHg3ODMwLCB2YWwp
OwoKCQl2YWwgPSBtdDc1MzBfbWRpb19yMzIoZ3N3LCAweDdhNDApOwoJCXZhbCAmPSB+QklUKDMw
KTsKCQltdDc1MzBfbWRpb193MzIoZ3N3LCAweDdhNDAsIHZhbCk7CgoJCW10NzUzMF9tZGlvX3cz
Mihnc3csIDB4N2E3OCwgMHg4NTUpOwoJfSBlbHNlIHsKCgkJaWYgKGdzdy0+ZXBoeV9iYXNlKSB7
CgkJCS8qIHNldCBwaHkgYmFzZSBhZGRyIHRvIGVwaHlfYmFzZSAqLwoJCQltdGtfc3dpdGNoX3cz
Mihnc3csIG10a19zd2l0Y2hfcjMyKGdzdywgR1NXX1JFR19HUEMxKSB8CgkJCQkoZ3N3LT5lcGh5
X2Jhc2UgPDwgMTYpLAoJCQkJR1NXX1JFR19HUEMxKTsKCQkJZmVfcmVzZXQoQklUKDI0KSk7IC8q
IFJlc2V0cyB0aGUgRXRoZXJuZXQgUEhZIGJsb2NrLiAqLwoJCX0KCgkJLyogZ2xvYmFsIHBhZ2Ug
NCAqLwoJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAzMSwgMHg0
MDAwKTsKCgkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDE3LCAw
eDc0NDQpOwoJCWlmIChpc19CR0EpCgkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5
X2Jhc2UgKyAxLCAxOSwgMHgwMTE0KTsKCQllbHNlCgkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywg
Z3N3LT5lcGh5X2Jhc2UgKyAxLCAxOSwgMHgwMTE3KTsKCgkJX210NzYyMF9taWlfd3JpdGUoZ3N3
LCBnc3ctPmVwaHlfYmFzZSArIDEsIDIyLCAweDEwY2YpOwoJCV9tdDc2MjBfbWlpX3dyaXRlKGdz
dywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyNSwgMHg2MjEyKTsKCQlfbXQ3NjIwX21paV93cml0ZShn
c3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjYsIDB4MDc3Nyk7CgkJX210NzYyMF9taWlfd3JpdGUo
Z3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDI5LCAweDQwMDApOwoJCV9tdDc2MjBfbWlpX3dyaXRl
KGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyOCwgMHhjMDc3KTsKCQlfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjQsIDB4MDAwMCk7CgoJCS8qIGdsb2JhbCBwYWdl
IDMgKi8KCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMzEsIDB4
MzAwMCk7CgkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDE3LCAw
eDQ4MzgpOwoKCQkvKiBnbG9iYWwgcGFnZSAyICovCgkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBn
c3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweDIwMDApOwoJCWlmIChpc19CR0EpIHsKCQkJX210NzYy
MF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDIxLCAweDA1MTUpOwoJCQlfbXQ3
NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjIsIDB4MDA1Myk7CgkJCV9t
dDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyMywgMHgwMGJmKTsKCQkJ
X210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDI0LCAweDBhYWYpOwoJ
CQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMjUsIDB4MGZhZCk7
CgkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAyNiwgMHgwZmMx
KTsKCQl9IGVsc2UgewoJCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsg
MSwgMjEsIDB4MDUxNyk7CgkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2Ug
KyAxLCAyMiwgMHgwZmQyKTsKCQkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFz
ZSArIDEsIDIzLCAweDAwYmYpOwoJCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdzdy0+ZXBoeV9i
YXNlICsgMSwgMjQsIDB4MGFhYik7CgkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5
X2Jhc2UgKyAxLCAyNSwgMHgwMGFlKTsKCQkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVw
aHlfYmFzZSArIDEsIDI2LCAweDBmZmYpOwoJCX0KCQkvKiBnbG9iYWwgcGFnZSAxICovCgkJX210
NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweDEwMDApOwoJCV9t
dDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAxLCAxNywgMHhlN2Y4KTsKCgkJ
LyogdHVybiBvbiBhbGwgUEhZcyAqLwoJCWZvciAoaSA9IDA7IGkgPD0gNDsgaSsrKSB7CgkJCXZh
bCA9IF9tdDc2MjBfbWlpX3JlYWQoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIGksIDApOwoJCQl2YWwg
Jj0gfkJJVCgxMSk7CgkJCV9tdDc2MjBfbWlpX3dyaXRlKGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyBp
LCAwLCB2YWwpOwoJCX0KCX0KCgkvKiBnbG9iYWwgcGFnZSAwICovCglfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMzEsIDB4ODAwMCk7CglfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMCwgMzAsIDB4YTAwMCk7CglfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgMzAsIDB4YTAwMCk7CglfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMiwgMzAsIDB4YTAwMCk7CglfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMywgMzAsIDB4YTAwMCk7CgoJX210NzYyMF9taWlfd3Jp
dGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDAsIDQsIDB4MDVlMSk7CglfbXQ3NjIwX21paV93cml0
ZShnc3csIGdzdy0+ZXBoeV9iYXNlICsgMSwgNCwgMHgwNWUxKTsKCV9tdDc2MjBfbWlpX3dyaXRl
KGdzdywgZ3N3LT5lcGh5X2Jhc2UgKyAyLCA0LCAweDA1ZTEpOwoJX210NzYyMF9taWlfd3JpdGUo
Z3N3LCBnc3ctPmVwaHlfYmFzZSArIDMsIDQsIDB4MDVlMSk7CgoJLyogZ2xvYmFsIHBhZ2UgMiAq
LwoJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDMxLCAweGEwMDAp
OwoJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDAsIDE2LCAweDExMTEp
OwoJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDEsIDE2LCAweDEwMTAp
OwoJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDIsIDE2LCAweDE1MTUp
OwoJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBnc3ctPmVwaHlfYmFzZSArIDMsIDE2LCAweDBmMGYp
OwoKCS8qIENQVSBQb3J0NiBGb3JjZSBMaW5rIDFHLCBGQyBPTiAqLwoJbXRrX3N3aXRjaF93MzIo
Z3N3LCAweDVlMzNiLCBHU1dfUkVHX1BPUlRfUE1DUig2KSk7CgoJLyogU2V0IFBvcnQgNiBhcyBD
UFUgUG9ydCAqLwoJbXRrX3N3aXRjaF93MzIoZ3N3LCAweDdmN2Y3ZmUwLCAweDAwMTApOwoKCS8q
IHNldHVwIHBvcnQgNCAqLwoJaWYgKGdzdy0+cG9ydDQgPT0gUE9SVDRfRVBIWSkgewoJCXUzMiB2
YWwgPSBydF9zeXNjX3IzMihTWVNDX1JFR19DRkcxKTsKCgkJdmFsIHw9IDMgPDwgMTQ7CgkJcnRf
c3lzY193MzIodmFsLCBTWVNDX1JFR19DRkcxKTsKCQlfbXQ3NjIwX21paV93cml0ZShnc3csIGdz
dy0+ZXBoeV9iYXNlICsgNCwgMzAsIDB4YTAwMCk7CgkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBn
c3ctPmVwaHlfYmFzZSArIDQsIDQsIDB4MDVlMSk7CgkJX210NzYyMF9taWlfd3JpdGUoZ3N3LCBn
c3ctPmVwaHlfYmFzZSArIDQsIDE2LCAweDEzMTMpOwoJCXByX2luZm8oImdzdzogc2V0dGluZyBw
b3J0NCB0byBlcGh5IG1vZGVcbiIpOwoJfSBlbHNlIGlmICghbWRpb19tb2RlKSB7CgkJdTMyIHZh
bCA9IHJ0X3N5c2NfcjMyKFNZU0NfUkVHX0NGRzEpOwoKCQl2YWwgJj0gfigzIDw8IDE0KTsKCQly
dF9zeXNjX3czMih2YWwsIFNZU0NfUkVHX0NGRzEpOwoJCXByX2luZm8oImdzdzogc2V0dGluZyBw
b3J0NCB0byBnbWFjIG1vZGVcbiIpOwoJfQp9CgoKVGhhbmtzLApEYW5pZWwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
