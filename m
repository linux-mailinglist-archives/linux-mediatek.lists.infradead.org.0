Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7142200332
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jun 2020 10:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KSsf8vrGIuTeSfx5ldZWeRuq/SccSn84AaUcofBqTvE=; b=i/QSYuZIeZSgHa
	eljvcQo8yC0C2mlvDKqF6k3MXBSB8PPQRTH/6h9cfM/MLXjjMIuQic9Uip9YyAiyxq5bQJ9/pzyv6
	mV5WV43ckJPlGV+YNkmIpkXpemvWcKHdRUDtN9eTkaNolnuZ636kk8E5MFyEYNeA7bDAMLVK8e/Kc
	H3LG6PA+PUKi3JIcE/sR1ulzFfsUbtuQkBNCByIxt05njk0UYqZg7bj1qr23hSLyI906yCJ3Qdl8g
	qSQaSGzsRzefyDqHrZVOZQe0m7CHTZNEJvgfDZVWtnfS19Byzo4HkRnmUowXflhfTAONIR80IQFLA
	Sew1Nkw3DeQgKPcuLYSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmC1V-0007hF-Gp; Fri, 19 Jun 2020 08:05:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmC1Q-0006X6-Av; Fri, 19 Jun 2020 08:05:13 +0000
X-UUID: dc56e4e38d554f6a82106733f9317c3b-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=pkta2QbbE1IXKyYB7noFCSjfGxO9nkhj518++z9rfPA=; 
 b=NLZTu+NkZyVwgdb86QPKOMshyP7jJ+w3yWnwr5nlg9JOJb1pcZds01Iaa3Blx4HpmgaMbWNWTAaoAuR/W2IHNvqzmanUWePT5q9GVqvpEOdLFjC8+MYP2JkIpYP1FZRNDtxb+AysdyPB9UWRSQnLQUVQKZKSGZAySmnpGpIsQos=;
X-UUID: dc56e4e38d554f6a82106733f9317c3b-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 451656405; Fri, 19 Jun 2020 00:05:22 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 01:05:06 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 16:05:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 16:05:05 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v5] dmaengine: mediatek-cqdma: add dt-bindings and remove
 redundant queue
Date: Fri, 19 Jun 2020 16:04:58 +0800
Message-ID: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_010512_389125_BD2C6293 
X-CRM114-Status: UNSURE (   4.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch set adds document the devicetree bindings for MediaTek Command-Queue DMA controller,
and remove redundant queue structure.

hanges since v4:
- fix yaml & dma-mask code flow

hanges since v3:
- fix dt_binding_check errors

Changes since v2:
- add devicetree bindings for MediaTek Command-Queue DMA controller

Changes since v1:
- remove redundant queue structure
- fix wrong description and tags in the earlier patch
- add dma-channel-mask for DMA capability
- fix compatible for common

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
