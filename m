Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96504CDA6
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 14:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g+J/XJvI9xuql1cC8XPKDNLzBN9clyeWtpcpjUo6xl8=; b=NhL5wtgzGGcbM9
	hVUaLJR6F3CH5/cn77rwTKc3tz0DfxadT5SeArNOcMF3yQIpdSbkAMwqoS1XJXmHFr6sByLk6GUmq
	3R4hl5YYr5SGCEIAlmrn0mk+BMSc8m71E82c+zK6s3xtu+wUBLg0f3kjUD4WIkKs+RpUJaV/zBd/k
	+9IpOqXheAj4UWrlXLi9O6TkyWtd1sAo4S9cj/kS3G4bUbLCtTlAU0llhK4ym086jsGvio5O9ZaKC
	u5SK04fBPK0FaK47iyBrgqZpS0SspHbNmeo81y34MYBPXpMlmPSmV9zSMwclxuaS0Zj6lkVuB1H32
	Vj8xDq73spoHp8aj5trQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdw66-0007KO-3G; Thu, 20 Jun 2019 12:23:22 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdw61-0007Iu-Jz
 for linux-mediatek@lists.infradead.org; Thu, 20 Jun 2019 12:23:19 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id E0EFD5FE8A;
 Thu, 20 Jun 2019 14:23:11 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="l0AJ7yGD"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id A20C01CB7225;
 Thu, 20 Jun 2019 14:23:11 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com A20C01CB7225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561033391;
 bh=ZO1c9BII2Z2wQ9yE2KhkKyW57oPWJZCCZrdn53OOIAM=;
 h=From:To:Cc:Subject:Date:From;
 b=l0AJ7yGD4A5q1Y7bVJQ9xkaehZrsQ5e88Q7W0m9CTwZ7a/P+Vxcr2NsF58jmDOHqb
 7M1c19OGvLWyVriuYFfGLz7bbxo6B5DRZ5HAWg3WNOIqHL29mlcYtQ14+WB7BMRdJS
 VZXpV+s6yHTwaYaoXmaWi0GpA0cS37l7DdfKFWW7YRlQNyZ1ES7qPehZOEIrHkjTDf
 X5x1LgSKvU+lRnfOVVw8RntEwDYdLDcwkVPiGc2LKLV2Xg+WZN8yA3pMQLFeQzLcQN
 /ydesZyqIFLhSxWqyIqRGoXsRz145P3/k5pdzrczI+I+DPgmfG0ID3hRjmXS3A915+
 n54gb2MogiOfA==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: frank-w@public-files.de, sean.wang@mediatek.com, f.fainelli@gmail.com,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH v2 net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
Date: Thu, 20 Jun 2019 14:21:53 +0200
Message-Id: <20190620122155.32078-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_052317_795992_259255BD 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TGlrZSBtYW55IG90aGVyIG1lZGlhdGVrIFNPQ3MsIHRoZSBNVDc2MjEgU09DIGFuZCB0aGUgaW50
ZXJuYWwgTVQ3NTMwCnN3aXRjaCBib3RoIHN1cHBvcnRzIFRSR01JSSBtb2RlLiBNVDc2MjEgVFJH
TUlJIHNwZWVkIGlzIGZpeCAxMjAwTUJpdC4KCnYxLT52MjogCiAtIEZpeCBicmVha2FnZSBvbiBu
b24gTVQ3NjIxIFNPQwogLSBTdXBwb3J0IDI1TUh6IGFuZCA0ME1IeiBYVEFMIGFzIE1UNzUzMCBj
bG9ja3NvdXJjZQoKUmVuw6kgdmFuIERvcnN0ICgyKToKICBuZXQ6IGV0aGVybmV0OiBtZWRpYXRl
azogQWRkIE1UNzYyMSBUUkdNSUkgbW9kZSBzdXBwb3J0CiAgbmV0OiBkc2E6IG10NzUzMDogQWRk
IE1UNzYyMSBUUkdNSUkgbW9kZSBzdXBwb3J0CgogZHJpdmVycy9uZXQvZHNhL210NzUzMC5jICAg
ICAgICAgICAgICAgICAgICB8IDQ2ICsrKysrKysrKysrKysrKystLS0tLQogZHJpdmVycy9uZXQv
ZHNhL210NzUzMC5oICAgICAgICAgICAgICAgICAgICB8ICA0ICsrCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIHwgMzggKysrKysrKysrKysrKysrLS0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggfCAxMSArKysrKwogNCBmaWxl
cyBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1l
ZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
