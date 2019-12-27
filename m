Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C961612B504
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Dec 2019 14:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=obpW44nq9YL5m6iTePdMkfX7XiTRlm5CjOPeXyrlkww=; b=jLnHPDNIjZ9U6p
	Ba5VBnQJIBlLGuOFO5MgpjAgMZfePeFnm+C7/66LPHuqHGPrZ53hNHjagSvgppTKfuIqX3dZdWLCV
	MgCIbPToakduAj6HjtxCPQNpnVVajjSXKCrETExe/BgyuyPoYVCibiJ2QwN1zO996315Vi21DNW4M
	1ctwODtGfjO6o5nr/l3kF7T1YgAwIi4ZrCR0vZCht3tXEFU+GmH4XzQn3ILcCHg9nlPMJWSUBl+fw
	4e++SrbOmkE0HCjfSEy6bwKj7jfJ8Bkg2JqzXVUr5JR2ZzjmYAqSQ/2gd+v6AyC8nYOYIPEFyp823
	gCHi53eTcVPPyu8qu05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikq8Z-0007Bv-6v; Fri, 27 Dec 2019 13:58:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikq7x-0006id-R0; Fri, 27 Dec 2019 13:58:07 +0000
X-UUID: bd27fef384b044a6a28af14293b57287-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=zxFjs37a4JVQyDKWRkH0qB5qA58VffYtge7brAy5zSY=; 
 b=KiTbL4gfrY9BDxpCj05pmgi/0iUGPfCurIJEOUlE+v0HVw7+xNUU/bGVAxHpfXeWfBJaD2w1Yy7oWcka/f/Q/19xJ8lDevRckuQ6DmtQ8Vpcr4h+c2E8win/PDSJtTpsM4zuQ2evdN5jbd1GiiJZGVkts7SE8wJnpZ7f0omGpQc=;
X-UUID: bd27fef384b044a6a28af14293b57287-20191227
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1766450066; Fri, 27 Dec 2019 05:57:58 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 05:58:07 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 21:57:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 21:58:11 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <matthias.bgg@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <linux-watchdog@vger.kernel.org>
Subject: [PATCH v2 0/2] Add watchdog node and dt-binding
Date: Fri, 27 Dec 2019 21:56:52 +0800
Message-ID: <20191227135654.3165-1-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: A24E59AE89A62C3D995B00D33BCDE509C7B8544A5EBC59D96E50ECB8625021D62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_055805_875777_5FD19DC7 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "yong.liang" <yong.liang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

1. Include mt8183-reset.h and add reset-cells in infracfg
2. Add watchdog device node.
3. Add watchdog dt-binding

Signed-off-by: yong.liang <yong.liang@mediatek.com>

yong.liang (2):
  amr64: dts: modify mt8183.dtsi
  dt-bindings: mt8183: Add watchdog dt-binding

 Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi               | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
