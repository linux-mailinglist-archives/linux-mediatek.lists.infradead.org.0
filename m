Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43BBE035
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 16:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwbLZ66mrBqDidPVxpfyvDKFFdNrce+w7eV5QSGHBek=; b=mqa3Zm9rnKRtdM
	RlLDL/AKPk7FVGUaKPwmIm49zkiSiIMcrlS1GRIVxngMQqIW8EBzcTX8n7gsUR2x+19tG3OM51F+o
	Rt/YdTrQ8qKQ1iJAegXV4Df2vORJUGwKEETyhEdZsvO3YQR+g21oY8I7yIptMT4djChBpwr9VX9CO
	VtMqEEI4jH9+VKTMNJNlPssnwMrLbqLqejhIdkqDz5UdJBGtBW3VcQB5plY4WOU9UwiGx6ihe1yAl
	0i4+CjcdFeL3qkXX8QAvkK6empkd1flHpnIAxiQvi9IB9qnyr8YP4iWFKm171d86WY/RITu4BpoUM
	/A0alGgVmlPoajAs18WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8NH-0001SH-Np; Wed, 25 Sep 2019 14:34:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8ND-0001RW-Kw
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 14:34:33 +0000
X-UUID: 576c70c3bb974c9e9b37f2472e1f342a-20190925
X-UUID: 576c70c3bb974c9e9b37f2472e1f342a-20190925
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 218236615; Wed, 25 Sep 2019 06:34:29 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 07:34:27 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 22:34:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Sep 2019 22:34:27 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v10 07/12] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Date: Wed, 25 Sep 2019 22:32:32 +0800
Message-ID: <1569421957-20765-8-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_073431_687733_1B62FC93 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkNoYW5nZXMgc2luY2UgdjEwOgoxLiBGb2xs
b3cgcmV2aWV3ZXJzJ3MgY29tbWVudHM6Ci0gZGVyaXZlIHRoZSBudW1iZXIgb2YgUFdNcyBmcm9t
IHRoZSBzcGVjaWZpYyBjb21wYXRpYmxlIHN0cmluZwoyLiBBZGQgbXQ3NjI5IHB3bSBkZXNjcmlw
dGlvbgozLiBBZGQgbXQ3NjI4IGZpeGVkLWNsb2NrIGRlc2NyaXB0aW9uCgpDaGFuZ2VzIHNpbmNl
IHY2OgpGb2xsb3cgcmV2aWV3ZXJzJ3MgY29tbWVudHM6Ci0gVGhlIHN1YmplY3Qgc2hvdWxkIGlu
ZGljYXRlIHRoaXMgaXMgZm9yIE1lZGlhdGVrCgpDaGFuZ2VzIHNpbmNlIHY1OgotIEFkZCBhbiBB
Y2tlZC1ieSB0YWcKLSBUaGlzIGZpbGUgaXMgb3JpZ2luYWwgdjQgcGF0Y2ggNS8xMAooaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTEwMjU3Ny8pCgotLS0KIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLW1lZGlhdGVrLnR4dCB8IDEwICsrKysrKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0
ZWsudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0
ZWsudHh0CmluZGV4IDk5MTcyOGNiNDZjYi4uOTc1ZDc4NzE4MzBkIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS1tZWRpYXRlay50eHQKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0ZWsudHh0CkBA
IC05LDE3ICs5LDIwIEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAgLSByZWc6IHBoeXNpY2FsIGJh
c2UgYWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSBjb250cm9sbGVyJ3MgcmVnaXN0ZXJzLgogIC0g
I3B3bS1jZWxsczogbXVzdCBiZSAyLiBTZWUgcHdtLnR4dCBpbiB0aGlzIGRpcmVjdG9yeSBmb3Ig
YSBkZXNjcmlwdGlvbiBvZgogICAgdGhlIGNlbGwgZm9ybWF0LgotIC0gY2xvY2tzOiBwaGFuZGxl
IGFuZCBjbG9jayBzcGVjaWZpZXIgb2YgdGhlIFBXTSByZWZlcmVuY2UgY2xvY2suCi0gLSBjbG9j
ay1uYW1lczogbXVzdCBjb250YWluIHRoZSBmb2xsb3dpbmcsIGV4Y2VwdCBmb3IgTVQ3NjI4IHdo
aWNoCi0gICAgICAgICAgICAgICAgaGFzIG5vIGNsb2NrcworIC0gY2xvY2tzOiBPbmUgcGhhbmRs
ZSBhbmQgY2xvY2sgc3BlY2lmaWVyIGZvciBlYWNoIGVudHJ5IGluIHRoZSAiY2xvY2stbmFtZXMi
CisgICAgICAgICAgIHByb3BlcnR5LCBVc2UgZml4ZWQtY2xvY2sgYXMgZHVtbXkgY2xvY2tzIGZv
ciBtdDc2MjgKKyAtIGNsb2NrLW5hbWVzOiBtdXN0IGNvbnRhaW4gdGhlIGZvbGxvd2luZwogICAg
LSAidG9wIjogdGhlIHRvcCBjbG9jayBnZW5lcmF0b3IKICAgIC0gIm1haW4iOiBjbG9jayB1c2Vk
IGJ5IHRoZSBQV00gY29yZQogICAgLSAicHdtMS04IjogdGhlIGVpZ2h0IHBlciBQV00gY2xvY2tz
IGZvciBtdDI3MTIKICAgIC0gInB3bTEtNiI6IHRoZSBzaXggcGVyIFBXTSBjbG9ja3MgZm9yIG10
NzYyMgogICAgLSAicHdtMS01IjogdGhlIGZpdmUgcGVyIFBXTSBjbG9ja3MgZm9yIG10NzYyMwor
ICAgLSAicHdtMS00IjogdGhlIGZvdXIgcGVyIFBXTSBjbG9ja3MgZm9yIG10NzYyOAorICAgLSAi
cHdtMSI6IHRoZSBQV00xIGNsb2NrIGZvciBtdDc2MjkKICAtIHBpbmN0cmwtbmFtZXM6IE11c3Qg
Y29udGFpbiBhICJkZWZhdWx0IiBlbnRyeS4KICAtIHBpbmN0cmwtMDogT25lIHByb3BlcnR5IG11
c3QgZXhpc3QgZm9yIGVhY2ggZW50cnkgaW4gcGluY3RybC1uYW1lcy4KICAgIFNlZSBwaW5jdHJs
L3BpbmN0cmwtYmluZGluZ3MudHh0IGZvciBkZXRhaWxzIG9mIHRoZSBwcm9wZXJ0eSB2YWx1ZXMu
CisgLSBudW0tcHdtczogdGhlIG51bWJlciBvZiBQV00gY2hhbm5lbHMuCiAKIEV4YW1wbGU6CiAJ
cHdtMDogcHdtQDExMDA2MDAwIHsKQEAgLTM3LDQgKzQwLDUgQEAgRXhhbXBsZToKIAkJCSAgICAg
ICJwd20zIiwgInB3bTQiLCAicHdtNSI7CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJ
CXBpbmN0cmwtMCA9IDwmcHdtMF9waW5zPjsKKwkJbnVtLXB3bXMgPSA8NT47CiAJfTsKLS0gCjIu
MTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVk
aWF0ZWsK
