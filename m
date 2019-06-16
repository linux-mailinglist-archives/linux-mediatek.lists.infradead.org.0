Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781A847655
	for <lists+linux-mediatek@lfdr.de>; Sun, 16 Jun 2019 20:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xBKWkfON36xfFhU3YKyyFtyqnu4jzHKL8bJjYQRawfo=; b=HzcgHKD9+8151f
	rdoRJCGc5u3JVzowzmc/FgttCHBEGBY3b3FNXAA41FStppb8VXbFgHny3RCGwuIQS5pYBLxcgrvw7
	0I3KUuwZHvm2ZX2EUNjw3DbwfJM8aVuTCisf00A7FBie28wzGZZeXm6QTN5bzSe3+2ByH+4pXW2tx
	a9ut352n/pMFNJLVGdlhvgtA5hYQ/efqJTWOiMSlfi1QwnSFqC1mg73hjYxeOKTz61fivbxJ9+xCD
	2sv5pRZCWEPd94KAN9G5RPB5pVbU+psLYa51f3CshGqIcp3hNyks1WO/ZJIKUMBTGaMeiqfauZioU
	IORzmsSbuGYnJA92LMfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZld-0003pk-Pf; Sun, 16 Jun 2019 18:20:38 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZlY-0003oe-QK
 for linux-mediatek@lists.infradead.org; Sun, 16 Jun 2019 18:20:34 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id BCECC6049A;
 Sun, 16 Jun 2019 20:20:26 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="bqVTw9z6"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 811721C65C71;
 Sun, 16 Jun 2019 20:20:26 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 811721C65C71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1560709226;
 bh=cJxXS1s1q+LMki6wCGzDmpmkzhZ9t4IB5EDQoDNc6yk=;
 h=From:To:Cc:Subject:Date:From;
 b=bqVTw9z692OAlhlk9cyH0sN8FA7xgd/gcSZ5xYPoe0qxdzbA1VYG2t6dk2bJc1zhl
 Duz6MfC4CsYL+iqWMsMOrksePP77I7PQdNZfBwCkfW6q9jHvWq/sLrqsayusUd/fPG
 TvyBc/hFJZJShV1Qi4joz193cV8PgD+Si8aRIMX+wmyb1KAc5nauFVeUFbRXL9AQQq
 pZnPGVkayXzb7J8nwUckN265BOX6DFuRYWmzJDhlw49Ym7PzIG19GeG9EfHw1DJ0xl
 TGkF7dANVFkm8CHkEc9vE6W3MIT8OhVpCx6jPY3KWF1XHZCqpdglnVV9y8DL+Gut6P
 nbXHCjke3gWeQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
Date: Sun, 16 Jun 2019 20:20:08 +0200
Message-Id: <20190616182010.18778-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_112033_138562_0E1DF6B9 
X-CRM114-Status: UNSURE (   5.61  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TGlrZSBtYW55IG90aGVyIG1lZGlhdGVrIFNPQ3MsIHRoZSBNVDc2MjEgU09DIGFuZCB0aGUgaW50
ZXJuYWwgTVQ3NTMwIHN3aXRjaCBib3RoCnN1cHBvcnRzIFRSR01JSSBtb2RlLiBNVDc2MjEgVFJH
TUlJIHNwZWVkIGlzIDEyMDBNQml0LgoKUmVuw6kgdmFuIERvcnN0ICgyKToKICBuZXQ6IGV0aGVy
bmV0OiBtZWRpYXRlazogQWRkIE1UNzYyMSBUUkdNSUkgbW9kZSBzdXBwb3J0CiAgbmV0OiBkc2E6
IG10NzUzMDogQWRkIE1UNzYyMSBUUkdNSUkgbW9kZSBzdXBwb3J0CgogZHJpdmVycy9uZXQvZHNh
L210NzUzMC5jICAgICAgICAgICAgICAgICAgICB8IDE1ICsrKysrKy0tCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIHwgMzggKysrKysrKysrKysrKysrKysrLS0t
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oIHwgMTEgKysrKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
ZWRpYXRlawo=
