Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E05281B
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 11:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yZaOUqdmyCG6xIxxU9Je3M5u7vnadbgd+U0ipULqhKk=; b=jOvwksEW7ZLn2z54xGdCBYqgb
	a1M70OEsVpGCfI2HEv3E4hXgwqBtYA5XVMc0Gt+x8Jk5trvfhMPKnRAUjBdNZHEM2D52XxM+byW1j
	n9lMrQLHQTSEkmFB1OeNZ3kxT/qGzge4oIyXq/sZfG7teq5ropL0QtpgOWOaxqempm2VUKunoNqdF
	XPThpcME4gSXhFB/NtzSf/jQTI7xIQuLQLOgSJ3Cr06+DuA80XK6kch2cw1jwTWMMUTVjW987REkK
	xU9/mC5Z+q11QZSq/S36XulTbY1be1UPJnOYSCCnBelq1crWyz8a4Usd64u7FYcYWHyUyQi57npkt
	zzzpDr1SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhmr-0002Af-I7; Tue, 25 Jun 2019 09:30:49 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhmm-0002AD-Rs
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 09:30:47 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id A93FD5FE8C;
 Tue, 25 Jun 2019 11:30:42 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="NjNPM79I"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 6B12D1CC959E;
 Tue, 25 Jun 2019 11:30:42 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 6B12D1CC959E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561455042;
 bh=Kf/dqJQS2EZRpdjzpHIdn9ywyvRtAEGJy1GooxfGZgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NjNPM79Ia0xC+1OVgxBhpAQnzMvBYW2UuY05ryg1hqtdqGxBVCi7Kiw1+g0Gwyecz
 LTZhINi6UqyrQCzzM84X6oO8nEaz63Kj6QNi5iOmxYDunIN7mxjJ80ftsTJROO7ogW
 N/HuAXdgteDMyhjNt+VVpQ3t8PPIKSy7V6lCWN68Zd+tD+DWJ+AN0mWAdyRfrQY571
 Iqn1fYKOoKfyXXevNueMZEYf+MOs2/2Ue/3qxsZ3WWDg5x2+KhbSbWNk19U698oNWq
 QadjIuXhNcN4oLo+mCMhe9fZRUeug1CulqNSQ9O+Hw+cRYxUocHOipR1XuGDSzhBwk
 SUC5XMyO+hd1Q==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 25 Jun 2019 09:30:42 +0000
Date: Tue, 25 Jun 2019 09:30:42 +0000
Message-ID: <20190625093042.Horde._8BNPFSzW6B9-CI8P6akHTh@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC net-next 4/5] dt-bindings: net: dsa: mt7530: Add
 mediatek,ephy-handle to isolate ext. phy
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-5-opensource@vdorst.com>
 <e6175753-eb99-63e5-767e-f82becbf8d1a@gmail.com>
In-Reply-To: <e6175753-eb99-63e5-767e-f82becbf8d1a@gmail.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_023045_609174_865920CA 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux@armlinux.org.uk, davem@davemloft.net,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, vivien.didelot@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT46CgpIaSBGbG9y
aWFuCgo+IE9uIDYvMjQvMTkgNzo1MiBBTSwgUmVuw6kgdmFuIERvcnN0IHdyb3RlOgo+PiBPbiBz
b21lIHBsYXRmb3J1bSB0aGUgZXh0ZXJuYWwgcGh5IGNhbiBvbmx5IGludGVyZmFjZSB0byB0aGUg
cG9ydCA1IG9mIHRoZQo+PiBzd2l0Y2ggYmVjYXVzZSB0aGUgUkdNSUkgVFggYW5kIFJYIGxpbmVz
IGFyZSBzd2FwcGVkLiBCdXQgaXQgc3RpbGwgY2FuIGJlCj4+IHVzZWZ1bCB0byB1c2UgdGhlIGlu
dGVybmFsIHBoeSBvZiB0aGUgc3dpdGNoIHRvIGFjdCBhcyBhIFdBTiBwb3J0IHdoaWNoCj4+IGNv
bm5lY3RlcyB0byB0aGUgMm5kIEdNQUMuIFRoaXMgZ2l2ZXMgV0FOIHBvcnQgZGVkaWNhdGVkIGJh
bmR3aWR0aCB0bwo+PiB0aGUgU09DLiBUaGlzIGluY3JlYXNlcyB0aGUgTEFOIGFuZCBXQU4gcm91
dGluZy4KPj4KPj4gQnkgYWRkaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0eSBtZWRpYXRlayxlcGh5
LWhhbmRsZSwgdGhlIGV4dGVybmFsIHBoeQo+PiBpcyBwdXQgaW4gaXNvbGF0aW9uIG1vZGUgd2hl
biBpbnRlcm5hbCBwaHkgaXMgY29ubmVjdGVkIHRvIDJuZCBHTUFDIHZpYQo+PiBwaHktaGFuZGxl
IHByb3BlcnR5Lgo+Cj4gTW9zdCBwbGF0Zm9ybXMgd2UgaGF2ZSBzZWVuIHNvIGZhciBpbXBsZW1l
bnQgdGhpcyBsb2dpYyB3aXRoIGEgbWRpby1tdXgsCj4gY2FuIHlvdSBzZWUgaWYgdGhhdCBpcyBw
b3NzaWJsZSBoZXJlPyBzdG1tYWMgaGFzIHBsZW50eSBvZiBleGFtcGxlcyBsaWtlCj4gdGhvc2Uu
CgpNYXkgSSBkb24ndCB1bmRlcnN0YW5kIGl0IGNvcnJlY3RseSwgYnV0IGFsbCB0aGUgZGV2aWNl
cyBhcmUgb24gdGhlIHNhbWUgTURJTwpidXMuCkkgdHJpZWQgdG8gbWFrZSBhIEFTQ0lJIGRpYWdy
YW0gdG8gbWFrZSBpdCBhIGJpdCBtb3JlIGNsZWFyLgoKICArLS0tLS0tLS0tLS0tLS0tLS0tLSsg
ICAgICAgICAgICAgICAgICAgICAKKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rCiAgfCBTT0MgTVQ3NjIxLzMgICAgICB8ICAgICAgICAgICAgICAgICAgICB8
IE1UNzUzMCBTV0lUQ0ggICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgIHwKICB8ICAg
Ky0tLS0tLS0tLS0tLS0rIHwoVClSR01JSSBCVVMgICAgICAgIHwgICstLS0tLS0tLS0tLS0tKyAg
ICAKSU5URVJOQUwgICAgICAgICAgICAgICAgICB8CiAgfCAgIHwgIDFzdCBHTUFDICAgPC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0+ICBQT1JUIDYgICAgIHwgICBNSUkgIApCVVMgICstLS0tLS0t
LS0tKyAgICAgfAogIHwgICArLS0tLS0tLS0tLS0tLSsgfCAgICAgICAgICAgICAgICAgICAgfCAg
Ky0tLS0tLS0tLS0tLS0rICAgICAgCistLS0tLS0+ICBHTUFDNSAgIHwgICAgIHwKICB8ICAgICAg
ICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
fCAgICAgCiAgICstLS0tLS0tLS0tKyAgICAgfAogIHwgICArLS0tLS0tLS0tLS0tLSsgfCBSR01J
SSBCVVMgICAgICAgICAgfCAgKy0tLS0tLS0tLS0tLS0rICAgICB8ICAgICAKICAgICAgICAgICAg
ICAgICAgICB8CiAgfCAgIHwgIDJuZCBHTUFDICAgPC0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0+
ICBQT1JUIDUgICAgICstLS0tLSsgICAgIAogICArLS0tLS0tLS0tLSsgICAgIHwKICB8ICAgKy0t
LS0tLS0tLS0tLS0rIHwgICAgICAgICAgICAgICAgfCAgIHwgICstLS0tLS0tLS0tLS0tKyAgICAg
IAorLS0tLS0tPiAgUEhZIFAwICArPC0tKyB8CiAgfCAgICAgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgIHwgICB8ICAgICAgICAgICAgICAgICAgICAgIHwgICAgIAogICArLS0tLS0tLS0t
LSsgICB8IHwKICB8ICAgKy0tLS0tLS0tLS0tLS0rIHwgIE1ESU8gQlVTICAgICAgfCAgIHwgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAgCiAgICAgICAgICAgICAgICAgIHwgfAogIHwgICB8ICBN
RElPICAgICAgICstLS0tLS0tLSsgICAgICAgICB8ICAgfCAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAKICAgKy0tLS0tLS0tLS0rICAgfCB8CiAgfCAgICstLS0tLS0tLS0tLS0tKyB8ICAgICAg
fCAgICAgICAgIHwgICB8ICAgICAgICAgICAgICAgICAgICAgICAKKy0tLS0tLT4gIFBIWSBQNCAg
KzwtLSsgfAogIHwgICAgICAgICAgICAgICAgICAgfCAgICAgIHwgICAgICAgICB8ICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKICAgKy0tLS0tLS0tLS0rICAgfCB8CiAgKy0tLS0tLS0t
LS0tLS0tLS0tLS0rICAgICAgfCAgICAgICAgIHwgICAgCistLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtKwogICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgICB8ICAgICAgICstLS0tLS0tLS0tLS0tKyAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgfAogICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICB8ICAgICAgIHwgIEVY
VEVSTkFMICAgfCAgICAgICAgICAKICAgICAgICAgICAgICAgICAgfAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAgICAgICArLS0tLS0tLT4gIFBIWSBBVDgwMzMgfCBTR01JSSAgCkJV
UyArLS0tLS0tLS0tLSsgICB8CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgfCAgICAgICAgICAgICAgCistLS0tLS0tLS0tLT4gU0ZQIENBR0UgfCAgIHwKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICArLS0tLS0tLS0tLS0tLS0tLT4rICAgICAgICAgICAg
IHwgICAgICAgICAgCiAgICstLS0tLS0tLS0tKyAgIHwKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgIHwgICAgICAgICAgCiAgICAgICAg
ICAgICAgICAgIHwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAg
ICArLS0tLS0tLS0tLS0tLSsgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIHwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwoKSSBkb24ndCBzZWUgd2h5IEkgbmVlZCBhIE1ESU8g
bXV4LiBEZXZpY2VzOyAybmQgR01BQywgZXh0ZXJuYWwgcGh5IGFuZCBwb3J0IDUKc2hhcmUgdGhl
IHNhbWUgUkdNSUkgYnVzLiBEZXBlbmRpbmcgb24gdGhlIHBvcnQgNSBtdXggc2V0dGluZ3MsIHBv
cnQgNSAgCmlzIGFjdGluZwphcyBhIEdNQUMgb2YgUEhZIG9mIHBvcnQgMC80LiBBcyBsb25nIGFz
IHRoZSB1bnVzZWQgZGV2aWNlcyBkb2Vzbid0IGRyaXZlIHRoZQpSR01JSSBidXMgd2UgYXJlIGdv
b2QuCgoybmQgR01BQyBSR01JSSBjb250cm9sIGlzIGN1cnJlbnRseSBzZXQgd2l0aCBhIHBpbmN0
cmwgIlJHTUlJMiIuClBvcnQgNSBhbmQgZXh0ZXJuYWwgcGh5IGFyZSBkb25lIGluIG10NzUzMF9w
b3J0NV9zZXR1cCgpIGRlcGVuZGluZyBvbiB0aGUKZGV2aWNlLXRyZWUuCgpHcmVhdHMsCgpSZW7D
qQoKPiAtLQo+IEZsb3JpYW4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbWVkaWF0ZWsK
