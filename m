Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60B773823
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 21:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P/HpVY24SRY56V7/xN739aucB2Yp68NxhJkXfwatp04=; b=aHQzqNAF7ovb8c
	012WseFYjSCYH1l2nCqIjmE9ydhNiknA+HDyR6IeSXaX/1cEZfP9YI/yvzabtQWKU9dH0SrEW0/i2
	y647rxtSpGQQIf3AaQqE2MNTNUd2gVlpdE7mX4+gbeNczWlz/XbAVBDvYBuAKKzXLVWrjbGyYRZOM
	BGOjzoSe5kAutYoM6dCSeiZprHo0qYg9cD/dn/eU0veZSMQP2toIZw4c5yCnI/8NMt4CqK54QtEa8
	kBcQF5VdDagWG/qKqWHb9DYkZlTea/sAM8NqGWL/+e6FbN95TdaRPRsMEqCUlMRpsc5wqcMn8cnZ/
	SlIICYMMuESe2eoRSWRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMu7-0007g2-5t; Wed, 24 Jul 2019 19:26:23 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMu4-0007ec-1F
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 19:26:21 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 345015FD5A;
 Wed, 24 Jul 2019 21:26:19 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="U0yugvGO"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id D6A5F1D25D39;
 Wed, 24 Jul 2019 21:26:18 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com D6A5F1D25D39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1563996378;
 bh=Ss2HrGE2MdzKsLVFFLyyU08QQHMn+fv1AywMDR+R/BI=;
 h=From:To:Cc:Subject:Date:From;
 b=U0yugvGOBpC/vwUsUt5j2uKo+4qbU0pt18CO55nVYlCdCJZFqSNi0wcdD4hzYwjLJ
 wmnLPMBObKAB12n9ktvAjwldO4vC2d7hyIpO+qGlWgcoeQHGt1+NXMn/f2ZzRSbd8w
 QvZUmcMil7TBJqs6M+6Q2fcOVdOcgChz1JJZT0O3QUF6QomaH17M5YFnhmbmpGC7rM
 8IINX3n+/U69akQcVWrCcpriuJ9B5H1HTvBbWdGcP/ZMbIN/qJbshs/Ff2jtWJ7E8E
 3sLfa9WW/iNe8Azd+um+HHOSYJOD9a3G4RdHkOmC+mM4ZvbN80RfwxHGnJ70hy/fEi
 jnOkZ/l27B2qg==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/3] net: dsa: MT7530: Convert to PHYLINK and add
 support for port 5
Date: Wed, 24 Jul 2019 21:25:46 +0200
Message-Id: <20190724192549.24615-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_122620_217753_8132C5E9 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 sean.wang@mediatek.com, linux@armlinux.org.uk, vivien.didelot@gmail.com,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

MS4gbmV0OiBkc2E6IG10NzUzMDogQ29udmVydCB0byBQSFlMSU5LIEFQSQogICBUaGlzIHBhdGNo
IGNvbnZlcnRzIG10NzUzMCB0byBQSFlMSU5LIEFQSS4KMi4gZHQtYmluZGluZ3M6IG5ldDogZHNh
OiBtdDc1MzA6IEFkZCBzdXBwb3J0IGZvciBwb3J0IDUKMy4gbmV0OiBkc2E6IG10NzUzMDogQWRk
IHN1cHBvcnQgZm9yIHBvcnQgNQogICBUaGVzZSAyIHBhdGNoZXMgYWRkaW5nIHN1cHBvcnQgZm9y
IHBvcnQgNSBvZiB0aGUgc3dpdGNoLgoKcmZjIC0+IHYxOgogKiBNb3N0bHkgcGh5bGluayBpbXBy
b3ZlbWVudHMgYWZ0ZXIgcmV2aWV3LgogKiBEcm9wIHBoeSBpc29sYXRpb24gcGF0Y2hlcy4gQWRk
cyBubyB2YWx1ZSBmb3Igbm93LgoKUmVuw6kgdmFuIERvcnN0ICgzKToKICBuZXQ6IGRzYTogbXQ3
NTMwOiBDb252ZXJ0IHRvIFBIWUxJTksgQVBJCiAgZHQtYmluZGluZ3M6IG5ldDogZHNhOiBtdDc1
MzA6IEFkZCBzdXBwb3J0IGZvciBwb3J0IDUKICBuZXQ6IGRzYTogbXQ3NTMwOiBBZGQgc3VwcG9y
dCBmb3IgcG9ydCA1CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0
ICAgIHwgMjE1ICsrKysrKysrKysrCiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgICAgICAgICAg
ICAgICAgICAgICAgfCAzNTYgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL25ldC9kc2EvbXQ3
NTMwLmggICAgICAgICAgICAgICAgICAgICAgfCAgNjAgKystCiAzIGZpbGVzIGNoYW5nZWQsIDU2
MSBpbnNlcnRpb25zKCspLCA3MCBkZWxldGlvbnMoLSkKClRvOiA8bmV0ZGV2QHZnZXIua2VybmVs
Lm9yZz4KQ2M6IFNlYW4gV2FuZyA8c2Vhbi53YW5nQG1lZGlhdGVrLmNvbT4KQ2M6IEFuZHJldyBM
dW5uIDxhbmRyZXdAbHVubi5jaD4KQ2M6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD4KQ2M6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgpDYzogUm9i
IEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnCkNjOiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KQ2M6IFJ1
c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPgpDYzogbGludXgtbWVkaWF0ZWtAbGlz
dHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtbWlwc0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IEpvaG4g
Q3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4KQ2M6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFz
LmJnZ0BnbWFpbC5jb20+CkNjOiBWaXZpZW4gRGlkZWxvdCA8dml2aWVuLmRpZGVsb3RAZ21haWwu
Y29tPgoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbWVkaWF0ZWsK
