Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30933BFFF2
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 09:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=emx/9+zIe3nleJqw/lSFGSvtXA5SB4QfRRkPUPVxieY=; b=BNfkHMnEwJDrJD
	2SoaZUPsdLoHnqW76Ie3WDLuNhSP+sOm3s8vm9uzg/NoWnjfaFKix/emlXm60MLwzbTZ0TWPneQIi
	W89KjpFJWnWGEgLs9sLXhvjn9+kT/25G7ykekhM6QHYpTPDPGGAPq3nVwA2BeTYwDFVnGVbkwqdBq
	cYX+NnJjL/OofwHecD7WlD2Hb7iAdB7mRc+1MGq0J6YDdL6fqohfpSfwVzGf7WiHytl14H+fC1uRj
	o7P61aGGDF7AVMbyz2bq0oNToCpmkMU4FWlnNgMwm9LpQJvwW432WsSepPV2Ba5zy9WXiTWtbh9jV
	Zksbi1zwFnsm3HtXx1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDkaC-0000gU-7y; Fri, 27 Sep 2019 07:22:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDkZq-0000ed-On; Fri, 27 Sep 2019 07:22:17 +0000
X-UUID: eb5aacae812f4e829a5e5ac830331a9a-20190926
X-UUID: eb5aacae812f4e829a5e5ac830331a9a-20190926
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1338738788; Thu, 26 Sep 2019 23:18:29 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 00:18:28 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 15:18:26 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 15:18:25 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [PATCH] media: ov5695: Add suport for registering sensor-related
Date: Fri, 27 Sep 2019 15:18:23 +0800
Message-ID: <20190927071824.18675-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_002207_381064_2864E565 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBtb2RpZmllcyB0aGUgaW50ZXJmYWNlIG9mIGFzeW5jIHJlZ2lz
dGVyIFY0TDIgc3ViLWRldmljZSBpbnZva2VkIGluIHByb2JlIGZ1bmN0aW9uIGZvciBPVjU2OTUg
Q01PUyBzZW5zb3IuClRoZSBPbW5pdmlzaW9uIE9WNTY5NSBpbWFnZSBzZW5zb3Igd291bGQgYmUg
dXNlZCBpbiBjYW1lcmEgZmVhdHVyZXMgb24gQ3JPUyBhcHBsaWNhdGlvbi4KNS4wIE1lZ2EgUGl4
ZWwgTUlQSSBDYW1lcmEgTWRvdWxlIGFsc28gc3VwcG9ydHMgYXV0by1mb2N1cyBjb250cm9sIChB
RkMpIHdpdGggZW1iZWRkZWQgQUYgVkNNIERyaXZlci4KCkhlcmUgd2UgdXNlIHY0bDJfYXN5bmNf
cmVnaXN0ZXJfc3ViZGV2X3NlbnNvcl9jb21tb24oKSBpbnN0ZWFkIG9mIHY0bDJfYXN5bmNfcmVn
aXN0ZXJfc3ViZGV2KCkKdG8gcmVnaXN0ZXIgYSBzZW5zb3Igc3ViLWRldmljZSB0byB0aGUgYXN5
bmNocm9ub3VzIHN1Yi1kZXZpY2UgZnJhbWV3b3JrIGFuZCBwYXJzZSBzZXQgdXAKY29tbW9uIHNl
bnNvci1yZWxhdGVkIGRldmljZXMsIHN1Y2ggYXMgYWN0dWF0b3IuCgpUaGlzIGZ1bmN0aW9uIGlz
IGp1c3QgbGlrZcKgdjRsMl9hc3luY19yZWdpc3Rlcl9zdWJkZXYoKcKgd2l0aCB0aGUgZXhjZXB0
aW9uIHRoYXQgY2FsbGluZyBpdCB3aWxsIGFsc28gcGFyc2UKZmlybXdhcmUgaW50ZXJmYWNlcyBm
b3IgcmVtb3RlIHJlZmVyZW5jZXMgdXNpbmfCoHY0bDJfYXN5bmNfbm90aWZpZXJfcGFyc2VfZndu
b2RlX3NlbnNvcl9jb21tb24oKQphbmQgcmVnaXN0ZXJzIHRoZSBhc3luYyBzdWItZGV2aWNlcy4K
CkFmdGVyIGFwcGx5aW5nIHRoaXMgY2hhbmdlLCB3ZSBjYW4gc2VlIHRoZSBWQ00gbW92ZSB3aGVu
IGNoYW5naW5nIHRoZSBzY2VuZS4KCkRvbmdjaHVuIFpodSAoMSk6CiAgbWVkaWE6IGkyYzogb3Y1
Njk1OiBNb2RpZnkgdGhlIGZ1bmN0aW9uIG9mIGFzeW5jIHJlZ2lzdGVyIHN1YmRldgoKIGRyaXZl
cnMvbWVkaWEvaTJjL292NTY5NS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgotLSAKMi45LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgt
bWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
