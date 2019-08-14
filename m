Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464EC8D43C
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 15:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HNjsjHu5U/+6fe5f5oe52+ZP2EnGBg4n8A1buTCVeyM=; b=MzsR927PM/l8Agf3iTWhMGz4p
	cs0fHXVhs6Gh2tzsC6dIKjMwrgaEGwVHykr2OIQV11KQeDAlphwLEnti4hjFzKMs6iSaJCT6Q4BBx
	ztWh2nPo+z4Go/Ix+fEqrAVzzoL8s37ZMhmPNII4Cx6shgXgZhuHHBY7sjquXNSe3ZYGwC2XfxAky
	H+SzfkCL3CiheoI/6t5Xs7KiDjYaYX67PX0WtGntK5jR+WwS5bJuEvvqSwfY+if88vSsKObxX1LlM
	7PbIterJlLVm4cwtooZ/S6VCm1IqUSLUGzrKWAggsJIcMdjUMqKaBjukBK9IoVChpApFfw49Fe77a
	316Gw9EiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxt1U-0005CM-7j; Wed, 14 Aug 2019 13:09:04 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxt1O-0005By-UN
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 13:09:01 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id DF9A65FA49;
 Wed, 14 Aug 2019 15:08:56 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="oSpMeUu1"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 958251D70740;
 Wed, 14 Aug 2019 15:08:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 958251D70740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1565788136;
 bh=rCkI1Ci3GvdZbWGszkVHAA9IspgxN9Ks7fBmasSUZus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oSpMeUu1TDmNTautXoqLW1xI80hWC7AEBfpNIdM0Or1pj6/oBgxHh/uIWoeEJrjQh
 Cgl8lECyruHdQJGjvHrdm+rlO2mH9QsxXJ5Bm/1BcDcupE7zat5dptZ04yLzWa8hUI
 BT8Xyw/qnKOfJAtCL6RX94kIlKjUS/lt2UE3ONShdpA1QI5W+Glk9Sj5rj+RZUmYUV
 qgZFLjCmaILM+lwMk2JLlCNxRWF6DlQgjnmX9ZZhQwFD/NIj1l5MUlZB418Y9pLIBO
 lkpa8+7Yv52eFP6Antx0KaPpDHEh7F2skK9fuIcKipttXTuY660EFF1CmFnAP37zn2
 aHknJEmHKT7XA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Wed, 14 Aug 2019 13:08:56 +0000
Date: Wed, 14 Aug 2019 13:08:56 +0000
Message-ID: <20190814130856.Horde.wzHL8_VRawJ8NIIk--BD18e@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Stefan Roese <sr@denx.de>
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
References: <20190717125345.Horde.JcDE_nBChPFDDjEgIRfPSl3@www.vdorst.com>
 <a92d7207-80b2-e88d-d869-64c9758ef1da@denx.de>
 <20190814092621.Horde.epvj8zK96-aCiV70YB5Q7II@www.vdorst.com>
 <3ff9a0fc-f5ff-3798-4409-ed5b900e0b05@denx.de>
In-Reply-To: <3ff9a0fc-f5ff-3798-4409-ed5b900e0b05@denx.de>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_060859_535999_4D4CDE7F 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLAoKUXVvdGluZyBTdGVmYW4gUm9lc2UgPHNyQGRlbnguZGU+OgoKPiBIaSBSZW5l
LAo+Cj4gT24gMTQuMDguMTkgMTE6MjYsIFJlbsOpIHZhbiBEb3JzdCB3cm90ZToKCjxzbmlwPgoK
Pj4gR3JlYXQsIFRoYW5rcyBmb3IgYWRkcmVzc2luZyB0aGlzIGlzc3VlLgo+Pgo+PiBJIGhvcGUg
d2UgY2FuIGNvbGxhYm9yYXRlIHRvIGFsc28gc3VwcG9ydCBtdDc2eDggaW4gbXkgUEhZTElOSyAg
Cj4+IHBhdGNoZXMgWzBdWzFdLgo+PiBJIGFtIGNsb3NlIHRvIHBvc3RpbmcgVjIgb2YgdGhlIHBh
dGNoZXMgYnV0IEkgYW0gY3VycmVudGx5IHdhaXRpbmcgb24gc29tZQo+PiBmaWJlciBtb2R1bGVz
IHRvIHRlc3QgdGhlIGNoYW5nZXMgYmV0dGVyLgo+Cj4gSSBkbyBoYXZlIGEgImhhY2tpc2giIERT
QSBkcml2ZXIgZm9yIHRoZSBpbnRlZ3JhdGVkIHN3aXRjaCAoRVNXKSBpbiBteQo+IHRyZWUuIElm
IHRpbWUgcGVybWl0cywgSSdsbCB3b3JrIG9uIHVwc3RyZWFtaW5nIHRoaXMgb25lIGFzIHdlbGwu
IEFuZAo+IHllcywgaG9wZWZ1bGx5IHdlIGNhbiBjb2xsYWJvcmF0ZSBvbiB5b3VyIFBIWUxJTksg
d29yayB0b28uCgpJdCBpcyBub3Qgb25seSB0aGUgc3dpdGNoIGRyaXZlciBidXQgYWxzbyB0aGUg
TWVkaWF0ZWsgZXRoZXJuZXQgZHJpdmVyIHRoYXQgaXMKY29udmVydGVkIHRvIFBIWUxJTksuIFNv
IHdlIGhhdmUgYSBjb25mbGljdCBpbiBlYWNoIG90aGVycyB3b3JrLgoKSSBkb24ndCBubyB3aGF0
IHRoZSByaWdodCB3YXkgaXMgdG8gZ28gYnV0IEkgd2FzIHRoaW5raW5nIGFib3V0IDIgb3B0aW9u
cwoKMS4gTGV0cyBzYXkgeW91ciB3b3JrIGdvZXMgaW4gZmlyc3QuIEkgcmViYXNlIG15IHBhdGNo
ZXMgb24geW91ciBjaGFuZ2VzLgogICAgV2UgY29sbGFib3JhdGUgdG8gY3JlYXRlIGFuIGV4dHJh
IFBIWUxJTksgcGF0Y2ggb250b3Agb2YgbXkgd29yayAgCmZvciB5b3VyIFNPQy4KMi4gTXkgcGF0
Y2hlcyBnb2VzIGluIGZpcnN0IGFuZCB5b3UgYWRhcHQgeW91ciBwYXRjaGVzIHRvIHRoYXQuCgpX
aGF0IGRvIHlvdSB0aGluaz8KCkkgaGF2ZSBsYXRlc3QgY2hhbmdlcyBoZXJlIFswXS4KCkFsc28g
bXkgbW9kdWxlcyBkaWQgYXJyaXZlIHNvIEkgY2FuIHRlc3QgbXkgY2hhbmdlcy4KCj4gVGhhbmtz
LAo+IFN0ZWZhbgoKR3JlYXRzLAoKUmVuw6kKClswXSAgCmh0dHBzOi8vZ2l0aHViLmNvbS92RG9y
c3QvbGludXgtMS9jb21taXRzL25ldC1uZXh0LXBoeWxpbmstdXBzdHJlYW0tbWVkaWF0ZWsKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRp
YXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
