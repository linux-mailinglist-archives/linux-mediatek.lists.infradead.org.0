Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5199B11A
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Apr 2019 01:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTxzss++5/PUz0DvpeNX3pczfBq0QsHgs7TCIGvlOEQ=; b=YEHqrrC6fe8VCf
	sOcD5aV1iPlmGnAPVpo4lGCLlgNwgzuzucr76fo00yp60zUVtwdgkRaijd20MWwRmZ4Qtkf8f/mll
	PegkMF3Pke885Lg/L/TrTe32gttHt+nmRx/z1vgvsDNf3Pt3FbqDq2AGbVkZobzXIEi4FBrgwEXIU
	lMpdVsGptBUaeoJfCK4v+Ww4wRhOQDSzd1VP49qASzIYTtfJzKRDWOlNwpLC9QtUC2aPwGzHWvxgr
	VHiD7QWMDDLK5nsKwayqAqdiWJwk3dJrKJoxHechEnsn9IhX5lFJX07dHA3Y/PzouzgBdTBkRnLtr
	VxxaFlDfha00PQ+uSt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hK9wH-0006m3-HO; Fri, 26 Apr 2019 23:07:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK9w7-0006ei-E2; Fri, 26 Apr 2019 23:07:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6BF9236B8;
 Sat, 27 Apr 2019 01:07:14 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6680faef;
 Sat, 27 Apr 2019 01:07:12 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 0/4] of_net: Add NVMEM support to of_get_mac_address
Date: Sat, 27 Apr 2019 01:06:38 +0200
Message-Id: <1556320002-26213-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_160719_628055_DC1E71F1 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-mediatek@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Alban Bedel <albeu@free.fr>, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpcyBhIGNvbnRpbnVhdGlvbiBvZiBteSBwcmV2aW91cyBh
dHRlbXB0WzFdLCB3aGVyZSBJJ3ZlCnRyaWVkIHRvIHdpcmUgTVREIGxheWVyIGludG8gb2ZfZ2V0
X21hY19hZGRyZXNzLCBzbyBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0bwpsb2FkIE1BQyBhZGRyZXNz
ZXMgZnJvbSB2YXJpb3VzIE5WTUVNcyBhcyBFRVBST01zIGV0Yy4KClByZWRlY2Vzc29yIG9mIHRo
aXMgcGF0Y2ggd2hpY2ggdXNlZCBkaXJlY3RseSBNVEQgbGF5ZXIgaGFzIG9yaWdpbmF0ZWQgaW4K
T3BlbldydCBzb21lIHRpbWUgYWdvIGFuZCBzdXBwb3J0cyBhbHJlYWR5IGFib3V0IDQ5NyB1c2Ug
Y2FzZXMgaW4gMzU3CmRldmljZSB0cmVlIGZpbGVzLgoKRHVyaW5nIHRoZSByZXZpZXcgcHJvY2Vz
cyBvZiBteSAxc3QgYXR0ZW1wdCBJIHdhcyB0b2xkLCB0aGF0IEkgc2hvdWxkbid0IGJlCnVzaW5n
IE1URCBkaXJlY3RseSwgYnV0IEkgc2hvdWxkIHJhdGhlciB1c2UgbmV3IE5WTUVNIHN1YnN5c3Rl
bSwgc28gdGhpcwpwYXRjaCBzZXJpZXMgdHJpZXMgdG8gYWNjb21tb2RhdGUgdGhhdC4KCkZpcnN0
IHBhdGNoIGlzIHdpcmluZyBOVk1FTSBzdXBwb3J0IGRpcmVjdGx5IGludG8gb2ZfZ2V0X21hY19h
ZGRyZXNzIGFzCml0J3Mgb2J2aW91cywgdGhhdCBhZGRpbmcgc3VwcG9ydCBmb3IgTlZNRU0gaW50
byBldmVyeSBvdGhlciBkcml2ZXIgd291bGQKbWVhbiBhZGRpbmcgYSBsb3Qgb2YgcmVwZXRpdGl2
ZSBjb2RlLiBUaGlzIHBhdGNoIGFsbG93cyB1cyB0byBjb25maWd1cmUgTUFDCmFkZHJlc3NlcyBp
biB2YXJpb3VzIGRldmljZXMgbGlrZSBldGhlcm5ldCBhbmQgd2lyZWxlc3MgYWRhcHRlcnMgZGly
ZWN0bHkKZnJvbSBvZl9nZXRfbWFjX2FkZHJlc3MsIHdoaWNoIGlzIHVzZWQgYnkgcXVpdGUgYSBs
b3Qgb2YgZHJpdmVycyBpbiB0aGUKdHJlZSBhbHJlYWR5LgoKU2Vjb25kIHBhdGNoIGlzIHNpbXBs
eSB1cGRhdGluZyBkb2N1bWVudGF0aW9uIHdpdGggTlZNRU0gYml0cywgYWxzbyBhZGRpbmcKc29t
ZSBtaXNzaW5nIGJpdHMgbGlrZSBtYWMtYWRkcmVzcyBhbmQgbG9jYWwtbWFjLWFkZHJlc3MgcHJv
cGVydGllcywgd2hpY2gKYXJlIGN1cnJlbnRseSBzdXBwb3J0ZWQgYnkgb2ZfZ2V0X21hY19hZGRy
ZXNzLgoKVGhpcmQgYW5kIGZvdXJ0aCBwYXRjaGVzIGFyZSBzaW1wbHkgcmVtb3ZpbmcgZHVwbGlj
YXRlIE5WTUVNIGNvZGUgd2hpY2ggaXMKbm8gbG9uZ2VyIG5lZWRlZCBhcyB0aGUgZmlyc3QgcGF0
Y2ggaGFzIGFkZGVkIE5WTUVNIHN1cHBvcnQgZGlyZWN0bHkgaW50bwpvZl9nZXRfbWFjX2FkZHJl
c3MuCgpKdXN0IGZvciBhIGJldHRlciBwaWN0dXJlLCB0aGlzIHBhdGNoIHNlcmllcyBhbmQgb25l
IHNpbXBsZSBwYXRjaFsyXSBvbiB0b3AKb2YgaXQsIGFsbG93cyBtZSB0byBjb25maWd1cmUgOERl
dmljZXMgQ2FyYW1ib2xhMiBib2FyZCdzIE1BQyBhZGRyZXNzZXMKd2l0aCBmb2xsb3dpbmcgRFRT
IChzaW1wbGlmaWVkKToKCiAmc3BpIHsKIAlmbGFzaEAwIHsKIAkJcGFydGl0aW9ucyB7CgkJCWFy
dDogcGFydGl0aW9uQGZmMDAwMCB7CgkJCQlsYWJlbCA9ICJhcnQiOwoJCQkJcmVnID0gPDB4ZmYw
MDAwIDB4MDEwMDAwPjsKCQkJCXJlYWQtb25seTsKCgkJCQludm1lbS1jZWxscyB7CgkJCQkJY29t
cGF0aWJsZSA9ICJudm1lbS1jZWxscyI7CgkJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CgkJCQkJ
I3NpemUtY2VsbHMgPSA8MT47CgoJCQkJCWV0aDBfYWRkcjogZXRoLW1hYy1hZGRyQDAgewoJCQkJ
CQlyZWcgPSA8MHgwIDB4Nj47CgkJCQkJfTsKCgkJCQkJZXRoMV9hZGRyOiBldGgtbWFjLWFkZHJA
NiB7CgkJCQkJCXJlZyA9IDwweDYgMHg2PjsKCQkJCQl9OwoKCQkJCQl3bWFjX2FkZHI6IHdpZmkt
bWFjLWFkZHJAMTAwMiB7CgkJCQkJCXJlZyA9IDwweDEwMDIgMHg2PjsKCQkJCQl9OwoJCQkJfTsK
CQkJfTsKCQl9OwoJfTsKIH07CgogJmV0aDAgewoJbnZtZW0tY2VsbHMgPSA8JmV0aDBfYWRkcj47
Cgludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsKIH07CgogJmV0aDEgewoJbnZtZW0t
Y2VsbHMgPSA8JmV0aDFfYWRkcj47Cgludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsK
IH07CgogJndtYWMgewoJbnZtZW0tY2VsbHMgPSA8JndtYWNfYWRkcj47Cgludm1lbS1jZWxsLW5h
bWVzID0gIm1hYy1hZGRyZXNzIjsKIH07CgoKMS4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9y
Zy9wYXRjaC8xMDg2NjI4LwoyLiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzg5
MDczOC8KCi0tIHluZXp6CgpQZXRyIMWgdGV0aWFyICg0KToKICBvZl9uZXQ6IEFkZCBOVk1FTSBz
dXBwb3J0IHRvIG9mX2dldF9tYWNfYWRkcmVzcwogIGR0LWJpbmRpbmdzOiBkb2M6IFJlZmxlY3Qg
bmV3IE5WTUVNIG9mX2dldF9tYWNfYWRkcmVzcyBiZWhhdmlvdXIKICBuZXQ6IG1hY2I6IERyb3Ag
bnZtZW1fZ2V0X21hY19hZGRyZXNzIHVzYWdlCiAgbmV0OiBkYXZpbmNpX2VtYWM6IERyb3AgbnZt
ZW1fZ2V0X21hY19hZGRyZXNzIHVzYWdlCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Fs
dGVyYV90c2UudHh0ICAgICAgICAgfCAgMyArKwogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9hcmNfZW1hYy50eHQgfCAgNCArKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2JyY20sYW1hYy50eHQgICAgICAgICAgfCAgMyArKwogLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2JyY20sYmNtZ2VuZXQudHh0ICAgICAgfCAgNSArKysKIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9icmNtLHN5c3RlbXBvcnQudHh0ICAgIHwgIDQgKysKIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9jYXZpdW0tbWl4LnR4dCAgICAgICAgIHwgIDcgKysrLQogLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L2Nhdml1bS1waXAudHh0ICAgICAgICAgfCAgNSArKysKIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY3Bzdy50eHQgICAgIHwgIDMgKysKIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kYXZpY29tLWRtOTAwMC50eHQgICAgIHwgIDQgKysK
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kYXZpbmNpX2VtYWMudHh0ICAgICAgIHwgIDIg
KwogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvZHNhLnR4dCAgfCAg
NyArKy0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZW1hY19yb2NrY2hpcC50eHQgICAg
ICB8ICA0ICsrCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0
LnR4dCB8ICAyICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9lemNoaXBfZW5ldC50eHQg
ICAgICAgIHwgIDYgKysrCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Zz
bC1mZWMudHh0ICB8ICA0ICsrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZnNsLXRzZWMt
cGh5LnR4dCAgICAgICB8ICA0ICsrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvaGlzaWxp
Y29uLWZlbWFjLnR4dCAgICB8ICAzICsrCiAuLi4vYmluZGluZ3MvbmV0L2hpc2lsaWNvbi1oaXg1
aGQyLWdtYWMudHh0ICAgICAgICB8ICAzICsrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
a2V5c3RvbmUtbmV0Y3AudHh0ICAgICB8ICA5ICsrLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvbWFjYi50eHQgICAgIHwgIDggKystLQogLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L21hcnZlbGwtb3Jpb24tbmV0LnR4dCAgfCAgMyArKwogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L21hcnZlbGwtcHhhMTY4LnR4dCAgICAgfCAgMyArKwogLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L21pY3JvY2hpcCxlbmMyOGo2MC50eHQgfCAgMyArKwogLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L21pY3JvY2hpcCxsYW43OHh4LnR4dCAgfCAgMiArCiAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9uZXQvb3BlbmNvcmVzLWV0aG9jLnR4dCAgICB8ICA0ICsrCiAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvb3huYXMtZHdtYWMudHh0ICAgICAgICB8ICA2ICsrKwog
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3FjYSxxY2E3MDAwLnR4dCAgICAgICAgfCAgMyAr
KwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3NhbXN1bmctc3hnYmUudHh0ICAgICAgfCAg
MyArKwogLi4uL2JpbmRpbmdzL25ldC9zbnBzLGR3Yy1xb3MtZXRoZXJuZXQudHh0ICAgICAgICAg
fCAgMiArCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc29jZnBnYS1kd21hYy50eHQgICAg
ICB8ICA0ICsrCiAuLi4vYmluZGluZ3MvbmV0L3NvY2lvbmV4dCx1bmlwaGllci1hdmU0LnR4dCAg
ICAgICB8ICAzICsrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc29jaW9uZXh0LW5ldHNl
Yy50eHQgICB8ICAyICsKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc3Rt
bWFjLnR4dCAgIHwgIDQgKysKIC4uLi9iaW5kaW5ncy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWssbXQ3
Ni50eHQgICAgICAgIHwgIDIgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNz
L3FjYSxhdGg5ay50eHQgfCAgMiArCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvZnNsL2Nw
bV9xZS9xZS91Y2MudHh0ICB8ICAzICsrCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21h
Y2JfbWFpbi5jICAgICAgICAgICB8IDEyICsrLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkv
ZGF2aW5jaV9lbWFjLmMgICAgICAgICAgICAgfCAxNCArKystLS0tCiBkcml2ZXJzL29mL29mX25l
dC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQ4ICsrKysrKysrKysrKysrKysr
KystLS0KIDM5IGZpbGVzIGNoYW5nZWQsIDE3OSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMo
LSkKCi0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbWVkaWF0ZWsK
