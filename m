Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A2EBE032
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 16:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWnIJPwokkblkc/Xbb5lECl5nEuPNB2v0mW3fa3TlBs=; b=Fq+m324orxyZmP
	eRzAH/QrUnLm6x3PKnblJwO0Frzwt71vGhuDt7KTXbG8D7tF4Xn9oYlOBO2NYwE6GNHaoobToFMyS
	KpYqGsHekiu3lR1nQKCfahUHGnVPtcIPH5HQqQUuFL7ZpljF0HOuBoGDIY34dZKTP+7HTOSfLX8gb
	AHYqpEE42XOiCnMC1EvySuLqkhcDry+tpTXBZ5D44M/dR4kDjqdgqOnjJyXGCBsS1Cd9pZU6iAd4k
	kh29yZHpkV3rpHPyvCIPgHAcnyiVt54GijlFNSMZKtYkGjSuwr0816S+bw2CfqneMM1kOHN4rjYxo
	IhnuAaY6E6cYzTf28j/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8Mz-0001IU-T7; Wed, 25 Sep 2019 14:34:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8Mw-0001HE-4X
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 14:34:15 +0000
X-UUID: 1ec132e16d2440fcaaee904425fed509-20190925
X-UUID: 1ec132e16d2440fcaaee904425fed509-20190925
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2090305809; Wed, 25 Sep 2019 06:34:11 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 07:34:10 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 22:34:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Sep 2019 22:34:10 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v10 06/12] pwm: mediatek: update license and switch to SPDX tag
Date: Wed, 25 Sep 2019 22:32:31 +0800
Message-ID: <1569421957-20765-7-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3E4F8C870E90298AF62DE37F255470808000A3985B52E8EF9B09DD71C35E63862000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_073414_195038_C280C8A5 
X-CRM114-Status: GOOD (  10.44  )
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

QWRkIFNQRFggaWRlbnRpZmllcnMgdG8gcHdtLW1lZGlhdGVrLmMKVXBkYXRlIGxpY2Vuc2UgdG8g
R05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdjIuMAoKU2lnbmVkLW9mZi1ieTogUnlkZXIgTGVl
IDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYW0gU2hpaCA8c2FtLnNo
aWhAbWVkaWF0ZWsuY29tPgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkNoYW5nZXMgc2luY2UgdjY6CkFkZCBhIFJldmll
d2VkLWJ5IHRhZwoKQ2hhbmdlcyBzaW5jZSB2NToKLSBGb2xsb3cgcmV2aWV3ZXJzJ3MgY29tbWVu
dHMKVGhlIGxpY2Vuc2Ugc3R1ZmYgaXMgYSBzZXBhcmF0ZSBjaGFuZ2UKCi0tLQogZHJpdmVycy9w
d20vcHdtLW1lZGlhdGVrLmMgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZWRp
YXRlay5jIGIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMKaW5kZXggMmRiMTdkNmI2YWUxLi5j
ZTc1MjVkOGQ3MWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCisrKyBi
L2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCkBAIC0xLDEyICsxLDEwIEBACisvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAogLyoKLSAqIE1lZGlhdGVrIFB1bHNlIFdpZHRoIE1v
ZHVsYXRvciBkcml2ZXIKKyAqIE1lZGlhVGVrIFB1bHNlIFdpZHRoIE1vZHVsYXRvciBkcml2ZXIK
ICAqCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTUgSm9obiBDcmlzcGluIDxibG9naWNAb3BlbndydC5v
cmc+CiAgKiBDb3B5cmlnaHQgKEMpIDIwMTcgWmhpIE1hbyA8emhpLm1hb0BtZWRpYXRlay5jb20+
CiAgKgotICogVGhpcyBmaWxlIGlzIGxpY2Vuc2VkIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljCi0gKiBMaWNlbnNlIHZlcnNpb24gMi4gVGhpcyBwcm9ncmFtIGlzIGxp
Y2Vuc2VkICJhcyBpcyIgd2l0aG91dCBhbnkKLSAqIHdhcnJhbnR5IG9mIGFueSBraW5kLCB3aGV0
aGVyIGV4cHJlc3Mgb3IgaW1wbGllZC4KICAqLwogCiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CkBA
IC0zMjksNCArMzI3LDQgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcHdtX21lZGlh
dGVrX2RyaXZlciA9IHsKIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIocHdtX21lZGlhdGVrX2RyaXZl
cik7CiAKIE1PRFVMRV9BVVRIT1IoIkpvaG4gQ3Jpc3BpbiA8YmxvZ2ljQG9wZW53cnQub3JnPiIp
OwotTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOworTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwotLSAK
Mi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
ZWRpYXRlawo=
