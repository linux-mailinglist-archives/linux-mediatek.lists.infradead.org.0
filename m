Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C620FB5B29
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 07:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7zLnOeuIHJui/9RM1nEyzFV08iRHVUqRJt7Kefv2Kw=; b=TwVroAi3MVSRp0
	PImnwB5aQ2xOD/+dtLHd+78HHOy9u27NeSUWAdvq1k9Od6K+YJTWjY2oPouansU/ffjD3nNZ2VSkD
	xbty/jYq52WbrmFVj7x+/inKkmEAFgZRchP/LUssoFJniVF1s41tSXZIPh8dA4BXYa3DAaLatO67L
	ui268BH0ivAYMThd5ujfAUNKSFWlbRvBlLd7hi3xDTr2Hhy6BTQzdr/lw/hB+gF4iBAoZOAr0C5+A
	KFqQiINaDDjZZXA2cLiAdDuxf5jzF7ah+Fa3qBf00icToZ0rDx751G9el0XQcM5r4cGkpU8EvBpQe
	qjWzx+eESajOW+McPzNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASsB-0001vh-5x; Wed, 18 Sep 2019 05:51:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASs3-0001pQ-M5
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 05:51:22 +0000
X-UUID: 001b09a5151e430492245a090fe60b46-20190917
X-UUID: 001b09a5151e430492245a090fe60b46-20190917
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1462589113; Tue, 17 Sep 2019 21:51:11 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 22:51:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 13:51:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 13:51:10 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [RESEND,
 PATCH v7 06/11] pwm: mediatek: update license and switch to SPDX tag
Date: Wed, 18 Sep 2019 13:50:06 +0800
Message-ID: <1568785811-9577-7-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
References: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_225119_739377_8D0C917A 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

QWRkIFNQRFggaWRlbnRpZmllcnMgdG8gcHdtLW1lZGlhdGVrLmMKVXBkYXRlIGxpY2Vuc2UgdG8g
R05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdjIuMAoKU2lnbmVkLW9mZi1ieTogUnlkZXIgTGVl
IDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYW0gU2hpaCA8c2FtLnNo
aWhAbWVkaWF0ZWsuY29tPgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkNoYW5nZXMgc2luY2UgdjY6CkFkZCBhIFJldmll
d2VkLWJ5IHRhZwoKQ2hhbmdlcyBzaW5jZSB2NToKLSBGb2xsb3cgcmV2aWV3ZXJzJ3MgY29tbWVu
dHMKVGhlIGxpY2Vuc2Ugc3R1ZmYgaXMgYSBzZXBhcmF0ZSBjaGFuZ2UKCi0tLQogZHJpdmVycy9w
d20vcHdtLW1lZGlhdGVrLmMgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZWRp
YXRlay5jIGIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMKaW5kZXggMTFmOWNjNDQ2ZjE0Li45
YTYxODI5NzY2ZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCisrKyBi
L2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCkBAIC0xLDEyICsxLDEwIEBACisvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAogLyoKLSAqIE1lZGlhdGVrIFB1bHNlIFdpZHRoIE1v
ZHVsYXRvciBkcml2ZXIKKyAqIE1lZGlhVGVrIFB1bHNlIFdpZHRoIE1vZHVsYXRvciBkcml2ZXIK
ICAqCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTUgSm9obiBDcmlzcGluIDxibG9naWNAb3BlbndydC5v
cmc+CiAgKiBDb3B5cmlnaHQgKEMpIDIwMTcgWmhpIE1hbyA8emhpLm1hb0BtZWRpYXRlay5jb20+
CiAgKgotICogVGhpcyBmaWxlIGlzIGxpY2Vuc2VkIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljCi0gKiBMaWNlbnNlIHZlcnNpb24gMi4gVGhpcyBwcm9ncmFtIGlzIGxp
Y2Vuc2VkICJhcyBpcyIgd2l0aG91dCBhbnkKLSAqIHdhcnJhbnR5IG9mIGFueSBraW5kLCB3aGV0
aGVyIGV4cHJlc3Mgb3IgaW1wbGllZC4KICAqLwogCiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CkBA
IC0zMzEsNCArMzI5LDQgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcHdtX21lZGlh
dGVrX2RyaXZlciA9IHsKIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIocHdtX21lZGlhdGVrX2RyaXZl
cik7CiAKIE1PRFVMRV9BVVRIT1IoIkpvaG4gQ3Jpc3BpbiA8YmxvZ2ljQG9wZW53cnQub3JnPiIp
OwotTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOworTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwotLSAK
Mi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
ZWRpYXRlawo=
