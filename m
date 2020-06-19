Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390A2002CF
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jun 2020 09:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVVQlxndblAgEj6Ag3Rdtx4H84SwwIw2tjX+G0jdEPY=; b=cxd9NjOjXOeVlB
	J4cL+J284CjejutWnPsK57aRBXgib4Y79Xgg9LME3fmxCI++IMHUV4CPPb3MZF/1kyWVxmEvNIWKI
	4FEV0vls4jVHsdlNZcYunlkjHLUKSGDP6euDJbP+pcDpTL26TO7bmpiWBTYwQ5k34QhDcs6htYcUU
	pCEIsusvvjxubd8EDuhpJelWJ61z/LSQR8N+DdrGbB6CjNFoKcXvYgwnkIkyrj2H0g7pFeR0QQt6Q
	bdKFB7lZg/sy3VfgUkE6PB4bPhI3phMJpjzqCL5Sx2PWSoRVnsQzWjVTeaFx6NYtfXpzvgbpyG+la
	d3qSlUKuKJWd9WZKwfaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBZa-0001xO-St; Fri, 19 Jun 2020 07:36:26 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBZW-0001wz-Ks
 for linux-mediatek@lists.infradead.org; Fri, 19 Jun 2020 07:36:25 +0000
Received: from marcel-macbook.fritz.box (p5b3d2638.dip0.t-ipconnect.de
 [91.61.38.56])
 by mail.holtmann.org (Postfix) with ESMTPSA id 61F19CECF3;
 Fri, 19 Jun 2020 09:46:13 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 1/2] Bluetooth: btusb: fix up firmware download sequence
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <c9bf7346a060d8913b670bbed7ed9e60b592e16f.1592463595.git.sean.wang@mediatek.com>
Date: Fri, 19 Jun 2020 09:36:21 +0200
Message-Id: <1450856E-36E2-4B49-A23A-7BE94669856E@holtmann.org>
References: <c9bf7346a060d8913b670bbed7ed9e60b592e16f.1592463595.git.sean.wang@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_003622_822040_D53FDF53 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-bluetooth@vger.kernel.org, Mark Chen <Mark-YW.Chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Johan Hedberg <johan.hedberg@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgU2VhbiwKCj4gRGF0YSBSQU0gb24gdGhlIGRldmljZSBoYXZlIHRvIGJlIHBvd2VyZWQgb24g
YmVmb3JlIHN0YXJ0aW5nIHRvIGRvd25sb2FkCj4gdGhlIGZpcm13YXJlLgo+IAo+IEZpeGVzOiBh
MWM0OWM0MzRlMTUgKCJCbHVldG9vdGg6IGJ0dXNiOiBBZGQgcHJvdG9jb2wgc3VwcG9ydCBmb3Ig
TWVkaWFUZWsgTVQ3NjY4VSBVU0IgZGV2aWNlcyIpCj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJrIENo
ZW4gPE1hcmstWVcuQ2hlbkBtZWRpYXRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFyayBDaGVu
IDxNYXJrLVlXLkNoZW5AbWVkaWF0ZWsuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNlYW4gV2FuZyA8
c2Vhbi53YW5nQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiBkcml2ZXJzL2JsdWV0b290aC9idHVzYi5j
IHwgMTYgKysrKysrKysrKysrKysrLQo+IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgp0aGUgcGF0Y2ggZG9lc27igJl0IGFwcGx5IHRvIGJsdWV0b290aC1u
ZXh0IHRyZWUuCgpSZWdhcmRzCgpNYXJjZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVk
aWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
