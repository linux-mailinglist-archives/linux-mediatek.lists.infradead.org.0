Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F1698C16
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQ1TLLxSLClGwufrOcrknOB6zGLK0HiG+dEhWx4OGBo=; b=lZL+zNgL4E9ZjL
	uLquuvCjDCrr7+20FWcYODKyzxzsaHwQcYvOFJxGwyU7kbqXFgLvuj7DW7riokOryhB+IVnyikFr5
	QDtKp5Ilz3BH8ZNXEPU/hVmh63Z67PxMfbQg49Z7EqYuilQlvAN6CkpBhnqBRMIh+NuYMuBq9VO0C
	AmWoXvd9I6DBD/OG5TUwizXCNMO/uBJs2bnYuKyHj5tWrgowuNC0eOYj9YqMUWasVQ8pIl9U8Cb3t
	7oe/jpxtugAYgBdy/LVZV7l1FR95wgwkyThx9ZtwDWNZQMImd6cmdv/Ot5O+qxdVRw3v36x/yNTvg
	vf869BZ6Op7QfMryu8Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h7A-000481-4V; Thu, 22 Aug 2019 07:02:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h6y-00043m-AJ
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:02:23 +0000
X-UUID: 2695077e81d34d349227181785a57b8a-20190821
X-UUID: 2695077e81d34d349227181785a57b8a-20190821
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 794650647; Wed, 21 Aug 2019 23:02:10 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:02:09 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:02:08 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:02:07 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 07/13] dt-bindings: pwm: add a property "num-pwms"
Date: Thu, 22 Aug 2019 14:58:37 +0800
Message-ID: <1566457123-20791-8-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000220_968612_683ED03F 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

RnJvbTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgoKVGhpcyBhZGRzIGEgcHJv
cGVydHkgIm51bS1wd21zIiBpbiBleGFtcGxlIHNvIHRoYXQgd2UgY291bGQKc3BlY2lmeSB0aGUg
bnVtYmVyIG9mIFBXTSBjaGFubmVscyB2aWEgZGV2aWNlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBS
eWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+ClNpZ25lZC1vZmYtYnk6IFNhbSBTaGlo
IDxzYW0uc2hpaEBtZWRpYXRlay5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGlhcyBCcnVnZ2VyIDxt
YXR0aGlhcy5iZ2dAZ21haWwuY29tPgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkNoYW5nZXMgc2luY2UgdjU6Ci0gQWRkIGFu
IEFja2VkLWJ5IHRhZwotIFRoaXMgZmlsZSBpcyBvcmlnaW5hbCB2NCBwYXRjaCA1LzEwCihodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMTAyNTc3LykKCkNoYW5nZS1JZDogSTQy
OTA0OGFmZWZmYTk2ZjNmMTQ1MzM5MTBlZmUyNDJmODg3NzYwNDMKLS0tCiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS1tZWRpYXRlay50eHQgfCA3ICsrKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0ZWsudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0ZWsudHh0
CmluZGV4IDk5MTcyOGNiNDZjYi4uZWE5NWI0OTBhOTEzIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS1tZWRpYXRlay50eHQKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0ZWsudHh0CkBAIC0xNCwx
MiArMTQsMTIgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKICAgICAgICAgICAgICAgICBoYXMgbm8g
Y2xvY2tzCiAgICAtICJ0b3AiOiB0aGUgdG9wIGNsb2NrIGdlbmVyYXRvcgogICAgLSAibWFpbiI6
IGNsb2NrIHVzZWQgYnkgdGhlIFBXTSBjb3JlCi0gICAtICJwd20xLTgiOiB0aGUgZWlnaHQgcGVy
IFBXTSBjbG9ja3MgZm9yIG10MjcxMgotICAgLSAicHdtMS02IjogdGhlIHNpeCBwZXIgUFdNIGNs
b2NrcyBmb3IgbXQ3NjIyCi0gICAtICJwd20xLTUiOiB0aGUgZml2ZSBwZXIgUFdNIGNsb2NrcyBm
b3IgbXQ3NjIzCisgICAtICJwd20xLU4iOiB0aGUgUFdNIGNsb2NrcyBmb3IgZWFjaCBjaGFubmVs
CisgICB3aGVyZSBOIHN0YXJ0aW5nIGZyb20gMSB0byB0aGUgbWF4aW11bSBudW1iZXIgb2YgUFdN
IGNoYW5uZWxzCiAgLSBwaW5jdHJsLW5hbWVzOiBNdXN0IGNvbnRhaW4gYSAiZGVmYXVsdCIgZW50
cnkuCiAgLSBwaW5jdHJsLTA6IE9uZSBwcm9wZXJ0eSBtdXN0IGV4aXN0IGZvciBlYWNoIGVudHJ5
IGluIHBpbmN0cmwtbmFtZXMuCiAgICBTZWUgcGluY3RybC9waW5jdHJsLWJpbmRpbmdzLnR4dCBm
b3IgZGV0YWlscyBvZiB0aGUgcHJvcGVydHkgdmFsdWVzLgorIC0gbnVtLXB3bXM6IHRoZSBudW1i
ZXIgb2YgUFdNIGNoYW5uZWxzLgogCiBFeGFtcGxlOgogCXB3bTA6IHB3bUAxMTAwNjAwMCB7CkBA
IC0zNyw0ICszNyw1IEBAIEV4YW1wbGU6CiAJCQkgICAgICAicHdtMyIsICJwd200IiwgInB3bTUi
OwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCQlwaW5jdHJsLTAgPSA8JnB3bTBfcGlu
cz47CisJCW51bS1wd21zID0gPDU+OwogCX07Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxp
c3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
