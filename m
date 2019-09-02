Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598F5A56FB
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 15:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hvzpoArULC0/PQRt5pG5lY5lLJ4XqC5nPNwiE1nXA+4=; b=XkamEoqrnooeyv
	UnbJhGIc8VB9SR6q5HSZS5oCBJvzyP+JClcdlzKYNgoY26fCzxBOqfGqFKef45vER3HXUV5TaqqVh
	pXMxuHemnGMgf5oZjxT/NI+K77daqQhlCSqzULHq2aTueIn5OOo3sXPsS9oafpSibEYmJr4vhZzMu
	eROOlpNeec2fIg4r69RSIJnFHUrTHBeFsABKtP76Ki2jXdx3lGJHvqQAkzlkh+Zqrx8Kyvze1l+eH
	Rxq74tnMawezDWPmBQCYFB2LukhU+J/hANN/4o2F8HXLRV6DBMAPEdHaasSzYQStE1szG51AT5xPd
	eh2Vf27eRuc41+HlP7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lz1-0000MD-SX; Mon, 02 Sep 2019 13:03:00 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lyk-00005F-4e; Mon, 02 Sep 2019 13:02:43 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 6B3175FA49;
 Mon,  2 Sep 2019 15:02:35 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="sO1B5De6"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.232])
 by mail.vdorst.com (Postfix) with ESMTPA id 288291DB4019;
 Mon,  2 Sep 2019 15:02:35 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 288291DB4019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1567429355;
 bh=Cu2l4plbvHJDGjWeI5n0FmhZk+4i5/ZcSrC/B/TwPy0=;
 h=From:To:Cc:Subject:Date:From;
 b=sO1B5De6OkKQ2VqYZrXXypkJiyHV2jaXuU3g7M3IMb6ld+qgE+TAPmi2B4J79VXC4
 fMvzQdmYIpRQVtLfeXMD/59J10Tins4qCU9iaZ8xW6BAShu0IbxzCa8PNa9aZVAZoa
 C1zR/i/Wb7lMQXkxZaRJdeBrZkjwHxfqwwFl/iB11D/KQ6ow1+sGf9RqHAdxqb3jWB
 NyynqM+nsbLdPvxXIqD+IutcliAI4JlbR+qfRzer5GyiMlCedGB09tn97pFowvv3r0
 fkOAtBEcQLy//FYVD6BaI3B35moxtglmtXwmk4cdOst2bHGso+U7tAzHjaMghfaHiH
 FD78PYuLlYWJw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v3 0/3] net: dsa: mt7530: Convert to PHYLINK and add
 support for port 5
Date: Mon,  2 Sep 2019 15:02:23 +0200
Message-Id: <20190902130226.26845-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060242_321564_F696F317 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

MS4gbmV0OiBkc2E6IG10NzUzMDogQ29udmVydCB0byBQSFlMSU5LIEFQSQogICBUaGlzIHBhdGNo
IGNvbnZlcnRzIG10NzUzMCB0byBQSFlMSU5LIEFQSS4KMi4gZHQtYmluZGluZ3M6IG5ldDogZHNh
OiBtdDc1MzA6IEFkZCBzdXBwb3J0IGZvciBwb3J0IDUKMy4gbmV0OiBkc2E6IG10NzUzMDogQWRk
IHN1cHBvcnQgZm9yIHBvcnQgNQogICBUaGVzZSAyIHBhdGNoZXMgYWRkaW5nIHN1cHBvcnQgZm9y
IHBvcnQgNSBvZiB0aGUgc3dpdGNoLgoKdjItPnYzOgogKiBSZW1vdmVkICdzdGF0dXMgPSAib2th
eSInIGxpbmVzIGluIHBhdGNoICMyCiAqIENoYW5nZSBhIHBvcnQgNSBzZXR1cCBtZXNzYWdlIGlu
IGEgZGVidWcgbWVzc2FnZSBpbiBwYXRjaCAjMwogKiBBZGRlZCBhY2stYnkgYW5kIHRlc3RlZC1i
eSB0YWdzCnYxLT52MjoKICogTW9zdGx5IHBoeWxpbmsgaW1wcm92ZW1lbnRzIGFmdGVyIHJldmll
dy4KcmZjIC0+IHYxOgogKiBNb3N0bHkgcGh5bGluayBpbXByb3ZlbWVudHMgYWZ0ZXIgcmV2aWV3
LgogKiBEcm9wIHBoeSBpc29sYXRpb24gcGF0Y2hlcy4gQWRkcyBubyB2YWx1ZSBmb3Igbm93LgoK
UmVuw6kgdmFuIERvcnN0ICgzKToKICBuZXQ6IGRzYTogbXQ3NTMwOiBDb252ZXJ0IHRvIFBIWUxJ
TksgQVBJCiAgZHQtYmluZGluZ3M6IG5ldDogZHNhOiBtdDc1MzA6IEFkZCBzdXBwb3J0IGZvciBw
b3J0IDUKICBuZXQ6IGRzYTogbXQ3NTMwOiBBZGQgc3VwcG9ydCBmb3IgcG9ydCA1CgogLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0ICAgIHwgMjE0ICsrKysrKysrKysK
IGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuYyAgICAgICAgICAgICAgICAgICAgICB8IDM3MSArKysr
KysrKysrKysrKystLS0KIGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaCAgICAgICAgICAgICAgICAg
ICAgICB8ICA2MSArKy0KIDMgZmlsZXMgY2hhbmdlZCwgNTczIGluc2VydGlvbnMoKyksIDczIGRl
bGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRl
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
