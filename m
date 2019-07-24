Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A54737F1
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 21:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=41tDnvld9SKuk+o7+SJmb6UdJFz4FyQkIu8eK1JnzHI=; b=jBwKiEr48gQUT0
	hfzTvI6Ac9QwwnjzKKwXgAn2MWEsJBl1RIBbG0FpyjhHQb/jN8TnujsG6/1VPKq+L+bJwnxBSg/bM
	xpW42UTCjy0zbWuKgcoNKWdJWAP2g5hbjY8oOzRgOR5cv6cTKJcpJLRBNStM5M0KtNpPbYbLsKED0
	huY607AU2h+5bJcqdPRR+omVrzij4B9Y6Ni9sxyWD3RiLf3y4K1K5VcWjKrAJenbLq45OF+3LIyil
	MMjCp/jxlNQm2UbuNlDTQMXHlXy8OANYEYOOIAlxTTZhY6uuBu8pifh0vb+E9vYJoCIyJjeogOabz
	KLFwHgv1zA0tM7+zzahw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMsG-0005hI-Aa; Wed, 24 Jul 2019 19:24:28 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMsC-0005gK-H2
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 19:24:26 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 18A325FD5A;
 Wed, 24 Jul 2019 21:24:23 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="Od8zeS1W"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id A1E671D25D00;
 Wed, 24 Jul 2019 21:24:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com A1E671D25D00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1563996262;
 bh=w0/MyBOlVy7vhuZ6zMv/Ha+b+OM5Zr1Q9NnrGOQPnrM=;
 h=From:To:Cc:Subject:Date:From;
 b=Od8zeS1WW/17PjTot4M9/tFiBIeLgcIN6WBzk99Hx3N3zjsoSncfP4AbTqtJrR1e2
 b9KYydpU9kbseiCtBfxpwc7TFjlu37GVlDEEU1aWojtHA3T4VKmDKvEDhozDwEpI3v
 SBbTDn0/oE/AdT1/DDMb//l4KrszGfZPBLGNqVnkjPFlQAVtbRQ1NjurVhvwi281UA
 KgRSo0QYfk4OSQOD3bu18nTyDwe16xUvJ5oHBHkiICEm3CHbXGVrMeMwi5rUJypsk3
 R8h7yEpuLZ59Gs1oG5nwM3PabOLYMc99/aaH7tLjXFPbgEE/2vbp5cNJuAyLGrMZxI
 4J15knJZLTUrw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/3] dt-bindings: net: ethernet: Update mt7622 docs
 and dts to reflect the new phylink API
Date: Wed, 24 Jul 2019 21:24:11 +0200
Message-Id: <20190724192411.20639-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_122424_843530_6611EA86 
X-CRM114-Status: GOOD (  11.33  )
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

VGhpcyBwYXRjaCB0aGUgcmVtb3ZlcyB0aGUgcmVjZW50bHkgYWRkZWQgbWVkaWF0ZWsscGh5c3Bl
ZWQgcHJvcGVydHkuClVzZSB0aGUgZml4ZWQtbGluayBwcm9wZXJ0eSBzcGVlZCA9IDwyNTAwPiB0
byBzZXQgdGhlIHBoeSBpbiAyLjVHYml0LgpTZWUgbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRz
IGZvciBhIHdvcmtpbmcgZXhhbXBsZS4KClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8
b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgpUZXN0ZWQtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5r
LXdAcHVibGljLWZpbGVzLmRlPgotLS0KIC4uLi9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlz
eXMudHh0ICAgICAgICB8ICAyIC0tCiAuLi4vZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1i
cGktcjY0LmR0cyAgfCAyOCArKysrKysrKysrKysrLS0tLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L21lZGlhdGVrL210NzYyMi5kdHNpICAgICAgfCAgMSAtCiAzIGZpbGVzIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRpYXRlayxz
Z21paXN5cy50eHQKaW5kZXggZjU1MThmMjZhOTE0Li4zMGNiNjQ1YzBlNTQgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWss
c2dtaWlzeXMudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
bWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0CkBAIC05LDggKzksNiBAQCBSZXF1aXJlZCBQ
cm9wZXJ0aWVzOgogCS0gIm1lZGlhdGVrLG10NzYyMi1zZ21paXN5cyIsICJzeXNjb24iCiAJLSAi
bWVkaWF0ZWssbXQ3NjI5LXNnbWlpc3lzIiwgInN5c2NvbiIKIC0gI2Nsb2NrLWNlbGxzOiBNdXN0
IGJlIDEKLS0gbWVkaWF0ZWsscGh5c3BlZWQ6IFNob3VsZCBiZSBvbmUgb2YgImF1dG8iLCAiMTAw
MCIgb3IgIjI1MDAiIHRvIG1hdGNoIHVwCi0JCSAgICAgdGhlIGNhcGFiaWxpdHkgb2YgdGhlIHRh
cmdldCBQSFkuCiAKIFRoZSBTR01JSVNZUyBjb250cm9sbGVyIHVzZXMgdGhlIGNvbW1vbiBjbGsg
YmluZGluZyBmcm9tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svY2xv
Y2stYmluZGluZ3MudHh0CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVr
L210NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzCmluZGV4IDcxMGM1YzNkODdkMy4uMjYwNWFi
M2JjN2ZmIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi1i
YW5hbmFwaS1icGktcjY0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210
NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cwpAQCAtMTE1LDI0ICsxMTUsMzQgQEAKIH07CiAKICZl
dGggewotCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3RybC0wID0gPCZldGhfcGlu
cz47CiAJc3RhdHVzID0gIm9rYXkiOworCWdtYWMwOiBtYWNAMCB7CisJCWNvbXBhdGlibGUgPSAi
bWVkaWF0ZWssZXRoLW1hYyI7CisJCXJlZyA9IDwwPjsKKwkJcGh5LW1vZGUgPSAic2dtaWkiOwor
CisJCWZpeGVkLWxpbmsgeworCQkJc3BlZWQgPSA8MjUwMD47CisJCQlmdWxsLWR1cGxleDsKKwkJ
CXBhdXNlOworCQl9OworCX07CiAKIAlnbWFjMTogbWFjQDEgewogCQljb21wYXRpYmxlID0gIm1l
ZGlhdGVrLGV0aC1tYWMiOwogCQlyZWcgPSA8MT47Ci0JCXBoeS1oYW5kbGUgPSA8JnBoeTU+Owor
CQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJZml4ZWQtbGluayB7CisJCQlzcGVlZCA9IDwxMDAw
PjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7CisJCX07CiAJfTsKIAotCW1kaW8tYnVzIHsK
KwltZGlvOiBtZGlvLWJ1cyB7CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkjc2l6ZS1jZWxs
cyA9IDwwPjsKLQotCQlwaHk1OiBldGhlcm5ldC1waHlANSB7Ci0JCQlyZWcgPSA8NT47Ci0JCQlw
aHktbW9kZSA9ICJzZ21paSI7Ci0JCX07CiAJfTsKIH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210NzYyMi5kdHNpCmluZGV4IGQxZTEzZDM0MGUyNi4uZGFjNTFlOTgyMDRjIDEwMDY0
NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi5kdHNpCisrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kKQEAgLTkzMSw2ICs5MzEsNSBA
QAogCQkJICAgICAic3lzY29uIjsKIAkJcmVnID0gPDAgMHgxYjEyODAwMCAwIDB4MzAwMD47CiAJ
CSNjbG9jay1jZWxscyA9IDwxPjsKLQkJbWVkaWF0ZWsscGh5c3BlZWQgPSAiMjUwMCI7CiAJfTsK
IH07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW1lZGlhdGVrCg==
